.class Lcom/narvii/user/title/AddUserTitleFlowLayout$2;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/user/title/AddUserTitleFlowLayout$2;->this$0:Lcom/narvii/user/title/AddUserTitleFlowLayout;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/user/title/AddUserTitleFlowLayout$2;->val$editText:Landroid/widget/EditText;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    const/4 v0, 0x5

    .line 2
    .line 3
    if-eq p2, v0, :cond_1

    .line 4
    const/4 v0, 0x6

    .line 5
    .line 6
    if-eq p2, v0, :cond_1

    .line 7
    .line 8
    if-eqz p3, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 12
    move-result p2

    .line 13
    .line 14
    if-nez p2, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 18
    move-result p2

    .line 19
    .line 20
    const/16 p3, 0x42

    .line 21
    .line 22
    if-ne p2, p3, :cond_0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p1, 0x0

    .line 25
    return p1

    .line 26
    .line 27
    .line 28
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    .line 32
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    .line 36
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 37
    move-result p2

    .line 38
    .line 39
    if-nez p2, :cond_4

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 43
    move-result p2

    .line 44
    .line 45
    const/16 p3, 0x14

    .line 46
    .line 47
    if-le p2, p3, :cond_2

    .line 48
    .line 49
    iget-object p1, p0, Lcom/narvii/user/title/AddUserTitleFlowLayout$2;->this$0:Lcom/narvii/user/title/AddUserTitleFlowLayout;

    .line 50
    .line 51
    iget-object p1, p1, Lcom/narvii/user/title/AddUserTitleFlowLayout;->tagEditListener:Lcom/narvii/user/title/AddUserTitleFlowLayout$TagEditListener;

    .line 52
    .line 53
    if-eqz p1, :cond_4

    .line 54
    .line 55
    .line 56
    invoke-interface {p1}, Lcom/narvii/user/title/AddUserTitleFlowLayout$TagEditListener;->onSaveTextBeyondLimit()V

    .line 57
    goto :goto_1

    .line 58
    .line 59
    :cond_2
    new-instance p2, Lcom/narvii/model/api/UserTitle;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 63
    move-result-object p1

    .line 64
    .line 65
    .line 66
    invoke-direct {p2, p1}, Lcom/narvii/model/api/UserTitle;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    iget-object p1, p0, Lcom/narvii/user/title/AddUserTitleFlowLayout$2;->this$0:Lcom/narvii/user/title/AddUserTitleFlowLayout;

    .line 69
    .line 70
    iget-object p3, p1, Lcom/narvii/user/title/AddUserTitleFlowLayout;->userTitleTransformer:Lcom/narvii/user/title/AddUserTitleFlowLayout$UserTitleTransformer;

    .line 71
    .line 72
    if-eqz p3, :cond_3

    .line 73
    .line 74
    iget-object p1, p1, Lcom/narvii/user/title/AddUserTitleFlowLayout;->selectedTagList:Ljava/util/List;

    .line 75
    .line 76
    .line 77
    invoke-interface {p1, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 78
    move-result p1

    .line 79
    const/4 p3, -0x1

    .line 80
    .line 81
    if-ne p1, p3, :cond_3

    .line 82
    .line 83
    iget-object p1, p0, Lcom/narvii/user/title/AddUserTitleFlowLayout$2;->this$0:Lcom/narvii/user/title/AddUserTitleFlowLayout;

    .line 84
    .line 85
    iget-object p1, p1, Lcom/narvii/user/title/AddUserTitleFlowLayout;->userTitleTransformer:Lcom/narvii/user/title/AddUserTitleFlowLayout$UserTitleTransformer;

    .line 86
    .line 87
    .line 88
    invoke-interface {p1, p2}, Lcom/narvii/user/title/AddUserTitleFlowLayout$UserTitleTransformer;->transform(Lcom/narvii/model/api/UserTitle;)Lcom/narvii/model/api/UserTitle;

    .line 89
    move-result-object p1

    .line 90
    .line 91
    if-eqz p1, :cond_3

    .line 92
    .line 93
    iget-object p2, p0, Lcom/narvii/user/title/AddUserTitleFlowLayout$2;->this$0:Lcom/narvii/user/title/AddUserTitleFlowLayout;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p2, p1}, Lcom/narvii/user/title/AddUserTitleFlowLayout;->addUserTitle(Lcom/narvii/model/api/UserTitle;)V

    .line 97
    .line 98
    iget-object p1, p0, Lcom/narvii/user/title/AddUserTitleFlowLayout$2;->this$0:Lcom/narvii/user/title/AddUserTitleFlowLayout;

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 102
    move-result-object p1

    .line 103
    .line 104
    .line 105
    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    .line 106
    .line 107
    :cond_3
    iget-object p1, p0, Lcom/narvii/user/title/AddUserTitleFlowLayout$2;->val$editText:Landroid/widget/EditText;

    .line 108
    const/4 p2, 0x0

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    :cond_4
    :goto_1
    const/4 p1, 0x1

    .line 113
    return p1
.end method
