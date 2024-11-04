import 'package:odoo_rpc/odoo_rpc.dart';

void main() async {
  final client = OdooClient('https://kamaju.tbdigitalindo.co.id/');
  try {
    await client.authenticate('PROJ_KAMAJU_240729', 'mobile', 'dev');
    final res = await client.callRPC('/web/session/modules', 'call', {});
    print('Installed modules: \n$res');
  } on OdooException catch (e) {
    print(e);
    client.close();
  }
  client.close();
}