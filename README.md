# Berber Organization Data Layer

Berber işletme uygulaması için veri katmanı. Bu paket, işletme uygulamasının backend servisleriyle iletişimini ve veri yönetimini sağlar.

## Özellikler

- İşletme profili yönetimi
- Randevu yönetimi
- Personel yönetimi
- Müşteri yönetimi
- Finans yönetimi
- Analiz ve raporlama
- Sosyal medya entegrasyonu

## Teknik Detaylar

### Kullanılan Teknolojiler

- Flutter
- GraphQL (berber2425/gql_client)
- API Layer (berber2425/flutter_api)
- Hive (yerel depolama)

### Geliştirme Ortamı Gereksinimleri

- Flutter SDK
- VS Code veya Android Studio
- Git

### Kurulum

1. Repository'yi klonlayın

```bash
git clone https://github.com/berber2425/org_data_layer.git
```

2. Bağımlılıkları yükleyin

```bash
flutter pub get
```

## Proje Yapısı

```
lib/
  ├── src/
  │   ├── models/        # Veri modelleri
  │   │   ├── profile/   # İşletme profili
  │   │   ├── staff/     # Personel
  │   │   ├── customer/  # Müşteri
  │   │   ├── booking/   # Randevu
  │   │   └── finance/   # Finans
  │   ├── repositories/  # Veri depoları
  │   │   ├── profile/   # İşletme profili
  │   │   ├── staff/     # Personel
  │   │   ├── customer/  # Müşteri
  │   │   ├── booking/   # Randevu
  │   │   └── finance/   # Finans
  │   ├── services/      # İş mantığı servisleri
  │   └── cache/         # Önbellekleme yönetimi
  └── org_data.dart      # Ana paket dosyası
```

## Kullanım

```dart
import 'package:berber_org_data/org_data.dart';

// Veri katmanını başlatma
final dataLayer = OrgDataLayer(
  api: BerberApi(...),
  cache: HiveCache(...),
);

// İşletme profili örneği
final profile = await dataLayer.profile.getProfile();
await dataLayer.profile.updateProfile(newData);

// Randevu yönetimi örneği
final bookings = await dataLayer.booking.getBookings(
  start: DateTime.now(),
  end: DateTime.now().add(Duration(days: 7)),
);
await dataLayer.booking.createBooking(newBooking);

// Personel yönetimi örneği
final staff = await dataLayer.staff.getStaffList();
await dataLayer.staff.addStaffMember(newStaff);

// Müşteri yönetimi örneği
final customers = await dataLayer.customer.searchCustomers('John');
await dataLayer.customer.updateCustomer(customerId, newData);

// Finans yönetimi örneği
final report = await dataLayer.finance.getMonthlyReport(
  year: 2024,
  month: 1,
);
```

## Katkıda Bulunma

1. Fork yapın
2. Feature branch oluşturun (`git checkout -b feature/amazing-feature`)
3. Değişikliklerinizi commit edin (`git commit -m 'feat: add amazing feature'`)
4. Branch'inizi push edin (`git push origin feature/amazing-feature`)
5. Pull Request oluşturun
