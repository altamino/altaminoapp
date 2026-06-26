.class Lcom/narvii/user/title/AddUserTitleFlowLayout$3;
.super Ljava/lang/Object;
.source "AddUserTitleFlowLayout.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/user/title/AddUserTitleFlowLayout;->addEditText()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/user/title/AddUserTitleFlowLayout;

.field final synthetic val$editText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/narvii/user/title/AddUserTitleFlowLayout;Landroid/widget/EditText;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/narvii/user/title/AddUserTitleFlowLayout$3;->this$0:Lcom/narvii/user/title/AddUserTitleFlowLayout;

    iput-object p2, p0, Lcom/narvii/user/title/AddUserTitleFlowLayout$3;->val$editText:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 196
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 197
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 198
    :goto_0
    iget-object v1, p0, Lcom/narvii/user/title/AddUserTitleFlowLayout$3;->val$editText:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    const/high16 v0, -0x10000

    goto :goto_1

    :cond_1
    const/4 v0, -0x1

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setTextColor(I)V

    .line 199
    iget-object v0, p0, Lcom/narvii/user/title/AddUserTitleFlowLayout$3;->this$0:Lcom/narvii/user/title/AddUserTitleFlowLayout;

    iget-object v0, v0, Lcom/narvii/user/title/AddUserTitleFlowLayout;->tagEditListener:Lcom/narvii/user/title/AddUserTitleFlowLayout$TagEditListener;

    if-eqz v0, :cond_3

    .line 200
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 201
    iget-object v0, p0, Lcom/narvii/user/title/AddUserTitleFlowLayout$3;->this$0:Lcom/narvii/user/title/AddUserTitleFlowLayout;

    iget-object v0, v0, Lcom/narvii/user/title/AddUserTitleFlowLayout;->tagEditListener:Lcom/narvii/user/title/AddUserTitleFlowLayout$TagEditListener;

    invoke-interface {v0, p1}, Lcom/narvii/user/title/AddUserTitleFlowLayout$TagEditListener;->afterTextChangedNotEmpty(Ljava/lang/String;)V

    goto :goto_2

    .line 203
    :cond_2
    iget-object p1, p0, Lcom/narvii/user/title/AddUserTitleFlowLayout$3;->this$0:Lcom/narvii/user/title/AddUserTitleFlowLayout;

    iget-object p1, p1, Lcom/narvii/user/title/AddUserTitleFlowLayout;->tagEditListener:Lcom/narvii/user/title/AddUserTitleFlowLayout$TagEditListener;

    invoke-interface {p1}, Lcom/narvii/user/title/AddUserTitleFlowLayout$TagEditListener;->afterTextChangedEmpty()V

    :cond_3
    :goto_2
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
