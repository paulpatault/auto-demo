# AutoDemo
 
Outil de démonstration automatique de [séquent](https://fr.wikipedia.org/wiki/Calcul_des_séquents). 
Prend en entré une liste d'hypothèses `Γ` et une conclusion `Δ` à démontrer, tel que `Γ ⊢ Δ`.

# Usage

+ Compilation et exéctution :
    ```
    $ cd src/
    $ make
    $ ./main
    ```
+ Donner au programme les entrées : 
  > → remplir les trous en utilisant la bonne syntaxe, cf. [Syntaxe](#Syntaxe)
    ```
    ...
    $ ./main
      Γ (hyphthèses): __
      Δ (à démontrer): __
    ...
    ```
+ Le résultat va s'afficher !
    > Exemple 1
    ```
    $ ./main
      Γ (hyphthèses): P ; P => Q ; Q => R
      Δ (à démontrer): R

      ---- Évaluation ----
      (P), (P) ⇒ (Q), (Q) ⇒ (R) ⊢ (R)   ( rule G→ )
        (Q) ⇒ (R), (P) ⊢ (P), (R)   ( rule G→ )
            (P) ⊢ (Q), (P), (R)   → is axiom
            (R), (P) ⊢ (P), (R)   → is axiom
        (Q), (Q) ⇒ (R), (P) ⊢ (R)   ( rule G→ )
            (P), (Q) ⊢ (Q), (R)   → is axiom
            (R), (P), (Q) ⊢ (R)   → is axiom
      ---- VALIDE ----
    ```
    > Exemple 2
    ```
    $ ./main
      Γ (hyphthèses): A || B
      Δ (à démontrer): A && B

      ---- Évaluation ----
      (A) ∨ (B) ⊢ (A) ∧ (B)   ( rule G∨ )
        (A) ⊢ (A) ∧ (B)   ( rule D∧ )
            (A) ⊢ (A)   → is axiom
            (A) ⊢ (B)   → impossible
      ---- INVALIDE ----
    ```

# Syntaxe

| Mot                               |    Syntaxe    | Étât  |
| :-------------------------------- | :-----------: | :---: |
| Non : `¬`                         |      `!`      |   ✓   |
| Inférieur : `<`                   |      `<`      |   ✓   |
| Et : `∧`                          |     `&&`      |   ✓   |
| Ou : `∨`                          |    `\|\|`     |   ✓   |
| Implique : `⇒`                    |     `=>`      |   ✓   |
| Parenthèses ouvrante : `(`        |      `(`      |   ✓   |
| Parenthèses fermante : `)`        |      `)`      |   ✓   |
| Séparateur d'hypothèses : `;`     |      `;`      |   ✓   |
| Formule : `A`                     |      `A`      |   ✓   |
| Vide : `ε`                        |      `_`      |   ✓   |
| Liste d'hypothèses : `[A, B,...]` | `A ; B ; ...` |   ✓   |
