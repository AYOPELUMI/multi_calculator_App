
import 'utils/constatnts/images.dart';
class Choice {  
  const Choice({required this.title, required this.icon});  
  final String title;  
  final String icon;  
}  
  
const List<Choice> choices = <Choice>[  
  Choice(title: 'SIP Calculator', icon: AppImage.profit),  
  Choice(title: 'Loan Calculator', icon: AppImage.salary),  
  Choice(title: 'SWP Calculator', icon: AppImage.wallet),  
  Choice(title: 'FD Calculator', icon: AppImage.money),  
  Choice(title: 'RD Calculator', icon: AppImage.purse),  
  Choice(title: 'EMI Calculator', icon: AppImage.loan),  
  Choice(title: 'EPF Calculator', icon: AppImage.administration),  
  Choice(title: 'Income Tax Calculator', icon: AppImage.tax), 
  Choice(title: 'PPF Calculator', icon: AppImage.shares),  
  Choice(title: 'GST Calculator', icon: AppImage.document),  
  Choice(title: 'Mutual Fund Returns Calculator', icon: AppImage.investment),  
  Choice(title: 'Sukanya Samriddhi Yojana  Calculator', icon: AppImage.contract) 
]; 