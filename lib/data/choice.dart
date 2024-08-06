
import '../Routes/routes.dart';
import '../utils/constants/images.dart';

class Choice {  
  const Choice({required this.title, required this.icon, this.route});  
  final String title;  
  final String icon; 
  final String? route; 
}  
  
const List<Choice> choices = <Choice>[  
  Choice(title: 'SIP Calculator', icon: AppImage.profit, route:Routes.sipScreenRoute),  
  Choice(title: 'Loan Calculator', icon: AppImage.salary),  
  Choice(title: 'SWP Calculator', icon: AppImage.wallet, route: Routes.swpScreenRoute),  
  Choice(title: 'FD Calculator', icon: AppImage.money, route: Routes.fdScreenRoute),  
  Choice(title: 'RD Calculator', icon: AppImage.purse, route: Routes.rdScreenRoute),  
  Choice(title: 'EMI Calculator', icon: AppImage.loan, route: Routes.emiScreenRoute),  
  Choice(title: 'EPF Calculator', icon: AppImage.administration),  
  Choice(title: 'Income Tax Calculator', icon: AppImage.tax), 
  Choice(title: 'PPF Calculator', icon: AppImage.shares),  
  Choice(title: 'GST Calculator', icon: AppImage.document),  
  Choice(title: 'Mutual Fund Returns Calculator', icon: AppImage.investment),  
  Choice(title: 'Sukanya Samriddhi Yojana  Calculator', icon: AppImage.contract) 
]; 