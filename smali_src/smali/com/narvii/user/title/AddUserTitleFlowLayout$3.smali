.class Lcom/narvii/user/title/AddUserTitleFlowLayout$3;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/user/title/AddUserTitleFlowLayout$3;->this$0:Lcom/narvii/user/title/AddUserTitleFlowLayout;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/user/title/AddUserTitleFlowLayout$3;->val$editText:Landroid/widget/EditText;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 8
    move-result v0

    .line 9
    .line 10
    const/16 v1, 0x14

    .line 11
    .line 12
    if-le v0, v1, :cond_0

    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    .line 17
    :goto_0
    iget-object v1, p0, Lcom/narvii/user/title/AddUserTitleFlowLayout$3;->val$editText:Landroid/widget/EditText;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    const/high16 v0, -0x10000

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    const/4 v0, -0x1

    .line 24
    .line 25
    .line 26
    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 27
    .line 28
    iget-object v0, p0, Lcom/narvii/user/title/AddUserTitleFlowLayout$3;->this$0:Lcom/narvii/user/title/AddUserTitleFlowLayout;

    .line 29
    .line 30
    iget-object v0, v0, Lcom/narvii/user/title/AddUserTitleFlowLayout;->tagEditListener:Lcom/narvii/user/title/AddUserTitleFlowLayout$TagEditListener;

    .line 31
    .line 32
    if-eqz v0, :cond_3

    .line 33
    .line 34
    .line 35
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 36
    move-result v0

    .line 37
    .line 38
    if-nez v0, :cond_2

    .line 39
    .line 40
    iget-object v0, p0, Lcom/narvii/user/title/AddUserTitleFlowLayout$3;->this$0:Lcom/narvii/user/title/AddUserTitleFlowLayout;

    .line 41
    .line 42
    iget-object v0, v0, Lcom/narvii/user/title/AddUserTitleFlowLayout;->tagEditListener:Lcom/narvii/user/title/AddUserTitleFlowLayout$TagEditListener;

    .line 43
    .line 44
    .line 45
    invoke-interface {v0, p1}, Lcom/narvii/user/title/AddUserTitleFlowLayout$TagEditListener;->afterTextChangedNotEmpty(Ljava/lang/String;)V

    .line 46
    goto :goto_2

    .line 47
    .line 48
    :cond_2
    iget-object p1, p0, Lcom/narvii/user/title/AddUserTitleFlowLayout$3;->this$0:Lcom/narvii/user/title/AddUserTitleFlowLayout;

    .line 49
    .line 50
    iget-object p1, p1, Lcom/narvii/user/title/AddUserTitleFlowLayout;->tagEditListener:Lcom/narvii/user/title/AddUserTitleFlowLayout$TagEditListener;

    .line 51
    .line 52
    .line 53
    invoke-interface {p1}, Lcom/narvii/user/title/AddUserTitleFlowLayout$TagEditListener;->afterTextChangedEmpty()V

    .line 54
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
