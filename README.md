# 🧠 ShallowThought

**ShallowThought** is a modular, self-hosted infrastructure stack built on **Kubernetes** and managed using **HelmCharts** and raw Kubernetes manifests. 
It includes a collection of open-source services for automation, media, development, and security — designed to run efficiently on a personal homelab cluster.

---

## 🧰 Included Services

| Service       | Description                                   |
|---------------|-----------------------------------------------|
| **Traefik**   | Reverse proxy and ingress controller          |
| **Jenkins**   | CI/CD pipeline automation                     |
| **Authentik** | Authentication & identity provider            |
| **Nextcloud** | Personal file hosting and syncing             |
| **Immich**    | Photo and video management                    |
| **CrowdSec**  | Behavior-based intrusion prevention           |
| **Ollama**    | Local AI model management and inferencing     |
| **HomeAutomation** | A set of IoT or smart home tools         |
| **Games**     | Game servers                                  |

Each service is encapsulated in its own directory with Kubernetes manifests and/or Helm charts for clean modularity.

---

## 🚀 Deployment

> **Note**: Assumes a functioning Kubernetes cluster with Helm installed.

### 1. Clone the Repository

```bash
git clone --recurse-submodules https://github.com/TinkerWorks/shallowthought.git
cd shallowthought
```

### 2. Install Services

Each directory contains Helm charts or K8s manifests. For example:

```bash
# Install Traefik using Helm
bash deploy_all.sh
```

---

## 📁 Project Structure

```
shallowthought/
├── jenkins/        # Kubernetes manifests for Jenkins
├── traefik/        # Helm chart for Traefik
├── authentik/      # Helm chart for Authentik
├── nextcloud/      # (expected) setup for Nextcloud
├── crowdsec/       # Intrusion prevention service
├── immich/         # Photo/video management
├── db/             # Likely database configs
├── homeautomation/ # IoT or smart-home related services
├── games/          # Game server(s) or tools
├── ollama/         # Local LLM hosting (Ollama)
├── .gitmodules     # Git submodule references
└── .vscode/        # Editor settings
```

---

## 🧩 Requirements

- Kubernetes cluster (k3s, minikube, etc)
- `kubectl` configured
- Git with submodule support

---

## 📄 License

[MIT](LICENSE) — Feel free to use and modify.

---

## 👤 Author

Maintained by **Alexandru-Sever Horin**  
