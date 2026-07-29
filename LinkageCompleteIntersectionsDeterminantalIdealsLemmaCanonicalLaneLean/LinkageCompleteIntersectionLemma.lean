import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.LinkageCompleteIntersectionsDeterminantalIdealsLemmaCanonicalLaneLean.LinkageStructure
import HautevilleHouse.LinkageCompleteIntersectionsDeterminantalIdealsLemmaCanonicalLaneLean.CompleteIntersectionStructure

namespace HautevilleHouse
namespace LinkageCompleteIntersectionsDeterminantalIdealsLemmaCanonicalLaneLean

structure LinkageCompleteIntersectionLemmaPackage (L : LinkagePackage) (C : CompleteIntersectionPackage) where
  linkedIdeal : Type u
  linkedIsCompleteIntersection : Prop
  linkagePreservesCompleteIntersection : Prop
  linkedIsCompleteIntersectionTerm : linkedIsCompleteIntersection
  linkagePreservesCompleteIntersectionTerm : linkagePreservesCompleteIntersection

structure LinkageCompleteIntersectionLemmaEvidence
    {L : LinkagePackage} {C : CompleteIntersectionPackage}
    (P : LinkageCompleteIntersectionLemmaPackage L C) where
  linkedIsCompleteIntersectionClosed : P.linkedIsCompleteIntersection
  linkagePreservesCompleteIntersectionClosed : P.linkagePreservesCompleteIntersection

def LinkageCompleteIntersectionLemmaClosed
    {L : LinkagePackage} {C : CompleteIntersectionPackage}
    (P : LinkageCompleteIntersectionLemmaPackage L C) : Prop :=
  P.linkedIsCompleteIntersection ∧ P.linkagePreservesCompleteIntersection

theorem linkage_complete_intersection_lemma_closed_from_evidence
    {L : LinkagePackage} {C : CompleteIntersectionPackage}
    (P : LinkageCompleteIntersectionLemmaPackage L C)
    (E : LinkageCompleteIntersectionLemmaEvidence P) :
    LinkageCompleteIntersectionLemmaClosed P := by
  exact And.intro E.linkedIsCompleteIntersectionClosed
    E.linkagePreservesCompleteIntersectionClosed

end LinkageCompleteIntersectionsDeterminantalIdealsLemmaCanonicalLaneLean
end HautevilleHouse
