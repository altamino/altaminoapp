.class public final Lcom/narvii/account/resetpassword/EmailResetPasswordFragment;
.super Lcom/narvii/account/AccountBaseFragment;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/account/resetpassword/EmailResetPasswordFragment$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/account/resetpassword/EmailResetPasswordFragment$Companion;
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


# instance fields
.field private final checkLevel$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private edtEmail:Lcom/narvii/widget/AutoCompleteEmailView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private emailInputLayout:Lcom/narvii/widget/TextInputLayout;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private lastRequsetEmail:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
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

.field public verifyCodeHelper:Lcom/narvii/account/verifyaccount/VerifyCodeSharedPrefsHelper;

.field private verifyView:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/account/resetpassword/EmailResetPasswordFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/account/resetpassword/EmailResetPasswordFragment$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Lcom/narvii/account/resetpassword/EmailResetPasswordFragment;->Companion:Lcom/narvii/account/resetpassword/EmailResetPasswordFragment$Companion;

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
    new-instance v0, Lcom/narvii/account/resetpassword/EmailResetPasswordFragment$checkLevel$2;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/narvii/account/resetpassword/EmailResetPasswordFragment$checkLevel$2;-><init>(Lcom/narvii/account/resetpassword/EmailResetPasswordFragment;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    iput-object v0, p0, Lcom/narvii/account/resetpassword/EmailResetPasswordFragment;->checkLevel$delegate:Lw7/m;

    .line 15
    .line 16
    new-instance v0, Lcom/narvii/account/resetpassword/EmailResetPasswordFragment$oldIdentity$2;

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, p0}, Lcom/narvii/account/resetpassword/EmailResetPasswordFragment$oldIdentity$2;-><init>(Lcom/narvii/account/resetpassword/EmailResetPasswordFragment;)V

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    iput-object v0, p0, Lcom/narvii/account/resetpassword/EmailResetPasswordFragment;->oldIdentity$delegate:Lw7/m;

    .line 26
    .line 27
    new-instance v0, Lcom/narvii/account/resetpassword/EmailResetPasswordFragment$oldIdentityType$2;

    .line 28
    .line 29
    .line 30
    invoke-direct {v0, p0}, Lcom/narvii/account/resetpassword/EmailResetPasswordFragment$oldIdentityType$2;-><init>(Lcom/narvii/account/resetpassword/EmailResetPasswordFragment;)V

    .line 31
    .line 32
    .line 33
    invoke-static {v0}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    iput-object v0, p0, Lcom/narvii/account/resetpassword/EmailResetPasswordFragment;->oldIdentityType$delegate:Lw7/m;

    .line 37
    .line 38
    new-instance v0, Lcom/narvii/account/resetpassword/EmailResetPasswordFragment$oldCode$2;

    .line 39
    .line 40
    .line 41
    invoke-direct {v0, p0}, Lcom/narvii/account/resetpassword/EmailResetPasswordFragment$oldCode$2;-><init>(Lcom/narvii/account/resetpassword/EmailResetPasswordFragment;)V

    .line 42
    .line 43
    .line 44
    invoke-static {v0}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    iput-object v0, p0, Lcom/narvii/account/resetpassword/EmailResetPasswordFragment;->oldCode$delegate:Lw7/m;

    .line 48
    .line 49
    new-instance v0, Lcom/narvii/account/resetpassword/EmailResetPasswordFragment$oldPassword$2;

    .line 50
    .line 51
    .line 52
    invoke-direct {v0, p0}, Lcom/narvii/account/resetpassword/EmailResetPasswordFragment$oldPassword$2;-><init>(Lcom/narvii/account/resetpassword/EmailResetPasswordFragment;)V

    .line 53
    .line 54
    .line 55
    invoke-static {v0}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 56
    move-result-object v0

    .line 57
    .line 58
    iput-object v0, p0, Lcom/narvii/account/resetpassword/EmailResetPasswordFragment;->oldPassword$delegate:Lw7/m;

    .line 59
    return-void
.end method

.method public static final synthetic access$dismissProgress(Lcom/narvii/account/resetpassword/EmailResetPasswordFragment;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/account/AccountBaseFragment;->dismissProgress()V

    .line 4
    return-void
.end method

.method public static final synthetic access$getEdtEmail$p(Lcom/narvii/account/resetpassword/EmailResetPasswordFragment;)Lcom/narvii/widget/AutoCompleteEmailView;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/account/resetpassword/EmailResetPasswordFragment;->edtEmail:Lcom/narvii/widget/AutoCompleteEmailView;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$goNext(Lcom/narvii/account/resetpassword/EmailResetPasswordFragment;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/account/resetpassword/EmailResetPasswordFragment;->goNext()V

    .line 4
    return-void
.end method

.method public static final synthetic access$setRequest$p(Lcom/narvii/account/resetpassword/EmailResetPasswordFragment;Lcom/narvii/util/http/ApiRequest;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/account/resetpassword/EmailResetPasswordFragment;->request:Lcom/narvii/util/http/ApiRequest;

    .line 3
    return-void
.end method

.method public static final synthetic access$showEmailConfirmDialog(Lcom/narvii/account/resetpassword/EmailResetPasswordFragment;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/account/resetpassword/EmailResetPasswordFragment;->showEmailConfirmDialog()V

    .line 4
    return-void
.end method

.method private final checkLegality(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/account/resetpassword/EmailResetPasswordFragment;->isEmailValid()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    .line 7
    const-string v2, "email"

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const-string p2, "logging"

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    move-result-object p2

    .line 16
    .line 17
    check-cast p2, Lcom/narvii/util/logging/LoggingService;

    .line 18
    const/4 v0, 0x4

    .line 19
    .line 20
    new-array v0, v0, [Ljava/lang/Object;

    .line 21
    const/4 v3, 0x0

    .line 22
    .line 23
    aput-object v2, v0, v3

    .line 24
    .line 25
    aput-object p1, v0, v1

    .line 26
    const/4 p1, 0x2

    .line 27
    .line 28
    const-string v1, "reason"

    .line 29
    .line 30
    aput-object v1, v0, p1

    .line 31
    const/4 p1, 0x3

    .line 32
    .line 33
    const-string v1, "InvalidEmail"

    .line 34
    .line 35
    aput-object v1, v0, p1

    .line 36
    .line 37
    const-string p1, "AccountError"

    .line 38
    .line 39
    .line 40
    invoke-interface {p2, p1, v0}, Lcom/narvii/util/logging/LoggingService;->logEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    return-void

    .line 42
    .line 43
    :cond_0
    iget-object v0, p0, Lcom/narvii/account/resetpassword/EmailResetPasswordFragment;->lastRequsetEmail:Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 47
    move-result v0

    .line 48
    .line 49
    if-eqz v0, :cond_1

    .line 50
    .line 51
    .line 52
    invoke-direct {p0}, Lcom/narvii/account/resetpassword/EmailResetPasswordFragment;->goNext()V

    .line 53
    return-void

    .line 54
    .line 55
    .line 56
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/account/AccountBaseFragment;->showProgress()V

    .line 57
    .line 58
    const-string v0, "account"

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 62
    move-result-object v0

    .line 63
    .line 64
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 65
    .line 66
    const-string v3, "api"

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 70
    move-result-object v3

    .line 71
    .line 72
    check-cast v3, Lcom/narvii/util/http/ApiService;

    .line 73
    .line 74
    .line 75
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 76
    move-result-object v4

    .line 77
    .line 78
    .line 79
    invoke-virtual {v4}, Lcom/narvii/util/http/ApiRequest$Builder;->https()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 80
    move-result-object v4

    .line 81
    .line 82
    .line 83
    invoke-virtual {v4}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 84
    move-result-object v4

    .line 85
    .line 86
    .line 87
    invoke-virtual {v4}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 88
    move-result-object v4

    .line 89
    .line 90
    const-string v5, "/auth/register-check"

    .line 91
    .line 92
    .line 93
    invoke-virtual {v4, v5}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 94
    move-result-object v4

    .line 95
    .line 96
    sget-object v5, La0/a;->o:Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getDeviceId()Ljava/lang/String;

    .line 100
    move-result-object v0

    .line 101
    .line 102
    .line 103
    invoke-virtual {v4, v5, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 104
    move-result-object v0

    .line 105
    .line 106
    .line 107
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 108
    move-result v4

    .line 109
    .line 110
    if-nez v4, :cond_2

    .line 111
    .line 112
    new-instance v4, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    .line 117
    const-string v5, "0 "

    .line 118
    .line 119
    .line 120
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    move-result-object p2

    .line 128
    .line 129
    const-string v4, "secret"

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0, v4, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 133
    .line 134
    .line 135
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 136
    move-result p2

    .line 137
    .line 138
    if-nez p2, :cond_3

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0, v2, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0, v2, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 145
    .line 146
    .line 147
    :cond_3
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 148
    move-result-object p1

    .line 149
    .line 150
    iput-object p1, p0, Lcom/narvii/account/resetpassword/EmailResetPasswordFragment;->request:Lcom/narvii/util/http/ApiRequest;

    .line 151
    .line 152
    .line 153
    invoke-virtual {p0, v1}, Lcom/narvii/account/AccountBaseFragment;->setIsRequesting(Z)V

    .line 154
    .line 155
    iget-object p1, p0, Lcom/narvii/account/resetpassword/EmailResetPasswordFragment;->request:Lcom/narvii/util/http/ApiRequest;

    .line 156
    .line 157
    new-instance p2, Lcom/narvii/account/resetpassword/EmailResetPasswordFragment$checkLegality$1;

    .line 158
    .line 159
    const-class v0, Lcom/narvii/model/api/ApiResponse;

    .line 160
    .line 161
    .line 162
    invoke-direct {p2, p0, v0}, Lcom/narvii/account/resetpassword/EmailResetPasswordFragment$checkLegality$1;-><init>(Lcom/narvii/account/resetpassword/EmailResetPasswordFragment;Ljava/lang/Class;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v3, p1, p2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 166
    return-void
.end method

.method private final getCheckLevel()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/account/resetpassword/EmailResetPasswordFragment;->checkLevel$delegate:Lw7/m;

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

.method private final getOldCode()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/account/resetpassword/EmailResetPasswordFragment;->oldCode$delegate:Lw7/m;

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
    iget-object v0, p0, Lcom/narvii/account/resetpassword/EmailResetPasswordFragment;->oldIdentity$delegate:Lw7/m;

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
    iget-object v0, p0, Lcom/narvii/account/resetpassword/EmailResetPasswordFragment;->oldIdentityType$delegate:Lw7/m;

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
    iget-object v0, p0, Lcom/narvii/account/resetpassword/EmailResetPasswordFragment;->oldPassword$delegate:Lw7/m;

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

.method private final goNext()V
    .locals 11

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
    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 14
    move-result v5

    .line 15
    .line 16
    if-nez v5, :cond_0

    .line 17
    return-void

    .line 18
    .line 19
    :cond_0
    iget-object v5, p0, Lcom/narvii/account/resetpassword/EmailResetPasswordFragment;->edtEmail:Lcom/narvii/widget/AutoCompleteEmailView;

    .line 20
    const/4 v6, 0x0

    .line 21
    .line 22
    if-eqz v5, :cond_1

    .line 23
    .line 24
    .line 25
    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 26
    move-result-object v5

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    move-object v5, v6

    .line 29
    .line 30
    .line 31
    :goto_0
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 32
    move-result-object v5

    .line 33
    .line 34
    iput-object v5, p0, Lcom/narvii/account/resetpassword/EmailResetPasswordFragment;->lastRequsetEmail:Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 38
    move-result-object v5

    .line 39
    .line 40
    .line 41
    invoke-virtual {v5}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 42
    move-result-object v5

    .line 43
    .line 44
    .line 45
    const v7, 0x7f010010

    .line 46
    .line 47
    .line 48
    const v8, 0x7f010011

    .line 49
    .line 50
    .line 51
    const v9, 0x7f01000e

    .line 52
    .line 53
    .line 54
    const v10, 0x7f01000f

    .line 55
    .line 56
    .line 57
    invoke-virtual {v5, v9, v10, v7, v8}, Landroidx/fragment/app/FragmentTransaction;->z(IIII)Landroidx/fragment/app/FragmentTransaction;

    .line 58
    .line 59
    new-instance v7, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;

    .line 60
    .line 61
    .line 62
    invoke-direct {v7}, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;-><init>()V

    .line 63
    .line 64
    new-instance v8, Landroid/os/Bundle;

    .line 65
    .line 66
    .line 67
    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 68
    .line 69
    const-string v9, "identity_to_verify_type"

    .line 70
    const/4 v10, 0x2

    .line 71
    .line 72
    .line 73
    invoke-virtual {v8, v9, v10}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 74
    .line 75
    const-string v9, "email"

    .line 76
    .line 77
    iget-object v10, p0, Lcom/narvii/account/resetpassword/EmailResetPasswordFragment;->lastRequsetEmail:Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v8, v9, v10}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    const-string v9, "verify_type"

    .line 83
    const/4 v10, 0x1

    .line 84
    .line 85
    .line 86
    invoke-virtual {v8, v9, v10}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 87
    .line 88
    const-string v9, "check_level"

    .line 89
    .line 90
    .line 91
    invoke-direct {p0}, Lcom/narvii/account/resetpassword/EmailResetPasswordFragment;->getCheckLevel()I

    .line 92
    move-result v10

    .line 93
    .line 94
    .line 95
    invoke-virtual {v8, v9, v10}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 96
    .line 97
    const-string v9, "old_identity"

    .line 98
    .line 99
    .line 100
    invoke-direct {p0}, Lcom/narvii/account/resetpassword/EmailResetPasswordFragment;->getOldIdentity()Ljava/lang/String;

    .line 101
    move-result-object v10

    .line 102
    .line 103
    .line 104
    invoke-virtual {v8, v9, v10}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .line 106
    const-string v9, "type"

    .line 107
    .line 108
    .line 109
    invoke-direct {p0}, Lcom/narvii/account/resetpassword/EmailResetPasswordFragment;->getOldIdentityType()I

    .line 110
    move-result v10

    .line 111
    .line 112
    .line 113
    invoke-virtual {v8, v9, v10}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 114
    .line 115
    const-string v9, "old_code"

    .line 116
    .line 117
    .line 118
    invoke-direct {p0}, Lcom/narvii/account/resetpassword/EmailResetPasswordFragment;->getOldCode()Ljava/lang/String;

    .line 119
    move-result-object v10

    .line 120
    .line 121
    .line 122
    invoke-virtual {v8, v9, v10}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .line 124
    const-string v9, "old_password"

    .line 125
    .line 126
    .line 127
    invoke-direct {p0}, Lcom/narvii/account/resetpassword/EmailResetPasswordFragment;->getOldPassword()Ljava/lang/String;

    .line 128
    move-result-object v10

    .line 129
    .line 130
    .line 131
    invoke-virtual {v8, v9, v10}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p0, v4}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 135
    move-result-object v9

    .line 136
    .line 137
    .line 138
    invoke-virtual {v8, v4, v9}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 142
    move-result v4

    .line 143
    .line 144
    .line 145
    invoke-virtual {v8, v3, v4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 149
    move-result-object v3

    .line 150
    .line 151
    .line 152
    invoke-virtual {v8, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 156
    move-result-object v2

    .line 157
    .line 158
    .line 159
    invoke-virtual {v8, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 163
    move-result-object v1

    .line 164
    .line 165
    .line 166
    invoke-virtual {v8, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v7, v8}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContainerId()Ljava/lang/Integer;

    .line 173
    move-result-object v0

    .line 174
    .line 175
    if-eqz v0, :cond_2

    .line 176
    .line 177
    .line 178
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 182
    move-result v0

    .line 183
    .line 184
    .line 185
    invoke-virtual {v5, v0, v7}, Landroidx/fragment/app/FragmentTransaction;->u(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 186
    move-result-object v0

    .line 187
    .line 188
    .line 189
    invoke-virtual {v0, v6}, Landroidx/fragment/app/FragmentTransaction;->h(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 190
    move-result-object v0

    .line 191
    .line 192
    .line 193
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->k()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    goto :goto_1

    .line 195
    :catch_0
    move-exception v0

    .line 196
    .line 197
    .line 198
    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 199
    move-result-object v0

    .line 200
    .line 201
    .line 202
    invoke-static {v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 203
    :cond_2
    :goto_1
    return-void
.end method

.method private final isEmailValid()Z
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/account/AccountUtils;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/narvii/account/AccountUtils;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    iget-object v1, p0, Lcom/narvii/account/resetpassword/EmailResetPasswordFragment;->edtEmail:Lcom/narvii/widget/AutoCompleteEmailView;

    .line 12
    .line 13
    .line 14
    invoke-static {v1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lcom/narvii/account/AccountUtils;->isValidEmail(Ljava/lang/String;)Z

    .line 26
    move-result v0

    .line 27
    const/4 v1, 0x1

    .line 28
    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    iget-object v0, p0, Lcom/narvii/account/resetpassword/EmailResetPasswordFragment;->emailInputLayout:Lcom/narvii/widget/TextInputLayout;

    .line 32
    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Lcom/narvii/widget/TextInputLayout;->updateStatus(Z)V

    .line 37
    :cond_0
    const/4 v0, 0x0

    .line 38
    return v0

    .line 39
    :cond_1
    return v1
.end method

.method private static final onViewCreated$lambda$0(Lcom/narvii/account/resetpassword/EmailResetPasswordFragment;Landroid/view/View;)V
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
    const-string v0, "VerifyEmail"

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
    iget-object p1, p0, Lcom/narvii/account/resetpassword/EmailResetPasswordFragment;->edtEmail:Lcom/narvii/widget/AutoCompleteEmailView;

    .line 23
    const/4 v0, 0x0

    .line 24
    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 29
    move-result-object p1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move-object p1, v0

    .line 32
    .line 33
    .line 34
    :goto_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    .line 38
    invoke-direct {p0, p1, v0}, Lcom/narvii/account/resetpassword/EmailResetPasswordFragment;->checkLegality(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method private static final onViewCreated$lambda$1(Lcom/narvii/account/resetpassword/EmailResetPasswordFragment;)V
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
    iget-object p0, p0, Lcom/narvii/account/resetpassword/EmailResetPasswordFragment;->edtEmail:Lcom/narvii/widget/AutoCompleteEmailView;

    .line 8
    .line 9
    .line 10
    invoke-static {p0}, Lcom/narvii/util/SoftKeyboard;->showSoftKeyboard(Landroid/widget/EditText;)V

    .line 11
    return-void
.end method

.method public static synthetic q(Lcom/narvii/account/resetpassword/EmailResetPasswordFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/account/resetpassword/EmailResetPasswordFragment;->onViewCreated$lambda$0(Lcom/narvii/account/resetpassword/EmailResetPasswordFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic r(Lcom/narvii/account/resetpassword/EmailResetPasswordFragment;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/narvii/account/resetpassword/EmailResetPasswordFragment;->onViewCreated$lambda$1(Lcom/narvii/account/resetpassword/EmailResetPasswordFragment;)V

    return-void
.end method

.method private final requestEmailCode(Ljava/lang/String;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/account/AccountBaseFragment;->showProgress()V

    .line 4
    const/4 v0, 0x2

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    new-instance v1, Lcom/narvii/account/resetpassword/EmailResetPasswordFragment$requestEmailCode$1;

    .line 11
    .line 12
    const-class v2, Lcom/narvii/model/api/ApiResponse;

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, p0, p1, v2}, Lcom/narvii/account/resetpassword/EmailResetPasswordFragment$requestEmailCode$1;-><init>(Lcom/narvii/account/resetpassword/EmailResetPasswordFragment;Ljava/lang/String;Ljava/lang/Class;)V

    .line 16
    const/4 v2, 0x1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v2, p1, v0, v1}, Lcom/narvii/account/AccountBaseFragment;->requestSecurityCode(ILjava/lang/String;Ljava/lang/Integer;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 20
    return-void
.end method

.method public static synthetic s(Lcom/narvii/account/resetpassword/EmailResetPasswordFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/account/resetpassword/EmailResetPasswordFragment;->showEmailConfirmDialog$lambda$6(Lcom/narvii/account/resetpassword/EmailResetPasswordFragment;Landroid/view/View;)V

    return-void
.end method

.method private final showEmailConfirmDialog()V
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
    iget-object v1, p0, Lcom/narvii/account/resetpassword/EmailResetPasswordFragment;->edtEmail:Lcom/narvii/widget/AutoCompleteEmailView;

    .line 18
    .line 19
    .line 20
    invoke-static {v1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 32
    const/4 v1, 0x0

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 39
    .line 40
    .line 41
    const v1, 0x7f120438

    .line 42
    const/4 v2, 0x0

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1, v2}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 46
    .line 47
    new-instance v1, Lcom/narvii/account/resetpassword/a;

    .line 48
    .line 49
    .line 50
    invoke-direct {v1, p0}, Lcom/narvii/account/resetpassword/a;-><init>(Lcom/narvii/account/resetpassword/EmailResetPasswordFragment;)V

    .line 51
    .line 52
    .line 53
    const v2, 0x7f1212a7

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v2, v1}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    .line 60
    return-void
.end method

.method private static final showEmailConfirmDialog$lambda$6(Lcom/narvii/account/resetpassword/EmailResetPasswordFragment;Landroid/view/View;)V
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
    iget-object p1, p0, Lcom/narvii/account/resetpassword/EmailResetPasswordFragment;->edtEmail:Lcom/narvii/widget/AutoCompleteEmailView;

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, p1}, Lcom/narvii/account/resetpassword/EmailResetPasswordFragment;->requestEmailCode(Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method private final updateVerifyView()V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/account/AccountUtils;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/narvii/account/AccountUtils;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    iget-object v1, p0, Lcom/narvii/account/resetpassword/EmailResetPasswordFragment;->verifyView:Landroid/view/View;

    .line 12
    .line 13
    .line 14
    invoke-static {v1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 15
    .line 16
    iget-object v2, p0, Lcom/narvii/account/resetpassword/EmailResetPasswordFragment;->edtEmail:Lcom/narvii/widget/AutoCompleteEmailView;

    .line 17
    .line 18
    .line 19
    invoke-static {v2}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 23
    move-result-object v2

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 27
    move-result-object v2

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v2}, Lcom/narvii/account/AccountUtils;->isValidEmail(Ljava/lang/String;)Z

    .line 31
    move-result v0

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 35
    return-void
.end method


# virtual methods
.method protected addStatusBarMargin()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1    # Landroid/text/Editable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/account/resetpassword/EmailResetPasswordFragment;->updateVerifyView()V

    .line 4
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "ResetPasswordEnterYourEmail"

    return-object v0
.end method

.method public final getVerifyCodeHelper()Lcom/narvii/account/verifyaccount/VerifyCodeSharedPrefsHelper;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/account/resetpassword/EmailResetPasswordFragment;->verifyCodeHelper:Lcom/narvii/account/verifyaccount/VerifyCodeSharedPrefsHelper;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-object v0

    .line 6
    .line 7
    :cond_0
    const-string v0, "verifyCodeHelper"

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
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
    invoke-super {p0, p1}, Lcom/narvii/account/AccountBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    new-instance p1, Lcom/narvii/account/verifyaccount/VerifyCodeSharedPrefsHelper;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    const-string v1, "getContext(...)"

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-direct {p1, v0}, Lcom/narvii/account/verifyaccount/VerifyCodeSharedPrefsHelper;-><init>(Landroid/content/Context;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p1}, Lcom/narvii/account/resetpassword/EmailResetPasswordFragment;->setVerifyCodeHelper(Lcom/narvii/account/verifyaccount/VerifyCodeSharedPrefsHelper;)V

    .line 21
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
    const p3, 0x7f0d02cb

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

.method public onDestroy()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/account/resetpassword/EmailResetPasswordFragment;->request:Lcom/narvii/util/http/ApiRequest;

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
    iget-object v1, p0, Lcom/narvii/account/resetpassword/EmailResetPasswordFragment;->request:Lcom/narvii/util/http/ApiRequest;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiService;->abort(Lcom/narvii/util/http/ApiRequest;)V

    .line 18
    const/4 v0, 0x0

    .line 19
    .line 20
    iput-object v0, p0, Lcom/narvii/account/resetpassword/EmailResetPasswordFragment;->request:Lcom/narvii/util/http/ApiRequest;

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroy()V

    .line 24
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/view/KeyEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/account/resetpassword/EmailResetPasswordFragment;->request:Lcom/narvii/util/http/ApiRequest;

    .line 3
    const/4 p3, 0x6

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    if-nez p1, :cond_2

    .line 7
    .line 8
    if-ne p2, p3, :cond_1

    .line 9
    .line 10
    iget-object p1, p0, Lcom/narvii/account/resetpassword/EmailResetPasswordFragment;->edtEmail:Lcom/narvii/widget/AutoCompleteEmailView;

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 16
    move-result-object p1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move-object p1, v0

    .line 19
    .line 20
    .line 21
    :goto_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    .line 25
    invoke-direct {p0, p1, v0}, Lcom/narvii/account/resetpassword/EmailResetPasswordFragment;->checkLegality(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    :cond_1
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 28
    .line 29
    :cond_2
    iget-object p1, p0, Lcom/narvii/account/resetpassword/EmailResetPasswordFragment;->request:Lcom/narvii/util/http/ApiRequest;

    .line 30
    const/4 v1, 0x0

    .line 31
    .line 32
    if-eqz p1, :cond_3

    .line 33
    return v1

    .line 34
    .line 35
    :cond_3
    if-ne p2, p3, :cond_5

    .line 36
    .line 37
    iget-object p1, p0, Lcom/narvii/account/resetpassword/EmailResetPasswordFragment;->edtEmail:Lcom/narvii/widget/AutoCompleteEmailView;

    .line 38
    .line 39
    if-eqz p1, :cond_4

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 43
    move-result-object p1

    .line 44
    goto :goto_1

    .line 45
    :cond_4
    move-object p1, v0

    .line 46
    .line 47
    .line 48
    :goto_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 49
    move-result-object p1

    .line 50
    .line 51
    .line 52
    invoke-direct {p0, p1, v0}, Lcom/narvii/account/resetpassword/EmailResetPasswordFragment;->checkLegality(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const/4 p1, 0x1

    .line 54
    return p1

    .line 55
    :cond_5
    return v1
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
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
    const p2, 0x7f0a04b2

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 15
    move-result-object p2

    .line 16
    .line 17
    check-cast p2, Lcom/narvii/widget/AutoCompleteEmailView;

    .line 18
    .line 19
    iput-object p2, p0, Lcom/narvii/account/resetpassword/EmailResetPasswordFragment;->edtEmail:Lcom/narvii/widget/AutoCompleteEmailView;

    .line 20
    .line 21
    if-eqz p2, :cond_0

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    .line 25
    .line 26
    :cond_0
    iget-object p2, p0, Lcom/narvii/account/resetpassword/EmailResetPasswordFragment;->edtEmail:Lcom/narvii/widget/AutoCompleteEmailView;

    .line 27
    .line 28
    if-eqz p2, :cond_1

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 32
    .line 33
    :cond_1
    iget-object p2, p0, Lcom/narvii/account/resetpassword/EmailResetPasswordFragment;->edtEmail:Lcom/narvii/widget/AutoCompleteEmailView;

    .line 34
    .line 35
    if-eqz p2, :cond_2

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 39
    .line 40
    .line 41
    :cond_2
    const p2, 0x7f0a0f6b

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 45
    move-result-object p2

    .line 46
    .line 47
    iput-object p2, p0, Lcom/narvii/account/resetpassword/EmailResetPasswordFragment;->verifyView:Landroid/view/View;

    .line 48
    .line 49
    if-eqz p2, :cond_3

    .line 50
    .line 51
    new-instance v0, Lcom/narvii/account/resetpassword/b;

    .line 52
    .line 53
    .line 54
    invoke-direct {v0, p0}, Lcom/narvii/account/resetpassword/b;-><init>(Lcom/narvii/account/resetpassword/EmailResetPasswordFragment;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    .line 59
    .line 60
    :cond_3
    const p2, 0x7f0a072a

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 64
    move-result-object p1

    .line 65
    .line 66
    const-string p2, "null cannot be cast to non-null type com.narvii.widget.TextInputLayout"

    .line 67
    .line 68
    .line 69
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    .line 71
    check-cast p1, Lcom/narvii/widget/TextInputLayout;

    .line 72
    .line 73
    iput-object p1, p0, Lcom/narvii/account/resetpassword/EmailResetPasswordFragment;->emailInputLayout:Lcom/narvii/widget/TextInputLayout;

    .line 74
    .line 75
    new-instance p1, Lcom/narvii/account/resetpassword/c;

    .line 76
    .line 77
    .line 78
    invoke-direct {p1, p0}, Lcom/narvii/account/resetpassword/c;-><init>(Lcom/narvii/account/resetpassword/EmailResetPasswordFragment;)V

    .line 79
    .line 80
    const-wide/16 v0, 0x0

    .line 81
    .line 82
    .line 83
    invoke-static {p1, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 84
    return-void
.end method

.method public final setVerifyCodeHelper(Lcom/narvii/account/verifyaccount/VerifyCodeSharedPrefsHelper;)V
    .locals 1
    .param p1    # Lcom/narvii/account/verifyaccount/VerifyCodeSharedPrefsHelper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/account/resetpassword/EmailResetPasswordFragment;->verifyCodeHelper:Lcom/narvii/account/verifyaccount/VerifyCodeSharedPrefsHelper;

    return-void
.end method
