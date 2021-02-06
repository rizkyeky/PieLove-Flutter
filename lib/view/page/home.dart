part of 'page.dart';

class HomePage extends StatelessWidget {

  final HomeBloc bloc = Get.put(HomeBloc());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF554AB2),
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                children: [
                  SizedBox(
                    height: 60,
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(32),
                          child: Container(
                            color: Colors.white,
                            height: 60,
                            width: 60,
                          ),
                        ),
                        const Spacer(),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text('Hello, Shadam', style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold
                            ),),
                            Text('What Pie you want to try today?', style: TextStyle(
                              color: Color(0xFF9B8FFF),
                              fontSize: 14,
                            ),)
                          ],
                        ),
                        const Spacer(),
                      ],
                    ),
                  ),
                  const SizedBox(height: 30,),
                  TextField(
                    cursorColor: Colors.white,
                    style: const TextStyle(color: Colors.white, ),
                    decoration: InputDecoration(
                      hintText: 'Find your favorite Pie',
                      hintStyle: const TextStyle(color: Color(0xFF9B8FFF)),
                      suffixIcon: const Icon(Icons.search, color: Color(0xFF9B8FFF),),
                      focusColor: Colors.white,
                      filled: true,
                      fillColor: const Color(0xFF4A3EAE),
                      border: OutlineInputBorder(
                        gapPadding: 0,
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none
                      )
                    ),
                  )
                ],
              ),
            ),
            DraggableScrollableSheet(
              initialChildSize: 0.72,
              minChildSize: 0.5,
              maxChildSize: 0.72,
              builder: (context, scrollController) => Container(
                clipBehavior: Clip.antiAlias,
                decoration: const BoxDecoration(
                  color: Color(0xFFF6F5FF),
                  borderRadius: BorderRadius.vertical(top: Radius.circular(24))
                ),
                child: SingleChildScrollView(
                  controller: scrollController,
                  padding: const EdgeInsets.all(30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Category', style: TextStyle(
                        color: Color(0xFF0E0943),
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                      ),),
                      const SizedBox(height: 12,),
                      ValueBuilder<int>(
                        initialValue: 0,
                        builder: (value, update) => Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            for (int i = 0; i < bloc.category.length; i++) SizedBox(
                              height: 90,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    height: 60,
                                    width: 60,
                                    child: Material(
                                      clipBehavior: Clip.antiAlias,
                                      color: value == i ? const Color(0xFFFA7854) : Colors.white,
                                      borderRadius: BorderRadius.circular(12),
                                      child: InkWell(
                                        onTap: () => update(i),
                                        child: Padding(
                                          padding: const EdgeInsets.all(12),
                                          child: SvgPicture.asset(bloc.category[i]['icon'] as String, 
                                            color: value == i ? Colors.white : const Color(0xFF554AB2),
                                          ),
                                        )
                                      ),
                                    ),
                                  ),
                                  Text(bloc.category[i]['name'] as String, style: const TextStyle(
                                    color: Color(0xFF0E0943)
                                  ),)
                                ],
                              ),
                            )
                          ]
                        )
                      ),
                      const SizedBox(height: 30,),
                      const Text('Popular Sweet Pie', style: TextStyle(
                        color: Color(0xFF0E0943),
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                      ),),
                      const SizedBox(height: 12,),
                      SizedBox(
                        height: 220,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 3,
                          itemBuilder: (context, index) => Padding(
                            padding: const EdgeInsets.only(right: 12),
                            child: SizedBox(
                              width: 150,
                              child: Material(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12),
                                clipBehavior: Clip.antiAlias,
                                child: InkWell(
                                  onTap: () {},
                                  child: Padding(
                                    padding: const EdgeInsets.all(12),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(12),
                                          ),
                                          clipBehavior: Clip.antiAlias,
                                          child: Ink.image(
                                            fit: BoxFit.cover,
                                            image: AssetImage(bloc.popular[index]['img'] as String),
                                            child: Container(
                                              height: 120,
                                              clipBehavior: Clip.antiAlias,
                                              alignment: Alignment.bottomLeft,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(12),
                                              ),
                                              child: Container(
                                                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                                                decoration: BoxDecoration(
                                                  color: Colors.white.withOpacity(0.7),
                                                  borderRadius: const BorderRadius.only(topRight: Radius.circular(12))
                                                ),
                                                child: const Text('20-30 Min')
                                              ),
                                            ),
                                          ),
                                        ),
                                        const Spacer(),
                                        Text(bloc.popular[index]['name'] as String, style: const TextStyle(
                                          color: Color(0xFF0E0943),
                                          fontSize: 14,
                                        ),),
                                        const Spacer(),
                                        Row(
                                          children: const [
                                             Icon(Icons.star, color: Color(0xFFFA7854)),
                                            Text('4.5', style: TextStyle(
                                              color: Color(0xFFFA7854)
                                            ),)
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}