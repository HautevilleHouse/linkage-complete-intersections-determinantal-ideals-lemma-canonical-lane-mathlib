import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.LinkageCompleteIntersectionsDeterminantalIdealsLemmaCanonicalLaneLean.DeterminantalVariety

namespace HautevilleHouse
namespace LinkageCompleteIntersectionsDeterminantalIdealsLemmaCanonicalLaneLean

structure CompleteIntersectionPackage {D : DeterminantalVarietyPackage} where
  ideal : Type u
  codimension : Nat
  isCompleteIntersection : Prop
  regularSequenceExists : Prop
  isCompleteIntersectionTerm : isCompleteIntersection
  regularSequenceExistsTerm : regularSequenceExists

structure CompleteIntersectionEvidence {D : DeterminantalVarietyPackage}
    (C : CompleteIntersectionPackage D) where
  isCompleteIntersectionClosed : C.isCompleteIntersection
  regularSequenceExistsClosed : C.regularSequenceExists

def CompleteIntersectionClosed {D : DeterminantalVarietyPackage}
    (C : CompleteIntersectionPackage D) : Prop :=
  C.isCompleteIntersection ∧ C.regularSequenceExists

theorem complete_intersection_closed_from_evidence {D : DeterminantalVarietyPackage}
    (C : CompleteIntersectionPackage D) (E : CompleteIntersectionEvidence C) :
    CompleteIntersectionClosed C := by
  exact And.intro E.isCompleteIntersectionClosed E.regularSequenceExistsClosed

end LinkageCompleteIntersectionsDeterminantalIdealsLemmaCanonicalLaneLean
end HautevilleHouse