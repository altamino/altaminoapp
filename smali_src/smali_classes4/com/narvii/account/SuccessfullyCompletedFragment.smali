.class public final Lcom/narvii/account/SuccessfullyCompletedFragment;
.super Lcom/narvii/app/NVFragment;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/app/FragmentOnBackListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/account/SuccessfullyCompletedFragment$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/account/SuccessfullyCompletedFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_SET_IDENTITY_TYPE:Ljava/lang/String; = "set_identity_type"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_VERIFY_ACCOUNT_TYPE:Ljava/lang/String; = "verify_type"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final accountService$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final verifyAccountType$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/account/SuccessfullyCompletedFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/account/SuccessfullyCompletedFragment$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Lcom/narvii/account/SuccessfullyCompletedFragment;->Companion:Lcom/narvii/account/SuccessfullyCompletedFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/account/SuccessfullyCompletedFragment$verifyAccountType$2;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/narvii/account/SuccessfullyCompletedFragment$verifyAccountType$2;-><init>(Lcom/narvii/account/SuccessfullyCompletedFragment;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    iput-object v0, p0, Lcom/narvii/account/SuccessfullyCompletedFragment;->verifyAccountType$delegate:Lw7/m;

    .line 15
    .line 16
    new-instance v0, Lcom/narvii/account/SuccessfullyCompletedFragment$accountService$2;

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, p0}, Lcom/narvii/account/SuccessfullyCompletedFragment$accountService$2;-><init>(Lcom/narvii/account/SuccessfullyCompletedFragment;)V

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    iput-object v0, p0, Lcom/narvii/account/SuccessfullyCompletedFragment;->accountService$delegate:Lw7/m;

    .line 26
    return-void
.end method

.method private final getAccountService()Lcom/narvii/account/AccountService;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/account/SuccessfullyCompletedFragment;->accountService$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-string v1, "getValue(...)"

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 14
    return-object v0
.end method

.method private final getVerifyAccountType()Lcom/narvii/account/verifyaccount/VerifyAccountType;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/account/SuccessfullyCompletedFragment;->verifyAccountType$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/account/verifyaccount/VerifyAccountType;

    .line 9
    return-object v0
.end method

.method private final logout()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 19
    .line 20
    :cond_0
    new-instance v0, Lcom/narvii/account/LogoutHelper;

    .line 21
    .line 22
    .line 23
    invoke-direct {v0, p0}, Lcom/narvii/account/LogoutHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 24
    .line 25
    new-instance v1, Lcom/narvii/account/c1;

    .line 26
    .line 27
    .line 28
    invoke-direct {v1, p0}, Lcom/narvii/account/c1;-><init>(Lcom/narvii/account/SuccessfullyCompletedFragment;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Lcom/narvii/account/LogoutHelper;->logout(Lcom/narvii/util/Callback;)V

    .line 32
    return-void
.end method

.method private static final logout$lambda$2(Lcom/narvii/account/SuccessfullyCompletedFragment;Ljava/lang/Boolean;)V
    .locals 2

    .line 1
    .line 2
    const-string v0, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 9
    move-result p1

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    .line 18
    const v0, 0x7f120048

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    const/4 v1, 0x0

    .line 24
    .line 25
    .line 26
    invoke-static {p1, v0, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 31
    .line 32
    .line 33
    :cond_0
    invoke-direct {p0}, Lcom/narvii/account/SuccessfullyCompletedFragment;->resetApp()V

    .line 34
    return-void
.end method

.method public static synthetic n(Lcom/narvii/account/SuccessfullyCompletedFragment;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/narvii/account/SuccessfullyCompletedFragment;->resetApp$lambda$3(Lcom/narvii/account/SuccessfullyCompletedFragment;)V

    return-void
.end method

.method public static synthetic o(Lcom/narvii/account/SuccessfullyCompletedFragment;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/account/SuccessfullyCompletedFragment;->logout$lambda$2(Lcom/narvii/account/SuccessfullyCompletedFragment;Ljava/lang/Boolean;)V

    return-void
.end method

.method private static final onViewCreated$lambda$1(Lcom/narvii/account/SuccessfullyCompletedFragment;)V
    .locals 2

    .line 1
    .line 2
    const-string v0, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-direct {p0}, Lcom/narvii/account/SuccessfullyCompletedFragment;->getVerifyAccountType()Lcom/narvii/account/verifyaccount/VerifyAccountType;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    instance-of v1, v0, Lcom/narvii/account/verifyaccount/ChangePassVerifyAccount;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    goto :goto_0

    .line 15
    .line 16
    :cond_0
    instance-of v1, v0, Lcom/narvii/account/verifyaccount/VerifyNewIdentityVerifyAccount;

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_1
    instance-of v1, v0, Lcom/narvii/account/verifyaccount/AddIdentityVerifyAccount;

    .line 22
    .line 23
    if-eqz v1, :cond_2

    .line 24
    goto :goto_0

    .line 25
    .line 26
    :cond_2
    instance-of v1, v0, Lcom/narvii/account/verifyaccount/UpdateIdentityVerifyAccount;

    .line 27
    .line 28
    if-eqz v1, :cond_3

    .line 29
    .line 30
    .line 31
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 32
    move-result-object p0

    .line 33
    .line 34
    if-eqz p0, :cond_5

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 38
    goto :goto_2

    .line 39
    :catch_0
    move-exception p0

    .line 40
    goto :goto_1

    .line 41
    .line 42
    :cond_3
    instance-of v0, v0, Lcom/narvii/account/verifyaccount/DeleteAccountVerifyAccount;

    .line 43
    .line 44
    if-eqz v0, :cond_4

    .line 45
    .line 46
    .line 47
    invoke-direct {p0}, Lcom/narvii/account/SuccessfullyCompletedFragment;->logout()V

    .line 48
    goto :goto_2

    .line 49
    .line 50
    .line 51
    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 52
    move-result-object p0

    .line 53
    const/4 v0, 0x0

    .line 54
    const/4 v1, 0x1

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/FragmentManager;->l1(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    goto :goto_2

    .line 59
    .line 60
    .line 61
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 62
    move-result-object p0

    .line 63
    .line 64
    .line 65
    invoke-static {p0}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    .line 66
    :cond_5
    :goto_2
    return-void
.end method

.method public static synthetic p(Lcom/narvii/account/SuccessfullyCompletedFragment;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/narvii/account/SuccessfullyCompletedFragment;->onViewCreated$lambda$1(Lcom/narvii/account/SuccessfullyCompletedFragment;)V

    return-void
.end method

.method private final resetApp()V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/account/d1;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/narvii/account/d1;-><init>(Lcom/narvii/account/SuccessfullyCompletedFragment;)V

    .line 6
    .line 7
    const-wide/16 v1, 0x1f4

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1, v2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 11
    return-void
.end method

.method private static final resetApp$lambda$3(Lcom/narvii/account/SuccessfullyCompletedFragment;)V
    .locals 3

    .line 1
    .line 2
    const-string v0, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    return-void

    .line 13
    .line 14
    :cond_0
    sget v0, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    .line 15
    .line 16
    const/16 v1, 0x64

    .line 17
    .line 18
    if-ne v0, v1, :cond_1

    .line 19
    .line 20
    new-instance v0, Landroid/content/Intent;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    const-class v2, Lcom/narvii/master/MasterActivity;

    .line 27
    .line 28
    .line 29
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 30
    .line 31
    const-string v1, "disallowOnBoarding"

    .line 32
    const/4 v2, 0x1

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 36
    .line 37
    .line 38
    const v1, 0x10008000

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 42
    .line 43
    .line 44
    invoke-static {p0, v0}, Lcom/narvii/account/SuccessfullyCompletedFragment;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 48
    move-result-object v0

    .line 49
    .line 50
    if-eqz v0, :cond_1

    .line 51
    .line 52
    .line 53
    const v1, 0x7f010037

    .line 54
    .line 55
    .line 56
    const v2, 0x7f010038

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 60
    .line 61
    .line 62
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 63
    move-result-object p0

    .line 64
    .line 65
    if-eqz p0, :cond_2

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 69
    :cond_2
    return-void
.end method

.method public static safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Landroidx/fragment/app/Fragment;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onBackPressed(Lcom/narvii/app/NVActivity;)Z
    .locals 0
    .param p1    # Lcom/narvii/app/NVActivity;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 p1, 0x0

    return p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    const-string p3, "inflater"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const p3, 0x7f0d032c

    .line 9
    const/4 v0, 0x0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
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
    const p2, 0x7f0a0e9e

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 15
    move-result-object p2

    .line 16
    .line 17
    const-string v0, "null cannot be cast to non-null type android.widget.TextView"

    .line 18
    .line 19
    .line 20
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    check-cast p2, Landroid/widget/TextView;

    .line 23
    .line 24
    .line 25
    invoke-direct {p0}, Lcom/narvii/account/SuccessfullyCompletedFragment;->getVerifyAccountType()Lcom/narvii/account/verifyaccount/VerifyAccountType;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    .line 29
    invoke-static {v1}, Lcom/narvii/account/verifyaccount/VerifyAccountTypeKt;->getPageTitle(Lcom/narvii/account/verifyaccount/VerifyAccountType;)I

    .line 30
    move-result v1

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 34
    .line 35
    .line 36
    invoke-direct {p0}, Lcom/narvii/account/SuccessfullyCompletedFragment;->getVerifyAccountType()Lcom/narvii/account/verifyaccount/VerifyAccountType;

    .line 37
    move-result-object p2

    .line 38
    .line 39
    instance-of v1, p2, Lcom/narvii/account/verifyaccount/ResetPassVerifyAccount;

    .line 40
    .line 41
    if-eqz v1, :cond_0

    .line 42
    goto :goto_0

    .line 43
    .line 44
    :cond_0
    instance-of v1, p2, Lcom/narvii/account/verifyaccount/ForgotPassVerifyAccount;

    .line 45
    .line 46
    if-eqz v1, :cond_1

    .line 47
    .line 48
    .line 49
    :goto_0
    const p2, 0x7f1207ef

    .line 50
    goto :goto_1

    .line 51
    .line 52
    :cond_1
    instance-of v1, p2, Lcom/narvii/account/verifyaccount/ChangePassVerifyAccount;

    .line 53
    .line 54
    if-eqz v1, :cond_2

    .line 55
    .line 56
    .line 57
    const p2, 0x7f1207ee

    .line 58
    goto :goto_1

    .line 59
    .line 60
    :cond_2
    instance-of v1, p2, Lcom/narvii/account/verifyaccount/VerifyNewIdentityVerifyAccount;

    .line 61
    .line 62
    if-eqz v1, :cond_3

    .line 63
    .line 64
    .line 65
    const p2, 0x7f121183

    .line 66
    goto :goto_1

    .line 67
    .line 68
    :cond_3
    instance-of v1, p2, Lcom/narvii/account/verifyaccount/AddIdentityVerifyAccount;

    .line 69
    .line 70
    const-string v2, "set_identity_type"

    .line 71
    .line 72
    if-eqz v1, :cond_6

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 76
    move-result p2

    .line 77
    .line 78
    .line 79
    invoke-static {p2}, Lcom/narvii/account/verifyaccount/VerifyAccountTypeKt;->identityType(I)Lcom/narvii/account/verifyaccount/IdentityType;

    .line 80
    move-result-object p2

    .line 81
    .line 82
    instance-of v1, p2, Lcom/narvii/account/verifyaccount/EmailIdentity;

    .line 83
    .line 84
    if-eqz v1, :cond_4

    .line 85
    .line 86
    .line 87
    const p2, 0x7f1207f0

    .line 88
    goto :goto_1

    .line 89
    .line 90
    :cond_4
    instance-of p2, p2, Lcom/narvii/account/verifyaccount/PhoneIdentity;

    .line 91
    .line 92
    if-eqz p2, :cond_5

    .line 93
    .line 94
    .line 95
    const p2, 0x7f1207f1

    .line 96
    goto :goto_1

    .line 97
    .line 98
    :cond_5
    new-instance p1, Lw7/s;

    .line 99
    .line 100
    .line 101
    invoke-direct {p1}, Lw7/s;-><init>()V

    .line 102
    throw p1

    .line 103
    .line 104
    :cond_6
    instance-of v1, p2, Lcom/narvii/account/verifyaccount/UpdateIdentityVerifyAccount;

    .line 105
    .line 106
    if-eqz v1, :cond_9

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 110
    move-result p2

    .line 111
    .line 112
    .line 113
    invoke-static {p2}, Lcom/narvii/account/verifyaccount/VerifyAccountTypeKt;->identityType(I)Lcom/narvii/account/verifyaccount/IdentityType;

    .line 114
    move-result-object p2

    .line 115
    .line 116
    instance-of v1, p2, Lcom/narvii/account/verifyaccount/EmailIdentity;

    .line 117
    .line 118
    if-eqz v1, :cond_7

    .line 119
    .line 120
    .line 121
    const p2, 0x7f1207f3

    .line 122
    goto :goto_1

    .line 123
    .line 124
    :cond_7
    instance-of p2, p2, Lcom/narvii/account/verifyaccount/PhoneIdentity;

    .line 125
    .line 126
    if-eqz p2, :cond_8

    .line 127
    .line 128
    .line 129
    const p2, 0x7f1207f4

    .line 130
    goto :goto_1

    .line 131
    .line 132
    :cond_8
    new-instance p1, Lw7/s;

    .line 133
    .line 134
    .line 135
    invoke-direct {p1}, Lw7/s;-><init>()V

    .line 136
    throw p1

    .line 137
    .line 138
    :cond_9
    instance-of p2, p2, Lcom/narvii/account/verifyaccount/DeleteAccountVerifyAccount;

    .line 139
    .line 140
    if-eqz p2, :cond_a

    .line 141
    .line 142
    .line 143
    const p2, 0x7f121185

    .line 144
    goto :goto_1

    .line 145
    .line 146
    .line 147
    :cond_a
    const p2, 0x7f1207f2

    .line 148
    .line 149
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 156
    move-result-object v2

    .line 157
    .line 158
    .line 159
    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 160
    move-result-object p2

    .line 161
    .line 162
    .line 163
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-direct {p0}, Lcom/narvii/account/SuccessfullyCompletedFragment;->getAccountService()Lcom/narvii/account/AccountService;

    .line 167
    move-result-object p2

    .line 168
    .line 169
    .line 170
    invoke-virtual {p2}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 171
    move-result p2

    .line 172
    .line 173
    if-nez p2, :cond_b

    .line 174
    .line 175
    const-string p2, "\n"

    .line 176
    .line 177
    .line 178
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 182
    move-result-object p2

    .line 183
    .line 184
    .line 185
    const v2, 0x7f120bb6

    .line 186
    .line 187
    .line 188
    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 189
    move-result-object p2

    .line 190
    .line 191
    .line 192
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    :cond_b
    const p2, 0x7f0a0e08

    .line 196
    .line 197
    .line 198
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 199
    move-result-object p1

    .line 200
    .line 201
    .line 202
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    .line 204
    check-cast p1, Landroid/widget/TextView;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 208
    move-result-object p2

    .line 209
    .line 210
    .line 211
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    .line 213
    new-instance p1, Landroid/os/Handler;

    .line 214
    .line 215
    .line 216
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 217
    move-result-object p2

    .line 218
    .line 219
    .line 220
    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 221
    .line 222
    new-instance p2, Lcom/narvii/account/e1;

    .line 223
    .line 224
    .line 225
    invoke-direct {p2, p0}, Lcom/narvii/account/e1;-><init>(Lcom/narvii/account/SuccessfullyCompletedFragment;)V

    .line 226
    .line 227
    const-wide/16 v0, 0xbb8

    .line 228
    .line 229
    .line 230
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 231
    return-void
.end method
