.class Landroidx/databinding/adapters/RadioGroupBindingAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# instance fields
.field final synthetic val$attrChange:Landroidx/databinding/InverseBindingListener;

.field final synthetic val$listener:Landroid/widget/RadioGroup$OnCheckedChangeListener;


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/databinding/adapters/RadioGroupBindingAdapter$1;->val$listener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, p1, p2}, Landroid/widget/RadioGroup$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/RadioGroup;I)V

    .line 8
    .line 9
    :cond_0
    iget-object p1, p0, Landroidx/databinding/adapters/RadioGroupBindingAdapter$1;->val$attrChange:Landroidx/databinding/InverseBindingListener;

    .line 10
    .line 11
    .line 12
    invoke-interface {p1}, Landroidx/databinding/InverseBindingListener;->a()V

    .line 13
    return-void
.end method
