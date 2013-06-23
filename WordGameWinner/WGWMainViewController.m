//
//  WGWMainViewController.m
//  WordGameWinner
//
//  Created by Amy Bryce on 3/15/13.
//  Copyright (c) 2013 Amy Bryce. All rights reserved.
//

#import "WGWMainViewController.h"
#import "WGWSolver.h"
#import "WGWWords.h"
#import "ScrabbleSolverViewController.h"
#import "WGWSolverViewController.h"
#import "WGWWordViewController.h"

@interface WGWMainViewController ()

@end

@implementation WGWMainViewController

@synthesize solverArray;

- (id)init
{
    // Call the superclass's designated initializer
    self = [super initWithStyle:UITableViewStyleGrouped];
    if (self) {
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //self.title = @"Word Game Winner";
    
    // Create your image
    UIImage *image = [UIImage imageNamed: @"WGWlogoNavLong.png"];
    UIImageView *imageView = [[UIImageView alloc] initWithImage: image];
    imageView.contentMode=UIViewContentModeScaleAspectFit;
    
    // set the titleView to the image view
    self.navigationItem.titleView = imageView;
        
    WGWSolver *scrabbleSolver = [[WGWSolver alloc] initWithTitleName:@"Scrabble Solver"];
    scrabbleSolver.type = searchOptionTypeScrabbleSolver;
    scrabbleSolver.description = @"A bunch of words that are the description";
    WGWSolver *wordUnscrambler = [[WGWSolver alloc] initWithTitleName:@"Word Unscrambler"];
    wordUnscrambler.type = searchOptionTypeOtherSolver;
    WGWSolver *anagramSolver = [[WGWSolver alloc] initWithTitleName:@"Anagram Solver"];
    anagramSolver.type = searchOptionTypeOtherSolver;
    WGWSolver *jumbleSolver = [[WGWSolver alloc] initWithTitleName:@"Jumble Solver"];
    jumbleSolver.type = searchOptionTypeOtherSolver;
    WGWWords *jScrabbleWords = [[WGWWords alloc]initWithTitleName:@"J Scrabble Words"];
    jScrabbleWords.type = searchOptionTypeWords;
    WGWWords *qScrabbleWords = [[WGWWords alloc]initWithTitleName:@"Q Scrabble Words"];
    qScrabbleWords.type = searchOptionTypeWords;
    WGWWords *xScrabbleWords = [[WGWWords alloc]initWithTitleName:@"X Scrabble Words"];
    xScrabbleWords.type = searchOptionTypeWords;
    WGWWords *zScrabbleWords = [[WGWWords alloc]initWithTitleName:@"Z Scrabble Words"];
    zScrabbleWords.type = searchOptionTypeWords;
    
    self.solverArray = @[scrabbleSolver,wordUnscrambler,anagramSolver,jumbleSolver,jScrabbleWords,qScrabbleWords,xScrabbleWords,zScrabbleWords];
    //self.solverArray = [[NSArray alloc] initWithObjects:scrabbleSolver,wordUnscrambler,anagramSolver,jumbleSolver, nil];
    
    // Share button on Navigation Bar
    UIBarButtonItem *infoButton = [[UIBarButtonItem alloc]
                                   initWithBarButtonSystemItem:UIBarButtonSystemItemAction
                                   target:self
                                   action:@selector(share)];
    self.navigationItem.rightBarButtonItem = infoButton;

}


//TableView Delegate Methods
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.solverArray count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellIdentifier = @"cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    if(!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    
    WGWSearchOption *searchOption = [self.solverArray objectAtIndex:indexPath.row];
    
    cell.textLabel.text = searchOption.name;
    
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    WGWSearchOption *searchOption = [self.solverArray objectAtIndex:indexPath.row];
    
    UIViewController *viewController = nil;
    if (searchOption.type == searchOptionTypeScrabbleSolver) {
        viewController = [[ScrabbleSolverViewController alloc]initWithSolver:searchOption];
    }
    else if (searchOption.type == searchOptionTypeOtherSolver) {
        viewController = [[WGWSolverViewController alloc]initWithSolver:searchOption];
    }
    else if (searchOption.type == searchOptionTypeWords) {
        viewController = [[WGWWordViewController alloc]initWithSolver:searchOption];
    }
    
    UIBarButtonItem *newBackButton = [[UIBarButtonItem alloc] initWithTitle: @"Back" style:
                                      UIBarButtonItemStyleBordered target: nil action: nil];
    [[self navigationItem] setBackBarButtonItem: newBackButton];
    
    [self.navigationController pushViewController:viewController animated:YES];
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
}
    @end
