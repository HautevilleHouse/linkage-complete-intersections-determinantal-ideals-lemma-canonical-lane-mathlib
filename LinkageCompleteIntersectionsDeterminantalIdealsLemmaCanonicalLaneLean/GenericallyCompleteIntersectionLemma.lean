import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.LinkageCompleteIntersectionsDeterminantalIdealsLemmaCanonicalLaneLean.DeterminantalIdealsStructure
import HautevilleHouse.LinkageCompleteIntersectionsDeterminantalIdealsLemmaCanonicalLaneLean.CompleteIntersectionStructure

namespace HautevilleHouse
namespace LinkageCompleteIntersectionsDeterminantalIdealsLemmaCanonicalLaneLean

structure GenericallyCompleteIntersectionLemmaPackage
    (D : DeterminantalIdealPackage) (C : CompleteIntersectionPackage) where
  genericallyCompleteIntersection : Prop
  determinantalIdealIsGenericallyCompleteIntersection : Prop
  genericallyCompleteIntersectionTerm : genericallyCompleteIntersection
  determinantalIdealIsGenericallyCompleteIntersectionTerm : determinantalIdealIsGenericallyCompleteIntersection

structure GenericallyCompleteIntersectionLemmaEvidence
    {D : DeterminantalIdealPackage} {C : CompleteIntersectionPackage}
    (P : GenericallyCompleteIntersectionLemmaPackage D C) where
  genericallyCompleteIntersectionClosed : P.genericallyCompleteIntersection
  determinantalIdealIsGenericallyCompleteIntersectionClosed : P.determinantalIdealIsGenericallyCompleteIntersection

def GenericallyCompleteIntersectionLemmaClosed
    {D : DeterminantalIdealPackage} {C : CompleteIntersectionPackage}
    (P : GenericallyCompleteIntersectionLemmaPackage D C) : Prop :=
  P.genericallyCompleteIntersection ∧ P.determinantalIdealIsGenericallyCompleteIntersection

theorem generically_complete_intersection_lemma_closed_from_evidence
    {D : DeterminantalIdealPackage} {C : CompleteIntersectionPackage}
    (P : GenericallyCompleteIntersectionLemmaPackage D C)
    (E : GenericallyCompleteIntersectionLemmaEvidence P) :
    GenericallyCompleteIntersectionLemmaClosed P := by
  exact And.intro E.genericallyCompleteIntersectionClosed
    E.determinantalIdealIsGenericallyCompleteIntersectionClosed

end LinkageCompleteIntersectionsDeterminantalIdealsLemmaCanonicalLaneLean
end HautevilleHouse
