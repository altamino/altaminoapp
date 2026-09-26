.class public final Lcom/narvii/account/verifyaccount/CodeVerifyFragment;
.super Lcom/narvii/account/CodeVerifyBaseFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/account/verifyaccount/CodeVerifyFragment$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/account/verifyaccount/CodeVerifyFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_CHECK_LEVEL:Ljava/lang/String; = "check_level"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_IDENTITY_EMAIL:Ljava/lang/String; = "email"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_IDENTITY_PHONE:Ljava/lang/String; = "phone"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_IDENTITY_TO_VERIFY_TYPE:Ljava/lang/String; = "identity_to_verify_type"
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
.field private final checkLevel$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final email$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final identityToVerifyType$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private isVerified:Z

.field private lastVerifyCode:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private nextView:Landroid/widget/Button;

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

.field private final phone$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private request:Lcom/narvii/util/http/ApiRequest;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private validationContext:Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final verifyAccountType$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/account/verifyaccount/CodeVerifyFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/account/verifyaccount/CodeVerifyFragment$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->Companion:Lcom/narvii/account/verifyaccount/CodeVerifyFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/account/CodeVerifyBaseFragment;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/account/verifyaccount/CodeVerifyFragment$verifyAccountType$2;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/narvii/account/verifyaccount/CodeVerifyFragment$verifyAccountType$2;-><init>(Lcom/narvii/account/verifyaccount/CodeVerifyFragment;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    iput-object v0, p0, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->verifyAccountType$delegate:Lw7/m;

    .line 15
    .line 16
    new-instance v0, Lcom/narvii/account/verifyaccount/CodeVerifyFragment$identityToVerifyType$2;

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, p0}, Lcom/narvii/account/verifyaccount/CodeVerifyFragment$identityToVerifyType$2;-><init>(Lcom/narvii/account/verifyaccount/CodeVerifyFragment;)V

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    iput-object v0, p0, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->identityToVerifyType$delegate:Lw7/m;

    .line 26
    .line 27
    new-instance v0, Lcom/narvii/account/verifyaccount/CodeVerifyFragment$email$2;

    .line 28
    .line 29
    .line 30
    invoke-direct {v0, p0}, Lcom/narvii/account/verifyaccount/CodeVerifyFragment$email$2;-><init>(Lcom/narvii/account/verifyaccount/CodeVerifyFragment;)V

    .line 31
    .line 32
    .line 33
    invoke-static {v0}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    iput-object v0, p0, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->email$delegate:Lw7/m;

    .line 37
    .line 38
    new-instance v0, Lcom/narvii/account/verifyaccount/CodeVerifyFragment$phone$2;

    .line 39
    .line 40
    .line 41
    invoke-direct {v0, p0}, Lcom/narvii/account/verifyaccount/CodeVerifyFragment$phone$2;-><init>(Lcom/narvii/account/verifyaccount/CodeVerifyFragment;)V

    .line 42
    .line 43
    .line 44
    invoke-static {v0}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    iput-object v0, p0, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->phone$delegate:Lw7/m;

    .line 48
    .line 49
    new-instance v0, Lcom/narvii/account/verifyaccount/CodeVerifyFragment$checkLevel$2;

    .line 50
    .line 51
    .line 52
    invoke-direct {v0, p0}, Lcom/narvii/account/verifyaccount/CodeVerifyFragment$checkLevel$2;-><init>(Lcom/narvii/account/verifyaccount/CodeVerifyFragment;)V

    .line 53
    .line 54
    .line 55
    invoke-static {v0}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 56
    move-result-object v0

    .line 57
    .line 58
    iput-object v0, p0, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->checkLevel$delegate:Lw7/m;

    .line 59
    .line 60
    new-instance v0, Lcom/narvii/account/verifyaccount/CodeVerifyFragment$oldIdentity$2;

    .line 61
    .line 62
    .line 63
    invoke-direct {v0, p0}, Lcom/narvii/account/verifyaccount/CodeVerifyFragment$oldIdentity$2;-><init>(Lcom/narvii/account/verifyaccount/CodeVerifyFragment;)V

    .line 64
    .line 65
    .line 66
    invoke-static {v0}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 67
    move-result-object v0

    .line 68
    .line 69
    iput-object v0, p0, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->oldIdentity$delegate:Lw7/m;

    .line 70
    .line 71
    new-instance v0, Lcom/narvii/account/verifyaccount/CodeVerifyFragment$oldIdentityType$2;

    .line 72
    .line 73
    .line 74
    invoke-direct {v0, p0}, Lcom/narvii/account/verifyaccount/CodeVerifyFragment$oldIdentityType$2;-><init>(Lcom/narvii/account/verifyaccount/CodeVerifyFragment;)V

    .line 75
    .line 76
    .line 77
    invoke-static {v0}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 78
    move-result-object v0

    .line 79
    .line 80
    iput-object v0, p0, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->oldIdentityType$delegate:Lw7/m;

    .line 81
    .line 82
    new-instance v0, Lcom/narvii/account/verifyaccount/CodeVerifyFragment$oldCode$2;

    .line 83
    .line 84
    .line 85
    invoke-direct {v0, p0}, Lcom/narvii/account/verifyaccount/CodeVerifyFragment$oldCode$2;-><init>(Lcom/narvii/account/verifyaccount/CodeVerifyFragment;)V

    .line 86
    .line 87
    .line 88
    invoke-static {v0}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 89
    move-result-object v0

    .line 90
    .line 91
    iput-object v0, p0, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->oldCode$delegate:Lw7/m;

    .line 92
    .line 93
    new-instance v0, Lcom/narvii/account/verifyaccount/CodeVerifyFragment$oldPassword$2;

    .line 94
    .line 95
    .line 96
    invoke-direct {v0, p0}, Lcom/narvii/account/verifyaccount/CodeVerifyFragment$oldPassword$2;-><init>(Lcom/narvii/account/verifyaccount/CodeVerifyFragment;)V

    .line 97
    .line 98
    .line 99
    invoke-static {v0}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 100
    move-result-object v0

    .line 101
    .line 102
    iput-object v0, p0, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->oldPassword$delegate:Lw7/m;

    .line 103
    return-void
.end method

.method public static final synthetic access$checkResetPassword(Lcom/narvii/account/verifyaccount/CodeVerifyFragment;Ljava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->checkResetPassword(Ljava/lang/String;)V

    .line 4
    return-void
.end method

.method public static final synthetic access$dismissProgress(Lcom/narvii/account/verifyaccount/CodeVerifyFragment;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/account/AccountBaseFragment;->dismissProgress()V

    .line 4
    return-void
.end method

.method public static final synthetic access$getBtnResend$p$s-2137646762(Lcom/narvii/account/verifyaccount/CodeVerifyFragment;)Landroid/widget/TextView;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/account/CodeVerifyBaseFragment;->btnResend:Landroid/widget/TextView;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getCheckLevel(Lcom/narvii/account/verifyaccount/CodeVerifyFragment;)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->getCheckLevel()I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic access$getCodeEditView$p$s-2137646762(Lcom/narvii/account/verifyaccount/CodeVerifyFragment;)Lcom/narvii/widget/CodeEditView;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/account/CodeVerifyBaseFragment;->codeEditView:Lcom/narvii/widget/CodeEditView;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getCodeVerificationError$p$s-2137646762(Lcom/narvii/account/verifyaccount/CodeVerifyFragment;)Landroid/widget/TextView;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/account/CodeVerifyBaseFragment;->codeVerificationError:Landroid/widget/TextView;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getEmail(Lcom/narvii/account/verifyaccount/CodeVerifyFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->getEmail()Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$getIdentityToVerifyType(Lcom/narvii/account/verifyaccount/CodeVerifyFragment;)Lcom/narvii/account/verifyaccount/IdentityType;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->getIdentityToVerifyType()Lcom/narvii/account/verifyaccount/IdentityType;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$getPhone(Lcom/narvii/account/verifyaccount/CodeVerifyFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->getPhone()Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$getVerifyAccountType(Lcom/narvii/account/verifyaccount/CodeVerifyFragment;)Lcom/narvii/account/verifyaccount/VerifyAccountType;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->getVerifyAccountType()Lcom/narvii/account/verifyaccount/VerifyAccountType;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$getVerifyCodeHelper$p$s-2137646762(Lcom/narvii/account/verifyaccount/CodeVerifyFragment;)Lcom/narvii/account/verifyaccount/VerifyCodeSharedPrefsHelper;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/account/CodeVerifyBaseFragment;->verifyCodeHelper:Lcom/narvii/account/verifyaccount/VerifyCodeSharedPrefsHelper;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$goToEmailVerify(Lcom/narvii/account/verifyaccount/CodeVerifyFragment;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->goToEmailVerify()V

    .line 4
    return-void
.end method

.method public static final synthetic access$goToMobileVerify(Lcom/narvii/account/verifyaccount/CodeVerifyFragment;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->goToMobileVerify()V

    .line 4
    return-void
.end method

.method public static final synthetic access$goToSetPassword(Lcom/narvii/account/verifyaccount/CodeVerifyFragment;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->goToSetPassword()V

    .line 4
    return-void
.end method

.method public static final synthetic access$relogin(Lcom/narvii/account/verifyaccount/CodeVerifyFragment;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->relogin()V

    .line 4
    return-void
.end method

.method public static final synthetic access$setIdentity(Lcom/narvii/account/verifyaccount/CodeVerifyFragment;Ljava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->setIdentity(Ljava/lang/String;)V

    .line 4
    return-void
.end method

.method public static final synthetic access$setLastVerifyCode$p(Lcom/narvii/account/verifyaccount/CodeVerifyFragment;Ljava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->lastVerifyCode:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public static final synthetic access$setRequest$p(Lcom/narvii/account/verifyaccount/CodeVerifyFragment;Lcom/narvii/util/http/ApiRequest;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->request:Lcom/narvii/util/http/ApiRequest;

    .line 3
    return-void
.end method

.method public static final synthetic access$setValidationContext$p(Lcom/narvii/account/verifyaccount/CodeVerifyFragment;Lcom/fasterxml/jackson/databind/node/ObjectNode;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->validationContext:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 3
    return-void
.end method

.method public static final synthetic access$updateSecret(Lcom/narvii/account/verifyaccount/CodeVerifyFragment;Ljava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->updateSecret(Ljava/lang/String;)V

    .line 4
    return-void
.end method

.method public static final synthetic access$verifyNewEmail(Lcom/narvii/account/verifyaccount/CodeVerifyFragment;Ljava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->verifyNewEmail(Ljava/lang/String;)V

    .line 4
    return-void
.end method

.method private final checkResetPassword(Ljava/lang/String;)V
    .locals 9

    .line 1
    const/4 v0, 0x2

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lcom/narvii/account/AccountBaseFragment;->updateIndicatorViewStatus(I)V

    .line 5
    .line 6
    const-string v1, "account"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    check-cast v1, Lcom/narvii/account/AccountService;

    .line 13
    .line 14
    const-string v2, "api"

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    move-result-object v2

    .line 19
    .line 20
    check-cast v2, Lcom/narvii/util/http/ApiService;

    .line 21
    .line 22
    .line 23
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 24
    move-result-object v3

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3}, Lcom/narvii/util/http/ApiRequest$Builder;->https()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 28
    move-result-object v3

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 32
    move-result-object v3

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 36
    move-result-object v3

    .line 37
    .line 38
    const-string v4, "/auth/check-reset-password"

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3, v4}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 42
    move-result-object v3

    .line 43
    .line 44
    sget-object v4, La0/a;->o:Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getDeviceId()Ljava/lang/String;

    .line 48
    move-result-object v1

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3, v4, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 52
    move-result-object v1

    .line 53
    .line 54
    .line 55
    invoke-direct {p0}, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->getEmail()Ljava/lang/String;

    .line 56
    move-result-object v3

    .line 57
    .line 58
    const-string v4, "level"

    .line 59
    .line 60
    const-string v5, "identity"

    .line 61
    .line 62
    const-string/jumbo v6, "type"

    .line 63
    const/4 v7, 0x1

    .line 64
    .line 65
    .line 66
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 67
    move-result-object v8

    .line 68
    .line 69
    if-eqz v3, :cond_0

    .line 70
    .line 71
    .line 72
    invoke-static {v3}, Lkotlin/text/k;->z(Ljava/lang/CharSequence;)Z

    .line 73
    move-result v3

    .line 74
    xor-int/2addr v3, v7

    .line 75
    .line 76
    if-ne v3, v7, :cond_0

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1, v6, v8}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 80
    .line 81
    .line 82
    invoke-direct {p0}, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->getEmail()Ljava/lang/String;

    .line 83
    move-result-object v3

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1, v5, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 87
    .line 88
    .line 89
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 90
    move-result-object v0

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1, v4, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 94
    goto :goto_0

    .line 95
    .line 96
    .line 97
    :cond_0
    invoke-direct {p0}, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->getPhone()Ljava/lang/String;

    .line 98
    move-result-object v0

    .line 99
    .line 100
    if-eqz v0, :cond_1

    .line 101
    .line 102
    .line 103
    invoke-static {v0}, Lkotlin/text/k;->z(Ljava/lang/CharSequence;)Z

    .line 104
    move-result v0

    .line 105
    xor-int/2addr v0, v7

    .line 106
    .line 107
    if-ne v0, v7, :cond_1

    .line 108
    .line 109
    const/16 v0, 0x8

    .line 110
    .line 111
    .line 112
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 113
    move-result-object v0

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1, v6, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 117
    .line 118
    .line 119
    invoke-direct {p0}, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->getPhone()Ljava/lang/String;

    .line 120
    move-result-object v0

    .line 121
    .line 122
    .line 123
    invoke-virtual {v1, v5, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v1, v4, v8}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 127
    .line 128
    .line 129
    :cond_1
    :goto_0
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 130
    move-result-object v0

    .line 131
    .line 132
    const-string v3, "code"

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0, v3, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 136
    .line 137
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 138
    .line 139
    const-string p1, "data"

    .line 140
    .line 141
    .line 142
    invoke-virtual {v1, p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 146
    move-result-object p1

    .line 147
    .line 148
    .line 149
    invoke-virtual {p0, v7}, Lcom/narvii/account/AccountBaseFragment;->setIsRequesting(Z)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p0}, Lcom/narvii/account/AccountBaseFragment;->showProgress()V

    .line 153
    .line 154
    new-instance v0, Lcom/narvii/account/verifyaccount/CodeVerifyFragment$checkResetPassword$2;

    .line 155
    .line 156
    const-class v1, Lcom/narvii/model/api/ApiResponse;

    .line 157
    .line 158
    .line 159
    invoke-direct {v0, p0, v1}, Lcom/narvii/account/verifyaccount/CodeVerifyFragment$checkResetPassword$2;-><init>(Lcom/narvii/account/verifyaccount/CodeVerifyFragment;Ljava/lang/Class;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v2, p1, v0}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 163
    return-void
.end method

.method private final getCheckLevel()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->checkLevel$delegate:Lw7/m;

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

.method private final getEmail()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->email$delegate:Lw7/m;

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

.method private final getIdentityToVerifyType()Lcom/narvii/account/verifyaccount/IdentityType;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->identityToVerifyType$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/account/verifyaccount/IdentityType;

    .line 9
    return-object v0
.end method

.method private final getOldCode()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->oldCode$delegate:Lw7/m;

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

.method private final getOldIdentity()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->oldIdentity$delegate:Lw7/m;

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
    iget-object v0, p0, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->oldIdentityType$delegate:Lw7/m;

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
    iget-object v0, p0, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->oldPassword$delegate:Lw7/m;

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

.method private final getPhone()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->phone$delegate:Lw7/m;

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

.method private final getVerifyAccountType()Lcom/narvii/account/verifyaccount/VerifyAccountType;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->verifyAccountType$delegate:Lw7/m;

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

.method private final goToCompletedScreen()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    :cond_0
    new-instance v0, Lcom/narvii/account/SuccessfullyCompletedFragment;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0}, Lcom/narvii/account/SuccessfullyCompletedFragment;-><init>()V

    .line 13
    .line 14
    new-instance v1, Landroid/os/Bundle;

    .line 15
    .line 16
    .line 17
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-direct {p0}, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->getVerifyAccountType()Lcom/narvii/account/verifyaccount/VerifyAccountType;

    .line 21
    move-result-object v2

    .line 22
    .line 23
    .line 24
    invoke-static {v2}, Lcom/narvii/account/verifyaccount/VerifyAccountTypeKt;->getIntValue(Lcom/narvii/account/verifyaccount/VerifyAccountType;)I

    .line 25
    move-result v2

    .line 26
    .line 27
    const-string/jumbo v3, "verify_type"

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 31
    .line 32
    const-string/jumbo v2, "set_identity_type"

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 36
    move-result v3

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v0}, Lcom/narvii/account/AccountBaseFragment;->goToSuccessPage(Landroidx/fragment/app/Fragment;)V

    .line 46
    return-void
.end method

.method private final goToEmailVerify()V
    .locals 5

    .line 1
    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    const-string v1, "beginTransaction(...)"

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const v1, 0x7f010010

    .line 17
    .line 18
    .line 19
    const v2, 0x7f010011

    .line 20
    .line 21
    .line 22
    const v3, 0x7f01000e

    .line 23
    .line 24
    .line 25
    const v4, 0x7f01000f

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v3, v4, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->z(IIII)Landroidx/fragment/app/FragmentTransaction;

    .line 29
    .line 30
    new-instance v1, Lcom/narvii/account/resetpassword/EmailResetPasswordFragment;

    .line 31
    .line 32
    .line 33
    invoke-direct {v1}, Lcom/narvii/account/resetpassword/EmailResetPasswordFragment;-><init>()V

    .line 34
    .line 35
    new-instance v2, Landroid/os/Bundle;

    .line 36
    .line 37
    .line 38
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 39
    .line 40
    const-string v3, "check_level"

    .line 41
    const/4 v4, 0x2

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 45
    .line 46
    const-string v3, "old_identity"

    .line 47
    .line 48
    .line 49
    invoke-direct {p0}, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->getPhone()Ljava/lang/String;

    .line 50
    move-result-object v4

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    const-string/jumbo v3, "type"

    .line 56
    .line 57
    const/16 v4, 0x8

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 61
    .line 62
    const-string v3, "old_code"

    .line 63
    .line 64
    iget-object v4, p0, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->lastVerifyCode:Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContainerId()Ljava/lang/Integer;

    .line 74
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    const/4 v3, 0x0

    .line 76
    .line 77
    const-string v4, "emailVerify"

    .line 78
    .line 79
    if-eqz v2, :cond_0

    .line 80
    .line 81
    .line 82
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 83
    move-result v2

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v2, v1, v4}, Landroidx/fragment/app/FragmentTransaction;->v(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 87
    move-result-object v0

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v3}, Landroidx/fragment/app/FragmentTransaction;->h(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 91
    move-result-object v0

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->k()I

    .line 95
    goto :goto_1

    .line 96
    :catch_0
    move-exception v0

    .line 97
    goto :goto_0

    .line 98
    .line 99
    .line 100
    :cond_0
    const v2, 0x7f0a05ff

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, v2, v1, v4}, Landroidx/fragment/app/FragmentTransaction;->v(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 104
    move-result-object v0

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, v3}, Landroidx/fragment/app/FragmentTransaction;->h(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 108
    move-result-object v0

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->k()I
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 112
    goto :goto_1

    .line 113
    .line 114
    .line 115
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 116
    move-result-object v0

    .line 117
    .line 118
    .line 119
    invoke-static {v0}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    .line 120
    :goto_1
    return-void
.end method

.method private final goToMobileVerify()V
    .locals 5

    .line 1
    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    const-string v1, "beginTransaction(...)"

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const v1, 0x7f010010

    .line 17
    .line 18
    .line 19
    const v2, 0x7f010011

    .line 20
    .line 21
    .line 22
    const v3, 0x7f01000e

    .line 23
    .line 24
    .line 25
    const v4, 0x7f01000f

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v3, v4, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->z(IIII)Landroidx/fragment/app/FragmentTransaction;

    .line 29
    .line 30
    new-instance v1, Lcom/narvii/account/resetpassword/MobileResetPasswordFragment;

    .line 31
    .line 32
    .line 33
    invoke-direct {v1}, Lcom/narvii/account/resetpassword/MobileResetPasswordFragment;-><init>()V

    .line 34
    .line 35
    new-instance v2, Landroid/os/Bundle;

    .line 36
    .line 37
    .line 38
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 39
    .line 40
    const-string v3, "check_level"

    .line 41
    const/4 v4, 0x2

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 45
    .line 46
    const-string v3, "old_identity"

    .line 47
    .line 48
    .line 49
    invoke-direct {p0}, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->getEmail()Ljava/lang/String;

    .line 50
    move-result-object v4

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    const-string/jumbo v3, "type"

    .line 56
    const/4 v4, 0x1

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 60
    .line 61
    const-string v3, "old_code"

    .line 62
    .line 63
    iget-object v4, p0, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->lastVerifyCode:Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContainerId()Ljava/lang/Integer;

    .line 73
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    const/4 v3, 0x0

    .line 75
    .line 76
    const-string v4, "phoneNumberReset"

    .line 77
    .line 78
    if-eqz v2, :cond_0

    .line 79
    .line 80
    .line 81
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 82
    move-result v2

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v2, v1, v4}, Landroidx/fragment/app/FragmentTransaction;->v(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 86
    move-result-object v0

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, v3}, Landroidx/fragment/app/FragmentTransaction;->h(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 90
    move-result-object v0

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->k()I

    .line 94
    goto :goto_1

    .line 95
    :catch_0
    move-exception v0

    .line 96
    goto :goto_0

    .line 97
    .line 98
    .line 99
    :cond_0
    const v2, 0x7f0a05ff

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, v2, v1, v4}, Landroidx/fragment/app/FragmentTransaction;->v(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 103
    move-result-object v0

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, v3}, Landroidx/fragment/app/FragmentTransaction;->h(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 107
    move-result-object v0

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->k()I
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 111
    goto :goto_1

    .line 112
    .line 113
    .line 114
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 115
    move-result-object v0

    .line 116
    .line 117
    .line 118
    invoke-static {v0}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    .line 119
    :goto_1
    return-void
.end method

.method private final goToSetIdentity(Ljava/lang/String;Lcom/narvii/account/verifyaccount/IdentityType;)V
    .locals 7

    .line 1
    .line 2
    const-string v0, "identity_to_verify_type"

    .line 3
    .line 4
    const-string/jumbo v1, "set_identity_type"

    .line 5
    .line 6
    .line 7
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 8
    move-result-object v2

    .line 9
    .line 10
    .line 11
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 12
    move-result-object v2

    .line 13
    .line 14
    .line 15
    const v3, 0x7f010010

    .line 16
    .line 17
    .line 18
    const v4, 0x7f010011

    .line 19
    .line 20
    .line 21
    const v5, 0x7f01000e

    .line 22
    .line 23
    .line 24
    const v6, 0x7f01000f

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, v5, v6, v3, v4}, Landroidx/fragment/app/FragmentTransaction;->z(IIII)Landroidx/fragment/app/FragmentTransaction;

    .line 28
    .line 29
    instance-of v3, p2, Lcom/narvii/account/verifyaccount/EmailIdentity;

    .line 30
    .line 31
    if-eqz v3, :cond_0

    .line 32
    .line 33
    new-instance p2, Lcom/narvii/account/SetEmailFragment;

    .line 34
    .line 35
    .line 36
    invoke-direct {p2}, Lcom/narvii/account/SetEmailFragment;-><init>()V

    .line 37
    goto :goto_0

    .line 38
    :catch_0
    move-exception p1

    .line 39
    .line 40
    goto/16 :goto_3

    .line 41
    .line 42
    :cond_0
    instance-of p2, p2, Lcom/narvii/account/verifyaccount/PhoneIdentity;

    .line 43
    .line 44
    if-eqz p2, :cond_5

    .line 45
    .line 46
    new-instance p2, Lcom/narvii/account/SetPhoneNumberFragment;

    .line 47
    .line 48
    .line 49
    invoke-direct {p2}, Lcom/narvii/account/SetPhoneNumberFragment;-><init>()V

    .line 50
    .line 51
    :goto_0
    new-instance v3, Landroid/os/Bundle;

    .line 52
    .line 53
    .line 54
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 55
    .line 56
    const-string/jumbo v4, "verify_type"

    .line 57
    .line 58
    .line 59
    invoke-direct {p0}, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->getVerifyAccountType()Lcom/narvii/account/verifyaccount/VerifyAccountType;

    .line 60
    move-result-object v5

    .line 61
    .line 62
    .line 63
    invoke-static {v5}, Lcom/narvii/account/verifyaccount/VerifyAccountTypeKt;->getIntValue(Lcom/narvii/account/verifyaccount/VerifyAccountType;)I

    .line 64
    move-result v5

    .line 65
    .line 66
    .line 67
    invoke-virtual {v3, v4, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 71
    move-result v4

    .line 72
    .line 73
    .line 74
    invoke-virtual {v3, v1, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 78
    move-result v1

    .line 79
    .line 80
    .line 81
    invoke-static {v1}, Lcom/narvii/account/verifyaccount/VerifyAccountTypeKt;->identityType(I)Lcom/narvii/account/verifyaccount/IdentityType;

    .line 82
    move-result-object v1

    .line 83
    .line 84
    instance-of v4, v1, Lcom/narvii/account/verifyaccount/EmailIdentity;

    .line 85
    .line 86
    if-eqz v4, :cond_1

    .line 87
    .line 88
    .line 89
    invoke-direct {p0}, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->getEmail()Ljava/lang/String;

    .line 90
    move-result-object v1

    .line 91
    goto :goto_1

    .line 92
    .line 93
    :cond_1
    instance-of v1, v1, Lcom/narvii/account/verifyaccount/PhoneIdentity;

    .line 94
    .line 95
    if-eqz v1, :cond_4

    .line 96
    .line 97
    .line 98
    invoke-direct {p0}, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->getPhone()Ljava/lang/String;

    .line 99
    move-result-object v1

    .line 100
    .line 101
    :goto_1
    const-string v4, "old_identity"

    .line 102
    .line 103
    .line 104
    invoke-virtual {v3, v4, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .line 106
    const-string v1, "old_password"

    .line 107
    .line 108
    .line 109
    invoke-direct {p0}, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->getOldPassword()Ljava/lang/String;

    .line 110
    move-result-object v4

    .line 111
    .line 112
    .line 113
    invoke-virtual {v3, v1, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 117
    move-result v0

    .line 118
    .line 119
    .line 120
    invoke-static {v0}, Lcom/narvii/account/verifyaccount/VerifyAccountTypeKt;->identityType(I)Lcom/narvii/account/verifyaccount/IdentityType;

    .line 121
    move-result-object v0

    .line 122
    .line 123
    instance-of v1, v0, Lcom/narvii/account/verifyaccount/EmailIdentity;

    .line 124
    .line 125
    if-eqz v1, :cond_2

    .line 126
    const/4 v0, 0x1

    .line 127
    goto :goto_2

    .line 128
    .line 129
    :cond_2
    instance-of v0, v0, Lcom/narvii/account/verifyaccount/PhoneIdentity;

    .line 130
    .line 131
    if-eqz v0, :cond_3

    .line 132
    .line 133
    const/16 v0, 0x8

    .line 134
    .line 135
    :goto_2
    const-string/jumbo v1, "type"

    .line 136
    .line 137
    .line 138
    invoke-virtual {v3, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 139
    .line 140
    const-string v0, "old_code"

    .line 141
    .line 142
    .line 143
    invoke-virtual {v3, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {p2, v3}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContainerId()Ljava/lang/Integer;

    .line 150
    move-result-object p1

    .line 151
    .line 152
    const-string v0, "getContainerId(...)"

    .line 153
    .line 154
    .line 155
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 159
    move-result p1

    .line 160
    .line 161
    const-string/jumbo v0, "set_email"

    .line 162
    .line 163
    .line 164
    invoke-virtual {v2, p1, p2, v0}, Landroidx/fragment/app/FragmentTransaction;->v(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 165
    move-result-object p1

    .line 166
    const/4 p2, 0x0

    .line 167
    .line 168
    .line 169
    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentTransaction;->h(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 170
    move-result-object p1

    .line 171
    .line 172
    .line 173
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->k()I

    .line 174
    goto :goto_4

    .line 175
    .line 176
    :cond_3
    new-instance p1, Lw7/s;

    .line 177
    .line 178
    .line 179
    invoke-direct {p1}, Lw7/s;-><init>()V

    .line 180
    throw p1

    .line 181
    .line 182
    :cond_4
    new-instance p1, Lw7/s;

    .line 183
    .line 184
    .line 185
    invoke-direct {p1}, Lw7/s;-><init>()V

    .line 186
    throw p1

    .line 187
    .line 188
    :cond_5
    new-instance p1, Lw7/s;

    .line 189
    .line 190
    .line 191
    invoke-direct {p1}, Lw7/s;-><init>()V

    .line 192
    throw p1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    .line 194
    .line 195
    :goto_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 196
    move-result-object p1

    .line 197
    .line 198
    .line 199
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 200
    .line 201
    .line 202
    invoke-static {p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 203
    :goto_4
    return-void
.end method

.method private final goToSetPassword()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    :cond_0
    new-instance v0, Lcom/narvii/account/verifyaccount/SetPasswordFragment;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0}, Lcom/narvii/account/verifyaccount/SetPasswordFragment;-><init>()V

    .line 13
    .line 14
    new-instance v1, Landroid/os/Bundle;

    .line 15
    .line 16
    .line 17
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-direct {p0}, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->getIdentityToVerifyType()Lcom/narvii/account/verifyaccount/IdentityType;

    .line 21
    move-result-object v2

    .line 22
    .line 23
    instance-of v3, v2, Lcom/narvii/account/verifyaccount/EmailIdentity;

    .line 24
    .line 25
    if-eqz v3, :cond_1

    .line 26
    .line 27
    const-string v2, "email"

    .line 28
    .line 29
    .line 30
    invoke-direct {p0}, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->getEmail()Ljava/lang/String;

    .line 31
    move-result-object v3

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    goto :goto_0

    .line 36
    .line 37
    :cond_1
    instance-of v2, v2, Lcom/narvii/account/verifyaccount/PhoneIdentity;

    .line 38
    .line 39
    if-eqz v2, :cond_2

    .line 40
    .line 41
    const-string v2, "phone"

    .line 42
    .line 43
    .line 44
    invoke-direct {p0}, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->getPhone()Ljava/lang/String;

    .line 45
    move-result-object v3

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->getVerifyAccountType()Lcom/narvii/account/verifyaccount/VerifyAccountType;

    .line 52
    move-result-object v2

    .line 53
    .line 54
    .line 55
    invoke-static {v2}, Lcom/narvii/account/verifyaccount/VerifyAccountTypeKt;->getIntValue(Lcom/narvii/account/verifyaccount/VerifyAccountType;)I

    .line 56
    move-result v2

    .line 57
    .line 58
    const-string/jumbo v3, "verify_type"

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 62
    .line 63
    const-string/jumbo v2, "set_identity_type"

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 67
    move-result v3

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 71
    .line 72
    const-string v2, "old_identity"

    .line 73
    .line 74
    .line 75
    invoke-direct {p0}, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->getOldIdentity()Ljava/lang/String;

    .line 76
    move-result-object v3

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    const-string/jumbo v2, "type"

    .line 82
    .line 83
    .line 84
    invoke-direct {p0}, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->getOldIdentityType()I

    .line 85
    move-result v3

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 89
    .line 90
    const-string v2, "old_code"

    .line 91
    .line 92
    .line 93
    invoke-direct {p0}, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->getOldCode()Ljava/lang/String;

    .line 94
    move-result-object v3

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .line 99
    const-string v2, "old_password"

    .line 100
    .line 101
    .line 102
    invoke-direct {p0}, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->getOldPassword()Ljava/lang/String;

    .line 103
    move-result-object v3

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .line 108
    const-string v2, "last_verify_code"

    .line 109
    .line 110
    iget-object v3, p0, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->lastVerifyCode:Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    .line 115
    const-string v2, "key_is_third_part"

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 119
    move-result v3

    .line 120
    .line 121
    .line 122
    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 123
    .line 124
    const-string v2, "key_sign_up_method"

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 128
    move-result-object v3

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    .line 133
    const-string v2, "key_third_part_secret"

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 137
    move-result-object v3

    .line 138
    .line 139
    .line 140
    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    .line 142
    const-string v2, "key_third_party_nickname"

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 146
    move-result-object v3

    .line 147
    .line 148
    .line 149
    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    .line 151
    const-string v2, "key_avatar_url"

    .line 152
    .line 153
    .line 154
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 155
    move-result-object v3

    .line 156
    .line 157
    .line 158
    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    .line 160
    iget-object v2, p0, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->validationContext:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 161
    .line 162
    if-nez v2, :cond_3

    .line 163
    const/4 v2, 0x0

    .line 164
    goto :goto_1

    .line 165
    .line 166
    .line 167
    :cond_3
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 168
    move-result-object v2

    .line 169
    .line 170
    :goto_1
    const-string/jumbo v3, "validationContext"

    .line 171
    .line 172
    .line 173
    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {p0, v0}, Lcom/narvii/account/AccountBaseFragment;->goToSetPasswordPage(Landroidx/fragment/app/Fragment;)V

    .line 180
    return-void
.end method

.method private static final onViewCreated$lambda$4(Lcom/narvii/account/verifyaccount/CodeVerifyFragment;Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    const-string/jumbo p1, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    sget-object p1, Lcom/narvii/logging/ActSemantic;->pageEnter:Lcom/narvii/logging/ActSemantic;

    .line 8
    .line 9
    .line 10
    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    const-string v0, "Next"

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    const-string v0, "isAuto"

    .line 20
    .line 21
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 29
    .line 30
    iget-object p1, p0, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->lastVerifyCode:Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    invoke-direct {p0, p1}, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->verifyEmailCode(Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public static synthetic r(Lcom/narvii/account/verifyaccount/CodeVerifyFragment;Lcom/narvii/model/User;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->relogin$lambda$28(Lcom/narvii/account/verifyaccount/CodeVerifyFragment;Lcom/narvii/model/User;)V

    return-void
.end method

.method private final relogin()V
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
    const-string v0, "account"

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 27
    .line 28
    new-instance v1, Lcom/narvii/account/verifyaccount/a;

    .line 29
    .line 30
    .line 31
    invoke-direct {v1, p0}, Lcom/narvii/account/verifyaccount/a;-><init>(Lcom/narvii/account/verifyaccount/CodeVerifyFragment;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lcom/narvii/account/AccountService;->relogin(Lcom/narvii/util/Callback;)V

    .line 35
    return-void
.end method

.method private static final relogin$lambda$28(Lcom/narvii/account/verifyaccount/CodeVerifyFragment;Lcom/narvii/model/User;)V
    .locals 0

    .line 1
    .line 2
    const-string/jumbo p1, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->goToCompletedScreen()V

    .line 9
    return-void
.end method

.method private final requestUpdateIdentity(Ljava/lang/String;Lcom/narvii/account/verifyaccount/IdentityType;)V
    .locals 10

    .line 1
    const/4 v0, 0x2

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lcom/narvii/account/AccountBaseFragment;->updateIndicatorViewStatus(I)V

    .line 5
    .line 6
    const-string v0, "account"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 13
    .line 14
    const-string v1, "api"

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 21
    .line 22
    instance-of v2, p2, Lcom/narvii/account/verifyaccount/EmailIdentity;

    .line 23
    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    const-string v3, "/auth/update-email"

    .line 27
    goto :goto_0

    .line 28
    .line 29
    :cond_0
    instance-of v3, p2, Lcom/narvii/account/verifyaccount/PhoneIdentity;

    .line 30
    .line 31
    if-eqz v3, :cond_5

    .line 32
    .line 33
    const-string v3, "/auth/update-phone-number"

    .line 34
    .line 35
    :goto_0
    if-eqz v2, :cond_1

    .line 36
    .line 37
    .line 38
    invoke-direct {p0}, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->getEmail()Ljava/lang/String;

    .line 39
    move-result-object v4

    .line 40
    goto :goto_1

    .line 41
    .line 42
    :cond_1
    instance-of v4, p2, Lcom/narvii/account/verifyaccount/PhoneIdentity;

    .line 43
    .line 44
    if-eqz v4, :cond_4

    .line 45
    .line 46
    .line 47
    invoke-direct {p0}, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->getPhone()Ljava/lang/String;

    .line 48
    move-result-object v4

    .line 49
    :goto_1
    const/4 v5, 0x1

    .line 50
    .line 51
    if-eqz v2, :cond_2

    .line 52
    move p2, v5

    .line 53
    goto :goto_2

    .line 54
    .line 55
    :cond_2
    instance-of p2, p2, Lcom/narvii/account/verifyaccount/PhoneIdentity;

    .line 56
    .line 57
    if-eqz p2, :cond_3

    .line 58
    .line 59
    const/16 p2, 0x8

    .line 60
    .line 61
    .line 62
    :goto_2
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 63
    move-result-object v2

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->https()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 67
    move-result-object v2

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 71
    move-result-object v2

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 75
    move-result-object v2

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 79
    move-result-object v2

    .line 80
    .line 81
    sget-object v3, La0/a;->o:Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getDeviceId()Ljava/lang/String;

    .line 85
    move-result-object v6

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2, v3, v6}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 89
    move-result-object v2

    .line 90
    .line 91
    .line 92
    invoke-direct {p0}, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->getOldPassword()Ljava/lang/String;

    .line 93
    move-result-object v6

    .line 94
    .line 95
    new-instance v7, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .line 100
    const-string v8, "0 "

    .line 101
    .line 102
    .line 103
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    move-result-object v6

    .line 111
    .line 112
    const-string/jumbo v7, "secret"

    .line 113
    .line 114
    .line 115
    invoke-virtual {v2, v7, v6}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 116
    .line 117
    .line 118
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 119
    move-result-object v6

    .line 120
    .line 121
    const-string v7, "identity"

    .line 122
    .line 123
    .line 124
    invoke-virtual {v6, v7, v4}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 125
    .line 126
    .line 127
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 128
    move-result-object v4

    .line 129
    .line 130
    const-string v8, "code"

    .line 131
    .line 132
    .line 133
    invoke-virtual {v4, v8, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 134
    .line 135
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 136
    .line 137
    const-string p1, "data"

    .line 138
    .line 139
    .line 140
    invoke-virtual {v6, p1, v4}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 141
    .line 142
    const-string v4, "level"

    .line 143
    .line 144
    .line 145
    invoke-virtual {v6, v4, v5}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 146
    .line 147
    const-string/jumbo v9, "type"

    .line 148
    .line 149
    .line 150
    invoke-virtual {v6, v9, p2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getDeviceId()Ljava/lang/String;

    .line 154
    move-result-object p2

    .line 155
    .line 156
    .line 157
    invoke-virtual {v6, v3, p2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 158
    .line 159
    const-string p2, "newValidationContext"

    .line 160
    .line 161
    .line 162
    invoke-virtual {v2, p2, v6}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 163
    .line 164
    .line 165
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 166
    move-result-object p2

    .line 167
    .line 168
    .line 169
    invoke-direct {p0}, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->getOldIdentity()Ljava/lang/String;

    .line 170
    move-result-object v6

    .line 171
    .line 172
    .line 173
    invoke-virtual {p2, v7, v6}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 174
    .line 175
    .line 176
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 177
    move-result-object v6

    .line 178
    .line 179
    .line 180
    invoke-direct {p0}, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->getOldCode()Ljava/lang/String;

    .line 181
    move-result-object v7

    .line 182
    .line 183
    .line 184
    invoke-virtual {v6, v8, v7}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 185
    .line 186
    .line 187
    invoke-virtual {p2, p1, v6}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 188
    .line 189
    .line 190
    invoke-virtual {p2, v4, v5}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 191
    .line 192
    .line 193
    invoke-direct {p0}, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->getOldIdentityType()I

    .line 194
    move-result p1

    .line 195
    .line 196
    .line 197
    invoke-virtual {p2, v9, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getDeviceId()Ljava/lang/String;

    .line 201
    move-result-object p1

    .line 202
    .line 203
    .line 204
    invoke-virtual {p2, v3, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 205
    .line 206
    const-string p1, "oldValidationContext"

    .line 207
    .line 208
    .line 209
    invoke-virtual {v2, p1, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 213
    move-result-object p1

    .line 214
    .line 215
    iput-object p1, p0, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->request:Lcom/narvii/util/http/ApiRequest;

    .line 216
    .line 217
    .line 218
    invoke-virtual {p0}, Lcom/narvii/account/AccountBaseFragment;->showProgress()V

    .line 219
    .line 220
    iget-object p1, p0, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->request:Lcom/narvii/util/http/ApiRequest;

    .line 221
    .line 222
    new-instance p2, Lcom/narvii/account/verifyaccount/CodeVerifyFragment$requestUpdateIdentity$2;

    .line 223
    .line 224
    const-class v0, Lcom/narvii/model/api/ApiResponse;

    .line 225
    .line 226
    .line 227
    invoke-direct {p2, p0, v0}, Lcom/narvii/account/verifyaccount/CodeVerifyFragment$requestUpdateIdentity$2;-><init>(Lcom/narvii/account/verifyaccount/CodeVerifyFragment;Ljava/lang/Class;)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v1, p1, p2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 231
    return-void

    .line 232
    .line 233
    :cond_3
    new-instance p1, Lw7/s;

    .line 234
    .line 235
    .line 236
    invoke-direct {p1}, Lw7/s;-><init>()V

    .line 237
    throw p1

    .line 238
    .line 239
    :cond_4
    new-instance p1, Lw7/s;

    .line 240
    .line 241
    .line 242
    invoke-direct {p1}, Lw7/s;-><init>()V

    .line 243
    throw p1

    .line 244
    .line 245
    :cond_5
    new-instance p1, Lw7/s;

    .line 246
    .line 247
    .line 248
    invoke-direct {p1}, Lw7/s;-><init>()V

    .line 249
    throw p1
.end method

.method public static synthetic s(Lcom/narvii/account/verifyaccount/CodeVerifyFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->onViewCreated$lambda$4(Lcom/narvii/account/verifyaccount/CodeVerifyFragment;Landroid/view/View;)V

    return-void
.end method

.method private final setIdentity(Ljava/lang/String;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->getCheckLevel()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    .line 7
    const-string/jumbo v2, "set_identity_type"

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 13
    move-result v0

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Lcom/narvii/account/verifyaccount/VerifyAccountTypeKt;->identityType(I)Lcom/narvii/account/verifyaccount/IdentityType;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    invoke-direct {p0, p1, v0}, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->goToSetIdentity(Ljava/lang/String;Lcom/narvii/account/verifyaccount/IdentityType;)V

    .line 21
    goto :goto_0

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-direct {p0}, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->getCheckLevel()I

    .line 25
    move-result v0

    .line 26
    const/4 v1, 0x2

    .line 27
    .line 28
    if-ne v0, v1, :cond_1

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 32
    move-result v0

    .line 33
    .line 34
    .line 35
    invoke-static {v0}, Lcom/narvii/account/verifyaccount/VerifyAccountTypeKt;->identityType(I)Lcom/narvii/account/verifyaccount/IdentityType;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    .line 39
    invoke-direct {p0, p1, v0}, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->requestUpdateIdentity(Ljava/lang/String;Lcom/narvii/account/verifyaccount/IdentityType;)V

    .line 40
    :cond_1
    :goto_0
    return-void
.end method

.method private final updateSecret(Ljava/lang/String;)V
    .locals 3

    .line 1
    .line 2
    const-string v0, "account"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getKeychain()Lcom/narvii/account/AccountKeychain;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    iget-object v2, v1, Lcom/narvii/account/AccountKeychain;->uid:Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    move-result v2

    .line 21
    .line 22
    if-eqz v2, :cond_0

    .line 23
    goto :goto_0

    .line 24
    .line 25
    :cond_0
    iget-object v2, v1, Lcom/narvii/account/AccountKeychain;->uid:Ljava/lang/String;

    .line 26
    .line 27
    iget-object v1, v1, Lcom/narvii/account/AccountKeychain;->email:Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v2, v1, p1}, Lcom/narvii/account/AccountService;->setKeychain(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-direct {p0}, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->relogin()V

    .line 34
    :cond_1
    :goto_0
    return-void
.end method

.method private final verifyEmailCode(Ljava/lang/String;)V
    .locals 9

    .line 1
    const/4 v0, 0x2

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lcom/narvii/account/CodeVerifyBaseFragment;->updateIndicatorStatus(I)V

    .line 5
    .line 6
    const-string v1, "account"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    check-cast v1, Lcom/narvii/account/AccountService;

    .line 13
    .line 14
    const-string v2, "api"

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    move-result-object v2

    .line 19
    .line 20
    check-cast v2, Lcom/narvii/util/http/ApiService;

    .line 21
    .line 22
    .line 23
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 24
    move-result-object v3

    .line 25
    .line 26
    .line 27
    invoke-direct {p0}, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->getIdentityToVerifyType()Lcom/narvii/account/verifyaccount/IdentityType;

    .line 28
    move-result-object v4

    .line 29
    .line 30
    instance-of v4, v4, Lcom/narvii/account/verifyaccount/PhoneIdentity;

    .line 31
    .line 32
    const-string v5, "level"

    .line 33
    .line 34
    const-string v6, "identity"

    .line 35
    .line 36
    const-string/jumbo v7, "type"

    .line 37
    const/4 v8, 0x1

    .line 38
    .line 39
    if-eqz v4, :cond_0

    .line 40
    .line 41
    const/16 v0, 0x8

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3, v7, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 45
    .line 46
    .line 47
    invoke-direct {p0}, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->getPhone()Ljava/lang/String;

    .line 48
    move-result-object v0

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3, v6, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 52
    .line 53
    .line 54
    invoke-direct {p0}, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->getVerifyAccountType()Lcom/narvii/account/verifyaccount/VerifyAccountType;

    .line 55
    move-result-object v0

    .line 56
    .line 57
    instance-of v0, v0, Lcom/narvii/account/verifyaccount/ResetPassVerifyAccount;

    .line 58
    .line 59
    if-eqz v0, :cond_1

    .line 60
    .line 61
    .line 62
    invoke-virtual {v3, v5, v8}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 63
    goto :goto_0

    .line 64
    .line 65
    .line 66
    :cond_0
    invoke-virtual {v3, v7, v8}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 67
    .line 68
    .line 69
    invoke-direct {p0}, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->getEmail()Ljava/lang/String;

    .line 70
    move-result-object v4

    .line 71
    .line 72
    .line 73
    invoke-virtual {v3, v6, v4}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 74
    .line 75
    .line 76
    invoke-direct {p0}, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->getVerifyAccountType()Lcom/narvii/account/verifyaccount/VerifyAccountType;

    .line 77
    move-result-object v4

    .line 78
    .line 79
    instance-of v4, v4, Lcom/narvii/account/verifyaccount/ResetPassVerifyAccount;

    .line 80
    .line 81
    if-eqz v4, :cond_1

    .line 82
    .line 83
    .line 84
    invoke-virtual {v3, v5, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 85
    .line 86
    .line 87
    :cond_1
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 88
    move-result v0

    .line 89
    .line 90
    if-nez v0, :cond_2

    .line 91
    .line 92
    .line 93
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 94
    move-result-object v0

    .line 95
    .line 96
    const-string v4, "code"

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v4, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 100
    .line 101
    const-string v4, "data"

    .line 102
    .line 103
    .line 104
    invoke-virtual {v3, v4, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 105
    .line 106
    .line 107
    :cond_2
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 108
    move-result-object v0

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->https()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 112
    move-result-object v0

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 116
    move-result-object v0

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 120
    move-result-object v0

    .line 121
    .line 122
    const-string v4, "/auth/check-security-validation"

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0, v4}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 126
    move-result-object v0

    .line 127
    .line 128
    const-string/jumbo v4, "validationContext"

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0, v4, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 132
    move-result-object v0

    .line 133
    .line 134
    sget-object v3, La0/a;->o:Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getDeviceId()Ljava/lang/String;

    .line 138
    move-result-object v1

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0, v3, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 142
    move-result-object v0

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 146
    move-result-object v0

    .line 147
    .line 148
    iput-object v0, p0, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->request:Lcom/narvii/util/http/ApiRequest;

    .line 149
    .line 150
    .line 151
    invoke-virtual {p0, v8}, Lcom/narvii/account/AccountBaseFragment;->setIsRequesting(Z)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p0}, Lcom/narvii/account/AccountBaseFragment;->showProgress()V

    .line 155
    .line 156
    iget-object v0, p0, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->request:Lcom/narvii/util/http/ApiRequest;

    .line 157
    .line 158
    new-instance v1, Lcom/narvii/account/verifyaccount/CodeVerifyFragment$verifyEmailCode$1;

    .line 159
    .line 160
    const-class v3, Lcom/narvii/model/api/ApiResponse;

    .line 161
    .line 162
    .line 163
    invoke-direct {v1, p0, p1, v3}, Lcom/narvii/account/verifyaccount/CodeVerifyFragment$verifyEmailCode$1;-><init>(Lcom/narvii/account/verifyaccount/CodeVerifyFragment;Ljava/lang/String;Ljava/lang/Class;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v2, v0, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 167
    return-void
.end method

.method private final verifyNewEmail(Ljava/lang/String;)V
    .locals 7

    .line 1
    const/4 v0, 0x2

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lcom/narvii/account/AccountBaseFragment;->updateIndicatorViewStatus(I)V

    .line 5
    .line 6
    const-string v0, "account"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 13
    .line 14
    const-string v1, "api"

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 21
    .line 22
    .line 23
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 24
    move-result-object v2

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->https()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 28
    move-result-object v2

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 32
    move-result-object v2

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 36
    move-result-object v2

    .line 37
    .line 38
    const-string v3, "/auth/activate-email"

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 42
    move-result-object v2

    .line 43
    .line 44
    sget-object v3, La0/a;->o:Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getDeviceId()Ljava/lang/String;

    .line 48
    move-result-object v0

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2, v3, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 52
    move-result-object v0

    .line 53
    const/4 v2, 0x1

    .line 54
    .line 55
    .line 56
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    move-result-object v3

    .line 58
    .line 59
    const-string v4, "level"

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v4, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 63
    .line 64
    .line 65
    invoke-direct {p0}, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->getEmail()Ljava/lang/String;

    .line 66
    move-result-object v4

    .line 67
    .line 68
    const-string v5, "identity"

    .line 69
    .line 70
    const-string/jumbo v6, "type"

    .line 71
    .line 72
    if-eqz v4, :cond_0

    .line 73
    .line 74
    .line 75
    invoke-static {v4}, Lkotlin/text/k;->z(Ljava/lang/CharSequence;)Z

    .line 76
    move-result v4

    .line 77
    xor-int/2addr v4, v2

    .line 78
    .line 79
    if-ne v4, v2, :cond_0

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v6, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 83
    .line 84
    .line 85
    invoke-direct {p0}, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->getEmail()Ljava/lang/String;

    .line 86
    move-result-object v3

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, v5, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 90
    goto :goto_0

    .line 91
    .line 92
    .line 93
    :cond_0
    invoke-direct {p0}, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->getPhone()Ljava/lang/String;

    .line 94
    move-result-object v3

    .line 95
    .line 96
    if-eqz v3, :cond_1

    .line 97
    .line 98
    .line 99
    invoke-static {v3}, Lkotlin/text/k;->z(Ljava/lang/CharSequence;)Z

    .line 100
    move-result v3

    .line 101
    xor-int/2addr v3, v2

    .line 102
    .line 103
    if-ne v3, v2, :cond_1

    .line 104
    .line 105
    const/16 v3, 0x8

    .line 106
    .line 107
    .line 108
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 109
    move-result-object v3

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, v6, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 113
    .line 114
    .line 115
    invoke-direct {p0}, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->getPhone()Ljava/lang/String;

    .line 116
    move-result-object v3

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0, v5, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 120
    .line 121
    .line 122
    :cond_1
    :goto_0
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 123
    move-result-object v3

    .line 124
    .line 125
    const-string v4, "code"

    .line 126
    .line 127
    .line 128
    invoke-virtual {v3, v4, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 129
    .line 130
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 131
    .line 132
    const-string p1, "data"

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0, p1, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 139
    move-result-object p1

    .line 140
    .line 141
    .line 142
    invoke-virtual {p0, v2}, Lcom/narvii/account/AccountBaseFragment;->setIsRequesting(Z)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0}, Lcom/narvii/account/AccountBaseFragment;->showProgress()V

    .line 146
    .line 147
    new-instance v0, Lcom/narvii/account/verifyaccount/CodeVerifyFragment$verifyNewEmail$2;

    .line 148
    .line 149
    const-class v2, Lcom/narvii/model/api/ApiResponse;

    .line 150
    .line 151
    .line 152
    invoke-direct {v0, p0, v2}, Lcom/narvii/account/verifyaccount/CodeVerifyFragment$verifyNewEmail$2;-><init>(Lcom/narvii/account/verifyaccount/CodeVerifyFragment;Ljava/lang/Class;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v1, p1, v0}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 156
    return-void
.end method


# virtual methods
.method protected addStatusBarMargin()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->getVerifyAccountType()Lcom/narvii/account/verifyaccount/VerifyAccountType;

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
    const-string v0, "VerifyPage"

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

.method protected getVerifyTime()J
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->getIdentityToVerifyType()Lcom/narvii/account/verifyaccount/IdentityType;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    instance-of v1, v0, Lcom/narvii/account/verifyaccount/EmailIdentity;

    .line 7
    .line 8
    const-wide/16 v2, 0x0

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->getEmail()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-object v1, p0, Lcom/narvii/account/CodeVerifyBaseFragment;->verifyCodeHelper:Lcom/narvii/account/verifyaccount/VerifyCodeSharedPrefsHelper;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v0}, Lcom/narvii/account/verifyaccount/VerifyCodeSharedPrefsHelper;->getEmailVerifyTime(Ljava/lang/String;)J

    .line 22
    move-result-wide v2

    .line 23
    goto :goto_0

    .line 24
    .line 25
    :cond_0
    instance-of v0, v0, Lcom/narvii/account/verifyaccount/PhoneIdentity;

    .line 26
    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    .line 30
    invoke-direct {p0}, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->getPhone()Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    iget-object v1, p0, Lcom/narvii/account/CodeVerifyBaseFragment;->verifyCodeHelper:Lcom/narvii/account/verifyaccount/VerifyCodeSharedPrefsHelper;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v0}, Lcom/narvii/account/verifyaccount/VerifyCodeSharedPrefsHelper;->getPhoneVerifyTime(Ljava/lang/String;)J

    .line 39
    move-result-wide v2

    .line 40
    :cond_1
    :goto_0
    return-wide v2

    .line 41
    .line 42
    :cond_2
    new-instance v0, Lw7/s;

    .line 43
    .line 44
    .line 45
    invoke-direct {v0}, Lw7/s;-><init>()V

    .line 46
    throw v0
.end method

.method public layoutId()I
    .locals 1

    const v0, 0x7f0d02ba

    return v0
.end method

.method public onCodeFinished(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->nextView:Landroid/widget/Button;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const-string v0, "nextView"

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 10
    const/4 v0, 0x0

    .line 11
    :cond_0
    const/4 v1, 0x1

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 15
    .line 16
    iget-boolean v0, p0, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->isVerified:Z

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    sget-object v0, Lcom/narvii/logging/ActSemantic;->pageEnter:Lcom/narvii/logging/ActSemantic;

    .line 23
    .line 24
    .line 25
    invoke-static {p0, v0}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    const-string v2, "Next"

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v2}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    const-string v2, "isAuto"

    .line 35
    .line 36
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v2, v3}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 44
    .line 45
    .line 46
    invoke-direct {p0, p1}, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->verifyEmailCode(Ljava/lang/String;)V

    .line 47
    .line 48
    iput-boolean v1, p0, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->isVerified:Z

    .line 49
    :cond_1
    return-void
.end method

.method public onCountDownTimeChange(I)V
    .locals 9

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/account/CodeVerifyBaseFragment;->btnResend:Landroid/widget/TextView;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    .line 21
    const v2, 0x7f060021

    .line 22
    .line 23
    .line 24
    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 25
    move-result v1

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 29
    .line 30
    .line 31
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 33
    const/4 v1, 0x1

    .line 34
    .line 35
    new-array v2, v1, [Ljava/lang/Object;

    .line 36
    const/4 v3, 0x0

    .line 37
    .line 38
    .line 39
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    move-result-object v4

    .line 41
    .line 42
    aput-object v4, v2, v3

    .line 43
    .line 44
    .line 45
    const v3, 0x7f1207ce

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, v3, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 49
    move-result-object v2

    .line 50
    .line 51
    const-string v3, "getString(...)"

    .line 52
    .line 53
    .line 54
    invoke-static {v2, v3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    .line 56
    if-ne p1, v1, :cond_0

    .line 57
    .line 58
    .line 59
    const p1, 0x7f1207cf

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 63
    move-result-object v2

    .line 64
    .line 65
    .line 66
    invoke-static {v2, v3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    .line 68
    const-string v0, "1"

    .line 69
    :cond_0
    const/4 v5, 0x0

    .line 70
    const/4 v6, 0x0

    .line 71
    const/4 v7, 0x6

    .line 72
    const/4 v8, 0x0

    .line 73
    move-object v3, v2

    .line 74
    move-object v4, v0

    .line 75
    .line 76
    .line 77
    invoke-static/range {v3 .. v8}, Lkotlin/text/k;->c0(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    .line 78
    move-result p1

    .line 79
    const/4 v3, -0x1

    .line 80
    .line 81
    if-eq p1, v3, :cond_1

    .line 82
    .line 83
    new-instance v3, Landroid/text/SpannableString;

    .line 84
    .line 85
    .line 86
    invoke-direct {v3, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 87
    .line 88
    new-instance v2, Landroid/text/style/StyleSpan;

    .line 89
    .line 90
    .line 91
    invoke-direct {v2, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 95
    move-result v0

    .line 96
    add-int/2addr v0, p1

    .line 97
    .line 98
    const/16 v1, 0x21

    .line 99
    .line 100
    .line 101
    invoke-virtual {v3, v2, p1, v0, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 102
    .line 103
    iget-object p1, p0, Lcom/narvii/account/CodeVerifyBaseFragment;->btnResend:Landroid/widget/TextView;

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    goto :goto_0

    .line 108
    .line 109
    :cond_1
    iget-object p1, p0, Lcom/narvii/account/CodeVerifyBaseFragment;->btnResend:Landroid/widget/TextView;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    :cond_2
    :goto_0
    return-void
.end method

.method public onCountDownTimeFinished()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/account/CodeVerifyBaseFragment;->onCountDownTimeFinished()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/account/CodeVerifyBaseFragment;->btnResend:Landroid/widget/TextView;

    .line 6
    .line 7
    .line 8
    const v1, 0x7f1207cd

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    .line 17
    iget-object v0, p0, Lcom/narvii/account/CodeVerifyBaseFragment;->btnResend:Landroid/widget/TextView;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    .line 24
    const v2, 0x7f060449

    .line 25
    .line 26
    .line 27
    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 28
    move-result v1

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 32
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/account/CodeVerifyBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const-string/jumbo v0, "validationContext"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    if-eqz p1, :cond_2

    .line 14
    .line 15
    .line 16
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->createObjectNode(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    iput-object p1, p0, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->validationContext:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 20
    goto :goto_1

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    instance-of v0, p1, Lcom/narvii/account/LoginActivity;

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    check-cast p1, Lcom/narvii/account/LoginActivity;

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/4 p1, 0x0

    .line 33
    .line 34
    :goto_0
    if-eqz p1, :cond_2

    .line 35
    const/4 v0, 0x0

    .line 36
    .line 37
    iput v0, p1, Lcom/narvii/account/LoginActivity;->statMaxLoginStep:I

    .line 38
    .line 39
    const/16 v0, 0xa

    .line 40
    .line 41
    iput v0, p1, Lcom/narvii/account/LoginActivity;->statMaxSignupSetp:I

    .line 42
    .line 43
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 44
    .line 45
    iput-object v0, p1, Lcom/narvii/account/LoginActivity;->statEmailVerificationSkipped:Ljava/lang/Boolean;

    .line 46
    :cond_2
    :goto_1
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->request:Lcom/narvii/util/http/ApiRequest;

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
    iget-object v1, p0, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->request:Lcom/narvii/util/http/ApiRequest;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiService;->abort(Lcom/narvii/util/http/ApiRequest;)V

    .line 18
    const/4 v0, 0x0

    .line 19
    .line 20
    iput-object v0, p0, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->request:Lcom/narvii/util/http/ApiRequest;

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-super {p0}, Lcom/narvii/account/CodeVerifyBaseFragment;->onDestroy()V

    .line 24
    return-void
.end method

.method public onResendCodeClicked()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/account/CodeVerifyBaseFragment;->onResendCodeClicked()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->getIdentityToVerifyType()Lcom/narvii/account/verifyaccount/IdentityType;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    instance-of v0, v0, Lcom/narvii/account/verifyaccount/PhoneIdentity;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/16 v0, 0x8

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x1

    .line 16
    .line 17
    .line 18
    :goto_0
    invoke-direct {p0}, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->getIdentityToVerifyType()Lcom/narvii/account/verifyaccount/IdentityType;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    instance-of v1, v1, Lcom/narvii/account/verifyaccount/PhoneIdentity;

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    .line 26
    invoke-direct {p0}, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->getPhone()Ljava/lang/String;

    .line 27
    move-result-object v1

    .line 28
    goto :goto_1

    .line 29
    .line 30
    .line 31
    :cond_1
    invoke-direct {p0}, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->getEmail()Ljava/lang/String;

    .line 32
    move-result-object v1

    .line 33
    .line 34
    .line 35
    :goto_1
    invoke-virtual {p0}, Lcom/narvii/account/AccountBaseFragment;->showProgress()V

    .line 36
    .line 37
    new-instance v2, Lcom/narvii/account/verifyaccount/CodeVerifyFragment$onResendCodeClicked$1;

    .line 38
    .line 39
    const-class v3, Lcom/narvii/model/api/ApiResponse;

    .line 40
    .line 41
    .line 42
    invoke-direct {v2, p0, v3}, Lcom/narvii/account/verifyaccount/CodeVerifyFragment$onResendCodeClicked$1;-><init>(Lcom/narvii/account/verifyaccount/CodeVerifyFragment;Ljava/lang/Class;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v0, v1, v2}, Lcom/narvii/account/AccountBaseFragment;->requestSecurityCode(ILjava/lang/String;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 46
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "outState"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1}, Lcom/narvii/account/CodeVerifyBaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->validationContext:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const-string/jumbo v1, "validationContext"

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->toString()Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5
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
    const-string/jumbo v0, "view"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1, p2}, Lcom/narvii/account/CodeVerifyBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 9
    .line 10
    .line 11
    const p2, 0x7f0a0421

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
    invoke-direct {p0}, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->getIdentityToVerifyType()Lcom/narvii/account/verifyaccount/IdentityType;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    instance-of v1, v1, Lcom/narvii/account/verifyaccount/PhoneIdentity;

    .line 29
    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    .line 33
    const v1, 0x7f1202c5

    .line 34
    goto :goto_0

    .line 35
    .line 36
    .line 37
    :cond_0
    const v1, 0x7f1202c3

    .line 38
    .line 39
    .line 40
    :goto_0
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 41
    .line 42
    .line 43
    const p2, 0x7f0a04d0

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 47
    move-result-object p2

    .line 48
    .line 49
    .line 50
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    .line 52
    check-cast p2, Landroid/widget/TextView;

    .line 53
    .line 54
    .line 55
    invoke-direct {p0}, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->getIdentityToVerifyType()Lcom/narvii/account/verifyaccount/IdentityType;

    .line 56
    move-result-object v1

    .line 57
    .line 58
    instance-of v1, v1, Lcom/narvii/account/verifyaccount/PhoneIdentity;

    .line 59
    .line 60
    if-eqz v1, :cond_1

    .line 61
    .line 62
    .line 63
    invoke-direct {p0}, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->getPhone()Ljava/lang/String;

    .line 64
    move-result-object v1

    .line 65
    goto :goto_1

    .line 66
    .line 67
    .line 68
    :cond_1
    invoke-direct {p0}, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->getEmail()Ljava/lang/String;

    .line 69
    move-result-object v1

    .line 70
    .line 71
    .line 72
    :goto_1
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    .line 74
    .line 75
    const p2, 0x7f0a09f2

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 79
    move-result-object p2

    .line 80
    .line 81
    const-string v1, "findViewById(...)"

    .line 82
    .line 83
    .line 84
    invoke-static {p2, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    .line 86
    check-cast p2, Landroid/widget/Button;

    .line 87
    .line 88
    iput-object p2, p0, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->nextView:Landroid/widget/Button;

    .line 89
    const/4 v1, 0x0

    .line 90
    .line 91
    const-string v2, "nextView"

    .line 92
    .line 93
    if-nez p2, :cond_2

    .line 94
    .line 95
    .line 96
    invoke-static {v2}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 97
    move-object p2, v1

    .line 98
    :cond_2
    const/4 v3, 0x0

    .line 99
    .line 100
    .line 101
    invoke-virtual {p2, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 102
    .line 103
    iget-object p2, p0, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->nextView:Landroid/widget/Button;

    .line 104
    .line 105
    if-nez p2, :cond_3

    .line 106
    .line 107
    .line 108
    invoke-static {v2}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 109
    move-object p2, v1

    .line 110
    .line 111
    :cond_3
    new-instance v4, Lcom/narvii/account/verifyaccount/b;

    .line 112
    .line 113
    .line 114
    invoke-direct {v4, p0}, Lcom/narvii/account/verifyaccount/b;-><init>(Lcom/narvii/account/verifyaccount/CodeVerifyFragment;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    .line 119
    iget-object p2, p0, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->nextView:Landroid/widget/Button;

    .line 120
    .line 121
    if-nez p2, :cond_4

    .line 122
    .line 123
    .line 124
    invoke-static {v2}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 125
    goto :goto_2

    .line 126
    :cond_4
    move-object v1, p2

    .line 127
    .line 128
    .line 129
    :goto_2
    invoke-direct {p0}, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->getVerifyAccountType()Lcom/narvii/account/verifyaccount/VerifyAccountType;

    .line 130
    move-result-object p2

    .line 131
    .line 132
    .line 133
    invoke-static {p2}, Lcom/narvii/account/verifyaccount/VerifyAccountTypeKt;->getNextBtnTitle(Lcom/narvii/account/verifyaccount/VerifyAccountType;)I

    .line 134
    move-result p2

    .line 135
    .line 136
    .line 137
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 138
    .line 139
    .line 140
    const p2, 0x7f0a0e9e

    .line 141
    .line 142
    .line 143
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 144
    move-result-object p2

    .line 145
    .line 146
    .line 147
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    .line 149
    check-cast p2, Landroid/widget/TextView;

    .line 150
    .line 151
    .line 152
    invoke-direct {p0}, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->getVerifyAccountType()Lcom/narvii/account/verifyaccount/VerifyAccountType;

    .line 153
    move-result-object v0

    .line 154
    .line 155
    .line 156
    invoke-static {v0}, Lcom/narvii/account/verifyaccount/VerifyAccountTypeKt;->getPageTitle(Lcom/narvii/account/verifyaccount/VerifyAccountType;)I

    .line 157
    move-result v0

    .line 158
    .line 159
    .line 160
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 161
    .line 162
    .line 163
    const p2, 0x7f0a0329

    .line 164
    .line 165
    .line 166
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 167
    move-result-object p1

    .line 168
    .line 169
    const-string p2, "null cannot be cast to non-null type com.narvii.widget.CodeEditView"

    .line 170
    .line 171
    .line 172
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    .line 174
    check-cast p1, Lcom/narvii/widget/CodeEditView;

    .line 175
    .line 176
    .line 177
    invoke-direct {p0}, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->getVerifyAccountType()Lcom/narvii/account/verifyaccount/VerifyAccountType;

    .line 178
    move-result-object p2

    .line 179
    .line 180
    instance-of p2, p2, Lcom/narvii/account/verifyaccount/ResetPassVerifyAccount;

    .line 181
    .line 182
    if-eqz p2, :cond_5

    .line 183
    .line 184
    .line 185
    invoke-direct {p0}, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->getIdentityToVerifyType()Lcom/narvii/account/verifyaccount/IdentityType;

    .line 186
    move-result-object p2

    .line 187
    .line 188
    instance-of p2, p2, Lcom/narvii/account/verifyaccount/PhoneIdentity;

    .line 189
    .line 190
    if-eqz p2, :cond_6

    .line 191
    :cond_5
    const/4 v3, 0x1

    .line 192
    .line 193
    .line 194
    :cond_6
    invoke-virtual {p1, v3}, Lcom/narvii/widget/CodeEditView;->setNumericCodeType(Z)V

    .line 195
    return-void
.end method

.method public updateCodeErrorMessage(Z)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/account/CodeVerifyBaseFragment;->updateCodeErrorMessage(Z)V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    if-nez p1, :cond_1

    .line 7
    .line 8
    iget-object p1, p0, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->nextView:Landroid/widget/Button;

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    const-string p1, "nextView"

    .line 13
    .line 14
    .line 15
    invoke-static {p1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 16
    const/4 p1, 0x0

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 20
    .line 21
    :cond_1
    iput-boolean v0, p0, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->isVerified:Z

    .line 22
    return-void
.end method
