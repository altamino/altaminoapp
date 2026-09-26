.class Lcom/narvii/widget/TagEditFlowView$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/widget/TagEditFlowView;->addEditText()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/widget/TagEditFlowView;


# direct methods
.method constructor <init>(Lcom/narvii/widget/TagEditFlowView;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/widget/TagEditFlowView$4;->this$0:Lcom/narvii/widget/TagEditFlowView;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/TagEditFlowView$4;->this$0:Lcom/narvii/widget/TagEditFlowView;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/widget/TagEditFlowView;->unSelectCurrentSelectedView()V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/widget/TagEditFlowView$4;->this$0:Lcom/narvii/widget/TagEditFlowView;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/narvii/widget/TagEditFlowView;->tagListTotalCharCountMayChanged()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 18
    move-result v0

    .line 19
    .line 20
    iget-object v1, p0, Lcom/narvii/widget/TagEditFlowView$4;->this$0:Lcom/narvii/widget/TagEditFlowView;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/narvii/widget/TagEditFlowView;->getMaxChars()I

    .line 24
    move-result v1

    .line 25
    .line 26
    if-le v0, v1, :cond_0

    .line 27
    const/4 v0, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v0, 0x0

    .line 30
    .line 31
    :goto_0
    iget-object v1, p0, Lcom/narvii/widget/TagEditFlowView$4;->this$0:Lcom/narvii/widget/TagEditFlowView;

    .line 32
    .line 33
    .line 34
    invoke-static {v1}, Lcom/narvii/widget/TagEditFlowView;->a(Lcom/narvii/widget/TagEditFlowView;)Landroid/widget/EditText;

    .line 35
    move-result-object v1

    .line 36
    .line 37
    iget-object v2, p0, Lcom/narvii/widget/TagEditFlowView$4;->this$0:Lcom/narvii/widget/TagEditFlowView;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2, v0}, Lcom/narvii/widget/TagEditFlowView;->getEditTextColor(Z)I

    .line 41
    move-result v0

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 45
    .line 46
    iget-object v0, p0, Lcom/narvii/widget/TagEditFlowView$4;->this$0:Lcom/narvii/widget/TagEditFlowView;

    .line 47
    .line 48
    .line 49
    invoke-static {v0}, Lcom/narvii/widget/TagEditFlowView;->b(Lcom/narvii/widget/TagEditFlowView;)Lcom/narvii/widget/TagEditFlowView$TagEditListener;

    .line 50
    move-result-object v0

    .line 51
    .line 52
    if-eqz v0, :cond_2

    .line 53
    .line 54
    .line 55
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 56
    move-result v0

    .line 57
    .line 58
    if-nez v0, :cond_1

    .line 59
    .line 60
    iget-object v0, p0, Lcom/narvii/widget/TagEditFlowView$4;->this$0:Lcom/narvii/widget/TagEditFlowView;

    .line 61
    .line 62
    .line 63
    invoke-static {v0}, Lcom/narvii/widget/TagEditFlowView;->b(Lcom/narvii/widget/TagEditFlowView;)Lcom/narvii/widget/TagEditFlowView$TagEditListener;

    .line 64
    move-result-object v0

    .line 65
    .line 66
    .line 67
    invoke-interface {v0, p1}, Lcom/narvii/widget/TagEditFlowView$TagEditListener;->afterTextChangedNotEmpty(Ljava/lang/String;)V

    .line 68
    goto :goto_1

    .line 69
    .line 70
    :cond_1
    iget-object p1, p0, Lcom/narvii/widget/TagEditFlowView$4;->this$0:Lcom/narvii/widget/TagEditFlowView;

    .line 71
    .line 72
    .line 73
    invoke-static {p1}, Lcom/narvii/widget/TagEditFlowView;->b(Lcom/narvii/widget/TagEditFlowView;)Lcom/narvii/widget/TagEditFlowView$TagEditListener;

    .line 74
    move-result-object p1

    .line 75
    .line 76
    .line 77
    invoke-interface {p1}, Lcom/narvii/widget/TagEditFlowView$TagEditListener;->afterTextChangedEmpty()V

    .line 78
    :cond_2
    :goto_1
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
