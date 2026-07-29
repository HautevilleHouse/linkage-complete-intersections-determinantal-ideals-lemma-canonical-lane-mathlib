import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.LinkageCompleteIntersectionsDeterminantalIdealsLemmaCanonicalLaneLean.LinkageAlgebraicStructure

namespace HautevilleHouse
namespace LinkageCompleteIntersectionsDeterminantalIdealsLemmaCanonicalLaneLean

structure LinkageInvariantTheoryPackage {G : DeterminantalIdealsPackage}
    {D : DeterminantalIdealsPackage} {L : LinkageAlgebraicStructurePackage D}
    (LI : LinkageAlgebraicStructurePackage D) where
  invariantRing : Type u
  invariantsGeneratedByMinors : Prop
  linkageInvariance : Prop

structure LinkageInvariantTheoryEvidence {G : DeterminantalIdealsPackage}
    {D : DeterminantalIdealsPackage} {L : LinkageAlgebraicStructurePackage D}
    {LI : LinkageAlgebraicStructurePackage D} (I : LinkageInvariantTheoryPackage LI) where
  invariantsGeneratedByMinorsClosed : I.invariantsGeneratedByMinors
  linkageInvarianceClosed : I.linkageInvariance

def LinkageInvariantTheoryClosed {G : DeterminantalIdealsPackage}
    {D : DeterminantalIdealsPackage} {L : LinkageAlgebraicStructurePackage D}
    {LI : LinkageAlgebraicStructurePackage D} (I : LinkageInvariantTheoryPackage LI) : Prop :=
  I.invariantsGeneratedByMinors ∧ I.linkageInvariance

theorem linkage_invariant_theory_closed_from_evidence
    {G : DeterminantalIdealsPackage} {D : DeterminantalIdealsPackage}
    {L : LinkageAlgebraicStructurePackage D} {LI : LinkageAlgebraicStructurePackage D}
    (I : LinkageInvariantTheoryPackage LI) (E : LinkageInvariantTheoryEvidence I) :
    LinkageInvariantTheoryClosed I := by
  exact And.intro E.invariantsGeneratedByMinorsClosed E.linkageInvarianceClosed

end LinkageCompleteIntersectionsDeterminantalIdealsLemmaCanonicalLaneLean
end HautevilleHouse
