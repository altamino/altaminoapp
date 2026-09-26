.class public final Lcom/narvii/account/verifyaccount/VerifyAccountChooseIdentityFragment;
.super Lcom/narvii/account/AccountBaseFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/account/verifyaccount/VerifyAccountChooseIdentityFragment$Companion;
    }
.end annotation


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

.field public static final Companion:Lcom/narvii/account/verifyaccount/VerifyAccountChooseIdentityFragment$Companion;
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
.field private final binding$delegate:Lkotlin/properties/d;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final email$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final phone$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final verifyAccountType$delegate:Lw7/m;
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
    const-string v3, "getBinding()Lcom/narvii/amino/databinding/FragmentVerifyAccountChooseIdentityBinding;"

    .line 10
    .line 11
    const-class v4, Lcom/narvii/account/verifyaccount/VerifyAccountChooseIdentityFragment;

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
    sput-object v0, Lcom/narvii/account/verifyaccount/VerifyAccountChooseIdentityFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 24
    .line 25
    new-instance v0, Lcom/narvii/account/verifyaccount/VerifyAccountChooseIdentityFragment$Companion;

    .line 26
    const/4 v1, 0x0

    .line 27
    .line 28
    .line 29
    invoke-direct {v0, v1}, Lcom/narvii/account/verifyaccount/VerifyAccountChooseIdentityFragment$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    .line 30
    .line 31
    sput-object v0, Lcom/narvii/account/verifyaccount/VerifyAccountChooseIdentityFragment;->Companion:Lcom/narvii/account/verifyaccount/VerifyAccountChooseIdentityFragment$Companion;

    .line 32
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
    new-instance v0, Lcom/narvii/account/verifyaccount/VerifyAccountChooseIdentityFragment$email$2;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/narvii/account/verifyaccount/VerifyAccountChooseIdentityFragment$email$2;-><init>(Lcom/narvii/account/verifyaccount/VerifyAccountChooseIdentityFragment;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    iput-object v0, p0, Lcom/narvii/account/verifyaccount/VerifyAccountChooseIdentityFragment;->email$delegate:Lw7/m;

    .line 15
    .line 16
    new-instance v0, Lcom/narvii/account/verifyaccount/VerifyAccountChooseIdentityFragment$phone$2;

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, p0}, Lcom/narvii/account/verifyaccount/VerifyAccountChooseIdentityFragment$phone$2;-><init>(Lcom/narvii/account/verifyaccount/VerifyAccountChooseIdentityFragment;)V

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    iput-object v0, p0, Lcom/narvii/account/verifyaccount/VerifyAccountChooseIdentityFragment;->phone$delegate:Lw7/m;

    .line 26
    .line 27
    new-instance v0, Lcom/narvii/account/verifyaccount/VerifyAccountChooseIdentityFragment$verifyAccountType$2;

    .line 28
    .line 29
    .line 30
    invoke-direct {v0, p0}, Lcom/narvii/account/verifyaccount/VerifyAccountChooseIdentityFragment$verifyAccountType$2;-><init>(Lcom/narvii/account/verifyaccount/VerifyAccountChooseIdentityFragment;)V

    .line 31
    .line 32
    .line 33
    invoke-static {v0}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    iput-object v0, p0, Lcom/narvii/account/verifyaccount/VerifyAccountChooseIdentityFragment;->verifyAccountType$delegate:Lw7/m;

    .line 37
    .line 38
    sget-object v0, Lcom/narvii/account/verifyaccount/VerifyAccountChooseIdentityFragment$binding$2;->INSTANCE:Lcom/narvii/account/verifyaccount/VerifyAccountChooseIdentityFragment$binding$2;

    .line 39
    .line 40
    .line 41
    invoke-static {p0, v0}, Lcom/narvii/util/FragmentExtensionsKt;->viewBinding(Landroidx/fragment/app/Fragment;Le8/l;)Lkotlin/properties/d;

    .line 42
    move-result-object v0

    .line 43
    .line 44
    iput-object v0, p0, Lcom/narvii/account/verifyaccount/VerifyAccountChooseIdentityFragment;->binding$delegate:Lkotlin/properties/d;

    .line 45
    return-void
.end method

.method public static final synthetic access$dismissProgress(Lcom/narvii/account/verifyaccount/VerifyAccountChooseIdentityFragment;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/account/AccountBaseFragment;->dismissProgress()V

    .line 4
    return-void
.end method

.method public static final synthetic access$goToCodeVerify(Lcom/narvii/account/verifyaccount/VerifyAccountChooseIdentityFragment;Lcom/narvii/account/verifyaccount/IdentityType;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/account/verifyaccount/VerifyAccountChooseIdentityFragment;->goToCodeVerify(Lcom/narvii/account/verifyaccount/IdentityType;)V

    .line 4
    return-void
.end method

.method private final getBinding()Lcom/narvii/amino/databinding/FragmentVerifyAccountChooseIdentityBinding;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/account/verifyaccount/VerifyAccountChooseIdentityFragment;->binding$delegate:Lkotlin/properties/d;

    .line 3
    .line 4
    sget-object v1, Lcom/narvii/account/verifyaccount/VerifyAccountChooseIdentityFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

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
    check-cast v0, Lcom/narvii/amino/databinding/FragmentVerifyAccountChooseIdentityBinding;

    .line 14
    return-object v0
.end method

.method private final getEmail()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/account/verifyaccount/VerifyAccountChooseIdentityFragment;->email$delegate:Lw7/m;

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
    iget-object v0, p0, Lcom/narvii/account/verifyaccount/VerifyAccountChooseIdentityFragment;->phone$delegate:Lw7/m;

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
    iget-object v0, p0, Lcom/narvii/account/verifyaccount/VerifyAccountChooseIdentityFragment;->verifyAccountType$delegate:Lw7/m;

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

.method private final goToCodeVerify(Lcom/narvii/account/verifyaccount/IdentityType;)V
    .locals 14

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
    const-string v5, "old_password"

    .line 13
    .line 14
    const-string/jumbo v6, "set_identity_type"

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 18
    move-result v7

    .line 19
    .line 20
    if-nez v7, :cond_0

    .line 21
    return-void

    .line 22
    .line 23
    .line 24
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 25
    move-result-object v7

    .line 26
    .line 27
    .line 28
    invoke-virtual {v7}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 29
    move-result-object v7

    .line 30
    .line 31
    .line 32
    const v8, 0x7f010010

    .line 33
    .line 34
    .line 35
    const v9, 0x7f010011

    .line 36
    .line 37
    .line 38
    const v10, 0x7f01000e

    .line 39
    .line 40
    .line 41
    const v11, 0x7f01000f

    .line 42
    .line 43
    .line 44
    invoke-virtual {v7, v10, v11, v8, v9}, Landroidx/fragment/app/FragmentTransaction;->z(IIII)Landroidx/fragment/app/FragmentTransaction;

    .line 45
    .line 46
    new-instance v8, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;

    .line 47
    .line 48
    .line 49
    invoke-direct {v8}, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;-><init>()V

    .line 50
    .line 51
    new-instance v9, Landroid/os/Bundle;

    .line 52
    .line 53
    .line 54
    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 55
    .line 56
    instance-of v10, p1, Lcom/narvii/account/verifyaccount/EmailIdentity;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    const/4 v11, 0x1

    .line 58
    const/4 v12, 0x2

    .line 59
    .line 60
    const-string v13, "identity_to_verify_type"

    .line 61
    .line 62
    if-eqz v10, :cond_1

    .line 63
    .line 64
    .line 65
    :try_start_1
    invoke-virtual {v9, v13, v12}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 66
    .line 67
    const-string p1, "email"

    .line 68
    .line 69
    .line 70
    invoke-direct {p0}, Lcom/narvii/account/verifyaccount/VerifyAccountChooseIdentityFragment;->getEmail()Ljava/lang/String;

    .line 71
    move-result-object v10

    .line 72
    .line 73
    .line 74
    invoke-virtual {v9, p1, v10}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    goto :goto_0

    .line 76
    :catch_0
    move-exception p1

    .line 77
    .line 78
    goto/16 :goto_2

    .line 79
    .line 80
    :cond_1
    instance-of p1, p1, Lcom/narvii/account/verifyaccount/PhoneIdentity;

    .line 81
    .line 82
    if-eqz p1, :cond_2

    .line 83
    .line 84
    .line 85
    invoke-virtual {v9, v13, v11}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 86
    .line 87
    const-string p1, "phone"

    .line 88
    .line 89
    .line 90
    invoke-direct {p0}, Lcom/narvii/account/verifyaccount/VerifyAccountChooseIdentityFragment;->getPhone()Ljava/lang/String;

    .line 91
    move-result-object v10

    .line 92
    .line 93
    .line 94
    invoke-virtual {v9, p1, v10}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .line 96
    :cond_2
    :goto_0
    const-string/jumbo p1, "verify_type"

    .line 97
    .line 98
    .line 99
    invoke-direct {p0}, Lcom/narvii/account/verifyaccount/VerifyAccountChooseIdentityFragment;->getVerifyAccountType()Lcom/narvii/account/verifyaccount/VerifyAccountType;

    .line 100
    move-result-object v10

    .line 101
    .line 102
    .line 103
    invoke-static {v10}, Lcom/narvii/account/verifyaccount/VerifyAccountTypeKt;->getIntValue(Lcom/narvii/account/verifyaccount/VerifyAccountType;)I

    .line 104
    move-result v10

    .line 105
    .line 106
    .line 107
    invoke-virtual {v9, p1, v10}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0, v6}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 111
    move-result p1

    .line 112
    .line 113
    .line 114
    invoke-virtual {v9, v6, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0, v5}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 118
    move-result-object p1

    .line 119
    .line 120
    .line 121
    invoke-virtual {v9, v5, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    invoke-direct {p0}, Lcom/narvii/account/verifyaccount/VerifyAccountChooseIdentityFragment;->getVerifyAccountType()Lcom/narvii/account/verifyaccount/VerifyAccountType;

    .line 125
    move-result-object p1

    .line 126
    .line 127
    instance-of v5, p1, Lcom/narvii/account/verifyaccount/AddIdentityVerifyAccount;

    .line 128
    .line 129
    if-eqz v5, :cond_3

    .line 130
    goto :goto_1

    .line 131
    .line 132
    :cond_3
    instance-of p1, p1, Lcom/narvii/account/verifyaccount/UpdateIdentityVerifyAccount;

    .line 133
    .line 134
    if-eqz p1, :cond_4

    .line 135
    goto :goto_1

    .line 136
    :cond_4
    move v11, v12

    .line 137
    .line 138
    :goto_1
    const-string p1, "check_level"

    .line 139
    .line 140
    .line 141
    invoke-virtual {v9, p1, v11}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p0, v4}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 145
    move-result-object p1

    .line 146
    .line 147
    .line 148
    invoke-virtual {v9, v4, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 152
    move-result p1

    .line 153
    .line 154
    .line 155
    invoke-virtual {v9, v3, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 159
    move-result-object p1

    .line 160
    .line 161
    .line 162
    invoke-virtual {v9, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 166
    move-result-object p1

    .line 167
    .line 168
    .line 169
    invoke-virtual {v9, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 173
    move-result-object p1

    .line 174
    .line 175
    .line 176
    invoke-virtual {v9, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v8, v9}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContainerId()Ljava/lang/Integer;

    .line 183
    move-result-object p1

    .line 184
    const/4 v0, 0x0

    .line 185
    .line 186
    if-eqz p1, :cond_5

    .line 187
    .line 188
    .line 189
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 193
    move-result p1

    .line 194
    .line 195
    .line 196
    invoke-virtual {v7, p1, v8}, Landroidx/fragment/app/FragmentTransaction;->u(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 197
    move-result-object p1

    .line 198
    .line 199
    .line 200
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentTransaction;->h(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 201
    move-result-object p1

    .line 202
    .line 203
    .line 204
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->k()I

    .line 205
    goto :goto_3

    .line 206
    .line 207
    .line 208
    :cond_5
    const p1, 0x7f0a05ff

    .line 209
    .line 210
    .line 211
    invoke-virtual {v7, p1, v8}, Landroidx/fragment/app/FragmentTransaction;->u(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 212
    move-result-object p1

    .line 213
    .line 214
    .line 215
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentTransaction;->h(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 216
    move-result-object p1

    .line 217
    .line 218
    .line 219
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->k()I
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 220
    goto :goto_3

    .line 221
    .line 222
    .line 223
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 224
    move-result-object p1

    .line 225
    .line 226
    .line 227
    invoke-static {p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 228
    :goto_3
    return-void
.end method

.method public static synthetic q(Lcom/narvii/account/verifyaccount/VerifyAccountChooseIdentityFragment;Lcom/narvii/amino/databinding/FragmentVerifyAccountChooseIdentityBinding;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/account/verifyaccount/VerifyAccountChooseIdentityFragment;->setupPhoneNumberBtn$lambda$17$lambda$16(Lcom/narvii/account/verifyaccount/VerifyAccountChooseIdentityFragment;Lcom/narvii/amino/databinding/FragmentVerifyAccountChooseIdentityBinding;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic r(Lcom/narvii/account/verifyaccount/VerifyAccountChooseIdentityFragment;Lcom/narvii/amino/databinding/FragmentVerifyAccountChooseIdentityBinding;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/account/verifyaccount/VerifyAccountChooseIdentityFragment;->setupEmailBtn$lambda$8$lambda$7(Lcom/narvii/account/verifyaccount/VerifyAccountChooseIdentityFragment;Lcom/narvii/amino/databinding/FragmentVerifyAccountChooseIdentityBinding;Landroid/view/View;)V

    return-void
.end method

.method private final setupEmailBtn()V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/account/verifyaccount/VerifyAccountChooseIdentityFragment;->getBinding()Lcom/narvii/amino/databinding/FragmentVerifyAccountChooseIdentityBinding;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget-object v1, v0, Lcom/narvii/amino/databinding/FragmentVerifyAccountChooseIdentityBinding;->emailBtn:Landroid/widget/Button;

    .line 7
    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const v3, 0x7f120033

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 15
    move-result-object v3

    .line 16
    .line 17
    .line 18
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Lcom/narvii/account/verifyaccount/VerifyAccountChooseIdentityFragment;->getEmail()Ljava/lang/String;

    .line 22
    move-result-object v3

    .line 23
    .line 24
    if-eqz v3, :cond_0

    .line 25
    .line 26
    const-string v4, "\n"

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object v2

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    .line 41
    iget-object v1, v0, Lcom/narvii/amino/databinding/FragmentVerifyAccountChooseIdentityBinding;->emailBtn:Landroid/widget/Button;

    .line 42
    .line 43
    .line 44
    invoke-direct {p0}, Lcom/narvii/account/verifyaccount/VerifyAccountChooseIdentityFragment;->getPhone()Ljava/lang/String;

    .line 45
    move-result-object v2

    .line 46
    .line 47
    if-eqz v2, :cond_2

    .line 48
    .line 49
    .line 50
    invoke-static {v2}, Lkotlin/text/k;->z(Ljava/lang/CharSequence;)Z

    .line 51
    move-result v2

    .line 52
    const/4 v3, 0x1

    .line 53
    xor-int/2addr v2, v3

    .line 54
    .line 55
    if-ne v2, v3, :cond_2

    .line 56
    .line 57
    .line 58
    invoke-direct {p0}, Lcom/narvii/account/verifyaccount/VerifyAccountChooseIdentityFragment;->getEmail()Ljava/lang/String;

    .line 59
    move-result-object v2

    .line 60
    .line 61
    if-eqz v2, :cond_1

    .line 62
    .line 63
    .line 64
    invoke-static {v2}, Lkotlin/text/k;->z(Ljava/lang/CharSequence;)Z

    .line 65
    move-result v2

    .line 66
    .line 67
    if-nez v2, :cond_1

    .line 68
    goto :goto_0

    .line 69
    .line 70
    :cond_1
    const/16 v2, 0x8

    .line 71
    goto :goto_1

    .line 72
    :cond_2
    :goto_0
    const/4 v2, 0x0

    .line 73
    .line 74
    .line 75
    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 76
    .line 77
    iget-object v1, v0, Lcom/narvii/amino/databinding/FragmentVerifyAccountChooseIdentityBinding;->emailBtn:Landroid/widget/Button;

    .line 78
    .line 79
    new-instance v2, Lcom/narvii/account/verifyaccount/i;

    .line 80
    .line 81
    .line 82
    invoke-direct {v2, p0, v0}, Lcom/narvii/account/verifyaccount/i;-><init>(Lcom/narvii/account/verifyaccount/VerifyAccountChooseIdentityFragment;Lcom/narvii/amino/databinding/FragmentVerifyAccountChooseIdentityBinding;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    return-void
.end method

.method private static final setupEmailBtn$lambda$8$lambda$7(Lcom/narvii/account/verifyaccount/VerifyAccountChooseIdentityFragment;Lcom/narvii/amino/databinding/FragmentVerifyAccountChooseIdentityBinding;Landroid/view/View;)V
    .locals 3

    .line 1
    .line 2
    const-string/jumbo p2, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string p2, "$this_with"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lcom/narvii/account/verifyaccount/VerifyAccountChooseIdentityFragment;->getEmail()Ljava/lang/String;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-direct {p0, p1}, Lcom/narvii/account/verifyaccount/VerifyAccountChooseIdentityFragment;->verifyEmail(Ljava/lang/String;)V

    .line 20
    .line 21
    sget-object p0, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 22
    goto :goto_1

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    .line 33
    const p2, 0x7f010010

    .line 34
    .line 35
    .line 36
    const v0, 0x7f010011

    .line 37
    .line 38
    .line 39
    const v1, 0x7f01000e

    .line 40
    .line 41
    .line 42
    const v2, 0x7f01000f

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v1, v2, p2, v0}, Landroidx/fragment/app/FragmentTransaction;->z(IIII)Landroidx/fragment/app/FragmentTransaction;

    .line 46
    .line 47
    new-instance p2, Lcom/narvii/account/resetpassword/EmailResetPasswordFragment;

    .line 48
    .line 49
    .line 50
    invoke-direct {p2}, Lcom/narvii/account/resetpassword/EmailResetPasswordFragment;-><init>()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContainerId()Ljava/lang/Integer;

    .line 54
    move-result-object p0

    .line 55
    const/4 v0, 0x0

    .line 56
    .line 57
    const-string v1, "emailReset"

    .line 58
    .line 59
    if-eqz p0, :cond_1

    .line 60
    .line 61
    .line 62
    invoke-static {p0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 66
    move-result p0

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, p0, p2, v1}, Landroidx/fragment/app/FragmentTransaction;->v(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 70
    move-result-object p0

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentTransaction;->h(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 74
    move-result-object p0

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->k()I

    .line 78
    goto :goto_0

    .line 79
    .line 80
    .line 81
    :cond_1
    const p0, 0x7f0a05ff

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, p0, p2, v1}, Landroidx/fragment/app/FragmentTransaction;->v(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 85
    move-result-object p0

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentTransaction;->h(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 89
    move-result-object p0

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->k()I

    .line 93
    .line 94
    :goto_0
    const-string p0, "run(...)"

    .line 95
    .line 96
    .line 97
    invoke-static {p1, p0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    :goto_1
    return-void
.end method

.method private final setupPhoneNumberBtn()V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/account/verifyaccount/VerifyAccountChooseIdentityFragment;->getBinding()Lcom/narvii/amino/databinding/FragmentVerifyAccountChooseIdentityBinding;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget-object v1, v0, Lcom/narvii/amino/databinding/FragmentVerifyAccountChooseIdentityBinding;->phoneBtn:Landroid/widget/Button;

    .line 7
    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const v3, 0x7f120054

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 15
    move-result-object v3

    .line 16
    .line 17
    .line 18
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Lcom/narvii/account/verifyaccount/VerifyAccountChooseIdentityFragment;->getPhone()Ljava/lang/String;

    .line 22
    move-result-object v3

    .line 23
    .line 24
    if-eqz v3, :cond_0

    .line 25
    .line 26
    const-string v4, "\n"

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object v2

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    .line 41
    iget-object v1, v0, Lcom/narvii/amino/databinding/FragmentVerifyAccountChooseIdentityBinding;->phoneBtn:Landroid/widget/Button;

    .line 42
    .line 43
    .line 44
    invoke-direct {p0}, Lcom/narvii/account/verifyaccount/VerifyAccountChooseIdentityFragment;->getEmail()Ljava/lang/String;

    .line 45
    move-result-object v2

    .line 46
    .line 47
    if-eqz v2, :cond_2

    .line 48
    .line 49
    .line 50
    invoke-static {v2}, Lkotlin/text/k;->z(Ljava/lang/CharSequence;)Z

    .line 51
    move-result v2

    .line 52
    const/4 v3, 0x1

    .line 53
    xor-int/2addr v2, v3

    .line 54
    .line 55
    if-ne v2, v3, :cond_2

    .line 56
    .line 57
    .line 58
    invoke-direct {p0}, Lcom/narvii/account/verifyaccount/VerifyAccountChooseIdentityFragment;->getPhone()Ljava/lang/String;

    .line 59
    move-result-object v2

    .line 60
    .line 61
    if-eqz v2, :cond_1

    .line 62
    .line 63
    .line 64
    invoke-static {v2}, Lkotlin/text/k;->z(Ljava/lang/CharSequence;)Z

    .line 65
    move-result v2

    .line 66
    .line 67
    if-nez v2, :cond_1

    .line 68
    goto :goto_0

    .line 69
    .line 70
    :cond_1
    const/16 v2, 0x8

    .line 71
    goto :goto_1

    .line 72
    :cond_2
    :goto_0
    const/4 v2, 0x0

    .line 73
    .line 74
    .line 75
    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 76
    .line 77
    iget-object v1, v0, Lcom/narvii/amino/databinding/FragmentVerifyAccountChooseIdentityBinding;->phoneBtn:Landroid/widget/Button;

    .line 78
    .line 79
    new-instance v2, Lcom/narvii/account/verifyaccount/j;

    .line 80
    .line 81
    .line 82
    invoke-direct {v2, p0, v0}, Lcom/narvii/account/verifyaccount/j;-><init>(Lcom/narvii/account/verifyaccount/VerifyAccountChooseIdentityFragment;Lcom/narvii/amino/databinding/FragmentVerifyAccountChooseIdentityBinding;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    return-void
.end method

.method private static final setupPhoneNumberBtn$lambda$17$lambda$16(Lcom/narvii/account/verifyaccount/VerifyAccountChooseIdentityFragment;Lcom/narvii/amino/databinding/FragmentVerifyAccountChooseIdentityBinding;Landroid/view/View;)V
    .locals 3

    .line 1
    .line 2
    const-string/jumbo p2, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string p2, "$this_with"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lcom/narvii/account/verifyaccount/VerifyAccountChooseIdentityFragment;->getPhone()Ljava/lang/String;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-direct {p0, p1}, Lcom/narvii/account/verifyaccount/VerifyAccountChooseIdentityFragment;->verifyPhone(Ljava/lang/String;)V

    .line 20
    .line 21
    sget-object p0, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 22
    goto :goto_1

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    .line 33
    const p2, 0x7f010010

    .line 34
    .line 35
    .line 36
    const v0, 0x7f010011

    .line 37
    .line 38
    .line 39
    const v1, 0x7f01000e

    .line 40
    .line 41
    .line 42
    const v2, 0x7f01000f

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v1, v2, p2, v0}, Landroidx/fragment/app/FragmentTransaction;->z(IIII)Landroidx/fragment/app/FragmentTransaction;

    .line 46
    .line 47
    new-instance p2, Lcom/narvii/account/resetpassword/MobileResetPasswordFragment;

    .line 48
    .line 49
    .line 50
    invoke-direct {p2}, Lcom/narvii/account/resetpassword/MobileResetPasswordFragment;-><init>()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContainerId()Ljava/lang/Integer;

    .line 54
    move-result-object p0

    .line 55
    const/4 v0, 0x0

    .line 56
    .line 57
    const-string v1, "mobileReset"

    .line 58
    .line 59
    if-eqz p0, :cond_1

    .line 60
    .line 61
    .line 62
    invoke-static {p0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 66
    move-result p0

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, p0, p2, v1}, Landroidx/fragment/app/FragmentTransaction;->v(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 70
    move-result-object p0

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentTransaction;->h(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 74
    move-result-object p0

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->k()I

    .line 78
    goto :goto_0

    .line 79
    .line 80
    .line 81
    :cond_1
    const p0, 0x7f0a05ff

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, p0, p2, v1}, Landroidx/fragment/app/FragmentTransaction;->v(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 85
    move-result-object p0

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentTransaction;->h(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 89
    move-result-object p0

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->k()I

    .line 93
    .line 94
    :goto_0
    const-string p0, "run(...)"

    .line 95
    .line 96
    .line 97
    invoke-static {p1, p0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    :goto_1
    return-void
.end method

.method private final verifyEmail(Ljava/lang/String;)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    move-result-object v1

    .line 6
    .line 7
    new-instance v2, Lcom/narvii/account/verifyaccount/VerifyAccountChooseIdentityFragment$verifyEmail$1;

    .line 8
    .line 9
    const-class v3, Lcom/narvii/model/api/ApiResponse;

    .line 10
    .line 11
    .line 12
    invoke-direct {v2, p0, p1, v3}, Lcom/narvii/account/verifyaccount/VerifyAccountChooseIdentityFragment$verifyEmail$1;-><init>(Lcom/narvii/account/verifyaccount/VerifyAccountChooseIdentityFragment;Ljava/lang/String;Ljava/lang/Class;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/narvii/account/AccountBaseFragment;->requestSecurityCode(ILjava/lang/String;Ljava/lang/Integer;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 16
    return-void
.end method

.method private final verifyPhone(Ljava/lang/String;)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    move-result-object v0

    .line 6
    .line 7
    new-instance v1, Lcom/narvii/account/verifyaccount/VerifyAccountChooseIdentityFragment$verifyPhone$1;

    .line 8
    .line 9
    const-class v2, Lcom/narvii/model/api/ApiResponse;

    .line 10
    .line 11
    .line 12
    invoke-direct {v1, p0, p1, v2}, Lcom/narvii/account/verifyaccount/VerifyAccountChooseIdentityFragment$verifyPhone$1;-><init>(Lcom/narvii/account/verifyaccount/VerifyAccountChooseIdentityFragment;Ljava/lang/String;Ljava/lang/Class;)V

    .line 13
    .line 14
    const/16 v2, 0x8

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v2, p1, v0, v1}, Lcom/narvii/account/AccountBaseFragment;->requestSecurityCode(ILjava/lang/String;Ljava/lang/Integer;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 18
    return-void
.end method


# virtual methods
.method protected addStatusBarMargin()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "VerifyAccountChooseIdentity"

    return-object v0
.end method

.method public final getVerifyCodeHelper()Lcom/narvii/account/verifyaccount/VerifyCodeSharedPrefsHelper;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/account/verifyaccount/VerifyAccountChooseIdentityFragment;->verifyCodeHelper:Lcom/narvii/account/verifyaccount/VerifyCodeSharedPrefsHelper;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-object v0

    .line 6
    .line 7
    :cond_0
    const-string/jumbo v0, "verifyCodeHelper"

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
    invoke-virtual {p0, p1}, Lcom/narvii/account/verifyaccount/VerifyAccountChooseIdentityFragment;->setVerifyCodeHelper(Lcom/narvii/account/verifyaccount/VerifyCodeSharedPrefsHelper;)V

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
    invoke-direct {p0}, Lcom/narvii/account/verifyaccount/VerifyAccountChooseIdentityFragment;->getBinding()Lcom/narvii/amino/databinding/FragmentVerifyAccountChooseIdentityBinding;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/narvii/amino/databinding/FragmentVerifyAccountChooseIdentityBinding;->getRoot()Landroid/widget/LinearLayout;

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
    const-string/jumbo v0, "view"

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
    invoke-direct {p0}, Lcom/narvii/account/verifyaccount/VerifyAccountChooseIdentityFragment;->getVerifyAccountType()Lcom/narvii/account/verifyaccount/VerifyAccountType;

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
    invoke-direct {p0}, Lcom/narvii/account/verifyaccount/VerifyAccountChooseIdentityFragment;->getEmail()Ljava/lang/String;

    .line 37
    move-result-object p2

    .line 38
    const/4 v1, 0x1

    .line 39
    .line 40
    if-eqz p2, :cond_0

    .line 41
    .line 42
    .line 43
    invoke-static {p2}, Lkotlin/text/k;->z(Ljava/lang/CharSequence;)Z

    .line 44
    move-result p2

    .line 45
    xor-int/2addr p2, v1

    .line 46
    .line 47
    if-ne p2, v1, :cond_0

    .line 48
    goto :goto_0

    .line 49
    .line 50
    .line 51
    :cond_0
    invoke-direct {p0}, Lcom/narvii/account/verifyaccount/VerifyAccountChooseIdentityFragment;->getPhone()Ljava/lang/String;

    .line 52
    move-result-object p2

    .line 53
    .line 54
    if-eqz p2, :cond_1

    .line 55
    .line 56
    .line 57
    invoke-static {p2}, Lkotlin/text/k;->z(Ljava/lang/CharSequence;)Z

    .line 58
    move-result p2

    .line 59
    xor-int/2addr p2, v1

    .line 60
    .line 61
    if-ne p2, v1, :cond_1

    .line 62
    .line 63
    .line 64
    :goto_0
    const p2, 0x7f120464

    .line 65
    goto :goto_1

    .line 66
    .line 67
    .line 68
    :cond_1
    const p2, 0x7f121256

    .line 69
    .line 70
    .line 71
    :goto_1
    const v1, 0x7f0a0eb8

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 75
    move-result-object v1

    .line 76
    .line 77
    .line 78
    invoke-static {v1, v0}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    .line 80
    check-cast v1, Landroid/widget/TextView;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 84
    .line 85
    .line 86
    invoke-direct {p0}, Lcom/narvii/account/verifyaccount/VerifyAccountChooseIdentityFragment;->getVerifyAccountType()Lcom/narvii/account/verifyaccount/VerifyAccountType;

    .line 87
    move-result-object p2

    .line 88
    .line 89
    instance-of p2, p2, Lcom/narvii/account/verifyaccount/ForgotPassVerifyAccount;

    .line 90
    .line 91
    if-eqz p2, :cond_2

    .line 92
    .line 93
    .line 94
    const p2, 0x7f1207b7

    .line 95
    goto :goto_2

    .line 96
    .line 97
    .line 98
    :cond_2
    const p2, 0x7f121257

    .line 99
    .line 100
    .line 101
    :goto_2
    const v1, 0x7f0a0425

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 105
    move-result-object p1

    .line 106
    .line 107
    .line 108
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    .line 110
    check-cast p1, Landroid/widget/TextView;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 114
    .line 115
    .line 116
    invoke-direct {p0}, Lcom/narvii/account/verifyaccount/VerifyAccountChooseIdentityFragment;->setupEmailBtn()V

    .line 117
    .line 118
    .line 119
    invoke-direct {p0}, Lcom/narvii/account/verifyaccount/VerifyAccountChooseIdentityFragment;->setupPhoneNumberBtn()V

    invoke-direct {p0}, Lcom/narvii/account/verifyaccount/VerifyAccountChooseIdentityFragment;->getBinding()Lcom/narvii/amino/databinding/FragmentVerifyAccountChooseIdentityBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/narvii/amino/databinding/FragmentVerifyAccountChooseIdentityBinding;->emailBtn:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 120
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

    iput-object p1, p0, Lcom/narvii/account/verifyaccount/VerifyAccountChooseIdentityFragment;->verifyCodeHelper:Lcom/narvii/account/verifyaccount/VerifyCodeSharedPrefsHelper;

    return-void
.end method
