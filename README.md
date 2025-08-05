# Biolevate Homebrew Tap

Ce tap Homebrew contient les outils CLI de Biolevate.

## Architecture

Ce tap utilise les **GitHub Releases** pour héberger les binaires, garantissant :
- ✅ **Accessibilité** : Les binaires sont publics via les releases
- ✅ **Traçabilité** : Chaque version a sa release GitHub
- ✅ **Sécurité** : Pas de binaires dans le code du repo
- ✅ **Rollback** : Possibilité de revenir à une version précédente

### Workflow de release

```
Repo Principal (privé)                    Repo Tap (public)
┌─────────────────────────┐              ┌─────────────────┐
│ biolevops-onizuka       │              │ homebrew-tap    │
│                         │              │                 │
│ 1. Build binaires       │─────────────▶│ 1. Créer        │
│ 2. Calculer SHA256      │              │    GitHub       │
│ 3. Trigger tap update   │              │    Release      │
│                         │              │ 2. Upload       │
│                         │              │    binaires     │
│                         │              │ 3. Update       │
│                         │              │    formule      │
└─────────────────────────┘              └─────────────────┘
```

**Note** : Les releases GitHub sont créées uniquement dans le repo tap (public), pas dans le repo principal (privé).

## Installation

### Onizuka CLI

```bash
# Installation directe (recommandée)
brew install Biolevate/tap/onizuka-cli
```

**Note** : Le tap Homebrew est automatiquement ajouté lors de l'installation. Pas besoin de `brew tap` préalable.

## Outils disponibles

### onizuka-cli
CLI tool pour les opérations Biolevate.

**Utilisation :**
```bash
gto --help
gto --version
```

## Mise à jour

```bash
brew update
brew upgrade onizuka-cli
```

## Désinstallation

```bash
brew uninstall onizuka-cli
```

## Versions disponibles

### Version "latest"
```bash
brew install Biolevate/tap/onizuka-cli
```

### Version spécifique
```bash
# Exemple pour la version 1.0.10
brew install Biolevate/tap/onizuka-cli@1.0.10
```

## Workflow de release

1. **Build** : Le repo principal (privé) build les binaires
2. **Transfert** : Les artifacts sont transférés au repo tap (public)
3. **Release** : Création automatique d'une GitHub Release dans le repo tap
4. **Formula** : Mise à jour automatique de la formule Homebrew
5. **Validation** : Tests automatiques de la formule

**Important** : Les releases GitHub sont créées uniquement dans le repo tap (public), jamais dans le repo principal (privé).

## Support

Pour signaler un problème ou demander une fonctionnalité, veuillez ouvrir une issue sur le [repository principal](https://github.com/Biolevate/biolevops-onizuka).