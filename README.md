# Kustomizing Helm Charts using Argo CD (Helm → Kustomize → GitOps)

This repository demonstrates a **clean, deterministic, and enterprise-grade GitOps pattern** using **Helm, Kustomize, and Argo CD** where:

- **Helm renders manifests first**
- **Kustomize customizes the rendered output**
- **Argo CD enforces and reconciles the final desired state**

This approach avoids complex Helm templating logic, keeps YAML readable, and allows patching even **official Helm charts** that do not expose all configuration options.

---

## 🔑 Key Idea (One-Line Summary)

> **Helm generates manifests → Kustomize mutates them → Argo CD applies them**
>
> This guarantees ordering, clarity, and predictable GitOps behavior.

---

## 📖 Full Guide & Explanation (Medium)

For a deep explanation, reasoning, and real-world context, read the full article here:

👉 **Medium Guide:**  
https://manabpokhrel7.medium.com/kustomizing-helm-charts-using-argocd-677f221e20cc?postPublishedType=repub

---

## 🧠 Why This Pattern?

### Problems with Helm-only at scale
- Helm requires anticipating variation
- Logic (`if`, `default`, conditionals) spreads across templates
- Official charts often don’t expose needed fields
- Templates become hard to review and maintain

### What Kustomize solves
- No placeholders needed
- No conditional logic
- Fields can be **added or modified even if they don’t exist**
- Clean diffs and declarative overlays

---

## 🏗 Architecture Overview

```
Git Repository
     |
     v
Argo CD Application
     |
     v
Kustomize Overlay (env-specific)
     |
     v
HelmChartInflationGenerator
     |
     v
Rendered Kubernetes Manifests
     |
     v
Kubernetes Cluster
```

---

## 🚀 Final Takeaway

This repository shows how to combine Helm, Kustomize, and Argo CD **the right way**:

- Helm stays clean and reusable
- Kustomize handles environment and platform concerns
- Argo CD guarantees order and GitOps reconciliation

This pattern scales well, stays readable, and works even with third-party Helm charts.

---

## 📌 Author

**Manab Pokhrel**  
DevOps | Cloud | GitOps | Kubernetes

