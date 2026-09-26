.class Landroidx/databinding/adapters/ViewGroupBindingAdapter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic val$end:Landroidx/databinding/adapters/ViewGroupBindingAdapter$OnAnimationEnd;

.field final synthetic val$repeat:Landroidx/databinding/adapters/ViewGroupBindingAdapter$OnAnimationRepeat;

.field final synthetic val$start:Landroidx/databinding/adapters/ViewGroupBindingAdapter$OnAnimationStart;


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/databinding/adapters/ViewGroupBindingAdapter$2;->val$end:Landroidx/databinding/adapters/ViewGroupBindingAdapter$OnAnimationEnd;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, p1}, Landroidx/databinding/adapters/ViewGroupBindingAdapter$OnAnimationEnd;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 8
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/databinding/adapters/ViewGroupBindingAdapter$2;->val$repeat:Landroidx/databinding/adapters/ViewGroupBindingAdapter$OnAnimationRepeat;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, p1}, Landroidx/databinding/adapters/ViewGroupBindingAdapter$OnAnimationRepeat;->onAnimationRepeat(Landroid/view/animation/Animation;)V

    .line 8
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/databinding/adapters/ViewGroupBindingAdapter$2;->val$start:Landroidx/databinding/adapters/ViewGroupBindingAdapter$OnAnimationStart;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, p1}, Landroidx/databinding/adapters/ViewGroupBindingAdapter$OnAnimationStart;->onAnimationStart(Landroid/view/animation/Animation;)V

    .line 8
    :cond_0
    return-void
.end method
