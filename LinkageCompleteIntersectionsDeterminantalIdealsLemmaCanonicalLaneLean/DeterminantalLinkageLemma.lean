import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.LinkageCompleteIntersectionsDeterminantalIdealsLemmaCanonicalLaneLean.LinkageInvariantTheory

namespace HautevilleHouse
namespace LinkageCompleteIntersectionsDeterminantalIdealsLemmaCanonicalLaneLean

structure DeterminantalLinkageLemmaPackage {G : DeterminantalIdealsPackage}
    {D : DeterminantalIdealsPackage} {L : LinkageAlgebraicStructurePackage D}
    {LI : LinkageAlgebraicStructurePackage D} {I : LinkageInvariantTheoryPackage LI}
    (DL : LinkageInvariantTheoryPackage LI) where
  linkageClass : Type u
  completeIntersectionCondition : Prop
  determinantalLinkageStatement : Prop

structure DeterminantalLinkageLemmaEvidence {G : DeterminantalIdealsPackage}
    {D : DeterminantalIdealsPackage} {L : LinkageAlgebraicStructurePackage D}
    {LI : LinkageAlgebraicStructurePackage D} {I : LinkageInvariantTheoryPackage LI}
    {DL : LinkageInvariantTheoryPackage LI} (DLem : DeterminantalLinkageLemmaPackage DL) where
  completeIntersectionConditionClosed : DLem.completeIntersectionCondition
  determinantalLinkageStatementClosed : DLem.determinantalLinkageStatement

def DeterminantalLinkageLemmaClosed {G : DeterminantalIdealsPackage}
    {D : DeterminantalIdealsPackage} {L : LinkageAlgebraicStructurePackage D}
    {LI : LinkageAlgebraicStructurePackage D} {I : LinkageInvariantTheoryPackage LI}
    {DL : LinkageInvariantTheoryPackage LI} (DLem : DeterminantalLinkageLemmaPackage DL) : Prop :=
  DLem.completeIntersectionCondition ∧ DLem.determinantalLinkageStatement

theorem determinantal_linkage_lemma_closed_from_evidence
    {G : DeterminantalIdealsPackage} {D : DeterminantalIdealsPackage}
    {L : LinkageAlgebraicStructurePackage D} {LI : LinkageAlgebraicStructurePackage D}
    {I : LinkageInvariantTheoryPackage LI} {DL : LinkageInvariantTheoryPackage LI}
    (DLem : DeterminantalLinkageLemmaPackage DL) (E : DeterminantalLinkageLemmaEvidence DLem) :
    DeterminantalLinkageLemmaClosed DLem := by
  exact And.intro E.completeIntersectionConditionClosed E.determinantalLinkageStatementClosed

end LinkageCompleteIntersectionsDeterminantalIdealsLemmaCanonicalLaneLean
end HautevilleHouse
