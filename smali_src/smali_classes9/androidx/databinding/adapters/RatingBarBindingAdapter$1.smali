.class Landroidx/databinding/adapters/RatingBarBindingAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/RatingBar$OnRatingBarChangeListener;


# instance fields
.field final synthetic val$listener:Landroid/widget/RatingBar$OnRatingBarChangeListener;

.field final synthetic val$ratingChange:Landroidx/databinding/InverseBindingListener;


# virtual methods
.method public onRatingChanged(Landroid/widget/RatingBar;FZ)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/databinding/adapters/RatingBarBindingAdapter$1;->val$listener:Landroid/widget/RatingBar$OnRatingBarChangeListener;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, p1, p2, p3}, Landroid/widget/RatingBar$OnRatingBarChangeListener;->onRatingChanged(Landroid/widget/RatingBar;FZ)V

    .line 8
    .line 9
    :cond_0
    iget-object p1, p0, Landroidx/databinding/adapters/RatingBarBindingAdapter$1;->val$ratingChange:Landroidx/databinding/InverseBindingListener;

    .line 10
    .line 11
    .line 12
    invoke-interface {p1}, Landroidx/databinding/InverseBindingListener;->a()V

    .line 13
    return-void
.end method
