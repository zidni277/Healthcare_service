import '../models/health_insurance_model.dart';

class HealthInsuranceViewModel {
  HealthInsuranceModel getHealthInsuranceData() {
    // Mock data for example
    return HealthInsuranceModel(insuredClients: 400, spent: 12700, available: 7300);
  }
}
