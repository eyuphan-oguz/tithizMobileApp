enum ApiEndpoints {
  login,
  getUserProfile,
  getProductList,
  // Diğer endpointleri burada tanımlayın
}

class ApiEndpointUrls {
  static const Map<ApiEndpoints, String> _endpointUrls = {
    ApiEndpoints.login: 'https://example.com/api/login',
    ApiEndpoints.getUserProfile: 'https://example.com/api/user/profile',
    ApiEndpoints.getProductList: 'https://example.com/api/products',
    // Diğer endpoint URL'lerini burada tanımlayın
  };

  static String getEndpointUrl(ApiEndpoints endpoint) {
    return _endpointUrls[endpoint] ?? '';
  }
}

void fetchData(ApiEndpoints endpoint) {
  final String url = ApiEndpointUrls.getEndpointUrl(endpoint);

  if (url.isEmpty) {
    print('Hatalı veya tanımsız bir endpoint seçildi.');
    return;
  }

  // Endpoint'e isteği göndermek veya başka işlemler yapmak için URL'i kullanabilirsiniz.
}

//void main() {
  // Kullanım örneği:
//  fetchData(ApiEndpoints.getUserProfile);
//}
