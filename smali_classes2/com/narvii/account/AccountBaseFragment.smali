.class public Lcom/narvii/account/AccountBaseFragment;
.super Lcom/narvii/app/NVFragment;
.source "AccountBaseFragment.java"

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

.field public static final QUICK_DEBUG_MODE:Z = false

.field public static final RESTORE_ACCOUNT:I = 0x245

.field public static final SECURITY_VALIDATION_TARGET_TYPE_DIGITS:I = 0x3

.field public static final SECURITY_VALIDATION_TARGET_TYPE_EMAIL:I = 0x1

.field public static final SECURITY_VALIDATION_TARGET_TYPE_GLOBAL_SMS:I = 0x8

.field public static final SIGN_UP_METHOD_EMAIL:Ljava/lang/String; = "emailSignup"

.field public static final SIGN_UP_METHOD_FACEBOOK:Ljava/lang/String; = "facebookSignup"

.field public static final SIGN_UP_METHOD_GOOGLE:Ljava/lang/String; = "googleSignup"

.field public static final SIGN_UP_METHOD_PHONE:Ljava/lang/String; = "phoneSignup"

.field private static final TWITTER_KEY:Ljava/lang/String; = "rsIeJ0ut0Q1xK8bVk1Rd1UXmE"

.field private static final TWITTER_SECRET:Ljava/lang/String; = "DBw3iKyCC9shzN2LOPX00Hr4sMM5T0gY2OVR34EMmciVJc4Hh8"


# instance fields
.field protected indicatorView:Lcom/narvii/account/AccountSignUpIndicatorView;

.field private progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

.field private request:Lcom/narvii/util/http/ApiRequest;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    return-void
.end method

.method private accountRestore(Lcom/narvii/util/http/ApiRequest;)V
    .locals 3

    .line 307
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f0054

    .line 308
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0f0193

    const/4 v2, 0x0

    .line 309
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 310
    new-instance v1, Lcom/narvii/account/AccountBaseFragment$2;

    invoke-direct {v1, p0, p1}, Lcom/narvii/account/AccountBaseFragment$2;-><init>(Lcom/narvii/account/AccountBaseFragment;Lcom/narvii/util/http/ApiRequest;)V

    const p1, 0x7f0f0052

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 336
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private addFragment(Landroid/support/v4/app/Fragment;)V
    .locals 5

    .line 271
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 274
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f01000e

    const v2, 0x7f01000f

    const v3, 0x7f010010

    const v4, 0x7f010011

    .line 275
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    const v1, 0x7f0904ba

    .line 277
    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method private addUnBackedFragment(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V
    .locals 5

    .line 261
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 264
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f01000e

    const v2, 0x7f01000f

    const v3, 0x7f010010

    const v4, 0x7f010011

    .line 265
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    const v1, 0x7f0904ba

    .line 267
    invoke-virtual {v0, v1, p1, p2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method private emailAlreadyRegisted(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 345
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 346
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 347
    sget-object p1, Lcom/narvii/util/Utils;->DIALOG_BUTTON_EMPTY_LISTENER:Landroid/content/DialogInterface$OnClickListener;

    const/high16 v1, 0x1040000

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 348
    new-instance p1, Lcom/narvii/account/AccountBaseFragment$3;

    invoke-direct {p1, p0, p2}, Lcom/narvii/account/AccountBaseFragment$3;-><init>(Lcom/narvii/account/AccountBaseFragment;Ljava/lang/String;)V

    const p2, 0x7f0f0043

    invoke-virtual {v0, p2, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 356
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

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

    .line 193
    iget-object v0, p0, Lcom/narvii/account/AccountBaseFragment;->request:Lcom/narvii/util/http/ApiRequest;

    if-eqz v0, :cond_0

    const-string v0, "api"

    .line 194
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 195
    iget-object v1, p0, Lcom/narvii/account/AccountBaseFragment;->request:Lcom/narvii/util/http/ApiRequest;

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiService;->abort(Lcom/narvii/util/http/ApiRequest;)V

    const/4 v0, 0x0

    .line 196
    iput-object v0, p0, Lcom/narvii/account/AccountBaseFragment;->request:Lcom/narvii/util/http/ApiRequest;

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public cancelSubmit()V
    .locals 2

    .line 134
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/account/LoginActivity;

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/LoginActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/narvii/account/LoginActivity;->setSubmitting(Lcom/narvii/account/AccountBaseFragment;)V

    :cond_0
    return-void
.end method

.method public completeLogEvent(Lcom/narvii/logging/LogEvent$Builder;)V
    .locals 2

    .line 413
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->completeLogEvent(Lcom/narvii/logging/LogEvent$Builder;)V

    .line 414
    invoke-virtual {p0}, Lcom/narvii/account/AccountBaseFragment;->logSignUpMethod()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "key_sign_up_method"

    .line 415
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "signupMethod"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    :cond_0
    return-void
.end method

.method protected dismissProgress()V
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/narvii/account/AccountBaseFragment;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/narvii/account/AccountBaseFragment;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public finishWithResult(ZILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 160
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/narvii/account/AccountBaseFragment;->finishWithResult(ZILjava/lang/String;Lcom/narvii/util/http/ApiRequest;)V

    return-void
.end method

.method public finishWithResult(ZILjava/lang/String;Lcom/narvii/util/http/ApiRequest;)V
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_3

    const/16 v1, 0xd7

    if-eq p2, v1, :cond_1

    const/16 v1, 0xf6

    if-eq p2, v1, :cond_0

    goto :goto_1

    .line 168
    :cond_0
    invoke-direct {p0, p4}, Lcom/narvii/account/AccountBaseFragment;->accountRestore(Lcom/narvii/util/http/ApiRequest;)V

    goto :goto_2

    :cond_1
    if-nez p4, :cond_2

    move-object p4, v0

    goto :goto_0

    :cond_2
    const-string v1, "email"

    .line 173
    invoke-virtual {p4, v1}, Lcom/narvii/util/http/ApiRequest;->tag(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    :goto_0
    invoke-virtual {p0, p3, p4}, Lcom/narvii/account/AccountBaseFragment;->handleAlreadyRegistered(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    :goto_1
    move-object v0, p3

    .line 178
    :goto_2
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    instance-of p3, p3, Lcom/narvii/account/LoginActivity;

    if-eqz p3, :cond_4

    .line 179
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    check-cast p3, Lcom/narvii/account/LoginActivity;

    invoke-virtual {p3, p0, p1, p2, v0}, Lcom/narvii/account/LoginActivity;->finishWithResult(Lcom/narvii/account/AccountBaseFragment;ZILjava/lang/String;)V

    :cond_4
    return-void
.end method

.method protected getAddress()Ljava/lang/String;
    .locals 2

    .line 210
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "signupLocation"

    .line 211
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/SignupLocationFragment;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 214
    :cond_0
    iget-object v0, v0, Lcom/narvii/account/SignupLocationFragment;->address:Ljava/lang/String;

    return-object v0
.end method

.method protected getLocation()Lcom/narvii/location/GPSCoordinate;
    .locals 2

    .line 202
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "signupLocation"

    .line 203
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/SignupLocationFragment;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 206
    :cond_0
    iget-object v0, v0, Lcom/narvii/account/SignupLocationFragment;->location:Lcom/narvii/location/GPSCoordinate;

    return-object v0
.end method

.method public getProgressText()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public goToAccountCreatedPage(Landroid/support/v4/app/Fragment;Z)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 293
    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1

    .line 295
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :cond_1
    const-string v1, "newAccount"

    .line 297
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 298
    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    const-string p2, "accountCreated"

    .line 299
    invoke-direct {p0, p1, p2}, Lcom/narvii/account/AccountBaseFragment;->addUnBackedFragment(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    return-void
.end method

.method public goToAddProfilePage(Landroid/support/v4/app/Fragment;)V
    .locals 0

    .line 286
    invoke-direct {p0, p1}, Lcom/narvii/account/AccountBaseFragment;->addFragment(Landroid/support/v4/app/Fragment;)V

    return-void
.end method

.method public goToSetPasswordPage(Landroid/support/v4/app/Fragment;)V
    .locals 0

    .line 282
    invoke-direct {p0, p1}, Lcom/narvii/account/AccountBaseFragment;->addFragment(Landroid/support/v4/app/Fragment;)V

    return-void
.end method

.method protected handleAlreadyRegistered(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 341
    invoke-direct {p0, p1, p2}, Lcom/narvii/account/AccountBaseFragment;->emailAlreadyRegisted(Ljava/lang/String;Ljava/lang/String;)V

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

    const/16 v0, 0x245

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 362
    invoke-virtual {p0, p3}, Lcom/narvii/account/AccountBaseFragment;->switchLogin(Landroid/content/Intent;)V

    .line 364
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVFragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 75
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 76
    invoke-virtual {p0, p1}, Lcom/narvii/account/AccountBaseFragment;->setIsRequesting(Z)V

    return-void
.end method

.method public onIndicatorClicked(I)V
    .locals 0

    return-void
.end method

.method protected onMobileCheckSuccess(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onTotallySuccess()V
    .locals 0

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 81
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f090048

    .line 82
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 84
    new-instance v0, Lcom/narvii/account/AccountBaseFragment$1;

    invoke-direct {v0, p0}, Lcom/narvii/account/AccountBaseFragment$1;-><init>(Lcom/narvii/account/AccountBaseFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/account/AccountBaseFragment;->addStatusBarMargin()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 92
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/narvii/util/statusbar/StatusBarUtils;->addMarginTopToContentChild(Landroid/app/Activity;Landroid/view/View;)V

    :cond_1
    const p2, 0x7f090a48

    .line 95
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/AccountSignUpIndicatorView;

    iput-object p1, p0, Lcom/narvii/account/AccountBaseFragment;->indicatorView:Lcom/narvii/account/AccountSignUpIndicatorView;

    .line 96
    iget-object p1, p0, Lcom/narvii/account/AccountBaseFragment;->indicatorView:Lcom/narvii/account/AccountSignUpIndicatorView;

    if-eqz p1, :cond_2

    .line 97
    invoke-virtual {p1, p0}, Lcom/narvii/account/AccountSignUpIndicatorView;->setIndicatorClickListener(Lcom/narvii/account/AccountSignUpIndicatorView$IndicatorClickListener;)V

    .line 98
    iget-object p1, p0, Lcom/narvii/account/AccountBaseFragment;->indicatorView:Lcom/narvii/account/AccountSignUpIndicatorView;

    invoke-virtual {p1, p0}, Lcom/narvii/account/AccountSignUpIndicatorView;->setSuccessFinishedListener(Lcom/narvii/account/AccountSignUpIndicatorView$IndicatorSuccessFinishedListener;)V

    .line 99
    new-instance p1, Lcom/narvii/account/AccountUtils;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/narvii/account/AccountUtils;-><init>(Landroid/content/Context;)V

    .line 100
    iget-object p2, p0, Lcom/narvii/account/AccountBaseFragment;->indicatorView:Lcom/narvii/account/AccountSignUpIndicatorView;

    invoke-virtual {p1}, Lcom/narvii/account/AccountUtils;->getAccountForegroundColor()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/narvii/account/AccountSignUpIndicatorView;->setIndicatorColor(I)V

    .line 103
    :cond_2
    new-instance p1, Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/narvii/account/AccountBaseFragment;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 104
    iget-object p1, p0, Lcom/narvii/account/AccountBaseFragment;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 105
    iget-object p1, p0, Lcom/narvii/account/AccountBaseFragment;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    return-void
.end method

.method protected openMobileCheckAuth()V
    .locals 0

    return-void
.end method

.method protected requestSecurityCode(ILjava/lang/String;Lcom/narvii/util/http/ApiResponseListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/narvii/util/http/ApiResponseListener<",
            "Lcom/narvii/model/api/ApiResponse;",
            ">;)V"
        }
    .end annotation

    const-string v0, "account"

    .line 248
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    const-string v1, "api"

    .line 249
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 250
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->https()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    const-string v3, "/auth/request-security-validation"

    .line 251
    invoke-virtual {v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    .line 252
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo v3, "type"

    invoke-virtual {v2, v3, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    const-string v2, "identity"

    .line 253
    invoke-virtual {p1, v2, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    .line 254
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getDeviceId()Ljava/lang/String;

    move-result-object p2

    const-string v0, "deviceID"

    invoke-virtual {p1, v0, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    const/4 p2, 0x1

    .line 255
    invoke-virtual {p0, p2}, Lcom/narvii/account/AccountBaseFragment;->setIsRequesting(Z)V

    .line 256
    invoke-virtual {v1, p1, p3}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method public setCreatingAccount(Z)V
    .locals 1

    .line 140
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/account/LoginActivity;

    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/LoginActivity;

    invoke-virtual {v0, p1}, Lcom/narvii/account/LoginActivity;->setCreatingAccount(Z)V

    :cond_0
    return-void
.end method

.method public setIsRequesting(Z)V
    .locals 1

    .line 146
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/account/LoginActivity;

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/LoginActivity;

    invoke-virtual {v0, p1}, Lcom/narvii/account/LoginActivity;->setCreatingAccount(Z)V

    :cond_0
    return-void
.end method

.method public setLastError(ILjava/lang/String;)V
    .locals 0

    .line 184
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    instance-of p2, p2, Lcom/narvii/account/LoginActivity;

    if-eqz p2, :cond_0

    .line 185
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Lcom/narvii/account/LoginActivity;

    iput p1, p2, Lcom/narvii/account/LoginActivity;->statErrorCode:I

    :cond_0
    return-void
.end method

.method protected showProgress()V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/narvii/account/AccountBaseFragment;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    return-void
.end method

.method public startSubmit()V
    .locals 1

    .line 128
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/account/LoginActivity;

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/LoginActivity;

    invoke-virtual {v0, p0}, Lcom/narvii/account/LoginActivity;->setSubmitting(Lcom/narvii/account/AccountBaseFragment;)V

    :cond_0
    return-void
.end method

.method protected switchLogin(Landroid/content/Intent;)V
    .locals 2

    const v0, 0x7f01000e

    const v1, 0x7f01000f

    .line 404
    invoke-virtual {p0, p1, v0, v1}, Lcom/narvii/account/AccountBaseFragment;->switchLogin(Landroid/content/Intent;II)V

    return-void
.end method

.method protected switchLogin(Landroid/content/Intent;II)V
    .locals 6

    .line 368
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 372
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 376
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f010010

    const v2, 0x7f010011

    .line 377
    invoke-virtual {v0, p2, p3, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    .line 382
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string p3, "phoneNumber"

    const-string v1, "email"

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    .line 385
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 386
    invoke-virtual {p1, p3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object v3, v2

    move-object v4, v3

    .line 388
    :goto_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 389
    new-instance p3, Lcom/narvii/account/EmailLoginFragment;

    invoke-direct {p3}, Lcom/narvii/account/EmailLoginFragment;-><init>()V

    .line 390
    invoke-virtual {p2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 391
    :cond_2
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 392
    new-instance v1, Lcom/narvii/account/MobileLoginFragment;

    invoke-direct {v1}, Lcom/narvii/account/MobileLoginFragment;-><init>()V

    .line 393
    invoke-virtual {p2, p3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object p3, v1

    goto :goto_2

    .line 395
    :cond_3
    new-instance p3, Lcom/narvii/account/EmailLoginFragment;

    invoke-direct {p3}, Lcom/narvii/account/EmailLoginFragment;-><init>()V

    :goto_2
    const-string v1, "pass"

    .line 397
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    invoke-virtual {p3, p2}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    const p1, 0x7f0904ba

    .line 399
    invoke-virtual {v0, p1, p3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 400
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    return-void
.end method

.method public updateIndicatorViewStatus(I)V
    .locals 5

    .line 236
    iget-object v0, p0, Lcom/narvii/account/AccountBaseFragment;->indicatorView:Lcom/narvii/account/AccountSignUpIndicatorView;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/narvii/account/AccountSignUpIndicatorView;->getCurStatus()I

    move-result v0

    if-ne v0, p1, :cond_0

    goto :goto_2

    .line 239
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 240
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eq p1, v3, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v0, v4}, Landroid/view/View;->setClickable(Z)V

    .line 241
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eq p1, v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 243
    :cond_3
    iget-object v0, p0, Lcom/narvii/account/AccountBaseFragment;->indicatorView:Lcom/narvii/account/AccountSignUpIndicatorView;

    invoke-virtual {v0, p1}, Lcom/narvii/account/AccountSignUpIndicatorView;->updateStatus(I)V

    :cond_4
    :goto_2
    return-void
.end method

.method public updateIndicatorViewStatusWhenIdle(I)V
    .locals 2

    .line 228
    iget-object v0, p0, Lcom/narvii/account/AccountBaseFragment;->indicatorView:Lcom/narvii/account/AccountSignUpIndicatorView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/narvii/account/AccountSignUpIndicatorView;->getCurStatus()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/narvii/account/AccountBaseFragment;->indicatorView:Lcom/narvii/account/AccountSignUpIndicatorView;

    .line 229
    invoke-virtual {v0}, Lcom/narvii/account/AccountSignUpIndicatorView;->getCurStatus()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 232
    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/account/AccountBaseFragment;->updateIndicatorViewStatus(I)V

    :cond_1
    :goto_0
    return-void
.end method
