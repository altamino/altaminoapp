.class Lcom/narvii/user/title/AddUserTitleFlowLayout$2;
.super Ljava/lang/Object;
.source "AddUserTitleFlowLayout.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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

    .line 150
    iput-object p1, p0, Lcom/narvii/user/title/AddUserTitleFlowLayout$2;->this$0:Lcom/narvii/user/title/AddUserTitleFlowLayout;

    iput-object p2, p0, Lcom/narvii/user/title/AddUserTitleFlowLayout$2;->val$editText:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x5

    if-eq p2, v0, :cond_1

    const/4 v0, 0x6

    if-eq p2, v0, :cond_1

    if-eqz p3, :cond_0

    .line 154
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    if-nez p2, :cond_0

    .line 155
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p2

    const/16 p3, 0x42

    if-ne p2, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 156
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 157
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 158
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/16 p3, 0x14

    if-le p2, p3, :cond_2

    .line 159
    iget-object p1, p0, Lcom/narvii/user/title/AddUserTitleFlowLayout$2;->this$0:Lcom/narvii/user/title/AddUserTitleFlowLayout;

    iget-object p1, p1, Lcom/narvii/user/title/AddUserTitleFlowLayout;->tagEditListener:Lcom/narvii/user/title/AddUserTitleFlowLayout$TagEditListener;

    if-eqz p1, :cond_4

    .line 160
    invoke-interface {p1}, Lcom/narvii/user/title/AddUserTitleFlowLayout$TagEditListener;->onSaveTextBeyondLimit()V

    goto :goto_1

    .line 163
    :cond_2
    new-instance p2, Lcom/narvii/model/api/UserTitle;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/narvii/model/api/UserTitle;-><init>(Ljava/lang/String;)V

    .line 164
    iget-object p1, p0, Lcom/narvii/user/title/AddUserTitleFlowLayout$2;->this$0:Lcom/narvii/user/title/AddUserTitleFlowLayout;

    iget-object p3, p1, Lcom/narvii/user/title/AddUserTitleFlowLayout;->userTitleTransformer:Lcom/narvii/user/title/AddUserTitleFlowLayout$UserTitleTransformer;

    if-eqz p3, :cond_3

    .line 165
    iget-object p1, p1, Lcom/narvii/user/title/AddUserTitleFlowLayout;->selectedTagList:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 p3, -0x1

    if-ne p1, p3, :cond_3

    .line 167
    iget-object p1, p0, Lcom/narvii/user/title/AddUserTitleFlowLayout$2;->this$0:Lcom/narvii/user/title/AddUserTitleFlowLayout;

    iget-object p1, p1, Lcom/narvii/user/title/AddUserTitleFlowLayout;->userTitleTransformer:Lcom/narvii/user/title/AddUserTitleFlowLayout$UserTitleTransformer;

    invoke-interface {p1, p2}, Lcom/narvii/user/title/AddUserTitleFlowLayout$UserTitleTransformer;->transform(Lcom/narvii/model/api/UserTitle;)Lcom/narvii/model/api/UserTitle;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 169
    iget-object p2, p0, Lcom/narvii/user/title/AddUserTitleFlowLayout$2;->this$0:Lcom/narvii/user/title/AddUserTitleFlowLayout;

    invoke-virtual {p2, p1}, Lcom/narvii/user/title/AddUserTitleFlowLayout;->addUserTitle(Lcom/narvii/model/api/UserTitle;)V

    .line 171
    iget-object p1, p0, Lcom/narvii/user/title/AddUserTitleFlowLayout$2;->this$0:Lcom/narvii/user/title/AddUserTitleFlowLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    .line 175
    :cond_3
    iget-object p1, p0, Lcom/narvii/user/title/AddUserTitleFlowLayout$2;->val$editText:Landroid/widget/EditText;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_1
    const/4 p1, 0x1

    return p1
.end method
