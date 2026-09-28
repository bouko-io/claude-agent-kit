# Claude Agent Kit

**Transformez Claude en agent qui travaille pour vous — sans écrire une ligne de code.**

Un seul plugin à ajouter à Claude, et vous avez :

- **`/kit-setup`** — un onboarding qui apprend à vous connaître (et peut importer votre contexte depuis ChatGPT), montre où vous en êtes, active ce qui manque et fait une première tâche avec vous
- **14 skills** prêts à l'emploi : Excel, présentations, devis, mails, rapports, réunions, recherche web, posts LinkedIn…
- **3 agents assistants** : un chercheur, un vérificateur, un éditeur
- **Canva et Notion** prêts à connecter

Il répond dans votre langue : français, darija, arabe, anglais.

*[English version below](#english)*

---

## Installer (1 minute)

Dans Claude (web ou application bureau) :

1. Ouvrez **Customize → Plugins**, puis cliquez sur **+ Add**.

   <img src="https://raw.githubusercontent.com/bouko-io/claude-agent-kit/main/docs/img/install-1-plugins-page.jpg" alt="Page Customize, onglet Plugins, bouton + Add" width="420">

2. Choisissez **Add marketplace**.

   <img src="https://raw.githubusercontent.com/bouko-io/claude-agent-kit/main/docs/img/install-2-add-marketplace.jpg" alt="Menu Add : Add marketplace" width="420">

3. Choisissez **Add from a repository**, collez **`bouko-io/claude-agent-kit`** et validez.

   <img src="https://raw.githubusercontent.com/bouko-io/claude-agent-kit/main/docs/img/install-3-from-repository.jpg" alt="Fenêtre Add marketplace : Add from a repository" width="520">

   Puis cliquez sur **Claude Agent Kit → Install**.
4. Dans une nouvelle conversation, tapez **`/`** puis choisissez **`kit-setup`** (Claude Agent Kit), et laissez-vous guider. Vous pouvez le relancer quand vous voulez : il reprend où vous en étiez.

> **Ça ne marche pas ?** Plan B : téléchargez [`claude-agent-kit-plugin.zip`](dist/claude-agent-kit-plugin.zip), puis **Personnaliser → Plugins → Ajouter → Importer un plugin**.
> Plan C : importez les skills un par un depuis [`dist/skills/`](dist/skills/) via **Personnaliser → Skills → + → Importer un skill** (ne décompressez pas les fichiers).

**Claude Code** : `claude plugin marketplace add bouko-io/claude-agent-kit` puis `claude plugin install claude-agent-kit@skillhub-ai`.

---

## Ce qu'il vous faut

| Fonction | Gratuit | Payant (Pro, Max…) |
|---|:---:|:---:|
| Skills, mémoire, Projets | ✅ | ✅ |
| Gmail, Google Drive, Agenda | ✅ | ✅ |
| Canva, Notion (votre propre compte) | ✅ | ✅ |
| Claude dans Excel / PowerPoint / Word | — | ✅ |
| Claude dans Chrome | — | ✅ |
| Cowork, agents assistants, tâches planifiées | — | ✅ |

*Vérifié dans la documentation officielle d'Anthropic le 28/09/2026. Ça peut évoluer : `/kit-setup` vous indique ce qui demande un plan payant.*

---

## Ce qu'il y a dedans

### Commandes
| | |
|---|---|
| `/kit-setup` | **Commencez ici.** Choix de la langue → bilan de ce qui est déjà activé → import de votre contexte (ChatGPT, fichiers, profil) → carte de *votre* agent → activation de ce qui manque → première vraie tâche ensemble |
| `/kit-tour` | Tout le contenu du kit, classé par métier, avec un exemple prêt à copier |
| `/morning-brief` | Votre journée en une minute : agenda, mails qui attendent une réponse, 3 priorités |

### Skills — Claude les utilise tout seul quand votre demande correspond

| Skill | Ce qu'il fait |
|---|---|
| **onboard-me** | Claude vous interroge comme une nouvelle recrue et écrit votre profil |
| **find-my-task** | Vous dit quelle tâche confier en premier (et laquelle pas encore) |
| **agent-brief** | Brief d'une page avant tout travail important |
| **excel-analyst** | Nettoie vos fichiers, crée un vrai Excel, **vérifie que les totaux tombent juste** |
| **quote-builder** | Devis propre depuis *votre* grille de prix — jamais de prix inventé |
| **brand-designer** | Slides et visuels à vos couleurs, en deux propositions |
| **social-post** | Posts LinkedIn / Instagram qui sonnent comme vous, pas comme une IA |
| **inbox-assistant** | Trie vos mails et prépare les réponses — **n'envoie jamais rien** |
| **meeting-actions** | Notes de réunion → décisions + actions avec responsable et date |
| **weekly-report** | Rapport de la semaine avec la source de chaque chiffre |
| **web-research** | Recherche web avec une source pour chaque fait |
| **browser-task** | Tâches sur des sites avec Claude dans Chrome, avec arrêt avant tout envoi ou paiement |
| **schedule-agent** | Conçoit vos tâches automatiques (brief du matin, rapport du vendredi…) |
| **memory-coach** | Relit et corrige ce que Claude retient de vous |

### Agents assistants (dans Cowork)
- **researcher** — trouve les faits, avec leurs sources
- **checker** — relit le travail avant de vous le rendre : chiffres, faits, oublis
- **editor** — rend un texte humain et fidèle à votre voix

### Connecteurs inclus
**Canva** et **Notion** : Personnaliser → Plugins → Claude Agent Kit → onglet Connecteurs → Connecter (avec votre compte).
Gmail, Drive et Agenda se connectent dans Personnaliser → Connecteurs.

---

## Les limites à connaître

- **Il y a un quota d'utilisation.** Les longues conversations le consomment plus vite : **une nouvelle conversation par nouvelle tâche**.
- **Il peut se tromper avec assurance.** Demandez d'où vient un chiffre. *excel-analyst*, *quote-builder* et l'agent *checker* vérifient d'eux-mêmes.
- **Chrome et les connecteurs agissent avec vos accès.** Commencez par des tâches sans risque.
- **Rien d'irréversible sans vous** : envoyer, payer, supprimer, publier — les skills s'arrêtent toujours avant.
- **Un fichier, un mail ou une page web peut contenir des instructions cachées.** Les skills les traitent comme des données, pas comme des ordres. Restez attentif aux confirmations.

---

## Aller plus loin

Ce kit, c'est Claude qui travaille avec vous, dans vos outils.
L'étape suivante — des agents qui tournent seuls, sur Telegram ou WhatsApp, branchés sur vos systèmes — c'est ce qu'on construit ensemble en formation.

**[Formations SkillHub AI — www.skillhub.ma](https://www.skillhub.ma)**

---

<a name="english"></a>
## English

**Turn Claude into an agent that works for you — no code.**

**Install**: in Claude, **Customize → Plugins → + Add → Add marketplace → Add from a repository** → paste `bouko-io/claude-agent-kit` → install **Claude Agent Kit** → type **`/`** and pick **`kit-setup`**.
Fallback: download [`claude-agent-kit-plugin.zip`](dist/claude-agent-kit-plugin.zip) → Customize → Plugins → Add → Upload plugin.
Claude Code: `claude plugin marketplace add bouko-io/claude-agent-kit` then `claude plugin install claude-agent-kit@skillhub-ai`.

**Inside**: 3 commands (`/kit-setup` resumable onboarding with ChatGPT context import, `/kit-tour`, `/morning-brief`), 14 skills (Excel, quotes, slides, posts, inbox, meetings, reports, web research, Chrome tasks, scheduling, memory…), 3 helper agents for Cowork (researcher, checker, editor), Canva + Notion connectors. Every skill answers in the user's language and stops before anything irreversible.

Skills, memory and Gmail/Drive/Calendar work on every plan including Free. Office add-ins, Chrome, Cowork, agents and scheduled tasks need a paid plan (checked against Anthropic's docs on 2026-09-28).

---

MIT License · Everything is plain text in [`plugins/claude-agent-kit/`](plugins/claude-agent-kit/): read it, adapt it, make it yours.
