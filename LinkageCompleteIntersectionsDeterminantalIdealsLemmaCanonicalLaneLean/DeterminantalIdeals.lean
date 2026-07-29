import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinkageCompleteIntersectionsDeterminantalIdealsLemmaCanonicalLaneLean

structure DeterminantalIdealPackage where
  ring : Type u
  matrix : Type v
  size : Nat × Nat
  minorsIdeal : Prop
  grade : Nat
  idealHeight : Prop
  perfect : Prop
  cohenMacaulay : Prop

structure DeterminantalIdealEvidence (D : DeterminantalIdealPackage) where
  minorsIdealClosed : D.minorsIdeal
  idealHeightClosed : D.idealHeight
  perfectClosed : D.perfect
  cohenMacaulayClosed : D.cohenMacaulay

def DeterminantalIdealClosed (D : DeterminantalIdealPackage) : Prop :=
  D.minorsIdeal ∧ D.idealHeight ∧ D.perfect ∧ D.cohenMacaulay

theorem determinantal_ideal_closed_from_evidence (D : DeterminantalIdealPackage)
    (E : DeterminantalIdealEvidence D) : DeterminantalIdealClosed D := by
  exact And.intro E.minorsIdealClosed
    (And.intro E.idealHeightClosed
      (And.intro E.perfectClosed E.cohenMacaulayClosed))

end LinkageCompleteIntersectionsDeterminantalIdealsLemmaCanonicalLaneLean
end HautevilleHouse