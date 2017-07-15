//
//  FoodChainPage.m
//  quizzMe
//
//  Created by Faris Zaman on 10/03/2017.
//  Copyright © 2017 --. All rights reserved.
//

#import "FoodChainPage.h"

@interface FoodChainPage ()

@end

@implementation FoodChainPage

-(instancetype)initWithCoder:(NSCoder *)decoder {
    if (self = [super initWithCoder:decoder]) {
        _currentTitle = 0;
        _currentText = 0;
        _currentPicture1 = 0;
        _currentPicture2 = 0;
        
        self.foodChainTitle = [[NSMutableArray alloc]initWithObjects:@"What is a food chain?", @"What is a food chain?", @"Producers and consumers", @"Producers and consumers", @"What types of food do animals eat?", @"What types of food do animals eat?", @"What types of food do animals eat?", nil];
        
        self.foodChainFacts = [[NSMutableArray alloc]initWithObjects:@"All living things, including humans, animals and plants, need energy to live but where do they get their energy from? The answer is easy. All living things get their energy from food! Plants make their own food with the help of sunlight, air and water. Animals and humans don’t produce their own food, so they need to eat plants or other animals to get energy and survive. They are all part of a food chain", @"A food chain shows how plants and animals depend on each other as their source of food. For instance, a caterpillar eats plants, mice eat caterpillars and owls eat mice! There! A perfectly simple food chain! And we can see food chains happening underwater too! Small fish feed on algae. Small fish are eaten by bigger fish and bigger fish are eaten by sea lions, who are then eaten by sharks. There are lots of different food chains taking place around us, but food chains usually start with a plant and finish with a big hungry animal!", @"Plants get their energy from the Sun. They are called producers because they make their own food", @"Animals are called consumers because they eat plants and other animals. They do not make their own food. \n \nAnimals that eat other animals are called predators. The animals they eat are called prey.", @"Animals can be put into groups based on the types of food they eat. Some animals called carnivores only eat meat. \n \nSome examples of carnivores would be; tigers, dogs and sharks", @"Others are called ‘herbivores’. They only eat plants. \n \nSome examples of herbiovers would be; snails, girraffes and hamsters", @"Animals that eat meat and plants are called ‘omnivores’. \n \nExamples of omnivores would be; bears, pigs and even humans!", nil];
        
        self.foodChainPicturesImageOne = [[NSMutableArray alloc]initWithObjects:@"plantsynth.png", @"caterpillar.png", @"park.png", @"giraffe.png", @"tiger.png", @"giraffepoo.png", @"bear.png", nil];
        
        self.foodChainPicturesImageTwo = [[NSMutableArray alloc]initWithObjects:@"herbivore_300.png", @"owl.png", @"apple.png", @"competition.png", @"dog.png", @"hamster.png", @"boy.png", nil];
                               
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.titleQuestion.text = [self.foodChainTitle objectAtIndex:0];
    self.contentText.text = [self.foodChainFacts objectAtIndex:0];
    
    self.imageOne.image = [UIImage imageNamed:[self.foodChainPicturesImageOne objectAtIndex:0]];
    self.imageTwo.image = [UIImage imageNamed:[self.foodChainPicturesImageTwo objectAtIndex:0]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)nextButton:(id)sender {
    
    NSString *title = _foodChainTitle[_currentTitle++];
    _titleQuestion.text = title;
    if ( _currentTitle == _foodChainTitle.count){
        _currentTitle = 0;
    }
    
    NSString *str = _foodChainFacts[_currentText++];
    _contentText.text = str;
    if (_currentText == _foodChainFacts.count) {
        _currentText = 0;
    }
    
    NSString *picture1 = _foodChainPicturesImageOne[_currentPicture1++];
    _imageOne.image = [UIImage imageNamed:picture1];
    if (_currentPicture1 == _foodChainPicturesImageOne.count){
        _currentPicture1 = 0;
    }
    
    NSString *picture2 = _foodChainPicturesImageTwo[_currentPicture2++];
    _imageTwo.image = [UIImage imageNamed:picture2];
    if ( _currentPicture2 == _foodChainPicturesImageTwo.count){
        _currentPicture2 = 0;
    }

}

    @end

