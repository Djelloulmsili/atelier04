class Compte {
  double _solde;
  final String numeroCompte;

  Compte(this.numeroCompte, this._solde);

  String get solde {
    return "${_solde.toStringAsFixed(2)} \$";
  }

  void depot(double montant) {
    if (montant > 0) {
      _solde += montant;
    }
  }

  void retrait(double montant) {
    if (montant > 0 && montant <= _solde) {
      _solde -= montant;
    }
  }
}

void main() {
  Compte compte = Compte("C001", 0.0);

  compte.depot(150.0);

  print(compte.solde);
}
