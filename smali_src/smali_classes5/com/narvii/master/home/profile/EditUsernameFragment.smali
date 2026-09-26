.class public final Lcom/narvii/master/home/profile/EditUsernameFragment;
.super Lcom/narvii/master/home/profile/BaseSingleEditFragment;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/post/PostListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/master/home/profile/EditUsernameFragment$Companion;,
        Lcom/narvii/master/home/profile/EditUsernameFragment$UsernamePost;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/master/home/profile/EditUsernameFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final MAX_LENGTH:I = 0x32


# instance fields
.field public accountService:Lcom/narvii/account/AccountService;

.field private final editDelete$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final editUsername$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final inputHint$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public post:Lcom/narvii/master/home/profile/EditUsernameFragment$UsernamePost;

.field private final postHelper$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/master/home/profile/EditUsernameFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/master/home/profile/EditUsernameFragment$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Lcom/narvii/master/home/profile/EditUsernameFragment;->Companion:Lcom/narvii/master/home/profile/EditUsernameFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/master/home/profile/BaseSingleEditFragment;-><init>()V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f0a04ca

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, v0}, Lcom/narvii/master/home/profile/EditUsernameFragment;->bind(I)Lw7/m;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    iput-object v0, p0, Lcom/narvii/master/home/profile/EditUsernameFragment;->editUsername$delegate:Lw7/m;

    .line 13
    .line 14
    .line 15
    const v0, 0x7f0a04b9

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, v0}, Lcom/narvii/master/home/profile/EditUsernameFragment;->bind(I)Lw7/m;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    iput-object v0, p0, Lcom/narvii/master/home/profile/EditUsernameFragment;->editDelete$delegate:Lw7/m;

    .line 22
    .line 23
    .line 24
    const v0, 0x7f0a0729

    .line 25
    .line 26
    .line 27
    invoke-direct {p0, v0}, Lcom/narvii/master/home/profile/EditUsernameFragment;->bind(I)Lw7/m;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    iput-object v0, p0, Lcom/narvii/master/home/profile/EditUsernameFragment;->inputHint$delegate:Lw7/m;

    .line 31
    .line 32
    new-instance v0, Lcom/narvii/master/home/profile/EditUsernameFragment$postHelper$2;

    .line 33
    .line 34
    .line 35
    invoke-direct {v0, p0}, Lcom/narvii/master/home/profile/EditUsernameFragment$postHelper$2;-><init>(Lcom/narvii/master/home/profile/EditUsernameFragment;)V

    .line 36
    .line 37
    .line 38
    invoke-static {v0}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    iput-object v0, p0, Lcom/narvii/master/home/profile/EditUsernameFragment;->postHelper$delegate:Lw7/m;

    .line 42
    return-void
.end method

.method private final bind(I)Lw7/m;
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)",
            "Lw7/m<",
            "TT;>;"
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lw7/q;->NONE:Lw7/q;

    .line 3
    .line 4
    new-instance v1, Lcom/narvii/master/home/profile/EditUsernameFragment$bind$1;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, p0, p1}, Lcom/narvii/master/home/profile/EditUsernameFragment$bind$1;-><init>(Lcom/narvii/master/home/profile/EditUsernameFragment;I)V

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1}, Lw7/n;->b(Lw7/q;Le8/a;)Lw7/m;

    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method private final getEditDelete()Landroid/widget/ImageView;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/home/profile/EditUsernameFragment;->editDelete$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroid/widget/ImageView;

    .line 9
    return-object v0
.end method

.method private final getEditUsername()Landroid/widget/EditText;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/home/profile/EditUsernameFragment;->editUsername$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroid/widget/EditText;

    .line 9
    return-object v0
.end method

.method private final getInputHint()Landroid/widget/TextView;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/home/profile/EditUsernameFragment;->inputHint$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroid/widget/TextView;

    .line 9
    return-object v0
.end method

.method private final getPostHelper()Lcom/narvii/post/PostHelper;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/home/profile/EditUsernameFragment;->postHelper$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/post/PostHelper;

    .line 9
    return-object v0
.end method

.method public static synthetic n(Lcom/narvii/master/home/profile/EditUsernameFragment;Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/master/home/profile/EditUsernameFragment;->submit$lambda$1(Lcom/narvii/master/home/profile/EditUsernameFragment;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic o(Lcom/narvii/master/home/profile/EditUsernameFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/master/home/profile/EditUsernameFragment;->onViewCreated$lambda$0(Lcom/narvii/master/home/profile/EditUsernameFragment;Landroid/view/View;)V

    return-void
.end method

.method private static final onViewCreated$lambda$0(Lcom/narvii/master/home/profile/EditUsernameFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    const-string p1, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/narvii/master/home/profile/EditUsernameFragment;->getEditUsername()Landroid/widget/EditText;

    .line 9
    move-result-object p0

    .line 10
    const/4 p1, 0x0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    return-void
.end method

.method private final savePost()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/EditUsernameFragment;->getPost()Lcom/narvii/master/home/profile/EditUsernameFragment$UsernamePost;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/narvii/master/home/profile/EditUsernameFragment;->getEditUsername()Landroid/widget/EditText;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    iput-object v1, v0, Lcom/narvii/user/profile/post/UserProfilePost;->nickname:Ljava/lang/String;

    .line 19
    return-void
.end method

.method private static final submit$lambda$1(Lcom/narvii/master/home/profile/EditUsernameFragment;Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    .line 2
    const-string p1, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/narvii/master/home/profile/EditUsernameFragment;->getPostHelper()Lcom/narvii/post/PostHelper;

    .line 9
    move-result-object p0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/narvii/post/PostHelper;->cancel()V

    .line 13
    return-void
.end method


# virtual methods
.method public final getAccountService()Lcom/narvii/account/AccountService;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/home/profile/EditUsernameFragment;->accountService:Lcom/narvii/account/AccountService;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-object v0

    .line 6
    .line 7
    :cond_0
    const-string v0, "accountService"

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public final getPost()Lcom/narvii/master/home/profile/EditUsernameFragment$UsernamePost;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/home/profile/EditUsernameFragment;->post:Lcom/narvii/master/home/profile/EditUsernameFragment$UsernamePost;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-object v0

    .line 6
    .line 7
    :cond_0
    const-string v0, "post"

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public layoutId()I
    .locals 1

    const v0, 0x7f0d02c9

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string p1, "account"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    const-string v0, "getService(...)"

    .line 12
    .line 13
    .line 14
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    check-cast p1, Lcom/narvii/account/AccountService;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lcom/narvii/master/home/profile/EditUsernameFragment;->setAccountService(Lcom/narvii/account/AccountService;)V

    .line 20
    .line 21
    const-string p1, "post"

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    const-class v0, Lcom/narvii/master/home/profile/EditUsernameFragment$UsernamePost;

    .line 28
    .line 29
    .line 30
    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    check-cast p1, Lcom/narvii/master/home/profile/EditUsernameFragment$UsernamePost;

    .line 34
    .line 35
    if-nez p1, :cond_0

    .line 36
    .line 37
    new-instance p1, Lcom/narvii/master/home/profile/EditUsernameFragment$UsernamePost;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/EditUsernameFragment;->getAccountService()Lcom/narvii/account/AccountService;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    const-string v1, "getUserProfile(...)"

    .line 48
    .line 49
    .line 50
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-direct {p1, v0}, Lcom/narvii/master/home/profile/EditUsernameFragment$UsernamePost;-><init>(Lcom/narvii/model/User;)V

    .line 54
    .line 55
    .line 56
    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/master/home/profile/EditUsernameFragment;->setPost(Lcom/narvii/master/home/profile/EditUsernameFragment$UsernamePost;)V

    .line 57
    return-void
.end method

.method public onPostFail(Lcom/narvii/post/PostHelper;ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1    # Lcom/narvii/post/PostHelper;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isDestoryed()Z

    .line 4
    move-result p1

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/BaseSingleEditFragment;->getProgressDialog()Lcom/narvii/util/dialog/ProgressDialog;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 18
    move-result-object p1

    .line 19
    const/4 p2, 0x1

    .line 20
    .line 21
    .line 22
    invoke-static {p1, p3, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 27
    return-void
.end method

.method public onPostFinished(Lcom/narvii/post/PostHelper;Lcom/narvii/model/api/ApiResponse;)V
    .locals 6
    .param p1    # Lcom/narvii/post/PostHelper;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/model/api/ApiResponse;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    instance-of p1, p2, Lcom/narvii/model/api/UserResponse;

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    check-cast p2, Lcom/narvii/model/api/UserResponse;

    .line 7
    .line 8
    iget-object v1, p2, Lcom/narvii/model/api/UserResponse;->user:Lcom/narvii/model/User;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/EditUsernameFragment;->getAccountService()Lcom/narvii/account/AccountService;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    iget-object v2, p2, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    .line 17
    const/4 v3, 0x0

    .line 18
    const/4 v4, 0x1

    .line 19
    const/4 v5, 0x1

    .line 20
    .line 21
    .line 22
    invoke-virtual/range {v0 .. v5}, Lcom/narvii/account/AccountService;->updateProfile(Lcom/narvii/model/User;Ljava/lang/String;IZZ)V

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isDestoryed()Z

    .line 26
    move-result p1

    .line 27
    .line 28
    if-eqz p1, :cond_1

    .line 29
    return-void

    .line 30
    .line 31
    .line 32
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/BaseSingleEditFragment;->getProgressDialog()Lcom/narvii/util/dialog/ProgressDialog;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 40
    return-void
.end method

.method public onPostProgress(Lcom/narvii/post/PostHelper;II)V
    .locals 0
    .param p1    # Lcom/narvii/post/PostHelper;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public onPostStart(Lcom/narvii/post/PostHelper;)V
    .locals 1
    .param p1    # Lcom/narvii/post/PostHelper;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/BaseSingleEditFragment;->getProgressDialog()Lcom/narvii/util/dialog/ProgressDialog;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception p1

    .line 10
    .line 11
    const-string v0, "fail to show progress dialog"

    .line 12
    .line 13
    .line 14
    invoke-static {v0, p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 15
    :goto_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "view"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/narvii/master/home/profile/EditUsernameFragment;->getEditUsername()Landroid/widget/EditText;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lcom/narvii/master/home/profile/BaseSingleEditFragment;->observeTextChanged(Landroid/widget/EditText;)V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Lcom/narvii/master/home/profile/EditUsernameFragment;->getEditDelete()Landroid/widget/ImageView;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    new-instance p2, Lcom/narvii/master/home/profile/d;

    .line 22
    .line 23
    .line 24
    invoke-direct {p2, p0}, Lcom/narvii/master/home/profile/d;-><init>(Lcom/narvii/master/home/profile/EditUsernameFragment;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    .line 29
    .line 30
    invoke-direct {p0}, Lcom/narvii/master/home/profile/EditUsernameFragment;->getEditUsername()Landroid/widget/EditText;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/EditUsernameFragment;->getPost()Lcom/narvii/master/home/profile/EditUsernameFragment$UsernamePost;

    .line 35
    move-result-object p2

    .line 36
    .line 37
    iget-object p2, p2, Lcom/narvii/user/profile/post/UserProfilePost;->nickname:Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    return-void
.end method

.method public passValidate()Z
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/master/home/profile/EditUsernameFragment;->getEditUsername()Landroid/widget/EditText;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x0

    .line 18
    const/4 v2, 0x1

    .line 19
    .line 20
    if-gt v2, v0, :cond_0

    .line 21
    .line 22
    const/16 v3, 0x33

    .line 23
    .line 24
    if-ge v0, v3, :cond_0

    .line 25
    move v1, v2

    .line 26
    :cond_0
    return v1
.end method

.method public final setAccountService(Lcom/narvii/account/AccountService;)V
    .locals 1
    .param p1    # Lcom/narvii/account/AccountService;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/master/home/profile/EditUsernameFragment;->accountService:Lcom/narvii/account/AccountService;

    return-void
.end method

.method public final setPost(Lcom/narvii/master/home/profile/EditUsernameFragment$UsernamePost;)V
    .locals 1
    .param p1    # Lcom/narvii/master/home/profile/EditUsernameFragment$UsernamePost;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/master/home/profile/EditUsernameFragment;->post:Lcom/narvii/master/home/profile/EditUsernameFragment$UsernamePost;

    return-void
.end method

.method protected submit()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/BaseSingleEditFragment;->getProgressDialog()Lcom/narvii/util/dialog/ProgressDialog;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    new-instance v1, Lcom/narvii/master/home/profile/e;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1, p0}, Lcom/narvii/master/home/profile/e;-><init>(Lcom/narvii/master/home/profile/EditUsernameFragment;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/EditUsernameFragment;->getAccountService()Lcom/narvii/account/AccountService;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    new-instance v2, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    const-string v3, "/user-profile/"

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object v1

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 53
    move-result-object v0

    .line 54
    .line 55
    .line 56
    invoke-direct {p0}, Lcom/narvii/master/home/profile/EditUsernameFragment;->getPostHelper()Lcom/narvii/post/PostHelper;

    .line 57
    move-result-object v1

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, p0}, Lcom/narvii/post/PostHelper;->setPostListener(Lcom/narvii/post/PostListener;)V

    .line 61
    .line 62
    .line 63
    invoke-direct {p0}, Lcom/narvii/master/home/profile/EditUsernameFragment;->savePost()V

    .line 64
    .line 65
    .line 66
    invoke-direct {p0}, Lcom/narvii/master/home/profile/EditUsernameFragment;->getPostHelper()Lcom/narvii/post/PostHelper;

    .line 67
    move-result-object v1

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/EditUsernameFragment;->getPost()Lcom/narvii/master/home/profile/EditUsernameFragment$UsernamePost;

    .line 71
    move-result-object v2

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 75
    move-result-object v0

    .line 76
    .line 77
    const-class v3, Lcom/narvii/model/api/UserResponse;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1, v2, v0, v3}, Lcom/narvii/post/PostHelper;->startPost(Lcom/narvii/post/PostObject;Lcom/narvii/util/http/ApiRequest;Ljava/lang/Class;)V

    .line 81
    return-void
.end method

.method public title()I
    .locals 1

    const v0, 0x7f12044f

    return v0
.end method

.method protected updateView()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/master/home/profile/BaseSingleEditFragment;->updateView()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/master/home/profile/EditUsernameFragment;->getEditUsername()Landroid/widget/EditText;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 15
    move-result v0

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Lcom/narvii/master/home/profile/EditUsernameFragment;->getInputHint()Landroid/widget/TextView;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    new-instance v2, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v0, "/50"

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    return-void
.end method
