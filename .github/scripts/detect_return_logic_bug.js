// Detect return-related logic bugs in issues
module.exports = async ({ github, context }) => {
  const issue = context.payload.issue;
  const body = (issue.body || "").toLowerCase();
  const title = (issue.title || "").toLowerCase();
  const text = title + "\n" + body; // hem title hem body'de ara

  // Daha akıllı return kontrolü (kelime olarak "return")
  const hasReturn = /\breturn\b/.test(text);
  if (!hasReturn) return;

  let warnings = [];

  // ⚠️ Şüpheli patternler
  if (/\b(loop|tick|update|frame)\b/.test(text)) {
    warnings.push("Loop/tick/update içinde `return` kullanımı");
  }
  if (/\b(not working|doesn't stop|not stopping|stuck|hang)\b/.test(text)) {
    warnings.push("`return` çalışmıyor veya fonksiyon durmuyor olabilir");
  }
  if (/\b(infinite|endless|freeze|crash|hang|deadlock)\b/.test(text)) {
    warnings.push("Infinite loop veya freeze riski yüksek");
  }
  if (/\b(macro|chain|callback|async)\b/.test(text)) {
    warnings.push("Macro, chain veya async kullanımında `return` dikkat gerektirir");
  }

  // 🏷️ Label ekle (eğer yoksa)
  await github.rest.issues.addLabels({
    owner: context.repo.owner,
    repo: context.repo.repo,
    issue_number: issue.number,
    labels: ["logic"]
  });

  // 💬 Yorum bırak
  const warningList = warnings.length > 0 
    ? warnings.map(w => `- ${w}`).join("\n")
    : "- Genel `return` kullanımı tespit edildi (mantık hatası şüphesi)";

  await github.rest.issues.createComment({
    owner: context.repo.owner,
    repo: context.repo.repo,
    issue_number: issue.number,
    body: `🧠 **Logic Bug Detection (return)**

Bu issue'da \`return\` kelimesi tespit edildi. Özellikle oyun/macro/tick tabanlı sistemlerde yanlış kullanım sıkça logic bug'a yol açar.

**Olası problemler:**
${warningList}

💡 **Önemli notlar:**
- \`return\` yanlış yerde kullanılırsa fonksiyon erken biter ve kodun geri kalanı çalışmaz.
- Tick/update/loop içinde \`return\` koymak infinite loop veya donma yapabilir.
- Macro + return + async kombinasyonları ekstra dikkat ister.

👉 Lütfen mümkünse **minimal reproducible test case** ekleyin. Bu, sorunu daha hızlı anlamamıza yardımcı olur.

Eğer bu tespit yanlış pozitif ise, lütfen yorum olarak belirtin.`
  });
};
