import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinkageCompleteIntersectionsDeterminantalIdealsLemmaCanonicalLaneLean

structure DeterminantalVarietyPackage where
  rows : Nat
  cols : Nat
  rank : Nat
  idealGeneratedByMinors : Type u
  genericDeterminantalVariety : Prop
  dimensionFormula : Prop
  cohenMacaulay : Prop
  genericDeterminantalVarietyTerm : genericDeterminantalVariety
  dimensionFormulaTerm : dimensionFormula
  cohenMacaulayTerm : cohenMacaulay

structure DeterminantalVarietyEvidence (D : DeterminantalVarietyPackage) where
  genericDeterminantalVarietyClosed : D.genericDeterminantalVariety
  dimensionFormulaClosed : D.dimensionFormula
  cohenMacaulayClosed : D.cohenMacaulay

def DeterminantalVarietyClosed (D : DeterminantalVarietyPackage) : Prop :=
  D.genericDeterminantalVariety ∧ D.dimensionFormula ∧ D.cohenMacaulay

theorem determinantal_variety_closed_from_evidence (D : DeterminantalVarietyPackage)
    (E : DeterminantalVarietyEvidence D) : DeterminantalVarietyClosed D := by
  exact And.intro E.genericDeterminantalVarietyClosed
    (And.intro E.dimensionFormulaClosed E.cohenMacaulayClosed)

end LinkageCompleteIntersectionsDeterminantalIdealsLemmaCanonicalLaneLean
end HautevilleHouse