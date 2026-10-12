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
}
