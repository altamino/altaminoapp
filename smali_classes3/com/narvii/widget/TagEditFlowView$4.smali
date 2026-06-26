.class Lcom/narvii/widget/TagEditFlowView$4;
.super Ljava/lang/Object;
.source "TagEditFlowView.java"

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

    .line 173
    iput-object p1, p0, Lcom/narvii/widget/TagEditFlowView$4;->this$0:Lcom/narvii/widget/TagEditFlowView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .line 186
    iget-object v0, p0, Lcom/narvii/widget/TagEditFlowView$4;->this$0:Lcom/narvii/widget/TagEditFlowView;

    invoke-virtual {v0}, Lcom/narvii/widget/TagEditFlowView;->unSelectCurrentSelectedView()V

    .line 187
    iget-object v0, p0, Lcom/narvii/widget/TagEditFlowView$4;->this$0:Lcom/narvii/widget/TagEditFlowView;

    invoke-virtual {v0}, Lcom/narvii/widget/TagEditFlowView;->tagListTotalCharCountMayChanged()V

    .line 188
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 189
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lcom/narvii/widget/TagEditFlowView$4;->this$0:Lcom/narvii/widget/TagEditFlowView;

    invoke-virtual {v1}, Lcom/narvii/widget/TagEditFlowView;->getMaxChars()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 190
    :goto_0
    iget-object v1, p0, Lcom/narvii/widget/TagEditFlowView$4;->this$0:Lcom/narvii/widget/TagEditFlowView;

    invoke-static {v1}, Lcom/narvii/widget/TagEditFlowView;->access$100(Lcom/narvii/widget/TagEditFlowView;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/narvii/widget/TagEditFlowView$4;->this$0:Lcom/narvii/widget/TagEditFlowView;

    invoke-virtual {v2, v0}, Lcom/narvii/widget/TagEditFlowView;->getEditTextColor(Z)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setTextColor(I)V

    .line 191
    iget-object v0, p0, Lcom/narvii/widget/TagEditFlowView$4;->this$0:Lcom/narvii/widget/TagEditFlowView;

    invoke-static {v0}, Lcom/narvii/widget/TagEditFlowView;->access$200(Lcom/narvii/widget/TagEditFlowView;)Lcom/narvii/widget/TagEditFlowView$TagEditListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 192
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 193
    iget-object v0, p0, Lcom/narvii/widget/TagEditFlowView$4;->this$0:Lcom/narvii/widget/TagEditFlowView;

    invoke-static {v0}, Lcom/narvii/widget/TagEditFlowView;->access$200(Lcom/narvii/widget/TagEditFlowView;)Lcom/narvii/widget/TagEditFlowView$TagEditListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/narvii/widget/TagEditFlowView$TagEditListener;->afterTextChangedNotEmpty(Ljava/lang/String;)V

    goto :goto_1

    .line 195
    :cond_1
    iget-object p1, p0, Lcom/narvii/widget/TagEditFlowView$4;->this$0:Lcom/narvii/widget/TagEditFlowView;

    invoke-static {p1}, Lcom/narvii/widget/TagEditFlowView;->access$200(Lcom/narvii/widget/TagEditFlowView;)Lcom/narvii/widget/TagEditFlowView$TagEditListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/narvii/widget/TagEditFlowView$TagEditListener;->afterTextChangedEmpty()V

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
