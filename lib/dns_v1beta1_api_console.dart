library dns_v1beta1_api.console;

import "package:google_oauth2_client/google_oauth2_console.dart" as oauth2;

import 'package:google_dns_v1beta1_api/src/console_client.dart';

import "package:google_dns_v1beta1_api/dns_v1beta1_api_client.dart";

/** The Google Cloud DNS API provides services for configuring and serving authoritative DNS records. */
class Dns extends Client with ConsoleClient {

  /** OAuth Scope2: View and manage your data across Google Cloud Platform services */
  static const String CLOUD_PLATFORM_SCOPE = "https://www.googleapis.com/auth/cloud-platform";

  /** OAuth Scope2: View your DNS records hosted by Google Cloud DNS */
  static const String NDEV_CLOUDDNS_READONLY_SCOPE = "https://www.googleapis.com/auth/ndev.clouddns.readonly";

  /** OAuth Scope2: View and manage your DNS records hosted by Google Cloud DNS */
  static const String NDEV_CLOUDDNS_READWRITE_SCOPE = "https://www.googleapis.com/auth/ndev.clouddns.readwrite";

  final oauth2.OAuth2Console auth;

  Dns([oauth2.OAuth2Console this.auth]);
}
