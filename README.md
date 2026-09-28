# Claude Agent Kit

**Transformez Claude en agent qui travaille pour vous — sans écrire une ligne de code.**

Si vous utilisez Claude, vous avez déjà un agent sous la main. Il peut travailler dans Excel, PowerPoint, Gmail, Google Drive ou votre navigateur. La plupart des gens ne l'ont simplement jamais activé.

Ce kit contient deux choses :

1. **Le guide d'activation** — les fonctions à allumer, dans le bon ordre (15 minutes).
2. **7 skills prêts à l'emploi** — des savoir-faire que vous ajoutez à Claude en 30 secondes, et qu'il applique tout seul quand la tâche s'y prête.

*[English version below](#english)*

---

## Ce qu'il vous faut

| Fonction | Plan Claude gratuit | Plans payants (Pro, Max…) |
|---|:---:|:---:|
| Skills (les 7 du kit) | ✅ | ✅ |
| Gmail, Google Drive, Agenda | ✅ | ✅ |
| Claude pour Excel / PowerPoint / Word | — | ✅ |
| Claude dans Chrome | — | ✅ |
| Cowork (Claude travaille sur vos fichiers) | — | ✅ |

*Disponibilités vérifiées dans la documentation officielle d'Anthropic le 28/09/2026. Elles peuvent évoluer.*

---

## Partie 1 — Activer l'agent (15 min)

Faites-les dans cet ordre. Chaque étape rend la suivante plus utile.

### 1. Allumer l'exécution de code — *obligatoire pour les skills*
**Paramètres → Capacités → « Exécution de code et création de fichiers »** : activez.
C'est ce qui permet à Claude de créer de vrais fichiers Excel, PowerPoint et PDF.

### 2. Brancher vos outils (connecteurs)
**Personnaliser → Connecteurs** → cliquez **Connecter** sur Gmail, Google Drive, Google Agenda (et Canva, Notion… si vous les utilisez).
Claude lit alors vos vrais documents et mails. Il agit en votre nom, avec vos accès — rien de plus.

### 3. Dire à Claude qui vous êtes
Lancez le skill **onboard-me** (Partie 2). Il vous interroge 10 minutes et vous donne un texte à coller dans **Paramètres → Profil**. Claude s'en souviendra dans chaque conversation.

### 4. Créer un Projet pour votre activité principale
**Projets → Nouveau projet**. Mettez-y vos documents de référence (tarifs, catalogue, modèles) et les instructions générées par *onboard-me*. **Une seule source de vérité** : c'est là que Claude va chercher.

### 5. Claude dans Excel, PowerPoint et Word *(plan payant)*
Installez l'add-in **Claude for Microsoft 365** depuis [Microsoft AppSource](https://marketplace.microsoft.com/en-us/product/office/WA200010725?tab=Overview) → **Get it now** → ouvrez Excel → activez l'add-in → connectez-vous.
Fonctionne sur Excel web, Windows (Microsoft 365) et Mac. Pas sur iPad ni Android.

### 6. Claude dans Chrome *(plan payant)*
[Chrome Web Store → Claude](https://chromewebstore.google.com/detail/claude/fcoeoabgfenejglbffodgkkbkcdhcgfn) → **Ajouter à Chrome** → connectez-vous → épinglez l'extension.
Claude peut alors cliquer, remplir des formulaires et naviguer pour vous. Surveillez-le au début.

---

## Partie 2 — Installer les 7 skills (30 s chacun)

1. Téléchargez les skills :
   - **tout d'un coup** : [`claude-agent-kit-all-skills.zip`](dist/claude-agent-kit-all-skills.zip) (à décompresser : il contient les 7 fichiers ZIP),
   - ou un par un dans le dossier [`dist/`](dist/).
2. Dans Claude : **Personnaliser → Skills → +  → Créer un skill → Importer un skill**.
3. Choisissez le fichier ZIP du skill (**ne le décompressez pas**). Répétez pour chaque skill.
4. Vérifiez qu'il est bien **activé** dans la liste.

C'est tout. Vous n'avez rien à taper de spécial : Claude utilise le bon skill quand votre demande correspond. Vous pouvez aussi l'appeler par son nom (« utilise agent-brief »).

---

## Les 7 skills

| Skill | Ce qu'il fait | Essayez |
|---|---|---|
| **onboard-me** | Claude vous interroge comme une nouvelle recrue et écrit votre profil une fois pour toutes | « Onboard me » |
| **agent-brief** | Transforme une demande floue en brief d'une page, le fait valider, puis exécute | « Prépare-moi un rapport sur nos ventes du trimestre » |
| **find-my-task** | Passe votre semaine en revue et vous dit quelle tâche confier en premier | « Par quoi je commence avec l'IA ? » |
| **excel-analyst** | Nettoie vos fichiers, crée un vrai Excel et **vérifie que les totaux tombent juste** | Joignez un fichier : « Fais-moi le total par client et par mois » |
| **brand-designer** | Présentations et visuels à vos couleurs, en deux propositions | « Fais-moi 5 slides pour présenter notre offre » |
| **inbox-assistant** | Trie vos mails et prépare les réponses — **n'envoie jamais rien** | « Qu'est-ce qui m'attend dans ma boîte mail ? » |
| **weekly-report** | Rapport de la semaine avec la source de chaque chiffre | « Fais le point de la semaine à partir de mon Drive » |

Tous répondent dans votre langue : français, darija, arabe, anglais…

---

## Les 10 pratiques derrière le kit

Chaque skill applique une ou plusieurs de ces règles :

1. **Un agent, c'est une nouvelle recrue, pas un logiciel.** → *onboard-me*
2. **Si vous ne savez pas l'expliquer, il ne saura pas le faire.** → *agent-brief*
3. **Commencez par la tâche qui vous ennuie.** → *find-my-task*
4. **Ce qu'il vous rend est un brouillon.** → tous les skills livrent des brouillons
5. **Fixez les interdits avant les permissions.** → chaque skill a sa liste « Rules »
6. **Gardez la main sur l'irréversible.** → *inbox-assistant* n'envoie jamais
7. **Une seule source de vérité.** → *weekly-report*, les Projets
8. **« C'est fait » ne veut rien dire : exigez une preuve.** → *excel-analyst* rapproche les totaux
9. **N'automatisez pas le désordre.** → *find-my-task* le repère avant
10. **La vraie compétence, c'est la délégation.** → le kit entier

---

## Sécurité — à lire une fois

- Claude agit **avec vos accès**. Ne connectez que ce dont vous avez besoin.
- Un fichier ou un mail venu de l'extérieur peut contenir des instructions cachées. Les skills sont écrits pour les traiter comme des données, pas comme des ordres — restez quand même attentif aux confirmations que Claude vous demande.
- Relisez toujours avant d'envoyer, de publier ou de payer.

---

## Aller plus loin

Ce kit, c'est la première marche : Claude qui travaille avec vous, dans vos outils.
L'étape suivante — des agents qui tournent seuls, sur Telegram ou WhatsApp, connectés à vos systèmes — c'est ce qu'on construit ensemble en formation.

**[Formations SkillHub AI](https://skillhub-centre.vercel.app)**

---

<a name="english"></a>
## English (short version)

**Turn Claude into an agent that works for you — no code.**

1. **Activate** (15 min): Settings → Capabilities → enable *Code execution and file creation* · Customize → Connectors → connect Gmail, Drive, Calendar · run **onboard-me** and paste the result in Settings → Profile · create a Project with your reference files · *(paid plans)* install **Claude for Microsoft 365** from Microsoft AppSource and **Claude in Chrome** from the Chrome Web Store.
2. **Install the 7 skills**: download the ZIPs from [`dist/`](dist/) → in Claude: Customize → Skills → + → Create skill → Upload a skill → pick the ZIP (don't unzip it).
3. **Use them**: just ask — Claude picks the matching skill. All skills answer in your language.

Skills work on every plan including Free. Office add-ins, Chrome and Cowork need a paid plan (checked against Anthropic's docs on 2026-09-28).

---

MIT License · Skills are plain text (`skills/*/SKILL.md`): read them, adapt them, make them yours.
