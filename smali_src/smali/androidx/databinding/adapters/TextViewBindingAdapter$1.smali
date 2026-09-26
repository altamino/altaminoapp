.class Landroidx/databinding/adapters/TextViewBindingAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/databinding/adapters/TextViewBindingAdapter;->c(Landroid/widget/TextView;Landroidx/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;Landroidx/databinding/adapters/TextViewBindingAdapter$OnTextChanged;Landroidx/databinding/adapters/TextViewBindingAdapter$AfterTextChanged;Landroidx/databinding/InverseBindingListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$after:Landroidx/databinding/adapters/TextViewBindingAdapter$AfterTextChanged;

.field final synthetic val$before:Landroidx/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;

.field final synthetic val$on:Landroidx/databinding/adapters/TextViewBindingAdapter$OnTextChanged;

.field final synthetic val$textAttrChanged:Landroidx/databinding/InverseBindingListener;


# direct methods
.method constructor <init>(Landroidx/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;Landroidx/databinding/adapters/TextViewBindingAdapter$OnTextChanged;Landroidx/databinding/InverseBindingListener;Landroidx/databinding/adapters/TextViewBindingAdapter$AfterTextChanged;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Landroidx/databinding/adapters/TextViewBindingAdapter$1;->val$before:Landroidx/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;

    .line 3
    .line 4
    iput-object p2, p0, Landroidx/databinding/adapters/TextViewBindingAdapter$1;->val$on:Landroidx/databinding/adapters/TextViewBindingAdapter$OnTextChanged;

    .line 5
    .line 6
    iput-object p3, p0, Landroidx/databinding/adapters/TextViewBindingAdapter$1;->val$textAttrChanged:Landroidx/databinding/InverseBindingListener;

    .line 7
    .line 8
    iput-object p4, p0, Landroidx/databinding/adapters/TextViewBindingAdapter$1;->val$after:Landroidx/databinding/adapters/TextViewBindingAdapter$AfterTextChanged;

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/databinding/adapters/TextViewBindingAdapter$1;->val$after:Landroidx/databinding/adapters/TextViewBindingAdapter$AfterTextChanged;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, p1}, Landroidx/databinding/adapters/TextViewBindingAdapter$AfterTextChanged;->afterTextChanged(Landroid/text/Editable;)V

    .line 8
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/databinding/adapters/TextViewBindingAdapter$1;->val$before:Landroidx/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, p1, p2, p3, p4}, Landroidx/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;->beforeTextChanged(Ljava/lang/CharSequence;III)V

    .line 8
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/databinding/adapters/TextViewBindingAdapter$1;->val$on:Landroidx/databinding/adapters/TextViewBindingAdapter$OnTextChanged;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, p1, p2, p3, p4}, Landroidx/databinding/adapters/TextViewBindingAdapter$OnTextChanged;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 8
    .line 9
    :cond_0
    iget-object p1, p0, Landroidx/databinding/adapters/TextViewBindingAdapter$1;->val$textAttrChanged:Landroidx/databinding/InverseBindingListener;

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
