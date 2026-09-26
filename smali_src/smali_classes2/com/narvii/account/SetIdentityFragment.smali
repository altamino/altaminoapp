.class public abstract Lcom/narvii/account/SetIdentityFragment;
.super Lcom/narvii/account/AccountBaseFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/account/SetIdentityFragment$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/account/SetIdentityFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_OLD_CODE:Ljava/lang/String; = "old_code"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_OLD_IDENTITY:Ljava/lang/String; = "old_identity"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_OLD_IDENTITY_TYPE:Ljava/lang/String; = "type"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_OLD_PASSWORD:Ljava/lang/String; = "old_password"
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

.field private final accountUtils$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final oldCode$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final oldIdentity$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final oldIdentityType$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final oldPassword$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private request:Lcom/narvii/util/http/ApiRequest;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final verifyAccountType$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final verifyCodeHelper$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/account/SetIdentityFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/account/SetIdentityFragment$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Lcom/narvii/account/SetIdentityFragment;->Companion:Lcom/narvii/account/SetIdentityFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/account/AccountBaseFragment;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/account/SetIdentityFragment$verifyAccountType$2;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/narvii/account/SetIdentityFragment$verifyAccountType$2;-><init>(Lcom/narvii/account/SetIdentityFragment;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    iput-object v0, p0, Lcom/narvii/account/SetIdentityFragment;->verifyAccountType$delegate:Lw7/m;

    .line 15
    .line 16
    new-instance v0, Lcom/narvii/account/SetIdentityFragment$accountService$2;

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, p0}, Lcom/narvii/account/SetIdentityFragment$accountService$2;-><init>(Lcom/narvii/account/SetIdentityFragment;)V

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    iput-object v0, p0, Lcom/narvii/account/SetIdentityFragment;->accountService$delegate:Lw7/m;

    .line 26
    .line 27
    new-instance v0, Lcom/narvii/account/SetIdentityFragment$accountUtils$2;

    .line 28
    .line 29
    .line 30
    invoke-direct {v0, p0}, Lcom/narvii/account/SetIdentityFragment$accountUtils$2;-><init>(Lcom/narvii/account/SetIdentityFragment;)V

    .line 31
    .line 32
    .line 33
    invoke-static {v0}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    iput-object v0, p0, Lcom/narvii/account/SetIdentityFragment;->accountUtils$delegate:Lw7/m;

    .line 37
    .line 38
    new-instance v0, Lcom/narvii/account/SetIdentityFragment$verifyCodeHelper$2;

    .line 39
    .line 40
    .line 41
    invoke-direct {v0, p0}, Lcom/narvii/account/SetIdentityFragment$verifyCodeHelper$2;-><init>(Lcom/narvii/account/SetIdentityFragment;)V

    .line 42
    .line 43
    .line 44
    invoke-static {v0}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    iput-object v0, p0, Lcom/narvii/account/SetIdentityFragment;->verifyCodeHelper$delegate:Lw7/m;

    .line 48
    .line 49
    new-instance v0, Lcom/narvii/account/SetIdentityFragment$oldIdentity$2;

    .line 50
    .line 51
    .line 52
    invoke-direct {v0, p0}, Lcom/narvii/account/SetIdentityFragment$oldIdentity$2;-><init>(Lcom/narvii/account/SetIdentityFragment;)V

    .line 53
    .line 54
    .line 55
    invoke-static {v0}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 56
    move-result-object v0

    .line 57
    .line 58
    iput-object v0, p0, Lcom/narvii/account/SetIdentityFragment;->oldIdentity$delegate:Lw7/m;

    .line 59
    .line 60
    new-instance v0, Lcom/narvii/account/SetIdentityFragment$oldIdentityType$2;

    .line 61
    .line 62
    .line 63
    invoke-direct {v0, p0}, Lcom/narvii/account/SetIdentityFragment$oldIdentityType$2;-><init>(Lcom/narvii/account/SetIdentityFragment;)V

    .line 64
    .line 65
    .line 66
    invoke-static {v0}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 67
    move-result-object v0

    .line 68
    .line 69
    iput-object v0, p0, Lcom/narvii/account/SetIdentityFragment;->oldIdentityType$delegate:Lw7/m;

    .line 70
    .line 71
    new-instance v0, Lcom/narvii/account/SetIdentityFragment$oldCode$2;

    .line 72
    .line 73
    .line 74
    invoke-direct {v0, p0}, Lcom/narvii/account/SetIdentityFragment$oldCode$2;-><init>(Lcom/narvii/account/SetIdentityFragment;)V

    .line 75
    .line 76
    .line 77
    invoke-static {v0}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 78
    move-result-object v0

    .line 79
    .line 80
    iput-object v0, p0, Lcom/narvii/account/SetIdentityFragment;->oldCode$delegate:Lw7/m;

    .line 81
    .line 82
    new-instance v0, Lcom/narvii/account/SetIdentityFragment$oldPassword$2;

    .line 83
    .line 84
    .line 85
    invoke-direct {v0, p0}, Lcom/narvii/account/SetIdentityFragment$oldPassword$2;-><init>(Lcom/narvii/account/SetIdentityFragment;)V

    .line 86
    .line 87
    .line 88
    invoke-static {v0}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 89
    move-result-object v0

    .line 90
    .line 91
    iput-object v0, p0, Lcom/narvii/account/SetIdentityFragment;->oldPassword$delegate:Lw7/m;

    .line 92
    return-void
.end method

.method public static final synthetic access$showConfirmationDialog(Lcom/narvii/account/SetIdentityFragment;Ljava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/account/SetIdentityFragment;->showConfirmationDialog(Ljava/lang/String;)V

    .line 4
    return-void
.end method

.method private final getOldIdentity()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/account/SetIdentityFragment;->oldIdentity$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Ljava/lang/String;

    .line 9
    return-object v0
.end method

.method private final getOldIdentityType()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/account/SetIdentityFragment;->oldIdentityType$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Ljava/lang/Number;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method private final getOldPassword()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/account/SetIdentityFragment;->oldPassword$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Ljava/lang/String;

    .line 9
    return-object v0
.end method

.method public static synthetic q(Lcom/narvii/account/SetIdentityFragment;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/account/SetIdentityFragment;->showConfirmationDialog$lambda$6$lambda$5(Lcom/narvii/account/SetIdentityFragment;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method private final showConfirmationDialog(Ljava/lang/String;)V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/widget/ACMAlertDialog;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    const v1, 0x7f120b4d

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/narvii/widget/ACMAlertDialog;->setTitle(I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 19
    const/4 v1, 0x0

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 26
    .line 27
    .line 28
    const v1, 0x7f120438

    .line 29
    const/4 v2, 0x0

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1, v2}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 33
    .line 34
    new-instance v1, Lcom/narvii/account/m0;

    .line 35
    .line 36
    .line 37
    invoke-direct {v1, p0, p1}, Lcom/narvii/account/m0;-><init>(Lcom/narvii/account/SetIdentityFragment;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const p1, 0x7f1212a7

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, p1, v1}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    .line 47
    return-void
.end method

.method private static final showConfirmationDialog$lambda$6$lambda$5(Lcom/narvii/account/SetIdentityFragment;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    const-string p2, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string p2, "$identity"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/narvii/account/AccountBaseFragment;->showProgress()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p1}, Lcom/narvii/account/SetIdentityFragment;->requestCode(Ljava/lang/String;)V

    .line 17
    return-void
.end method


# virtual methods
.method protected addStatusBarMargin()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected final checkLegality(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "identity"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/account/AccountBaseFragment;->showProgress()V

    .line 9
    .line 10
    const-string v0, "account"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 17
    .line 18
    const-string v1, "api"

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 25
    .line 26
    .line 27
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 28
    move-result-object v2

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->https()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 32
    move-result-object v2

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 36
    move-result-object v2

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 40
    move-result-object v2

    .line 41
    .line 42
    const-string v3, "/auth/register-check"

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 46
    move-result-object v2

    .line 47
    .line 48
    sget-object v3, La0/a;->o:Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getDeviceId()Ljava/lang/String;

    .line 52
    move-result-object v0

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2, v3, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 56
    move-result-object v0

    .line 57
    .line 58
    instance-of v2, p0, Lcom/narvii/account/SetEmailFragment;

    .line 59
    .line 60
    if-eqz v2, :cond_0

    .line 61
    .line 62
    const-string v2, "email"

    .line 63
    goto :goto_0

    .line 64
    .line 65
    :cond_0
    instance-of v2, p0, Lcom/narvii/account/SetPhoneNumberFragment;

    .line 66
    .line 67
    if-eqz v2, :cond_1

    .line 68
    .line 69
    const-string v2, "phoneNumber"

    .line 70
    goto :goto_0

    .line 71
    :cond_1
    const/4 v2, 0x0

    .line 72
    .line 73
    :goto_0
    if-eqz v2, :cond_2

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v2, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v2, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 80
    .line 81
    .line 82
    :cond_2
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 83
    move-result-object v0

    .line 84
    .line 85
    iput-object v0, p0, Lcom/narvii/account/SetIdentityFragment;->request:Lcom/narvii/util/http/ApiRequest;

    .line 86
    const/4 v0, 0x1

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0, v0}, Lcom/narvii/account/AccountBaseFragment;->setIsRequesting(Z)V

    .line 90
    .line 91
    iget-object v0, p0, Lcom/narvii/account/SetIdentityFragment;->request:Lcom/narvii/util/http/ApiRequest;

    .line 92
    .line 93
    new-instance v2, Lcom/narvii/account/SetIdentityFragment$checkLegality$2;

    .line 94
    .line 95
    const-class v3, Lcom/narvii/model/api/ApiResponse;

    .line 96
    .line 97
    .line 98
    invoke-direct {v2, p0, p1, v3}, Lcom/narvii/account/SetIdentityFragment$checkLegality$2;-><init>(Lcom/narvii/account/SetIdentityFragment;Ljava/lang/String;Ljava/lang/Class;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 102
    return-void
.end method

.method protected final getAccountService()Lcom/narvii/account/AccountService;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/account/SetIdentityFragment;->accountService$delegate:Lw7/m;

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

.method protected final getAccountUtils()Lcom/narvii/account/AccountUtils;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/account/SetIdentityFragment;->accountUtils$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/account/AccountUtils;

    .line 9
    return-object v0
.end method

.method protected final getOldCode()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/account/SetIdentityFragment;->oldCode$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Ljava/lang/String;

    .line 9
    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/account/SetIdentityFragment;->getVerifyAccountType()Lcom/narvii/account/verifyaccount/VerifyAccountType;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lcom/narvii/account/verifyaccount/VerifyAccountTypeKt;->getNvFragmentPageName(Lcom/narvii/account/verifyaccount/VerifyAccountType;)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v0, "SetIdentity"

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    return-object v0
.end method

.method protected final getRequest()Lcom/narvii/util/http/ApiRequest;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/account/SetIdentityFragment;->request:Lcom/narvii/util/http/ApiRequest;

    return-object v0
.end method

.method protected final getVerifyAccountType()Lcom/narvii/account/verifyaccount/VerifyAccountType;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/account/SetIdentityFragment;->verifyAccountType$delegate:Lw7/m;

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

.method protected final getVerifyCodeHelper()Lcom/narvii/account/verifyaccount/VerifyCodeSharedPrefsHelper;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/account/SetIdentityFragment;->verifyCodeHelper$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/account/verifyaccount/VerifyCodeSharedPrefsHelper;

    .line 9
    return-object v0
.end method

.method protected final goNext(Ljava/lang/String;)V
    .locals 12
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "key_avatar_url"

    .line 3
    .line 4
    const-string v1, "key_third_party_nickname"

    .line 5
    .line 6
    const-string v2, "key_sign_up_method"

    .line 7
    .line 8
    const-string v3, "key_is_third_part"

    .line 9
    .line 10
    const-string v4, "key_third_part_secret"

    .line 11
    .line 12
    const-string v5, "set_identity_type"

    .line 13
    .line 14
    const-string v6, "identity"

    .line 15
    .line 16
    .line 17
    invoke-static {p1, v6}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 21
    move-result v6

    .line 22
    .line 23
    if-nez v6, :cond_0

    .line 24
    return-void

    .line 25
    .line 26
    .line 27
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 28
    move-result-object v6

    .line 29
    .line 30
    .line 31
    invoke-virtual {v6}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 32
    move-result-object v6

    .line 33
    .line 34
    .line 35
    const v7, 0x7f010010

    .line 36
    .line 37
    .line 38
    const v8, 0x7f010011

    .line 39
    .line 40
    .line 41
    const v9, 0x7f01000e

    .line 42
    .line 43
    .line 44
    const v10, 0x7f01000f

    .line 45
    .line 46
    .line 47
    invoke-virtual {v6, v9, v10, v7, v8}, Landroidx/fragment/app/FragmentTransaction;->z(IIII)Landroidx/fragment/app/FragmentTransaction;

    .line 48
    .line 49
    new-instance v7, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;

    .line 50
    .line 51
    .line 52
    invoke-direct {v7}, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;-><init>()V

    .line 53
    .line 54
    new-instance v8, Landroid/os/Bundle;

    .line 55
    .line 56
    .line 57
    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 58
    .line 59
    instance-of v9, p0, Lcom/narvii/account/SetEmailFragment;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    const/4 v10, 0x2

    .line 61
    .line 62
    const-string v11, "identity_to_verify_type"

    .line 63
    .line 64
    if-eqz v9, :cond_1

    .line 65
    .line 66
    .line 67
    :try_start_1
    invoke-virtual {v8, v11, v10}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 68
    .line 69
    const-string v9, "email"

    .line 70
    .line 71
    .line 72
    invoke-virtual {v8, v9, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    goto :goto_0

    .line 74
    :catch_0
    move-exception p1

    .line 75
    .line 76
    goto/16 :goto_1

    .line 77
    .line 78
    :cond_1
    instance-of v9, p0, Lcom/narvii/account/SetPhoneNumberFragment;

    .line 79
    .line 80
    if-eqz v9, :cond_2

    .line 81
    const/4 v9, 0x1

    .line 82
    .line 83
    .line 84
    invoke-virtual {v8, v11, v9}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 85
    .line 86
    const-string v9, "phone"

    .line 87
    .line 88
    .line 89
    invoke-virtual {v8, v9, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .line 91
    :cond_2
    :goto_0
    const-string p1, "verify_type"

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0}, Lcom/narvii/account/SetIdentityFragment;->getVerifyAccountType()Lcom/narvii/account/verifyaccount/VerifyAccountType;

    .line 95
    move-result-object v9

    .line 96
    .line 97
    .line 98
    invoke-static {v9}, Lcom/narvii/account/verifyaccount/VerifyAccountTypeKt;->getIntValue(Lcom/narvii/account/verifyaccount/VerifyAccountType;)I

    .line 99
    move-result v9

    .line 100
    .line 101
    .line 102
    invoke-virtual {v8, p1, v9}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0, v5}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 106
    move-result p1

    .line 107
    .line 108
    .line 109
    invoke-virtual {v8, v5, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 110
    .line 111
    const-string p1, "old_identity"

    .line 112
    .line 113
    .line 114
    invoke-direct {p0}, Lcom/narvii/account/SetIdentityFragment;->getOldIdentity()Ljava/lang/String;

    .line 115
    move-result-object v5

    .line 116
    .line 117
    .line 118
    invoke-virtual {v8, p1, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    .line 120
    const-string p1, "type"

    .line 121
    .line 122
    .line 123
    invoke-direct {p0}, Lcom/narvii/account/SetIdentityFragment;->getOldIdentityType()I

    .line 124
    move-result v5

    .line 125
    .line 126
    .line 127
    invoke-virtual {v8, p1, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 128
    .line 129
    const-string p1, "old_code"

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0}, Lcom/narvii/account/SetIdentityFragment;->getOldCode()Ljava/lang/String;

    .line 133
    move-result-object v5

    .line 134
    .line 135
    .line 136
    invoke-virtual {v8, p1, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    .line 138
    const-string p1, "old_password"

    .line 139
    .line 140
    .line 141
    invoke-direct {p0}, Lcom/narvii/account/SetIdentityFragment;->getOldPassword()Ljava/lang/String;

    .line 142
    move-result-object v5

    .line 143
    .line 144
    .line 145
    invoke-virtual {v8, p1, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    .line 147
    const-string p1, "check_level"

    .line 148
    .line 149
    .line 150
    invoke-virtual {v8, p1, v10}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {p0, v4}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 154
    move-result-object p1

    .line 155
    .line 156
    .line 157
    invoke-virtual {v8, v4, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 161
    move-result p1

    .line 162
    .line 163
    .line 164
    invoke-virtual {v8, v3, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 168
    move-result-object p1

    .line 169
    .line 170
    .line 171
    invoke-virtual {v8, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 175
    move-result-object p1

    .line 176
    .line 177
    .line 178
    invoke-virtual {v8, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 182
    move-result-object p1

    .line 183
    .line 184
    .line 185
    invoke-virtual {v8, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v7, v8}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContainerId()Ljava/lang/Integer;

    .line 192
    move-result-object p1

    .line 193
    const/4 v0, 0x0

    .line 194
    .line 195
    if-eqz p1, :cond_3

    .line 196
    .line 197
    .line 198
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 202
    move-result p1

    .line 203
    .line 204
    .line 205
    invoke-virtual {v6, p1, v7}, Landroidx/fragment/app/FragmentTransaction;->u(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 206
    move-result-object p1

    .line 207
    .line 208
    .line 209
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentTransaction;->h(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 210
    move-result-object p1

    .line 211
    .line 212
    .line 213
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->k()I

    .line 214
    goto :goto_2

    .line 215
    .line 216
    .line 217
    :cond_3
    const p1, 0x7f0a05ff

    .line 218
    .line 219
    .line 220
    invoke-virtual {v6, p1, v7}, Landroidx/fragment/app/FragmentTransaction;->u(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 221
    move-result-object p1

    .line 222
    .line 223
    .line 224
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentTransaction;->h(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 225
    move-result-object p1

    .line 226
    .line 227
    .line 228
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->k()I
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 229
    goto :goto_2

    .line 230
    .line 231
    .line 232
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 233
    move-result-object p1

    .line 234
    .line 235
    .line 236
    invoke-static {p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 237
    :goto_2
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
    invoke-super {p0, p1, p2}, Lcom/narvii/account/AccountBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 9
    .line 10
    .line 11
    const p2, 0x7f0a0e9e

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    check-cast p1, Landroid/widget/TextView;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/narvii/account/SetIdentityFragment;->getVerifyAccountType()Lcom/narvii/account/verifyaccount/VerifyAccountType;

    .line 21
    move-result-object p2

    .line 22
    .line 23
    .line 24
    invoke-static {p2}, Lcom/narvii/account/verifyaccount/VerifyAccountTypeKt;->getPageTitle(Lcom/narvii/account/verifyaccount/VerifyAccountType;)I

    .line 25
    move-result p2

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 29
    return-void
.end method

.method public abstract requestCode(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method protected final setRequest(Lcom/narvii/util/http/ApiRequest;)V
    .locals 0
    .param p1    # Lcom/narvii/util/http/ApiRequest;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/account/SetIdentityFragment;->request:Lcom/narvii/util/http/ApiRequest;

    return-void
.end method
