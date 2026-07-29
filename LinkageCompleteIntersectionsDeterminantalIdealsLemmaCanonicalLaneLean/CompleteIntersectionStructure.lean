import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinkageCompleteIntersectionsDeterminantalIdealsLemmaCanonicalLaneLean

structure CompleteIntersectionPackage where
  ring : Type u
  ideal : Type v
  generatorsCount : Nat
  regularSequence : Prop
  codimensionEqualsGenerators : Prop
  regularSequenceTerm : regularSequence
  codimensionEqualsGeneratorsTerm : codimensionEqualsGenerators

structure CompleteIntersectionEvidence (C : CompleteIntersectionPackage) where
  regularSequenceClosed : C.regularSequence
  codimensionEqualsGeneratorsClosed : C.codimensionEqualsGenerators

def CompleteIntersectionClosed (C : CompleteIntersectionPackage) : Prop :=
  C.regularSequence ∧ C.codimensionEqualsGenerators

theorem complete_intersection_closed_from_evidence (C : CompleteIntersectionPackage)
    (E : CompleteIntersectionEvidence C) : CompleteIntersectionClosed C := by
  exact And.intro E.regularSequenceClosed E.codimensionEqualsGeneratorsClosed

end LinkageCompleteIntersectionsDeterminantalIdealsLemmaCanonicalLaneLean
end HautevilleHouse
