# AutoDemo
 
Outil de démonstration automatique. Prends deux formules logiques `𝗔` et `𝗕` en entrées, et vérifie que `𝗔 ⟹ 𝗕`.
Retrouvez les [ressources](https://fr.wikipedia.org/wiki/Calcul_des_séquents) utilisée.

# Usage

+ Compilation et exéctution :
    ```
    $ make
    $ ./main
    ```
+ Donner au programme les entrées : 
  > → remplir les trous en utilisant la bonne syntaxe, cf. [Syntaxe](#Syntaxe)
    ```
    ...
    $ Γ (hyphthèses): __
    $ Δ (à démontrer): __
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

| Mot                        | Syntaxe |   Étât    |
| :------------------------- | :-----: | :-------: |
| Pour tout : `∀`            |  `[A]`  | :warning: |
| Il existe : `∃`            |  `[E]`  | :warning: |
| Égale : `=`                |   `=`   | :warning: |
| Différent : `≠`            |  `<>`   | :warning: |
| Non : `¬`                  |   `!`   |     ✓     |
| Inférieur : `<`            |   `<`   |     ✓     |
| Et : `∧`                   |  `&&`   |     ✓     |
| Ou : `∨`                   | `\|\|`  |     ✓     |
| Implique : `⇒`             |  `=>`   |     ✓     |
| Parenthèses ouvrante : `(` |   `(`   |     ✓     |
| Parenthèses fermante : `)` |   `)`   |     ✓     |
| Séparateur : `;`           |   `;`   |     ✓     |
| Virgule : `,`              |   `,`   |     ✓     |
| Formule : `A`              |   `A`   |     ✓     |
| Variable : `𝒙`             |   `𝒙`   | :warning: |
| Vide : `ε`                 |   `_`   |     ✓     |


# Todo

+ Rules for : ∀, ∃
+ Fix : 
  + parser.mly
  + ...