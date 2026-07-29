import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinkageCompleteIntersectionsDeterminantalIdealsLemmaCanonicalLaneLean

structure DeterminantalLinkagePackage {L : LinkagePackage} (D : DeterminantalIdealsPackage L) (C : CompleteIntersectionPackage L) where
  linkageWitness : L.isLinkage D.idealGeneratedByMinors C.ciRegularSequenceLength
  linkageWitnessClosed : linkageWitness
  linkageSequenceLengthMatchesMinorsRank : L.linkageDegreeNat = D.minorsRank
  linkageSequenceLengthMatchesMinorsRankClosed : linkageSequenceLengthMatchesMinorsRank
  linkageSequenceLengthMatchesMinorsRankTerm : linkageSequenceLengthMatchesMinorsRankClosed

def DeterminantalLinkageClosed {L : LinkagePackage} {D : DeterminantalIdealsPackage L} {C : CompleteIntersectionPackage L} (P : DeterminantalLinkagePackage D C) : Prop :=
  P.linkageWitness ∧ P.linkageSequenceLengthMatchesMinorsRank

theorem determinantal_linkage_closed_from_evidence {L : LinkagePackage} {D : DeterminantalIdealsPackage L} {C : CompleteIntersectionPackage L} (P : DeterminantalLinkagePackage D C) : DeterminantalLinkageClosed P := by
  exact And.intro P.linkageWitnessClosed P.linkageSequenceLengthMatchesMinorsRankClosed

end LinkageCompleteIntersectionsDeterminantalIdealsLemmaCanonicalLaneLean
end HautevilleHouse
