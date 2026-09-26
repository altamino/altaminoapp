.class Landroidx/databinding/adapters/ViewBindingAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field final synthetic val$attach:Landroidx/databinding/adapters/ViewBindingAdapter$OnViewAttachedToWindow;

.field final synthetic val$detach:Landroidx/databinding/adapters/ViewBindingAdapter$OnViewDetachedFromWindow;


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/databinding/adapters/ViewBindingAdapter$1;->val$attach:Landroidx/databinding/adapters/ViewBindingAdapter$OnViewAttachedToWindow;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, p1}, Landroidx/databinding/adapters/ViewBindingAdapter$OnViewAttachedToWindow;->onViewAttachedToWindow(Landroid/view/View;)V

    .line 8
    :cond_0
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/databinding/adapters/ViewBindingAdapter$1;->val$detach:Landroidx/databinding/adapters/ViewBindingAdapter$OnViewDetachedFromWindow;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, p1}, Landroidx/databinding/adapters/ViewBindingAdapter$OnViewDetachedFromWindow;->onViewDetachedFromWindow(Landroid/view/View;)V

    .line 8
    :cond_0
    return-void
.end method
