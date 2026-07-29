import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.LinkageCompleteIntersectionsDeterminantalIdealsLemmaCanonicalLaneLean.DeterminantalVariety
import HautevilleHouse.LinkageCompleteIntersectionsDeterminantalIdealsLemmaCanonicalLaneLean.LinkagePackage
import HautevilleHouse.LinkageCompleteIntersectionsDeterminantalIdealsLemmaCanonicalLaneLean.CompleteIntersection

namespace HautevilleHouse
namespace LinkageCompleteIntersectionsDeterminantalIdealsLemmaCanonicalLaneLean

structure LiaisonOfDeterminantalIdealsPackage {D : DeterminantalVarietyPackage}
    {L : LinkagePackage D} {C : CompleteIntersectionPackage D} where
  linkedIdealIsDeterminantal : Prop
  linkagePreservesCohenMacaulay : Prop
  liaisonClassClosed : Prop
  linkedIdealIsDeterminantalTerm : linkedIdealIsDeterminantal
  linkagePreservesCohenMacaulayTerm : linkagePreservesCohenMacaulay
  liaisonClassClosedTerm : liaisonClassClosed

structure LiaisonOfDeterminantalIdealsEvidence {D : DeterminantalVarietyPackage}
    {L : LinkagePackage D} {C : CompleteIntersectionPackage D}
    (LI : LiaisonOfDeterminantalIdealsPackage D L C) where
  linkedIdealIsDeterminantalClosed : LI.linkedIdealIsDeterminantal
  linkagePreservesCohenMacaulayClosed : LI.linkagePreservesCohenMacaulay
  liaisonClassClosedClosed : LI.liaisonClassClosed

def LiaisonOfDeterminantalIdealsClosed {D : DeterminantalVarietyPackage}
    {L : LinkagePackage D} {C : CompleteIntersectionPackage D}
    (LI : LiaisonOfDeterminantalIdealsPackage D L C) : Prop :=
  LI.linkedIdealIsDeterminantal ∧ LI.linkagePreservesCohenMacaulay ∧ LI.liaisonClassClosed

theorem liaison_of_determinantal_ideals_closed_from_evidence
    {D : DeterminantalVarietyPackage} {L : LinkagePackage D} {C : CompleteIntersectionPackage D}
    (LI : LiaisonOfDeterminantalIdealsPackage D L C)
    (E : LiaisonOfDeterminantalIdealsEvidence LI) : LiaisonOfDeterminantalIdealsClosed LI := by
  exact And.intro E.linkedIdealIsDeterminantalClosed
    (And.intro E.linkagePreservesCohenMacaulayClosed E.liaisonClassClosedClosed)

end LinkageCompleteIntersectionsDeterminantalIdealsLemmaCanonicalLaneLean
end HautevilleHouse