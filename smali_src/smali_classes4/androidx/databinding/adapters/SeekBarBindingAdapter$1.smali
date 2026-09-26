.class Landroidx/databinding/adapters/SeekBarBindingAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field final synthetic val$attrChanged:Landroidx/databinding/InverseBindingListener;

.field final synthetic val$progressChanged:Landroidx/databinding/adapters/SeekBarBindingAdapter$OnProgressChanged;

.field final synthetic val$start:Landroidx/databinding/adapters/SeekBarBindingAdapter$OnStartTrackingTouch;

.field final synthetic val$stop:Landroidx/databinding/adapters/SeekBarBindingAdapter$OnStopTrackingTouch;


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/databinding/adapters/SeekBarBindingAdapter$1;->val$progressChanged:Landroidx/databinding/adapters/SeekBarBindingAdapter$OnProgressChanged;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, p1, p2, p3}, Landroidx/databinding/adapters/SeekBarBindingAdapter$OnProgressChanged;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 8
    .line 9
    :cond_0
    iget-object p1, p0, Landroidx/databinding/adapters/SeekBarBindingAdapter$1;->val$attrChanged:Landroidx/databinding/InverseBindingListener;

    .line 10
    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    .line 14
    invoke-interface {p1}, Landroidx/databinding/InverseBindingListener;->a()V

    .line 15
    :cond_1
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/databinding/adapters/SeekBarBindingAdapter$1;->val$start:Landroidx/databinding/adapters/SeekBarBindingAdapter$OnStartTrackingTouch;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, p1}, Landroidx/databinding/adapters/SeekBarBindingAdapter$OnStartTrackingTouch;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    .line 8
    :cond_0
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/databinding/adapters/SeekBarBindingAdapter$1;->val$stop:Landroidx/databinding/adapters/SeekBarBindingAdapter$OnStopTrackingTouch;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, p1}, Landroidx/databinding/adapters/SeekBarBindingAdapter$OnStopTrackingTouch;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    .line 8
    :cond_0
    return-void
.end method
