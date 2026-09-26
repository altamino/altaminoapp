.class public final Lcom/narvii/account/verifyaccount/SetPasswordFragment;
.super Lcom/narvii/account/AccountBaseFragment;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/app/FragmentOnBackListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/account/verifyaccount/SetPasswordFragment$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/account/verifyaccount/SetPasswordFragment$Companion;
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

.field public static final KEY_LAST_VERIFY_CODE:Ljava/lang/String; = "last_verify_code"
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
.field private confirmPassEdit:Landroid/widget/EditText;

.field private final email$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final emailValidationNode$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
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

.field private final oldIdentityValidationNode$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final oldPassword$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private passEdit:Landroid/widget/EditText;

.field private password:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final phone$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final phoneValidationNode$delegate:Lw7/m;
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

    new-instance v0, Lcom/narvii/account/verifyaccount/SetPasswordFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/account/verifyaccount/SetPasswordFragment$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Lcom/narvii/account/verifyaccount/SetPasswordFragment;->Companion:Lcom/narvii/account/verifyaccount/SetPasswordFragment$Companion;

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
    new-instance v0, Lcom/narvii/account/verifyaccount/SetPasswordFragment$verifyAccountType$2;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/narvii/account/verifyaccount/SetPasswordFragment$verifyAccountType$2;-><init>(Lcom/narvii/account/verifyaccount/SetPasswordFragment;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    iput-object v0, p0, Lcom/narvii/account/verifyaccount/SetPasswordFragment;->verifyAccountType$delegate:Lw7/m;

    .line 15
    .line 16
    new-instance v0, Lcom/narvii/account/verifyaccount/SetPasswordFragment$email$2;

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, p0}, Lcom/narvii/account/verifyaccount/SetPasswordFragment$email$2;-><init>(Lcom/narvii/account/verifyaccount/SetPasswordFragment;)V

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    iput-object v0, p0, Lcom/narvii/account/verifyaccount/SetPasswordFragment;->email$delegate:Lw7/m;

    .line 26
    .line 27
    new-instance v0, Lcom/narvii/account/verifyaccount/SetPasswordFragment$phone$2;

    .line 28
    .line 29
    .line 30
    invoke-direct {v0, p0}, Lcom/narvii/account/verifyaccount/SetPasswordFragment$phone$2;-><init>(Lcom/narvii/account/verifyaccount/SetPasswordFragment;)V

    .line 31
    .line 32
    .line 33
    invoke-static {v0}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    iput-object v0, p0, Lcom/narvii/account/verifyaccount/SetPasswordFragment;->phone$delegate:Lw7/m;

    .line 37
    .line 38
    new-instance v0, Lcom/narvii/account/verifyaccount/SetPasswordFragment$oldIdentity$2;

    .line 39
    .line 40
    .line 41
    invoke-direct {v0, p0}, Lcom/narvii/account/verifyaccount/SetPasswordFragment$oldIdentity$2;-><init>(Lcom/narvii/account/verifyaccount/SetPasswordFragment;)V

    .line 42
    .line 43
    .line 44
    invoke-static {v0}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    iput-object v0, p0, Lcom/narvii/account/verifyaccount/SetPasswordFragment;->oldIdentity$delegate:Lw7/m;

    .line 48
    .line 49
    new-instance v0, Lcom/narvii/account/verifyaccount/SetPasswordFragment$oldIdentityType$2;

    .line 50
    .line 51
    .line 52
    invoke-direct {v0, p0}, Lcom/narvii/account/verifyaccount/SetPasswordFragment$oldIdentityType$2;-><init>(Lcom/narvii/account/verifyaccount/SetPasswordFragment;)V

    .line 53
    .line 54
    .line 55
    invoke-static {v0}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 56
    move-result-object v0

    .line 57
    .line 58
    iput-object v0, p0, Lcom/narvii/account/verifyaccount/SetPasswordFragment;->oldIdentityType$delegate:Lw7/m;

    .line 59
    .line 60
    new-instance v0, Lcom/narvii/account/verifyaccount/SetPasswordFragment$oldCode$2;

    .line 61
    .line 62
    .line 63
    invoke-direct {v0, p0}, Lcom/narvii/account/verifyaccount/SetPasswordFragment$oldCode$2;-><init>(Lcom/narvii/account/verifyaccount/SetPasswordFragment;)V

    .line 64
    .line 65
    .line 66
    invoke-static {v0}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 67
    move-result-object v0

    .line 68
    .line 69
    iput-object v0, p0, Lcom/narvii/account/verifyaccount/SetPasswordFragment;->oldCode$delegate:Lw7/m;

    .line 70
    .line 71
    new-instance v0, Lcom/narvii/account/verifyaccount/SetPasswordFragment$oldPassword$2;

    .line 72
    .line 73
    .line 74
    invoke-direct {v0, p0}, Lcom/narvii/account/verifyaccount/SetPasswordFragment$oldPassword$2;-><init>(Lcom/narvii/account/verifyaccount/SetPasswordFragment;)V

    .line 75
    .line 76
    .line 77
    invoke-static {v0}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 78
    move-result-object v0

    .line 79
    .line 80
    iput-object v0, p0, Lcom/narvii/account/verifyaccount/SetPasswordFragment;->oldPassword$delegate:Lw7/m;

    .line 81
    .line 82
    new-instance v0, Lcom/narvii/account/verifyaccount/SetPasswordFragment$emailValidationNode$2;

    .line 83
    .line 84
    .line 85
    invoke-direct {v0, p0}, Lcom/narvii/account/verifyaccount/SetPasswordFragment$emailValidationNode$2;-><init>(Lcom/narvii/account/verifyaccount/SetPasswordFragment;)V

    .line 86
    .line 87
    .line 88
    invoke-static {v0}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 89
    move-result-object v0

    .line 90
    .line 91
    iput-object v0, p0, Lcom/narvii/account/verifyaccount/SetPasswordFragment;->emailValidationNode$delegate:Lw7/m;

    .line 92
    .line 93
    new-instance v0, Lcom/narvii/account/verifyaccount/SetPasswordFragment$phoneValidationNode$2;

    .line 94
    .line 95
    .line 96
    invoke-direct {v0, p0}, Lcom/narvii/account/verifyaccount/SetPasswordFragment$phoneValidationNode$2;-><init>(Lcom/narvii/account/verifyaccount/SetPasswordFragment;)V

    .line 97
    .line 98
    .line 99
    invoke-static {v0}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 100
    move-result-object v0

    .line 101
    .line 102
    iput-object v0, p0, Lcom/narvii/account/verifyaccount/SetPasswordFragment;->phoneValidationNode$delegate:Lw7/m;

    .line 103
    .line 104
    new-instance v0, Lcom/narvii/account/verifyaccount/SetPasswordFragment$oldIdentityValidationNode$2;

    .line 105
    .line 106
    .line 107
    invoke-direct {v0, p0}, Lcom/narvii/account/verifyaccount/SetPasswordFragment$oldIdentityValidationNode$2;-><init>(Lcom/narvii/account/verifyaccount/SetPasswordFragment;)V

    .line 108
    .line 109
    .line 110
    invoke-static {v0}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 111
    move-result-object v0

    .line 112
    .line 113
    iput-object v0, p0, Lcom/narvii/account/verifyaccount/SetPasswordFragment;->oldIdentityValidationNode$delegate:Lw7/m;

    .line 114
    return-void
.end method

.method public static final synthetic access$dismissProgress(Lcom/narvii/account/verifyaccount/SetPasswordFragment;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/account/AccountBaseFragment;->dismissProgress()V

    .line 4
    return-void
.end method

.method public static final synthetic access$getEmail(Lcom/narvii/account/verifyaccount/SetPasswordFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/account/verifyaccount/SetPasswordFragment;->getEmail()Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$getOldCode(Lcom/narvii/account/verifyaccount/SetPasswordFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/account/verifyaccount/SetPasswordFragment;->getOldCode()Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$getOldIdentity(Lcom/narvii/account/verifyaccount/SetPasswordFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/account/verifyaccount/SetPasswordFragment;->getOldIdentity()Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$getOldIdentityType(Lcom/narvii/account/verifyaccount/SetPasswordFragment;)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/account/verifyaccount/SetPasswordFragment;->getOldIdentityType()I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic access$getPhone(Lcom/narvii/account/verifyaccount/SetPasswordFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/account/verifyaccount/SetPasswordFragment;->getPhone()Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$goToCompletedScreen(Lcom/narvii/account/verifyaccount/SetPasswordFragment;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/account/verifyaccount/SetPasswordFragment;->goToCompletedScreen()V

    .line 4
    return-void
.end method

.method public static final synthetic access$goToNextSignupStep(Lcom/narvii/account/verifyaccount/SetPasswordFragment;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/account/verifyaccount/SetPasswordFragment;->goToNextSignupStep()V

    .line 4
    return-void
.end method

.method public static final synthetic access$updateNextView(Lcom/narvii/account/verifyaccount/SetPasswordFragment;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/account/verifyaccount/SetPasswordFragment;->updateNextView()V

    .line 4
    return-void
.end method

.method private final changePassword()V
    .locals 6

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
    const-string v3, "/auth/change-password"

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
    .line 54
    iget-object v2, p0, Lcom/narvii/account/verifyaccount/SetPasswordFragment;->password:Ljava/lang/String;

    .line 55
    .line 56
    const-string v3, "0 "

    .line 57
    const/4 v4, 0x1

    .line 58
    .line 59
    if-eqz v2, :cond_0

    .line 60
    .line 61
    .line 62
    invoke-static {v2}, Lkotlin/text/k;->z(Ljava/lang/CharSequence;)Z

    .line 63
    move-result v2

    .line 64
    xor-int/2addr v2, v4

    .line 65
    .line 66
    if-ne v2, v4, :cond_0

    .line 67
    .line 68
    iget-object v2, p0, Lcom/narvii/account/verifyaccount/SetPasswordFragment;->password:Ljava/lang/String;

    .line 69
    .line 70
    new-instance v5, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    move-result-object v2

    .line 84
    .line 85
    const-string v5, "updateSecret"

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v5, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 89
    .line 90
    .line 91
    :cond_0
    invoke-direct {p0}, Lcom/narvii/account/verifyaccount/SetPasswordFragment;->getOldPassword()Ljava/lang/String;

    .line 92
    move-result-object v2

    .line 93
    .line 94
    if-eqz v2, :cond_1

    .line 95
    .line 96
    .line 97
    invoke-static {v2}, Lkotlin/text/k;->z(Ljava/lang/CharSequence;)Z

    .line 98
    move-result v2

    .line 99
    xor-int/2addr v2, v4

    .line 100
    .line 101
    if-ne v2, v4, :cond_1

    .line 102
    .line 103
    .line 104
    invoke-direct {p0}, Lcom/narvii/account/verifyaccount/SetPasswordFragment;->getOldPassword()Ljava/lang/String;

    .line 105
    move-result-object v2

    .line 106
    .line 107
    new-instance v5, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    move-result-object v2

    .line 121
    .line 122
    const-string v3, "secret"

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 126
    .line 127
    :cond_1
    const-string v2, "validationContext"

    .line 128
    .line 129
    .line 130
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 131
    move-result-object v3

    .line 132
    .line 133
    .line 134
    invoke-static {v3}, Lcom/narvii/util/JacksonUtils;->createObjectNode(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 135
    move-result-object v3

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0, v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 142
    move-result-object v0

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0, v4}, Lcom/narvii/account/AccountBaseFragment;->setIsRequesting(Z)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p0}, Lcom/narvii/account/AccountBaseFragment;->showProgress()V

    .line 149
    .line 150
    new-instance v2, Lcom/narvii/account/verifyaccount/SetPasswordFragment$changePassword$1;

    .line 151
    .line 152
    const-class v3, Lcom/narvii/model/api/ApiResponse;

    .line 153
    .line 154
    .line 155
    invoke-direct {v2, p0, v3}, Lcom/narvii/account/verifyaccount/SetPasswordFragment$changePassword$1;-><init>(Lcom/narvii/account/verifyaccount/SetPasswordFragment;Ljava/lang/Class;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 159
    return-void
.end method

.method private final getEmail()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/account/verifyaccount/SetPasswordFragment;->email$delegate:Lw7/m;

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

.method private final getEmailValidationNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/account/verifyaccount/SetPasswordFragment;->emailValidationNode$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 9
    return-object v0
.end method

.method private final getOldCode()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/account/verifyaccount/SetPasswordFragment;->oldCode$delegate:Lw7/m;

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
    iget-object v0, p0, Lcom/narvii/account/verifyaccount/SetPasswordFragment;->oldIdentity$delegate:Lw7/m;

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
    iget-object v0, p0, Lcom/narvii/account/verifyaccount/SetPasswordFragment;->oldIdentityType$delegate:Lw7/m;

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

.method private final getOldIdentityValidationNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/account/verifyaccount/SetPasswordFragment;->oldIdentityValidationNode$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 9
    return-object v0
.end method

.method private final getOldPassword()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/account/verifyaccount/SetPasswordFragment;->oldPassword$delegate:Lw7/m;

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
    iget-object v0, p0, Lcom/narvii/account/verifyaccount/SetPasswordFragment;->phone$delegate:Lw7/m;

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

.method private final getPhoneValidationNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/account/verifyaccount/SetPasswordFragment;->phoneValidationNode$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 9
    return-object v0
.end method

.method private final getVerifyAccountType()Lcom/narvii/account/verifyaccount/VerifyAccountType;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/account/verifyaccount/SetPasswordFragment;->verifyAccountType$delegate:Lw7/m;

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
    invoke-direct {p0}, Lcom/narvii/account/verifyaccount/SetPasswordFragment;->getVerifyAccountType()Lcom/narvii/account/verifyaccount/VerifyAccountType;

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
    const-string v3, "verify_type"

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 31
    .line 32
    const-string v2, "set_identity_type"

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

.method private final goToNextSignupStep()V
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
    new-instance v0, Lcom/narvii/account/SignUpAddProfileFragment;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0}, Lcom/narvii/account/SignUpAddProfileFragment;-><init>()V

    .line 13
    .line 14
    new-instance v1, Landroid/os/Bundle;

    .line 15
    .line 16
    .line 17
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 18
    .line 19
    const-string v2, "email"

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    move-result-object v3

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    const-string v2, "phoneNumber"

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    move-result-object v3

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    const-string v2, "pass"

    .line 38
    .line 39
    iget-object v3, p0, Lcom/narvii/account/verifyaccount/SetPasswordFragment;->password:Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    const-string v2, "key_third_part_secret"

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    move-result-object v3

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    const-string v2, "key_is_third_part"

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 57
    move-result v3

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 61
    .line 62
    const-string v2, "key_sign_up_method"

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 66
    move-result-object v3

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    const-string v2, "key_third_party_nickname"

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 75
    move-result-object v3

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .line 80
    const-string v2, "key_avatar_url"

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 84
    move-result-object v3

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    const-string v2, "validationContext"

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 93
    move-result-object v3

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0, v0}, Lcom/narvii/account/AccountBaseFragment;->goToAddProfilePage(Landroidx/fragment/app/Fragment;)V

    .line 103
    return-void
.end method

.method private static final onViewCreated$lambda$2(Lcom/narvii/account/verifyaccount/SetPasswordFragment;)V
    .locals 1

    .line 1
    .line 2
    const-string v0, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object p0, p0, Lcom/narvii/account/verifyaccount/SetPasswordFragment;->passEdit:Landroid/widget/EditText;

    .line 8
    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    const-string p0, "passEdit"

    .line 12
    .line 13
    .line 14
    invoke-static {p0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 15
    const/4 p0, 0x0

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-static {p0}, Lcom/narvii/util/SoftKeyboard;->showSoftKeyboard(Landroid/widget/EditText;)V

    .line 19
    return-void
.end method

.method private static final onViewCreated$lambda$3(Lcom/narvii/account/verifyaccount/SetPasswordFragment;Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    const-string p1, "this$0"

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
    .line 20
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 21
    .line 22
    iget-object p1, p0, Lcom/narvii/account/verifyaccount/SetPasswordFragment;->passEdit:Landroid/widget/EditText;

    .line 23
    .line 24
    if-nez p1, :cond_0

    .line 25
    .line 26
    const-string p1, "passEdit"

    .line 27
    .line 28
    .line 29
    invoke-static {p1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 30
    const/4 p1, 0x0

    .line 31
    .line 32
    .line 33
    :cond_0
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 38
    move-result-object p1

    .line 39
    .line 40
    iput-object p1, p0, Lcom/narvii/account/verifyaccount/SetPasswordFragment;->password:Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    invoke-direct {p0}, Lcom/narvii/account/verifyaccount/SetPasswordFragment;->getVerifyAccountType()Lcom/narvii/account/verifyaccount/VerifyAccountType;

    .line 44
    move-result-object p1

    .line 45
    .line 46
    instance-of v0, p1, Lcom/narvii/account/verifyaccount/SignupVerifyAccount;

    .line 47
    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    .line 51
    invoke-direct {p0}, Lcom/narvii/account/verifyaccount/SetPasswordFragment;->registerCheck()V

    .line 52
    goto :goto_0

    .line 53
    .line 54
    :cond_1
    instance-of p1, p1, Lcom/narvii/account/verifyaccount/ChangePassVerifyAccount;

    .line 55
    .line 56
    if-eqz p1, :cond_2

    .line 57
    .line 58
    .line 59
    invoke-direct {p0}, Lcom/narvii/account/verifyaccount/SetPasswordFragment;->changePassword()V

    .line 60
    goto :goto_0

    .line 61
    .line 62
    .line 63
    :cond_2
    invoke-direct {p0}, Lcom/narvii/account/verifyaccount/SetPasswordFragment;->resetPassword()V

    .line 64
    :goto_0
    return-void
.end method

.method public static synthetic q(Lcom/narvii/account/verifyaccount/SetPasswordFragment;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/narvii/account/verifyaccount/SetPasswordFragment;->onViewCreated$lambda$2(Lcom/narvii/account/verifyaccount/SetPasswordFragment;)V

    return-void
.end method

.method public static synthetic r(Lcom/narvii/account/verifyaccount/SetPasswordFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/account/verifyaccount/SetPasswordFragment;->onViewCreated$lambda$3(Lcom/narvii/account/verifyaccount/SetPasswordFragment;Landroid/view/View;)V

    return-void
.end method

.method private final registerCheck()V
    .locals 5

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
    const-string v3, "/auth/register-check"

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
    .line 54
    iget-object v2, p0, Lcom/narvii/account/verifyaccount/SetPasswordFragment;->password:Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 58
    move-result v2

    .line 59
    .line 60
    if-nez v2, :cond_0

    .line 61
    .line 62
    iget-object v2, p0, Lcom/narvii/account/verifyaccount/SetPasswordFragment;->password:Ljava/lang/String;

    .line 63
    .line 64
    new-instance v3, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    const-string v4, "0 "

    .line 70
    .line 71
    .line 72
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    move-result-object v2

    .line 80
    .line 81
    const-string v3, "secret"

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 85
    .line 86
    .line 87
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 88
    move-result-object v0

    .line 89
    const/4 v2, 0x1

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0, v2}, Lcom/narvii/account/AccountBaseFragment;->setIsRequesting(Z)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0}, Lcom/narvii/account/AccountBaseFragment;->showProgress()V

    .line 96
    .line 97
    new-instance v2, Lcom/narvii/account/verifyaccount/SetPasswordFragment$registerCheck$1;

    .line 98
    .line 99
    const-class v3, Lcom/narvii/model/api/ApiResponse;

    .line 100
    .line 101
    .line 102
    invoke-direct {v2, p0, v3}, Lcom/narvii/account/verifyaccount/SetPasswordFragment$registerCheck$1;-><init>(Lcom/narvii/account/verifyaccount/SetPasswordFragment;Ljava/lang/Class;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 106
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
    new-instance v1, Lcom/narvii/account/verifyaccount/f;

    .line 29
    .line 30
    .line 31
    invoke-direct {v1, p0}, Lcom/narvii/account/verifyaccount/f;-><init>(Lcom/narvii/account/verifyaccount/SetPasswordFragment;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lcom/narvii/account/AccountService;->relogin(Lcom/narvii/util/Callback;)V

    .line 35
    return-void
.end method

.method private static final relogin$lambda$4(Lcom/narvii/account/verifyaccount/SetPasswordFragment;Lcom/narvii/model/User;)V
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
    invoke-direct {p0}, Lcom/narvii/account/verifyaccount/SetPasswordFragment;->goToCompletedScreen()V

    .line 9
    return-void
.end method

.method private final resetPassword()V
    .locals 6

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
    const-string v3, "/auth/reset-password"

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
    .line 54
    iget-object v2, p0, Lcom/narvii/account/verifyaccount/SetPasswordFragment;->password:Ljava/lang/String;

    .line 55
    const/4 v3, 0x1

    .line 56
    .line 57
    if-eqz v2, :cond_0

    .line 58
    .line 59
    .line 60
    invoke-static {v2}, Lkotlin/text/k;->z(Ljava/lang/CharSequence;)Z

    .line 61
    move-result v2

    .line 62
    xor-int/2addr v2, v3

    .line 63
    .line 64
    if-ne v2, v3, :cond_0

    .line 65
    .line 66
    iget-object v2, p0, Lcom/narvii/account/verifyaccount/SetPasswordFragment;->password:Ljava/lang/String;

    .line 67
    .line 68
    new-instance v4, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .line 73
    const-string v5, "0 "

    .line 74
    .line 75
    .line 76
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    move-result-object v2

    .line 84
    .line 85
    const-string v4, "updateSecret"

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v4, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 89
    .line 90
    .line 91
    :cond_0
    invoke-direct {p0}, Lcom/narvii/account/verifyaccount/SetPasswordFragment;->getEmail()Ljava/lang/String;

    .line 92
    move-result-object v2

    .line 93
    .line 94
    const-string v4, "phoneNumberValidationContext"

    .line 95
    .line 96
    const-string v5, "emailValidationContext"

    .line 97
    .line 98
    if-eqz v2, :cond_1

    .line 99
    .line 100
    .line 101
    invoke-static {v2}, Lkotlin/text/k;->z(Ljava/lang/CharSequence;)Z

    .line 102
    move-result v2

    .line 103
    xor-int/2addr v2, v3

    .line 104
    .line 105
    if-ne v2, v3, :cond_1

    .line 106
    .line 107
    .line 108
    invoke-direct {p0}, Lcom/narvii/account/verifyaccount/SetPasswordFragment;->getEmailValidationNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 109
    move-result-object v2

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, v5, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 113
    .line 114
    .line 115
    invoke-direct {p0}, Lcom/narvii/account/verifyaccount/SetPasswordFragment;->getOldIdentityValidationNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 116
    move-result-object v2

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0, v4, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 120
    goto :goto_0

    .line 121
    .line 122
    .line 123
    :cond_1
    invoke-direct {p0}, Lcom/narvii/account/verifyaccount/SetPasswordFragment;->getPhone()Ljava/lang/String;

    .line 124
    move-result-object v2

    .line 125
    .line 126
    if-eqz v2, :cond_2

    .line 127
    .line 128
    .line 129
    invoke-static {v2}, Lkotlin/text/k;->z(Ljava/lang/CharSequence;)Z

    .line 130
    move-result v2

    .line 131
    xor-int/2addr v2, v3

    .line 132
    .line 133
    if-ne v2, v3, :cond_2

    .line 134
    .line 135
    .line 136
    invoke-direct {p0}, Lcom/narvii/account/verifyaccount/SetPasswordFragment;->getPhoneValidationNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 137
    move-result-object v2

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0, v4, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 141
    .line 142
    .line 143
    invoke-direct {p0}, Lcom/narvii/account/verifyaccount/SetPasswordFragment;->getOldIdentityValidationNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 144
    move-result-object v2

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0, v5, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 148
    .line 149
    .line 150
    :cond_2
    :goto_0
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 151
    move-result-object v0

    .line 152
    .line 153
    .line 154
    invoke-virtual {p0, v3}, Lcom/narvii/account/AccountBaseFragment;->setIsRequesting(Z)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p0}, Lcom/narvii/account/AccountBaseFragment;->showProgress()V

    .line 158
    .line 159
    new-instance v2, Lcom/narvii/account/verifyaccount/SetPasswordFragment$resetPassword$1;

    .line 160
    .line 161
    const-class v3, Lcom/narvii/model/api/ApiResponse;

    .line 162
    .line 163
    .line 164
    invoke-direct {v2, p0, v3}, Lcom/narvii/account/verifyaccount/SetPasswordFragment$resetPassword$1;-><init>(Lcom/narvii/account/verifyaccount/SetPasswordFragment;Ljava/lang/Class;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 168
    return-void
.end method

.method public static synthetic s(Lcom/narvii/account/verifyaccount/SetPasswordFragment;Lcom/narvii/model/User;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/account/verifyaccount/SetPasswordFragment;->relogin$lambda$4(Lcom/narvii/account/verifyaccount/SetPasswordFragment;Lcom/narvii/model/User;)V

    return-void
.end method

.method private final updateNextView()V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/account/verifyaccount/SetPasswordFragment;->passEdit:Landroid/widget/EditText;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string v0, "passEdit"

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 11
    move-object v0, v1

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    iget-object v2, p0, Lcom/narvii/account/verifyaccount/SetPasswordFragment;->confirmPassEdit:Landroid/widget/EditText;

    .line 22
    .line 23
    if-nez v2, :cond_1

    .line 24
    .line 25
    const-string v2, "confirmPassEdit"

    .line 26
    .line 27
    .line 28
    invoke-static {v2}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 29
    move-object v2, v1

    .line 30
    .line 31
    .line 32
    :cond_1
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 33
    move-result-object v2

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 37
    move-result-object v2

    .line 38
    .line 39
    iget-object v3, p0, Lcom/narvii/account/verifyaccount/SetPasswordFragment;->nextView:Landroid/widget/Button;

    .line 40
    .line 41
    if-nez v3, :cond_2

    .line 42
    .line 43
    const-string v3, "nextView"

    .line 44
    .line 45
    .line 46
    invoke-static {v3}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 47
    goto :goto_0

    .line 48
    :cond_2
    move-object v1, v3

    .line 49
    .line 50
    .line 51
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 52
    move-result v3

    .line 53
    const/4 v4, 0x6

    .line 54
    .line 55
    if-lt v3, v4, :cond_3

    .line 56
    .line 57
    .line 58
    invoke-static {v0, v2}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 59
    move-result v0

    .line 60
    .line 61
    if-eqz v0, :cond_3

    .line 62
    const/4 v0, 0x1

    .line 63
    goto :goto_1

    .line 64
    :cond_3
    const/4 v0, 0x0

    .line 65
    .line 66
    .line 67
    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 68
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
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/account/verifyaccount/SetPasswordFragment;->getVerifyAccountType()Lcom/narvii/account/verifyaccount/VerifyAccountType;

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
    const-string v0, "set_password"

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

.method protected logSignUpMethod()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/account/verifyaccount/SetPasswordFragment;->getVerifyAccountType()Lcom/narvii/account/verifyaccount/VerifyAccountType;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    instance-of v0, v0, Lcom/narvii/account/verifyaccount/SignupVerifyAccount;

    .line 7
    return v0
.end method

.method public onBackPressed(Lcom/narvii/app/NVActivity;)Z
    .locals 0
    .param p1    # Lcom/narvii/app/NVActivity;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 p1, 0x1

    return p1
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
    invoke-super {p0, p1}, Lcom/narvii/account/AccountBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    if-nez p1, :cond_1

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    instance-of v0, p1, Lcom/narvii/account/LoginActivity;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    check-cast p1, Lcom/narvii/account/LoginActivity;

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p1, 0x0

    .line 18
    .line 19
    :goto_0
    if-eqz p1, :cond_1

    .line 20
    const/4 v0, 0x0

    .line 21
    .line 22
    iput v0, p1, Lcom/narvii/account/LoginActivity;->statMaxLoginStep:I

    .line 23
    .line 24
    const/16 v0, 0x14

    .line 25
    .line 26
    iput v0, p1, Lcom/narvii/account/LoginActivity;->statMaxSignupSetp:I

    .line 27
    :cond_1
    return-void
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
    const p3, 0x7f0d0313

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

.method public onTotallySuccess()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/account/verifyaccount/SetPasswordFragment;->goToNextSignupStep()V

    .line 4
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
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 12
    move-result-object p2

    .line 13
    .line 14
    instance-of v0, p2, Lcom/narvii/account/LoginActivity;

    .line 15
    const/4 v1, 0x0

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    check-cast p2, Lcom/narvii/account/LoginActivity;

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move-object p2, v1

    .line 22
    :goto_0
    const/4 v0, 0x0

    .line 23
    .line 24
    if-eqz p2, :cond_1

    .line 25
    .line 26
    iget-object p2, p2, Lcom/narvii/account/LoginActivity;->statEmailVerificationSkipped:Ljava/lang/Boolean;

    .line 27
    .line 28
    if-eqz p2, :cond_1

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 32
    move-result p2

    .line 33
    .line 34
    if-nez p2, :cond_1

    .line 35
    const/4 p2, 0x1

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    move p2, v0

    .line 38
    .line 39
    .line 40
    :goto_1
    const v2, 0x7f0a0e9e

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 44
    move-result-object v2

    .line 45
    .line 46
    const-string v3, "null cannot be cast to non-null type android.widget.TextView"

    .line 47
    .line 48
    .line 49
    invoke-static {v2, v3}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    .line 51
    check-cast v2, Landroid/widget/TextView;

    .line 52
    .line 53
    .line 54
    invoke-direct {p0}, Lcom/narvii/account/verifyaccount/SetPasswordFragment;->getVerifyAccountType()Lcom/narvii/account/verifyaccount/VerifyAccountType;

    .line 55
    move-result-object v4

    .line 56
    .line 57
    .line 58
    invoke-static {v4}, Lcom/narvii/account/verifyaccount/VerifyAccountTypeKt;->getPageTitle(Lcom/narvii/account/verifyaccount/VerifyAccountType;)I

    .line 59
    move-result v4

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 63
    .line 64
    .line 65
    const v2, 0x7f0a0eaf

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 69
    move-result-object v2

    .line 70
    .line 71
    .line 72
    invoke-static {v2, v3}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    .line 74
    check-cast v2, Landroid/widget/TextView;

    .line 75
    .line 76
    if-eqz p2, :cond_2

    .line 77
    goto :goto_2

    .line 78
    .line 79
    :cond_2
    const/16 v0, 0x8

    .line 80
    .line 81
    .line 82
    :goto_2
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 83
    .line 84
    .line 85
    const p2, 0x7f0a0393

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 89
    move-result-object v0

    .line 90
    .line 91
    .line 92
    const v2, 0x7f0a0acf

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 96
    move-result-object v0

    .line 97
    .line 98
    .line 99
    invoke-static {v0, v3}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    .line 101
    check-cast v0, Landroid/widget/TextView;

    .line 102
    .line 103
    .line 104
    const v2, 0x7f120052

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 108
    .line 109
    .line 110
    const v0, 0x7f0a0ad0

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 114
    move-result-object v0

    .line 115
    .line 116
    .line 117
    const v2, 0x7f0a04b2

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 121
    move-result-object v0

    .line 122
    .line 123
    const-string v3, "findViewById(...)"

    .line 124
    .line 125
    .line 126
    invoke-static {v0, v3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    .line 128
    check-cast v0, Landroid/widget/EditText;

    .line 129
    .line 130
    iput-object v0, p0, Lcom/narvii/account/verifyaccount/SetPasswordFragment;->passEdit:Landroid/widget/EditText;

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 134
    move-result-object p2

    .line 135
    .line 136
    .line 137
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 138
    move-result-object p2

    .line 139
    .line 140
    .line 141
    invoke-static {p2, v3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    .line 143
    check-cast p2, Landroid/widget/EditText;

    .line 144
    .line 145
    iput-object p2, p0, Lcom/narvii/account/verifyaccount/SetPasswordFragment;->confirmPassEdit:Landroid/widget/EditText;

    .line 146
    .line 147
    .line 148
    const p2, 0x7f0a09f2

    .line 149
    .line 150
    .line 151
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 152
    move-result-object p2

    .line 153
    .line 154
    .line 155
    invoke-static {p2, v3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    .line 157
    check-cast p2, Landroid/widget/Button;

    .line 158
    .line 159
    iput-object p2, p0, Lcom/narvii/account/verifyaccount/SetPasswordFragment;->nextView:Landroid/widget/Button;

    .line 160
    .line 161
    .line 162
    invoke-direct {p0}, Lcom/narvii/account/verifyaccount/SetPasswordFragment;->getVerifyAccountType()Lcom/narvii/account/verifyaccount/VerifyAccountType;

    .line 163
    move-result-object p2

    .line 164
    .line 165
    instance-of p2, p2, Lcom/narvii/account/verifyaccount/ChangePassVerifyAccount;

    .line 166
    .line 167
    if-eqz p2, :cond_3

    .line 168
    .line 169
    .line 170
    const p2, 0x7f1202a3

    .line 171
    goto :goto_3

    .line 172
    .line 173
    .line 174
    :cond_3
    const p2, 0x7f121092

    .line 175
    .line 176
    .line 177
    :goto_3
    const v0, 0x7f0a0e08

    .line 178
    .line 179
    .line 180
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 181
    move-result-object p1

    .line 182
    .line 183
    check-cast p1, Landroid/widget/TextView;

    .line 184
    .line 185
    .line 186
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 187
    .line 188
    iget-object p1, p0, Lcom/narvii/account/verifyaccount/SetPasswordFragment;->passEdit:Landroid/widget/EditText;

    .line 189
    .line 190
    if-nez p1, :cond_4

    .line 191
    .line 192
    const-string p1, "passEdit"

    .line 193
    .line 194
    .line 195
    invoke-static {p1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 196
    move-object p1, v1

    .line 197
    .line 198
    :cond_4
    new-instance p2, Lcom/narvii/account/verifyaccount/SetPasswordFragment$onViewCreated$2;

    .line 199
    .line 200
    .line 201
    invoke-direct {p2, p0}, Lcom/narvii/account/verifyaccount/SetPasswordFragment$onViewCreated$2;-><init>(Lcom/narvii/account/verifyaccount/SetPasswordFragment;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 205
    .line 206
    iget-object p1, p0, Lcom/narvii/account/verifyaccount/SetPasswordFragment;->confirmPassEdit:Landroid/widget/EditText;

    .line 207
    .line 208
    if-nez p1, :cond_5

    .line 209
    .line 210
    const-string p1, "confirmPassEdit"

    .line 211
    .line 212
    .line 213
    invoke-static {p1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 214
    move-object p1, v1

    .line 215
    .line 216
    :cond_5
    new-instance p2, Lcom/narvii/account/verifyaccount/SetPasswordFragment$onViewCreated$3;

    .line 217
    .line 218
    .line 219
    invoke-direct {p2, p0}, Lcom/narvii/account/verifyaccount/SetPasswordFragment$onViewCreated$3;-><init>(Lcom/narvii/account/verifyaccount/SetPasswordFragment;)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 223
    .line 224
    new-instance p1, Lcom/narvii/account/verifyaccount/g;

    .line 225
    .line 226
    .line 227
    invoke-direct {p1, p0}, Lcom/narvii/account/verifyaccount/g;-><init>(Lcom/narvii/account/verifyaccount/SetPasswordFragment;)V

    .line 228
    .line 229
    const-wide/16 v2, 0x64

    .line 230
    .line 231
    .line 232
    invoke-static {p1, v2, v3}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 233
    .line 234
    iget-object p1, p0, Lcom/narvii/account/verifyaccount/SetPasswordFragment;->nextView:Landroid/widget/Button;

    .line 235
    .line 236
    const-string p2, "nextView"

    .line 237
    .line 238
    if-nez p1, :cond_6

    .line 239
    .line 240
    .line 241
    invoke-static {p2}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 242
    move-object p1, v1

    .line 243
    .line 244
    .line 245
    :cond_6
    invoke-direct {p0}, Lcom/narvii/account/verifyaccount/SetPasswordFragment;->getVerifyAccountType()Lcom/narvii/account/verifyaccount/VerifyAccountType;

    .line 246
    move-result-object v0

    .line 247
    .line 248
    .line 249
    invoke-static {v0}, Lcom/narvii/account/verifyaccount/VerifyAccountTypeKt;->getNextBtnTitle(Lcom/narvii/account/verifyaccount/VerifyAccountType;)I

    .line 250
    move-result v0

    .line 251
    .line 252
    .line 253
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 254
    .line 255
    iget-object p1, p0, Lcom/narvii/account/verifyaccount/SetPasswordFragment;->nextView:Landroid/widget/Button;

    .line 256
    .line 257
    if-nez p1, :cond_7

    .line 258
    .line 259
    .line 260
    invoke-static {p2}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 261
    goto :goto_4

    .line 262
    :cond_7
    move-object v1, p1

    .line 263
    .line 264
    :goto_4
    new-instance p1, Lcom/narvii/account/verifyaccount/h;

    .line 265
    .line 266
    .line 267
    invoke-direct {p1, p0}, Lcom/narvii/account/verifyaccount/h;-><init>(Lcom/narvii/account/verifyaccount/SetPasswordFragment;)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v1, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 271
    return-void
.end method

.method public final updateSecret(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

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
    invoke-direct {p0}, Lcom/narvii/account/verifyaccount/SetPasswordFragment;->relogin()V

    .line 34
    :cond_1
    :goto_0
    return-void
.end method
