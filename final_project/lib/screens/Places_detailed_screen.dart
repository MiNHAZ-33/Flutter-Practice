import 'package:final_project/provider/places_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

class PlacesDetailedScreen extends StatelessWidget {
  const PlacesDetailedScreen({Key? key}) : super(key: key);

  static const routeName = '/places-details';

  @override
  Widget build(BuildContext context) {
    final detailed_id = ModalRoute.of(context)!.settings.arguments as String;
    final details = Provider.of<PlacesList>(context).findById(detailed_id);

    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
        title: Text(
          details.title,
          style: Theme.of(context).textTheme.headline1,
        ),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: SingleChildScrollView(
            child: Column(
          children: [
            Card(
              elevation: 10,
              child: Image.network(details.imageUrl),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(details.duration.toString() + ' Days trip'),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(details.price.toString() + '  BDT Only'),
              ),
            ),
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Amet commodo nulla facilisi nullam vehicula. Tortor id aliquet lectus proin. Commodo viverra maecenas accumsan lacus vel facilisis volutpat est velit. Aliquam ut porttitor leo a diam. Est sit amet facilisis magna etiam. Augue mauris augue neque gravida in fermentum et. Duis tristique sollicitudin nibh sit amet. Egestas integer eget aliquet nibh praesent tristique. At tellus at urna condimentum mattis pellentesque id nibh. Duis at consectetur lorem donec massa sapien faucibus. Urna molestie at elementum eu facilisis sed. Pretium vulputate sapien nec sagittis aliquam malesuada. A diam maecenas sed enim ut sem viverra. Risus at ultrices mi tempus imperdiet nulla malesuada. Nunc sed augue lacus viverra vitae. Fringilla phasellus faucibus scelerisque eleifend donec pretium vulputate sapien nec. Ut consequat semper viverra nam libero justo. A condimentum vitae sapien pellentesque habitant morbi tristique senectus. Nulla at volutpat diam ut venenatis tellus in.nissim sodales ut eu sem integer vitae justo. Morbi tincidunt ornare massa eget egestas purus. Augue ut lectus arcu bibendum at varius vel. Nam at lectus urna duis convallis convallis tellus id. Ornare arcu dui vivamus arcu. Morbi tristique senectus et netus et malesuada fames ac turpis. Fusce id velit ut tortor pretium viverra suspendisse potenti nullam. Rhoncus aenean vel elit scelerisque mauris pellentesque pulvinar. Ornare massa eget egestas purus viverra accumsan. Ornare massa eget egestas purus viverra accumsan. Sit amet porttitor eget dolor morbi non. Netus et malesuada fames ac turpis.sed augue lacus viverra vitae congue eu consequat ac. Risus in hendrerit gravida rutrum. Ultrices eros in cursus turpis massa tincidunt dui ut. Aliquam faucibus purus in massa tempor nec feugiat nisl pretium. Pellentesque adipiscing commodo elit at imperdiet dui accumsan. Risus feugiat in ante metus. Mauris cursus mattis molestie a iaculis at. Congue quisque egestas diam in arcu cursus euismod quis viverra. Id diam vel quam elementum. Congue mauris rhoncus aenean vel elit scelerisque mauris. Volutpat odio facilisis mauris sit. Posuere lorem ipsum dolor sit amet consectetur adipiscing. Nunc sed velit dignissim sodales. Viverra nam libero justo laoreet sit. Elementum nibh tellus molestie nunc non blandit massa. Feugiat vivamus at augue eget arcu dictum varius duis. Pretium viverra suspendisse potenti nullam ac. Fringilla urna porttitor rhoncus dolor purus. Nisl suscipit adipiscing bibendum est ultricies integer.',
              softWrap: true,
            ),
          ],
        )),
      ),
    );
  }
}
