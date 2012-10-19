UITapOutsideGestureRecognizer
=============================

UITapOutsideGestureRecognizer is a subclass of UIGestureRecognizer that is executed with any tap **OUTSIDE** one view.


# Use

The use of this UITapGestureRecognizer subclass differs a little from the rest.
You create the UITapOutsideGestureRecognizer as always but using the method:

    - (id)initWithTarget:(id)target action:(SEL)action view:(UIView *)view;

In the view parameter you pass the **view in wich you want to apply the gesture recognizer**.

The you need to **add the gesture to the controller view**.

# Example

    UITapOutsideGestureRecognizer *tap = [[UITapOutsideGestureRecognizer alloc] initWithTarget:self action:@selector(tapOutside:) view:self.importantView];
    [self.view addGestureRecognizer:tap];