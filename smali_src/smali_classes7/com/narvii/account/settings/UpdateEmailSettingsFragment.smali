.class public final Lcom/narvii/account/settings/UpdateEmailSettingsFragment;
.super Lcom/narvii/account/settings/AccountSettingsBaseFragment;
.source "SourceFile"


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/reflect/KProperty<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final binding$delegate:Lkotlin/properties/d;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final emailText$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public verifyCodeHelper:Lcom/narvii/account/verifyaccount/VerifyCodeSharedPrefsHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    new-array v0, v0, [Lkotlin/reflect/KProperty;

    .line 4
    .line 5
    new-instance v1, Lkotlin/jvm/internal/g0;

    .line 6
    .line 7
    const-string v2, "binding"

    .line 8
    .line 9
    const-string v3, "getBinding()Lcom/narvii/amino/databinding/FragmentUpdateEmailSettingsBinding;"

    .line 10
    .line 11
    const-class v4, Lcom/narvii/account/settings/UpdateEmailSettingsFragment;

    .line 12
    const/4 v5, 0x0

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/g0;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 16
    .line 17
    .line 18
    invoke-static {v1}, Lkotlin/jvm/internal/q0;->g(Lkotlin/jvm/internal/f0;)Lkotlin/reflect/KProperty1;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    aput-object v1, v0, v5

    .line 22
    .line 23
    sput-object v0, Lcom/narvii/account/settings/UpdateEmailSettingsFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 24
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/account/settings/AccountSettingsBaseFragment;-><init>()V

    .line 4
    .line 5
    sget-object v0, Lcom/narvii/account/settings/UpdateEmailSettingsFragment$binding$2;->INSTANCE:Lcom/narvii/account/settings/UpdateEmailSettingsFragment$binding$2;

    .line 6
    .line 7
    .line 8
    invoke-static {p0, v0}, Lcom/narvii/util/FragmentExtensionsKt;->viewBinding(Landroidx/fragment/app/Fragment;Le8/l;)Lkotlin/properties/d;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    iput-object v0, p0, Lcom/narvii/account/settings/UpdateEmailSettingsFragment;->binding$delegate:Lkotlin/properties/d;

    .line 12
    .line 13
    new-instance v0, Lcom/narvii/account/settings/UpdateEmailSettingsFragment$emailText$2;

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, p0}, Lcom/narvii/account/settings/UpdateEmailSettingsFragment$emailText$2;-><init>(Lcom/narvii/account/settings/UpdateEmailSettingsFragment;)V

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    iput-object v0, p0, Lcom/narvii/account/settings/UpdateEmailSettingsFragment;->emailText$delegate:Lw7/m;

    .line 23
    return-void
.end method

.method public static final synthetic access$goToCodeVerify(Lcom/narvii/account/settings/UpdateEmailSettingsFragment;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/account/settings/UpdateEmailSettingsFragment;->goToCodeVerify()V

    .line 4
    return-void
.end method

.method private final getBinding()Lcom/narvii/amino/databinding/FragmentUpdateEmailSettingsBinding;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/account/settings/UpdateEmailSettingsFragment;->binding$delegate:Lkotlin/properties/d;

    .line 3
    .line 4
    sget-object v1, Lcom/narvii/account/settings/UpdateEmailSettingsFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    aget-object v1, v1, v2

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, p0, v1}, Lkotlin/properties/d;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    check-cast v0, Lcom/narvii/amino/databinding/FragmentUpdateEmailSettingsBinding;

    .line 14
    return-object v0
.end method

.method private final goToAddEmail()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/account/verifyaccount/AddIdentityVerifyAccount;

    .line 3
    .line 4
    sget-object v1, Lcom/narvii/account/verifyaccount/EmailIdentity;->INSTANCE:Lcom/narvii/account/verifyaccount/EmailIdentity;

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Lcom/narvii/account/verifyaccount/AddIdentityVerifyAccount;-><init>(Lcom/narvii/account/verifyaccount/IdentityType;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v0}, Lcom/narvii/account/settings/UpdateEmailSettingsFragment;->goToConfirmPassword(Lcom/narvii/account/verifyaccount/VerifyAccountType;)V

    .line 11
    return-void
.end method

.method private final goToCodeVerify()V
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
    .line 20
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 21
    move-result-object v5

    .line 22
    .line 23
    .line 24
    invoke-virtual {v5}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 25
    move-result-object v5

    .line 26
    .line 27
    .line 28
    const v6, 0x7f010010

    .line 29
    .line 30
    .line 31
    const v7, 0x7f010011

    .line 32
    .line 33
    .line 34
    const v8, 0x7f01000e

    .line 35
    .line 36
    .line 37
    const v9, 0x7f01000f

    .line 38
    .line 39
    .line 40
    invoke-virtual {v5, v8, v9, v6, v7}, Landroidx/fragment/app/FragmentTransaction;->z(IIII)Landroidx/fragment/app/FragmentTransaction;

    .line 41
    .line 42
    new-instance v6, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;

    .line 43
    .line 44
    .line 45
    invoke-direct {v6}, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/narvii/account/settings/UpdateEmailSettingsFragment;->getEmailText()Ljava/lang/String;

    .line 49
    move-result-object v7

    .line 50
    .line 51
    if-eqz v7, :cond_1

    .line 52
    .line 53
    new-instance v8, Landroid/os/Bundle;

    .line 54
    .line 55
    .line 56
    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 57
    .line 58
    const-string v9, "identity_to_verify_type"

    .line 59
    const/4 v10, 0x2

    .line 60
    .line 61
    .line 62
    invoke-virtual {v8, v9, v10}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 63
    .line 64
    const-string v9, "email"

    .line 65
    .line 66
    .line 67
    invoke-virtual {v8, v9, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    const-string v7, "verify_type"

    .line 70
    const/4 v9, 0x7

    .line 71
    .line 72
    .line 73
    invoke-virtual {v8, v7, v9}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 74
    .line 75
    const-string v7, "set_identity_type"

    .line 76
    .line 77
    .line 78
    invoke-virtual {v8, v7, v10}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 79
    .line 80
    const-string v7, "check_level"

    .line 81
    .line 82
    .line 83
    invoke-virtual {v8, v7, v10}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0, v4}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 87
    move-result-object v7

    .line 88
    .line 89
    .line 90
    invoke-virtual {v8, v4, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 94
    move-result v4

    .line 95
    .line 96
    .line 97
    invoke-virtual {v8, v3, v4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 101
    move-result-object v3

    .line 102
    .line 103
    .line 104
    invoke-virtual {v8, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 108
    move-result-object v2

    .line 109
    .line 110
    .line 111
    invoke-virtual {v8, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 115
    move-result-object v1

    .line 116
    .line 117
    .line 118
    invoke-virtual {v8, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v6, v8}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContainerId()Ljava/lang/Integer;

    .line 125
    move-result-object v0

    .line 126
    .line 127
    if-eqz v0, :cond_1

    .line 128
    .line 129
    .line 130
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 134
    move-result v0

    .line 135
    .line 136
    .line 137
    invoke-virtual {v5, v0, v6}, Landroidx/fragment/app/FragmentTransaction;->u(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 138
    move-result-object v0

    .line 139
    const/4 v1, 0x0

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->h(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 143
    move-result-object v0

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->k()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    goto :goto_0

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 152
    move-result-object v0

    .line 153
    .line 154
    .line 155
    invoke-static {v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 156
    :cond_1
    :goto_0
    return-void
.end method

.method private final goToConfirmPassword(Lcom/narvii/account/verifyaccount/VerifyAccountType;)V
    .locals 6

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
    new-instance v1, Lcom/narvii/account/verifyaccount/ConfirmPasswordFragment;

    .line 11
    .line 12
    .line 13
    invoke-direct {v1}, Lcom/narvii/account/verifyaccount/ConfirmPasswordFragment;-><init>()V

    .line 14
    .line 15
    .line 16
    const v2, 0x7f010010

    .line 17
    .line 18
    .line 19
    const v3, 0x7f010011

    .line 20
    .line 21
    .line 22
    const v4, 0x7f01000e

    .line 23
    .line 24
    .line 25
    const v5, 0x7f01000f

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v4, v5, v2, v3}, Landroidx/fragment/app/FragmentTransaction;->z(IIII)Landroidx/fragment/app/FragmentTransaction;

    .line 29
    .line 30
    new-instance v2, Landroid/os/Bundle;

    .line 31
    .line 32
    .line 33
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 34
    .line 35
    const-string v3, "verify_type"

    .line 36
    .line 37
    .line 38
    invoke-static {p1}, Lcom/narvii/account/verifyaccount/VerifyAccountTypeKt;->getIntValue(Lcom/narvii/account/verifyaccount/VerifyAccountType;)I

    .line 39
    move-result p1

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, v3, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 43
    .line 44
    const-string p1, "set_identity_type"

    .line 45
    const/4 v3, 0x2

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, p1, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContainerId()Ljava/lang/Integer;

    .line 55
    move-result-object p1

    .line 56
    .line 57
    if-eqz p1, :cond_0

    .line 58
    .line 59
    .line 60
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 64
    move-result p1

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/FragmentTransaction;->u(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 68
    move-result-object p1

    .line 69
    const/4 v0, 0x0

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentTransaction;->h(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 73
    move-result-object p1

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->k()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    goto :goto_0

    .line 78
    :catch_0
    move-exception p1

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 82
    move-result-object p1

    .line 83
    .line 84
    .line 85
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    invoke-static {p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 89
    :cond_0
    :goto_0
    return-void
.end method

.method private final goToUpdateEmail()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/account/verifyaccount/UpdateIdentityVerifyAccount;

    .line 3
    .line 4
    sget-object v1, Lcom/narvii/account/verifyaccount/EmailIdentity;->INSTANCE:Lcom/narvii/account/verifyaccount/EmailIdentity;

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Lcom/narvii/account/verifyaccount/UpdateIdentityVerifyAccount;-><init>(Lcom/narvii/account/verifyaccount/IdentityType;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v0}, Lcom/narvii/account/settings/UpdateEmailSettingsFragment;->goToConfirmPassword(Lcom/narvii/account/verifyaccount/VerifyAccountType;)V

    .line 11
    return-void
.end method

.method public static synthetic n(Lcom/narvii/account/settings/UpdateEmailSettingsFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/account/settings/UpdateEmailSettingsFragment;->updateViews$lambda$4$lambda$3(Lcom/narvii/account/settings/UpdateEmailSettingsFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic o(Lcom/narvii/account/settings/UpdateEmailSettingsFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/account/settings/UpdateEmailSettingsFragment;->onViewCreated$lambda$1(Lcom/narvii/account/settings/UpdateEmailSettingsFragment;Landroid/view/View;)V

    return-void
.end method

.method private static final onViewCreated$lambda$0(Lcom/narvii/account/settings/UpdateEmailSettingsFragment;Landroid/view/View;)V
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
    invoke-direct {p0}, Lcom/narvii/account/settings/UpdateEmailSettingsFragment;->goToAddEmail()V

    .line 9
    return-void
.end method

.method private static final onViewCreated$lambda$1(Lcom/narvii/account/settings/UpdateEmailSettingsFragment;Landroid/view/View;)V
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
    invoke-direct {p0}, Lcom/narvii/account/settings/UpdateEmailSettingsFragment;->goToUpdateEmail()V

    .line 9
    return-void
.end method

.method private static final onViewCreated$lambda$2(Lcom/narvii/account/settings/UpdateEmailSettingsFragment;Landroid/view/View;)V
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
    invoke-direct {p0}, Lcom/narvii/account/settings/UpdateEmailSettingsFragment;->requestSecurityCode()V

    .line 9
    return-void
.end method

.method public static synthetic p(Lcom/narvii/account/settings/UpdateEmailSettingsFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/account/settings/UpdateEmailSettingsFragment;->onViewCreated$lambda$0(Lcom/narvii/account/settings/UpdateEmailSettingsFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic q(Lcom/narvii/account/settings/UpdateEmailSettingsFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/account/settings/UpdateEmailSettingsFragment;->onViewCreated$lambda$2(Lcom/narvii/account/settings/UpdateEmailSettingsFragment;Landroid/view/View;)V

    return-void
.end method

.method private final requestSecurityCode()V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/account/settings/UpdateEmailSettingsFragment;->getEmailText()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    .line 7
    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    move-result-object v2

    .line 10
    .line 11
    new-instance v3, Lcom/narvii/account/settings/UpdateEmailSettingsFragment$requestSecurityCode$1;

    .line 12
    .line 13
    const-class v4, Lcom/narvii/model/api/ApiResponse;

    .line 14
    .line 15
    .line 16
    invoke-direct {v3, p0, v4}, Lcom/narvii/account/settings/UpdateEmailSettingsFragment$requestSecurityCode$1;-><init>(Lcom/narvii/account/settings/UpdateEmailSettingsFragment;Ljava/lang/Class;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/narvii/account/settings/AccountSettingsBaseFragment;->requestSecurityCode(ILjava/lang/String;Ljava/lang/Integer;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 20
    return-void
.end method

.method private static final updateViews$lambda$4$lambda$3(Lcom/narvii/account/settings/UpdateEmailSettingsFragment;Landroid/view/View;)V
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
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 9
    move-result-object p0

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 15
    :cond_0
    return-void
.end method


# virtual methods
.method public final getEmailText()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/account/settings/UpdateEmailSettingsFragment;->emailText$delegate:Lw7/m;

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

.method public final getVerifyCodeHelper()Lcom/narvii/account/verifyaccount/VerifyCodeSharedPrefsHelper;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/account/settings/UpdateEmailSettingsFragment;->verifyCodeHelper:Lcom/narvii/account/verifyaccount/VerifyCodeSharedPrefsHelper;

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

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/app/ActionBar;->hide()V

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    const/16 v0, 0x20

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 36
    :cond_1
    return-void
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
    invoke-super {p0, p1}, Lcom/narvii/account/settings/AccountSettingsBaseFragment;->onCreate(Landroid/os/Bundle;)V

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
    invoke-virtual {p0, p1}, Lcom/narvii/account/settings/UpdateEmailSettingsFragment;->setVerifyCodeHelper(Lcom/narvii/account/verifyaccount/VerifyCodeSharedPrefsHelper;)V

    .line 21
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0
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
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string p2, "inflater"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/narvii/account/settings/UpdateEmailSettingsFragment;->getBinding()Lcom/narvii/amino/databinding/FragmentUpdateEmailSettingsBinding;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/narvii/amino/databinding/FragmentUpdateEmailSettingsBinding;->getRoot()Landroid/widget/LinearLayout;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    const-string p2, "getRoot(...)"

    .line 16
    .line 17
    .line 18
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    return-object p1
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
    invoke-virtual {p0}, Lcom/narvii/account/settings/UpdateEmailSettingsFragment;->updateViews()V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Lcom/narvii/account/settings/UpdateEmailSettingsFragment;->getBinding()Lcom/narvii/amino/databinding/FragmentUpdateEmailSettingsBinding;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    iget-object p1, p1, Lcom/narvii/amino/databinding/FragmentUpdateEmailSettingsBinding;->addEmail:Landroid/widget/Button;

    .line 18
    .line 19
    new-instance p2, Lcom/narvii/account/settings/a;

    .line 20
    .line 21
    .line 22
    invoke-direct {p2, p0}, Lcom/narvii/account/settings/a;-><init>(Lcom/narvii/account/settings/UpdateEmailSettingsFragment;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    .line 27
    .line 28
    invoke-direct {p0}, Lcom/narvii/account/settings/UpdateEmailSettingsFragment;->getBinding()Lcom/narvii/amino/databinding/FragmentUpdateEmailSettingsBinding;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    iget-object p1, p1, Lcom/narvii/amino/databinding/FragmentUpdateEmailSettingsBinding;->changeEmail:Landroid/widget/Button;

    .line 32
    .line 33
    new-instance p2, Lcom/narvii/account/settings/b;

    .line 34
    .line 35
    .line 36
    invoke-direct {p2, p0}, Lcom/narvii/account/settings/b;-><init>(Lcom/narvii/account/settings/UpdateEmailSettingsFragment;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    .line 41
    .line 42
    invoke-direct {p0}, Lcom/narvii/account/settings/UpdateEmailSettingsFragment;->getBinding()Lcom/narvii/amino/databinding/FragmentUpdateEmailSettingsBinding;

    .line 43
    move-result-object p1

    .line 44
    .line 45
    iget-object p1, p1, Lcom/narvii/amino/databinding/FragmentUpdateEmailSettingsBinding;->verifyEmail:Landroid/widget/Button;

    .line 46
    .line 47
    new-instance p2, Lcom/narvii/account/settings/c;

    .line 48
    .line 49
    .line 50
    invoke-direct {p2, p0}, Lcom/narvii/account/settings/c;-><init>(Lcom/narvii/account/settings/UpdateEmailSettingsFragment;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
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

    iput-object p1, p0, Lcom/narvii/account/settings/UpdateEmailSettingsFragment;->verifyCodeHelper:Lcom/narvii/account/verifyaccount/VerifyCodeSharedPrefsHelper;

    return-void
.end method

.method protected updateViews()V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/account/settings/UpdateEmailSettingsFragment;->getBinding()Lcom/narvii/amino/databinding/FragmentUpdateEmailSettingsBinding;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-super {p0}, Lcom/narvii/account/settings/AccountSettingsBaseFragment;->updateViews()V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/narvii/account/settings/UpdateEmailSettingsFragment;->getBinding()Lcom/narvii/amino/databinding/FragmentUpdateEmailSettingsBinding;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    iget-object v1, v1, Lcom/narvii/amino/databinding/FragmentUpdateEmailSettingsBinding;->actionbarBack:Landroid/widget/ImageView;

    .line 14
    .line 15
    new-instance v2, Lcom/narvii/account/settings/d;

    .line 16
    .line 17
    .line 18
    invoke-direct {v2, p0}, Lcom/narvii/account/settings/d;-><init>(Lcom/narvii/account/settings/UpdateEmailSettingsFragment;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/narvii/account/settings/UpdateEmailSettingsFragment;->getEmailText()Ljava/lang/String;

    .line 25
    move-result-object v1

    .line 26
    const/4 v2, 0x0

    .line 27
    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    .line 31
    invoke-static {v1}, Lkotlin/text/k;->z(Ljava/lang/CharSequence;)Z

    .line 32
    move-result v1

    .line 33
    const/4 v3, 0x1

    .line 34
    xor-int/2addr v1, v3

    .line 35
    .line 36
    if-ne v1, v3, :cond_0

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    move v3, v2

    .line 39
    .line 40
    :goto_0
    if-eqz v3, :cond_2

    .line 41
    .line 42
    iget-object v1, v0, Lcom/narvii/amino/databinding/FragmentUpdateEmailSettingsBinding;->email:Landroid/widget/TextView;

    .line 43
    .line 44
    if-nez v1, :cond_1

    .line 45
    goto :goto_1

    .line 46
    .line 47
    .line 48
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/account/settings/UpdateEmailSettingsFragment;->getEmailText()Ljava/lang/String;

    .line 49
    move-result-object v4

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    goto :goto_1

    .line 54
    .line 55
    :cond_2
    iget-object v1, v0, Lcom/narvii/amino/databinding/FragmentUpdateEmailSettingsBinding;->email:Landroid/widget/TextView;

    .line 56
    .line 57
    if-eqz v1, :cond_3

    .line 58
    .line 59
    .line 60
    const v4, 0x7f12004b

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 64
    .line 65
    .line 66
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/narvii/account/settings/UpdateEmailSettingsFragment;->getBinding()Lcom/narvii/amino/databinding/FragmentUpdateEmailSettingsBinding;

    .line 67
    move-result-object v1

    .line 68
    .line 69
    iget-object v1, v1, Lcom/narvii/amino/databinding/FragmentUpdateEmailSettingsBinding;->addEmail:Landroid/widget/Button;

    .line 70
    .line 71
    const/16 v4, 0x8

    .line 72
    .line 73
    if-eqz v3, :cond_4

    .line 74
    move v5, v4

    .line 75
    goto :goto_2

    .line 76
    :cond_4
    move v5, v2

    .line 77
    .line 78
    .line 79
    :goto_2
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 80
    .line 81
    .line 82
    invoke-direct {p0}, Lcom/narvii/account/settings/UpdateEmailSettingsFragment;->getBinding()Lcom/narvii/amino/databinding/FragmentUpdateEmailSettingsBinding;

    .line 83
    move-result-object v1

    .line 84
    .line 85
    iget-object v1, v1, Lcom/narvii/amino/databinding/FragmentUpdateEmailSettingsBinding;->changeEmail:Landroid/widget/Button;

    .line 86
    .line 87
    if-eqz v3, :cond_5

    .line 88
    move v5, v2

    .line 89
    goto :goto_3

    .line 90
    :cond_5
    move v5, v4

    .line 91
    .line 92
    .line 93
    :goto_3
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 94
    .line 95
    iget-object v0, v0, Lcom/narvii/amino/databinding/FragmentUpdateEmailSettingsBinding;->desc:Landroid/widget/TextView;

    .line 96
    .line 97
    if-nez v0, :cond_6

    .line 98
    goto :goto_5

    .line 99
    .line 100
    :cond_6
    if-nez v3, :cond_7

    .line 101
    const/4 v1, 0x0

    .line 102
    goto :goto_4

    .line 103
    .line 104
    :cond_7
    iget-object v1, p0, Lcom/narvii/account/settings/AccountSettingsBaseFragment;->accountService:Lcom/narvii/account/AccountService;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->hasEmailActivation()Z

    .line 108
    move-result v1

    .line 109
    .line 110
    if-eqz v1, :cond_8

    .line 111
    .line 112
    .line 113
    const v1, 0x7f12005b

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 117
    move-result-object v1

    .line 118
    .line 119
    new-instance v5, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    const-string v1, " \ud83d\udc4f"

    .line 128
    .line 129
    .line 130
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    move-result-object v1

    .line 135
    goto :goto_4

    .line 136
    .line 137
    .line 138
    :cond_8
    const v1, 0x7f12005a

    .line 139
    .line 140
    .line 141
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 142
    move-result-object v1

    .line 143
    .line 144
    new-instance v5, Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    const-string v1, " \ud83d\ude31"

    .line 153
    .line 154
    .line 155
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    move-result-object v1

    .line 160
    .line 161
    .line 162
    :goto_4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    .line 164
    .line 165
    :goto_5
    invoke-direct {p0}, Lcom/narvii/account/settings/UpdateEmailSettingsFragment;->getBinding()Lcom/narvii/amino/databinding/FragmentUpdateEmailSettingsBinding;

    .line 166
    move-result-object v0

    .line 167
    .line 168
    iget-object v0, v0, Lcom/narvii/amino/databinding/FragmentUpdateEmailSettingsBinding;->verifyEmail:Landroid/widget/Button;

    .line 169
    .line 170
    if-eqz v3, :cond_9

    .line 171
    .line 172
    iget-object v1, p0, Lcom/narvii/account/settings/AccountSettingsBaseFragment;->accountService:Lcom/narvii/account/AccountService;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->hasEmailActivation()Z

    .line 176
    move-result v1

    .line 177
    .line 178
    if-nez v1, :cond_9

    .line 179
    goto :goto_6

    .line 180
    :cond_9
    move v2, v4

    .line 181
    .line 182
    .line 183
    :goto_6
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 184
    return-void
.end method
