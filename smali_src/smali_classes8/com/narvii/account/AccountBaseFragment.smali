.class public Lcom/narvii/account/AccountBaseFragment;
.super Lcom/narvii/app/NVFragment;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/account/AccountSignUpIndicatorView$IndicatorClickListener;
.implements Lcom/narvii/account/AccountSignUpIndicatorView$IndicatorSuccessFinishedListener;


# static fields
.field public static final ACCOUNT_AUTH_TYPE_EMAIL:I = 0x1

.field public static final ACCOUNT_AUTH_TYPE_FACEBOOK:I = 0xa

.field public static final ACCOUNT_AUTH_TYPE_GOOGLE:I = 0x1e

.field public static final ACCOUNT_AUTH_TYPE_PHONE:I = 0x2

.field public static final ACTION_MOBILE_REGISTER_SWITCH_LOGIN:Ljava/lang/String; = "com.narvii.action.ACTION_MOBILE_REGISTER_SWITCH_LOGIN"

.field public static final ACTION_MOBILE_REGISTER_SWITCH_RESTORE:Ljava/lang/String; = "com.narvii.action.ACTION_MOBILE_REGISTER_SWITCH_RESTORE"

.field public static final KEY_AUTH_METHOD:Ljava/lang/String; = "key_auth_method"

.field public static final KEY_IS_THIRD_PART:Ljava/lang/String; = "key_is_third_part"

.field public static final KEY_NICKNAME:Ljava/lang/String; = "key_third_party_nickname"

.field public static final KEY_SIGN_UP_METHOD:Ljava/lang/String; = "key_sign_up_method"

.field public static final KEY_THIRDPARTY_AVATAR_URL:Ljava/lang/String; = "key_avatar_url"

.field public static final KEY_THIRD_PART_SECRET:Ljava/lang/String; = "key_third_part_secret"

.field public static final RESTORE_ACCOUNT:I = 0x245

.field public static final SECURITY_VALIDATION_TARGET_TYPE_DIGITS:I = 0x3

.field public static final SECURITY_VALIDATION_TARGET_TYPE_EMAIL:I = 0x1

.field public static final SECURITY_VALIDATION_TARGET_TYPE_GLOBAL_SMS:I = 0x8


# instance fields
.field protected indicatorView:Lcom/narvii/account/AccountSignUpIndicatorView;

.field private progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

.field private request:Lcom/narvii/util/http/ApiRequest;

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    .line 4
    return-void
.end method

.method private accountRestore(Lcom/narvii/util/http/ApiRequest;)V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    const v1, 0x7f120057

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 16
    .line 17
    .line 18
    const v1, 0x7f1201e2

    .line 19
    const/4 v2, 0x0

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 23
    .line 24
    new-instance v1, Lcom/narvii/account/b;

    .line 25
    .line 26
    .line 27
    invoke-direct {v1, p0, p1}, Lcom/narvii/account/b;-><init>(Lcom/narvii/account/AccountBaseFragment;Lcom/narvii/util/http/ApiRequest;)V

    .line 28
    .line 29
    .line 30
    const p1, 0x7f120055

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 37
    return-void
.end method

.method private addFragment(Landroidx/fragment/app/Fragment;)V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    .line 18
    const v1, 0x7f010010

    .line 19
    .line 20
    .line 21
    const v2, 0x7f010011

    .line 22
    .line 23
    .line 24
    const v3, 0x7f01000e

    .line 25
    .line 26
    .line 27
    const v4, 0x7f01000f

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v3, v4, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->z(IIII)Landroidx/fragment/app/FragmentTransaction;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContainerId()Ljava/lang/Integer;

    .line 34
    move-result-object v1

    .line 35
    const/4 v2, 0x0

    .line 36
    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContainerId()Ljava/lang/Integer;

    .line 41
    move-result-object v1

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 45
    move-result v1

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/FragmentTransaction;->u(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 49
    move-result-object p1

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v2}, Landroidx/fragment/app/FragmentTransaction;->h(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 53
    move-result-object p1

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->k()I

    .line 57
    goto :goto_0

    .line 58
    .line 59
    .line 60
    :cond_1
    const v1, 0x7f0a05ff

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/FragmentTransaction;->u(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 64
    move-result-object p1

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v2}, Landroidx/fragment/app/FragmentTransaction;->h(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 68
    move-result-object p1

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->k()I

    .line 72
    :goto_0
    return-void
.end method

.method private addUnBackedFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    .line 18
    const v1, 0x7f010010

    .line 19
    .line 20
    .line 21
    const v2, 0x7f010011

    .line 22
    .line 23
    .line 24
    const v3, 0x7f01000e

    .line 25
    .line 26
    .line 27
    const v4, 0x7f01000f

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v3, v4, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->z(IIII)Landroidx/fragment/app/FragmentTransaction;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 34
    move-result-object v1

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 38
    move-result-object v1

    .line 39
    .line 40
    check-cast v1, Landroid/view/ViewGroup;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    .line 44
    move-result v1

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1, p1, p2}, Landroidx/fragment/app/FragmentTransaction;->v(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 48
    move-result-object p1

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentTransaction;->h(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 52
    move-result-object p1

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->k()I

    .line 56
    return-void
.end method

.method private synthetic lambda$accountRestore$1(Lcom/narvii/util/http/ApiRequest;Landroid/content/DialogInterface;I)V
    .locals 5

    .line 1
    .line 2
    if-eqz p1, :cond_3

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 6
    move-result p2

    .line 7
    .line 8
    if-nez p2, :cond_0

    .line 9
    goto :goto_0

    .line 10
    .line 11
    :cond_0
    const-string p2, "email"

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, p2}, Lcom/narvii/util/http/ApiRequest;->tag(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    move-result-object p3

    .line 16
    .line 17
    check-cast p3, Ljava/lang/String;

    .line 18
    .line 19
    const-string v0, "phoneNumber"

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest;->tag(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    check-cast v1, Ljava/lang/String;

    .line 26
    .line 27
    const-string v2, "pass"

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v2}, Lcom/narvii/util/http/ApiRequest;->tag(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    move-result-object v3

    .line 32
    .line 33
    check-cast v3, Ljava/lang/String;

    .line 34
    .line 35
    const-string v4, "thirdPart"

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v4}, Lcom/narvii/util/http/ApiRequest;->tag(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    move-result-object p1

    .line 40
    .line 41
    instance-of v4, p1, Ljava/lang/Boolean;

    .line 42
    .line 43
    if-eqz v4, :cond_1

    .line 44
    .line 45
    check-cast p1, Ljava/lang/Boolean;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 49
    move-result p1

    .line 50
    .line 51
    if-eqz p1, :cond_1

    .line 52
    .line 53
    const-class p1, Lcom/narvii/account/restore/AccountRestoreChooseFragment;

    .line 54
    .line 55
    .line 56
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 57
    move-result-object p1

    .line 58
    .line 59
    .line 60
    invoke-static {p0, p1}, Lcom/narvii/account/AccountBaseFragment;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    .line 61
    goto :goto_0

    .line 62
    .line 63
    .line 64
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 65
    move-result p1

    .line 66
    .line 67
    const/16 v4, 0x245

    .line 68
    .line 69
    if-nez p1, :cond_2

    .line 70
    .line 71
    const-class p1, Lcom/narvii/account/restore/AccountRestoreEmailFragment;

    .line 72
    .line 73
    .line 74
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 75
    move-result-object p1

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    .line 83
    .line 84
    invoke-static {p0, p1, v4}, Lcom/narvii/account/AccountBaseFragment;->safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V

    .line 85
    goto :goto_0

    .line 86
    .line 87
    .line 88
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 89
    move-result p1

    .line 90
    .line 91
    if-nez p1, :cond_3

    .line 92
    .line 93
    const-class p1, Lcom/narvii/account/restore/AccoutRestorePhoneFragment;

    .line 94
    .line 95
    .line 96
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 97
    move-result-object p1

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    .line 105
    .line 106
    invoke-static {p0, p1, v4}, Lcom/narvii/account/AccountBaseFragment;->safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V

    .line 107
    :cond_3
    :goto_0
    return-void
.end method

.method private synthetic lambda$handleAlreadyRegistered$2(Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    .line 2
    new-instance p2, Landroid/content/Intent;

    .line 3
    .line 4
    .line 5
    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 6
    .line 7
    const-string p3, "email"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p2}, Lcom/narvii/account/AccountBaseFragment;->switchLogin(Landroid/content/Intent;)V

    .line 14
    return-void
.end method

.method private synthetic lambda$onViewCreated$0(Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->i1()V

    .line 8
    return-void
.end method

.method public static synthetic n(Lcom/narvii/account/AccountBaseFragment;Lcom/narvii/util/http/ApiRequest;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/account/AccountBaseFragment;->lambda$accountRestore$1(Lcom/narvii/util/http/ApiRequest;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic o(Lcom/narvii/account/AccountBaseFragment;Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/account/AccountBaseFragment;->lambda$handleAlreadyRegistered$2(Ljava/lang/String;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic p(Lcom/narvii/account/AccountBaseFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/account/AccountBaseFragment;->lambda$onViewCreated$0(Landroid/view/View;)V

    return-void
.end method

.method public static safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V
    .locals 1
    .param p0, "p0"    # Landroidx/fragment/app/Fragment;
    .param p1, "p1"    # Landroid/content/Intent;
    .param p2, "p2"    # I

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

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
.method protected addStatusBarMargin()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public cancel()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/account/AccountBaseFragment;->request:Lcom/narvii/util/http/ApiRequest;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const-string v0, "api"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/narvii/account/AccountBaseFragment;->request:Lcom/narvii/util/http/ApiRequest;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiService;->abort(Lcom/narvii/util/http/ApiRequest;)V

    .line 18
    const/4 v0, 0x0

    .line 19
    .line 20
    iput-object v0, p0, Lcom/narvii/account/AccountBaseFragment;->request:Lcom/narvii/util/http/ApiRequest;

    .line 21
    :cond_0
    const/4 v0, 0x1

    .line 22
    return v0
.end method

.method public cancelSubmit()V
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
    instance-of v1, v0, Lcom/narvii/account/LoginActivity;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    check-cast v0, Lcom/narvii/account/LoginActivity;

    .line 13
    const/4 v1, 0x0

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/narvii/account/LoginActivity;->setSubmitting(Lcom/narvii/account/AccountBaseFragment;)V

    .line 17
    :cond_0
    return-void
.end method

.method public completeLogEvent(Lcom/narvii/logging/LogEvent$Builder;)V
    .locals 2
    .param p1    # Lcom/narvii/logging/LogEvent$Builder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->completeLogEvent(Lcom/narvii/logging/LogEvent$Builder;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/account/AccountBaseFragment;->logSignUpMethod()Z

    .line 7
    move-result v0

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const-string v0, "key_sign_up_method"

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    const-string v1, "signupMethod"

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v1, v0}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    .line 21
    :cond_0
    return-void
.end method

.method protected dismissProgress()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/account/AccountBaseFragment;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/account/AccountBaseFragment;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 16
    :cond_0
    return-void
.end method

.method public finishWithResult(ZILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/narvii/account/AccountBaseFragment;->finishWithResult(ZILjava/lang/String;Lcom/narvii/util/http/ApiRequest;)V

    return-void
.end method

.method public finishWithResult(ZILjava/lang/String;Lcom/narvii/util/http/ApiRequest;)V
    .locals 3

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez p1, :cond_3

    const/16 v1, 0xd7

    const/4 v2, 0x0

    if-eq p2, v1, :cond_1

    const/16 v1, 0xf6

    if-eq p2, v1, :cond_0

    goto :goto_2

    .line 3
    :cond_0
    invoke-direct {p0, p4}, Lcom/narvii/account/AccountBaseFragment;->accountRestore(Lcom/narvii/util/http/ApiRequest;)V

    :goto_0
    move-object p3, v2

    goto :goto_2

    :cond_1
    if-nez p4, :cond_2

    move-object p4, v2

    goto :goto_1

    :cond_2
    const-string v1, "email"

    .line 4
    invoke-virtual {p4, v1}, Lcom/narvii/util/http/ApiRequest;->tag(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    :goto_1
    invoke-virtual {p0, p3, p4}, Lcom/narvii/account/AccountBaseFragment;->handleAlreadyRegistered(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    :goto_2
    if-eqz v0, :cond_4

    .line 5
    instance-of p4, v0, Lcom/narvii/account/LoginActivity;

    if-eqz p4, :cond_4

    .line 6
    check-cast v0, Lcom/narvii/account/LoginActivity;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/narvii/account/LoginActivity;->finishWithResult(Lcom/narvii/account/AccountBaseFragment;ZILjava/lang/String;)V

    :cond_4
    return-void
.end method

.method protected getAddress()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-string v1, "signupLocation"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Lcom/narvii/account/SignupLocationFragment;

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    const/4 v0, 0x0

    .line 16
    return-object v0

    .line 17
    .line 18
    :cond_0
    iget-object v0, v0, Lcom/narvii/account/SignupLocationFragment;->address:Ljava/lang/String;

    .line 19
    return-object v0
.end method

.method protected getLocation()Lcom/narvii/location/GPSCoordinate;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-string v1, "signupLocation"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Lcom/narvii/account/SignupLocationFragment;

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    const/4 v0, 0x0

    .line 16
    return-object v0

    .line 17
    .line 18
    :cond_0
    iget-object v0, v0, Lcom/narvii/account/SignupLocationFragment;->location:Lcom/narvii/location/GPSCoordinate;

    .line 19
    return-object v0
.end method

.method public getProgressText()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public goToAccountCreatedPage(Landroidx/fragment/app/Fragment;Z)V
    .locals 2

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    .line 6
    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    new-instance v0, Landroid/os/Bundle;

    .line 12
    .line 13
    .line 14
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 15
    .line 16
    :cond_1
    const-string v1, "newAccount"

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1, p2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 23
    .line 24
    const-string p2, "accountCreated"

    .line 25
    .line 26
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/narvii/account/AccountBaseFragment;->addUnBackedFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public goToAddProfilePage(Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/account/AccountBaseFragment;->addFragment(Landroidx/fragment/app/Fragment;)V

    .line 4
    return-void
.end method

.method public goToSetPasswordPage(Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/account/AccountBaseFragment;->addFragment(Landroidx/fragment/app/Fragment;)V

    .line 4
    return-void
.end method

.method public goToSuccessPage(Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/account/AccountBaseFragment;->addFragment(Landroidx/fragment/app/Fragment;)V

    .line 4
    return-void
.end method

.method protected handleAlreadyRegistered(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 13
    .line 14
    const/high16 p1, 0x1040000

    .line 15
    .line 16
    sget-object v1, Lcom/narvii/util/Utils;->DIALOG_BUTTON_EMPTY_LISTENER:Landroid/content/DialogInterface$OnClickListener;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 20
    .line 21
    new-instance p1, Lcom/narvii/account/c;

    .line 22
    .line 23
    .line 24
    invoke-direct {p1, p0, p2}, Lcom/narvii/account/c;-><init>(Lcom/narvii/account/AccountBaseFragment;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const p2, 0x7f120042

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p2, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 34
    return-void
.end method

.method public isModel()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected logSignUpMethod()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    .line 2
    const/16 v0, 0x245

    .line 3
    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    const/4 v0, -0x1

    .line 6
    .line 7
    if-ne p2, v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p3}, Lcom/narvii/account/AccountBaseFragment;->switchLogin(Landroid/content/Intent;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 14
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    const/4 p1, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/narvii/account/AccountBaseFragment;->setIsRequesting(Z)V

    .line 8
    return-void
.end method

.method public onIndicatorClicked(I)V
    .locals 0

    return-void
.end method

.method public onTotallySuccess()V
    .locals 0

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const p2, 0x7f0a0079

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object p2

    .line 11
    .line 12
    if-eqz p2, :cond_0

    .line 13
    .line 14
    new-instance v0, Lcom/narvii/account/a;

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, p0}, Lcom/narvii/account/a;-><init>(Lcom/narvii/account/AccountBaseFragment;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/account/AccountBaseFragment;->addStatusBarMargin()Z

    .line 24
    move-result p2

    .line 25
    .line 26
    if-eqz p2, :cond_1

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 30
    move-result-object p2

    .line 31
    .line 32
    .line 33
    invoke-static {p2, p1}, Lcom/narvii/util/statusbar/StatusBarUtils;->addMarginTopToContentChild(Landroid/app/Activity;Landroid/view/View;)V

    .line 34
    .line 35
    .line 36
    :cond_1
    const p2, 0x7f0a0d16

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 40
    move-result-object p1

    .line 41
    .line 42
    check-cast p1, Lcom/narvii/account/AccountSignUpIndicatorView;

    .line 43
    .line 44
    iput-object p1, p0, Lcom/narvii/account/AccountBaseFragment;->indicatorView:Lcom/narvii/account/AccountSignUpIndicatorView;

    .line 45
    .line 46
    if-eqz p1, :cond_2

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, p0}, Lcom/narvii/account/AccountSignUpIndicatorView;->setIndicatorClickListener(Lcom/narvii/account/AccountSignUpIndicatorView$IndicatorClickListener;)V

    .line 50
    .line 51
    iget-object p1, p0, Lcom/narvii/account/AccountBaseFragment;->indicatorView:Lcom/narvii/account/AccountSignUpIndicatorView;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, p0}, Lcom/narvii/account/AccountSignUpIndicatorView;->setSuccessFinishedListener(Lcom/narvii/account/AccountSignUpIndicatorView$IndicatorSuccessFinishedListener;)V

    .line 55
    .line 56
    new-instance p1, Lcom/narvii/account/AccountUtils;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 60
    move-result-object p2

    .line 61
    .line 62
    .line 63
    invoke-direct {p1, p2}, Lcom/narvii/account/AccountUtils;-><init>(Landroid/content/Context;)V

    .line 64
    .line 65
    iget-object p2, p0, Lcom/narvii/account/AccountBaseFragment;->indicatorView:Lcom/narvii/account/AccountSignUpIndicatorView;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1}, Lcom/narvii/account/AccountUtils;->getAccountForegroundColor()I

    .line 69
    move-result p1

    .line 70
    .line 71
    .line 72
    invoke-virtual {p2, p1}, Lcom/narvii/account/AccountSignUpIndicatorView;->setIndicatorColor(I)V

    .line 73
    .line 74
    :cond_2
    new-instance p1, Lcom/narvii/util/dialog/ProgressDialog;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 78
    move-result-object p2

    .line 79
    .line 80
    .line 81
    invoke-direct {p1, p2}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 82
    .line 83
    iput-object p1, p0, Lcom/narvii/account/AccountBaseFragment;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 84
    const/4 p2, 0x0

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 88
    .line 89
    iget-object p1, p0, Lcom/narvii/account/AccountBaseFragment;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 93
    return-void
.end method

.method protected requestSecurityCode(ILjava/lang/String;Lcom/narvii/util/http/ApiResponseListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/narvii/util/http/ApiResponseListener<",
            "Lcom/narvii/model/api/ApiResponse;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/narvii/account/AccountBaseFragment;->requestSecurityCode(ILjava/lang/String;Ljava/lang/Integer;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method protected requestSecurityCode(ILjava/lang/String;Ljava/lang/Integer;Lcom/narvii/util/http/ApiResponseListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Lcom/narvii/util/http/ApiResponseListener<",
            "Lcom/narvii/model/api/ApiResponse;",
            ">;)V"
        }
    .end annotation

    const-string v0, "account"

    .line 2
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    const-string v1, "api"

    .line 3
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 4
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->https()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    const-string v3, "/auth/request-security-validation"

    .line 5
    invoke-virtual {v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    const-string v3, "type"

    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    const-string v2, "identity"

    .line 7
    invoke-virtual {p1, v2, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    sget-object p2, La0/a;->o:Ljava/lang/String;

    .line 8
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    if-eqz p3, :cond_0

    const-string p2, "level"

    .line 9
    invoke-virtual {p1, p2, p3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    const/4 p2, 0x1

    .line 11
    invoke-virtual {p0, p2}, Lcom/narvii/account/AccountBaseFragment;->setIsRequesting(Z)V

    .line 12
    invoke-virtual {v1, p1, p4}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method public setAccountExists(Z)V
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
    instance-of v1, v0, Lcom/narvii/account/LoginActivity;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    check-cast v0, Lcom/narvii/account/LoginActivity;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lcom/narvii/account/LoginActivity;->setExists(Z)V

    .line 16
    :cond_0
    return-void
.end method

.method public setCreatingAccount(Z)V
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
    instance-of v1, v0, Lcom/narvii/account/LoginActivity;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    check-cast v0, Lcom/narvii/account/LoginActivity;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lcom/narvii/account/LoginActivity;->setCreatingAccount(Z)V

    .line 16
    :cond_0
    return-void
.end method

.method public setHttpCode(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lcom/narvii/util/Utils;->getHttpCode(Ljava/lang/Throwable;)I

    .line 4
    move-result p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    instance-of v1, v0, Lcom/narvii/account/LoginActivity;

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    check-cast v0, Lcom/narvii/account/LoginActivity;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lcom/narvii/account/LoginActivity;->setHttpCode(I)V

    .line 20
    :cond_0
    return-void
.end method

.method public setIsRequesting(Z)V
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
    instance-of v1, v0, Lcom/narvii/account/LoginActivity;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    check-cast v0, Lcom/narvii/account/LoginActivity;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lcom/narvii/account/LoginActivity;->setCreatingAccount(Z)V

    .line 16
    :cond_0
    return-void
.end method

.method public setLastError(ILjava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    move-result-object p2

    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    instance-of v0, p2, Lcom/narvii/account/LoginActivity;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    check-cast p2, Lcom/narvii/account/LoginActivity;

    .line 13
    .line 14
    iput p1, p2, Lcom/narvii/account/LoginActivity;->statErrorCode:I

    .line 15
    :cond_0
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
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
    instance-of v1, v0, Lcom/narvii/account/LoginActivity;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    check-cast v0, Lcom/narvii/account/LoginActivity;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lcom/narvii/account/LoginActivity;->setUsername(Ljava/lang/String;)V

    .line 16
    :cond_0
    return-void
.end method

.method protected showProgress()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/account/AccountBaseFragment;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 6
    return-void
.end method

.method public startSubmit()V
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
    instance-of v1, v0, Lcom/narvii/account/LoginActivity;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    check-cast v0, Lcom/narvii/account/LoginActivity;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p0}, Lcom/narvii/account/LoginActivity;->setSubmitting(Lcom/narvii/account/AccountBaseFragment;)V

    .line 16
    :cond_0
    return-void
.end method

.method protected switchLogin(Landroid/content/Intent;)V
    .locals 2

    const v0, 0x7f01000e

    const v1, 0x7f01000f

    .line 19
    invoke-virtual {p0, p1, v0, v1}, Lcom/narvii/account/AccountBaseFragment;->switchLogin(Landroid/content/Intent;II)V

    return-void
.end method

.method protected switchLogin(Landroid/content/Intent;II)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->i1()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    :catch_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f010010

    const v2, 0x7f010011

    .line 4
    invoke-virtual {v0, p2, p3, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->z(IIII)Landroidx/fragment/app/FragmentTransaction;

    .line 5
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const/4 p3, 0x0

    if-eqz p1, :cond_1

    const-string v1, "email"

    .line 6
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "phoneNumber"

    .line 7
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v1, p3

    move-object v2, v1

    .line 8
    :goto_0
    new-instance v3, Lcom/narvii/account/LoginFragment;

    invoke-direct {v3}, Lcom/narvii/account/LoginFragment;-><init>()V

    .line 9
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v5, "emailOrPhone"

    if-nez v4, :cond_2

    .line 10
    invoke-virtual {p2, v5, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 11
    :cond_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 12
    invoke-virtual {p2, v5, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    const-string v1, "pass"

    .line 13
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-virtual {v3, p2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 15
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContainerId()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 16
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContainerId()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1, v3}, Landroidx/fragment/app/FragmentTransaction;->u(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroidx/fragment/app/FragmentTransaction;->h(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->k()I

    goto :goto_2

    :cond_4
    const p1, 0x7f0a05ff

    .line 17
    invoke-virtual {v0, p1, v3}, Landroidx/fragment/app/FragmentTransaction;->u(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroidx/fragment/app/FragmentTransaction;->h(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->k()I

    .line 18
    :goto_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->i0()Z

    return-void
.end method

.method public updateIndicatorViewStatus(I)V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/account/AccountBaseFragment;->indicatorView:Lcom/narvii/account/AccountSignUpIndicatorView;

    .line 3
    .line 4
    if-eqz v0, :cond_4

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/account/AccountSignUpIndicatorView;->getCurStatus()I

    .line 8
    move-result v0

    .line 9
    .line 10
    if-ne v0, p1, :cond_0

    .line 11
    goto :goto_1

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    if-eqz v0, :cond_3

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 21
    move-result-object v0

    .line 22
    const/4 v1, 0x0

    .line 23
    const/4 v2, 0x1

    .line 24
    const/4 v3, 0x2

    .line 25
    .line 26
    if-eq p1, v3, :cond_1

    .line 27
    move v4, v2

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    move v4, v1

    .line 30
    .line 31
    .line 32
    :goto_0
    invoke-virtual {v0, v4}, Landroid/view/View;->setClickable(Z)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    if-eq p1, v3, :cond_2

    .line 39
    move v1, v2

    .line 40
    .line 41
    .line 42
    :cond_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 43
    .line 44
    :cond_3
    iget-object v0, p0, Lcom/narvii/account/AccountBaseFragment;->indicatorView:Lcom/narvii/account/AccountSignUpIndicatorView;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, p1}, Lcom/narvii/account/AccountSignUpIndicatorView;->updateStatus(I)V

    .line 48
    :cond_4
    :goto_1
    return-void
.end method
