import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricMethodsCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  geometricStatement : String
  certificateLane : String
  carriedRemainder : String
  deriving Repr, DecidableEq

def sourceRepository : String :=
  "geometric-methods-canonical-lane"

def sourceDescription : String :=
  "Geometric Methods Canonical Lane"

def sourceTheoremBoundary : String :=
  "classical boundary carried"

def baselineCertificateLane : String :=
  "geometric_constrained"

def sourceTheoremStatement : TheoremStatement :=
  { sourceKey := sourceRepository,
    theoremName := sourceRepository,
    theoremObject := sourceDescription,
    classicalBoundary := sourceTheoremBoundary,
    geometricStatement := "geometric method theorem certificate internalized through admissible class",
    certificateLane := baselineCertificateLane,
    carriedRemainder := "classical source boundary carried by formalization"
  }

end GeometricMethodsCanonicalLaneLean
end HautevilleHouse