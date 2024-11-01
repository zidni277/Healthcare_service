import '../../features/insurance/models/health_insurance_model.dart';

class HealthInsuranceRepository {
  HealthInsuranceModel fetchHealthInsuranceData() {
    return HealthInsuranceModel(insuredClients: 400, spent: 12700, available: 7300);
  }
}
