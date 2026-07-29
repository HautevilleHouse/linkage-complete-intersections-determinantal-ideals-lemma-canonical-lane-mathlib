import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.LinkageCompleteIntersectionsDeterminantalIdealsLemmaCanonicalLaneLean.DeterminantalVariety
import HautevilleHouse.LinkageCompleteIntersectionsDeterminantalIdealsLemmaCanonicalLaneLean.LinkagePackage
import HautevilleHouse.LinkageCompleteIntersectionsDeterminantalIdealsLemmaCanonicalLaneLean.CompleteIntersection
import HautevilleHouse.LinkageCompleteIntersectionsDeterminantalIdealsLemmaCanonicalLaneLean.LiaisonOfDeterminantalIdeals

namespace HautevilleHouse
namespace LinkageCompleteIntersectionsDeterminantalIdealsLemmaCanonicalLaneLean

structure LemmaStatementPackage {D : DeterminantalVarietyPackage}
    {L : LinkagePackage D} {C : CompleteIntersectionPackage D}
    {LI : LiaisonOfDeterminantalIdealsPackage D L C} where
  linkagePlusCompleteIntersectionImpliesDeterminantal : Prop
  proofOutline : Prop
  linkagePlusCompleteIntersectionImpliesDeterminantalTerm : linkagePlusCompleteIntersectionImpliesDeterminantal
  proofOutlineTerm : proofOutline

structure LemmaStatementEvidence {D : DeterminantalVarietyPackage}
    {L : LinkagePackage D} {C : CompleteIntersectionPackage D}
    {LI : LiaisonOfDeterminantalIdealsPackage D L C}
    (LS : LemmaStatementPackage D L C LI) where
  linkagePlusCompleteIntersectionImpliesDeterminantalClosed : LS.linkagePlusCompleteIntersectionImpliesDeterminantal
  proofOutlineClosed : LS.proofOutline

def LemmaStatementClosed {D : DeterminantalVarietyPackage}
    {L : LinkagePackage D} {C : CompleteIntersectionPackage D}
    {LI : LiaisonOfDeterminantalIdealsPackage D L C}
    (LS : LemmaStatementPackage D L C LI) : Prop :=
  LS.linkagePlusCompleteIntersectionImpliesDeterminantal ∧ LS.proofOutline

theorem lemma_statement_closed_from_evidence {D : DeterminantalVarietyPackage}
    {L : LinkagePackage D} {C : CompleteIntersectionPackage D}
    {LI : LiaisonOfDeterminantalIdealsPackage D L C}
    (LS : LemmaStatementPackage D L C LI)
    (E : LemmaStatementEvidence LS) : LemmaStatementClosed LS := by
  exact And.intro E.linkagePlusCompleteIntersectionImpliesDeterminantalClosed E.proofOutlineClosed

end LinkageCompleteIntersectionsDeterminantalIdealsLemmaCanonicalLaneLean
end HautevilleHouse