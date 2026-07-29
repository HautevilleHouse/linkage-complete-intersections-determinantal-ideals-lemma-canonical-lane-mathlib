import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinkageCompleteIntersectionsDeterminantalIdealsLemmaCanonicalLaneLean

structure DeterminantalIdealPackage where
  matrix : Type u
  rows : Nat
  columns : Nat
  minorSize : Nat
  idealGenerators : Type v
  minorsGenerate : Prop
  idealIsDeterminantal : Prop
  minorsGenerateTerm : minorsGenerate
  idealIsDeterminantalTerm : idealIsDeterminantal

structure DeterminantalIdealEvidence (D : DeterminantalIdealPackage) where
  minorsGenerateClosed : D.minorsGenerate
  idealIsDeterminantalClosed : D.idealIsDeterminantal

def DeterminantalIdealClosed (D : DeterminantalIdealPackage) : Prop :=
  D.minorsGenerate ∧ D.idealIsDeterminantal

theorem determinantal_ideal_closed_from_evidence (D : DeterminantalIdealPackage)
    (E : DeterminantalIdealEvidence D) : DeterminantalIdealClosed D := by
  exact And.intro E.minorsGenerateClosed E.idealIsDeterminantalClosed

end LinkageCompleteIntersectionsDeterminantalIdealsLemmaCanonicalLaneLean
end HautevilleHouse
