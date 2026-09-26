.class public final Lcom/narvii/account/verifyaccount/ConfirmPasswordFragment;
.super Lcom/narvii/account/settings/AccountSettingsBaseFragment;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/app/FragmentOnBackListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/account/verifyaccount/ConfirmPasswordFragment$Companion;
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

.field public static final Companion:Lcom/narvii/account/verifyaccount/ConfirmPasswordFragment$Companion;
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

.field private passEdit:Landroid/widget/EditText;

.field private final verifyAccountType$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


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
    const-string v3, "getBinding()Lcom/narvii/amino/databinding/FragmentConfirmPasswordBinding;"

    .line 10
    .line 11
    const-class v4, Lcom/narvii/account/verifyaccount/ConfirmPasswordFragment;

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
    sput-object v0, Lcom/narvii/account/verifyaccount/ConfirmPasswordFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 24
    .line 25
    new-instance v0, Lcom/narvii/account/verifyaccount/ConfirmPasswordFragment$Companion;

    .line 26
    const/4 v1, 0x0

    .line 27
    .line 28
    .line 29
    invoke-direct {v0, v1}, Lcom/narvii/account/verifyaccount/ConfirmPasswordFragment$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    .line 30
    .line 31
    sput-object v0, Lcom/narvii/account/verifyaccount/ConfirmPasswordFragment;->Companion:Lcom/narvii/account/verifyaccount/ConfirmPasswordFragment$Companion;

    .line 32
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
    sget-object v0, Lcom/narvii/account/verifyaccount/ConfirmPasswordFragment$binding$2;->INSTANCE:Lcom/narvii/account/verifyaccount/ConfirmPasswordFragment$binding$2;

    .line 6
    .line 7
    .line 8
    invoke-static {p0, v0}, Lcom/narvii/util/FragmentExtensionsKt;->viewBinding(Landroidx/fragment/app/Fragment;Le8/l;)Lkotlin/properties/d;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    iput-object v0, p0, Lcom/narvii/account/verifyaccount/ConfirmPasswordFragment;->binding$delegate:Lkotlin/properties/d;

    .line 12
    .line 13
    new-instance v0, Lcom/narvii/account/verifyaccount/ConfirmPasswordFragment$verifyAccountType$2;

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, p0}, Lcom/narvii/account/verifyaccount/ConfirmPasswordFragment$verifyAccountType$2;-><init>(Lcom/narvii/account/verifyaccount/ConfirmPasswordFragment;)V

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    iput-object v0, p0, Lcom/narvii/account/verifyaccount/ConfirmPasswordFragment;->verifyAccountType$delegate:Lw7/m;

    .line 23
    return-void
.end method

.method public static final synthetic access$getFrame(Lcom/narvii/account/verifyaccount/ConfirmPasswordFragment;)Landroid/view/View;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/account/verifyaccount/ConfirmPasswordFragment;->getFrame()Landroid/view/View;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$getVerifyAccountType(Lcom/narvii/account/verifyaccount/ConfirmPasswordFragment;)Lcom/narvii/account/verifyaccount/VerifyAccountType;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/account/verifyaccount/ConfirmPasswordFragment;->getVerifyAccountType()Lcom/narvii/account/verifyaccount/VerifyAccountType;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$updateNextView(Lcom/narvii/account/verifyaccount/ConfirmPasswordFragment;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/account/verifyaccount/ConfirmPasswordFragment;->updateNextView()V

    .line 4
    return-void
.end method

.method private final getBinding()Lcom/narvii/amino/databinding/FragmentConfirmPasswordBinding;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/account/verifyaccount/ConfirmPasswordFragment;->binding$delegate:Lkotlin/properties/d;

    .line 3
    .line 4
    sget-object v1, Lcom/narvii/account/verifyaccount/ConfirmPasswordFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

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
    check-cast v0, Lcom/narvii/amino/databinding/FragmentConfirmPasswordBinding;

    .line 14
    return-object v0
.end method

.method private final getFrame()Landroid/view/View;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    const v1, 0x7f0a05ff

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 13
    move-result-object v0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    return-object v0
.end method

.method private final getVerifyAccountType()Lcom/narvii/account/verifyaccount/VerifyAccountType;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/account/verifyaccount/ConfirmPasswordFragment;->verifyAccountType$delegate:Lw7/m;

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

.method public static synthetic n(Lcom/narvii/account/verifyaccount/ConfirmPasswordFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/account/verifyaccount/ConfirmPasswordFragment;->onViewCreated$lambda$0(Lcom/narvii/account/verifyaccount/ConfirmPasswordFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic o(Lcom/narvii/account/verifyaccount/ConfirmPasswordFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/account/verifyaccount/ConfirmPasswordFragment;->onViewCreated$lambda$2(Lcom/narvii/account/verifyaccount/ConfirmPasswordFragment;Landroid/view/View;)V

    return-void
.end method

.method private static final onViewCreated$lambda$0(Lcom/narvii/account/verifyaccount/ConfirmPasswordFragment;Landroid/view/View;)V
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

.method private static final onViewCreated$lambda$2(Lcom/narvii/account/verifyaccount/ConfirmPasswordFragment;Landroid/view/View;)V
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
    iget-object p1, p0, Lcom/narvii/account/verifyaccount/ConfirmPasswordFragment;->passEdit:Landroid/widget/EditText;

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    const-string p1, "passEdit"

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 15
    const/4 p1, 0x0

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    .line 26
    invoke-direct {p0, p1}, Lcom/narvii/account/verifyaccount/ConfirmPasswordFragment;->validatePassword(Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method private static final onViewCreated$lambda$8(Lcom/narvii/account/verifyaccount/ConfirmPasswordFragment;Landroid/view/View;)V
    .locals 4

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
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    .line 16
    const v0, 0x7f010010

    .line 17
    .line 18
    .line 19
    const v1, 0x7f010011

    .line 20
    .line 21
    .line 22
    const v2, 0x7f01000e

    .line 23
    .line 24
    .line 25
    const v3, 0x7f01000f

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v2, v3, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->z(IIII)Landroidx/fragment/app/FragmentTransaction;

    .line 29
    .line 30
    new-instance v0, Lcom/narvii/account/verifyaccount/VerifyAccountChooseIdentityFragment;

    .line 31
    .line 32
    .line 33
    invoke-direct {v0}, Lcom/narvii/account/verifyaccount/VerifyAccountChooseIdentityFragment;-><init>()V

    .line 34
    .line 35
    new-instance v1, Landroid/os/Bundle;

    .line 36
    .line 37
    .line 38
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 39
    .line 40
    const-string v2, "verify_type"

    .line 41
    const/4 v3, 0x1

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContainerId()Ljava/lang/Integer;

    .line 51
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    const/4 v2, 0x0

    .line 53
    .line 54
    const-string v3, "verify_choose_identity"

    .line 55
    .line 56
    if-eqz v1, :cond_0

    .line 57
    .line 58
    .line 59
    :try_start_1
    invoke-static {v1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 63
    move-result p0

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, p0, v0, v3}, Landroidx/fragment/app/FragmentTransaction;->v(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 67
    move-result-object p0

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, v2}, Landroidx/fragment/app/FragmentTransaction;->h(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 71
    move-result-object p0

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->k()I

    .line 75
    goto :goto_1

    .line 76
    :catch_0
    move-exception p0

    .line 77
    goto :goto_0

    .line 78
    .line 79
    .line 80
    :cond_0
    invoke-direct {p0}, Lcom/narvii/account/verifyaccount/ConfirmPasswordFragment;->getFrame()Landroid/view/View;

    .line 81
    move-result-object p0

    .line 82
    .line 83
    if-eqz p0, :cond_1

    .line 84
    .line 85
    .line 86
    const p0, 0x7f0a05ff

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, p0, v0, v3}, Landroidx/fragment/app/FragmentTransaction;->v(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 90
    move-result-object p0

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0, v2}, Landroidx/fragment/app/FragmentTransaction;->h(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 94
    move-result-object p0

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->k()I
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 98
    goto :goto_1

    .line 99
    .line 100
    .line 101
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 102
    move-result-object p0

    .line 103
    .line 104
    .line 105
    invoke-static {p0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 106
    :cond_1
    :goto_1
    return-void
.end method

.method public static synthetic p(Lcom/narvii/account/verifyaccount/ConfirmPasswordFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/account/verifyaccount/ConfirmPasswordFragment;->onViewCreated$lambda$8(Lcom/narvii/account/verifyaccount/ConfirmPasswordFragment;Landroid/view/View;)V

    return-void
.end method

.method private final updateNextView()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/account/verifyaccount/ConfirmPasswordFragment;->passEdit:Landroid/widget/EditText;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const-string v0, "passEdit"

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 10
    const/4 v0, 0x0

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Lcom/narvii/account/verifyaccount/ConfirmPasswordFragment;->getBinding()Lcom/narvii/amino/databinding/FragmentConfirmPasswordBinding;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    iget-object v1, v1, Lcom/narvii/amino/databinding/FragmentConfirmPasswordBinding;->next:Landroid/widget/Button;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 28
    move-result v0

    .line 29
    const/4 v2, 0x6

    .line 30
    .line 31
    if-lt v0, v2, :cond_1

    .line 32
    const/4 v0, 0x1

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const/4 v0, 0x0

    .line 35
    .line 36
    .line 37
    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 38
    return-void
.end method

.method private final updateSubtitle(Landroid/widget/TextView;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/account/verifyaccount/ConfirmPasswordFragment;->getVerifyAccountType()Lcom/narvii/account/verifyaccount/VerifyAccountType;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    instance-of v1, v0, Lcom/narvii/account/verifyaccount/UpdateIdentityVerifyAccount;

    .line 7
    .line 8
    const-string v2, "set_identity_type"

    .line 9
    .line 10
    if-eqz v1, :cond_2

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 14
    move-result v0

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Lcom/narvii/account/verifyaccount/VerifyAccountTypeKt;->identityType(I)Lcom/narvii/account/verifyaccount/IdentityType;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    instance-of v1, v0, Lcom/narvii/account/verifyaccount/EmailIdentity;

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    .line 25
    const v0, 0x7f120338

    .line 26
    goto :goto_0

    .line 27
    .line 28
    :cond_0
    instance-of v0, v0, Lcom/narvii/account/verifyaccount/PhoneIdentity;

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    .line 33
    const v0, 0x7f120339

    .line 34
    goto :goto_0

    .line 35
    .line 36
    :cond_1
    new-instance p1, Lw7/s;

    .line 37
    .line 38
    .line 39
    invoke-direct {p1}, Lw7/s;-><init>()V

    .line 40
    throw p1

    .line 41
    .line 42
    :cond_2
    instance-of v1, v0, Lcom/narvii/account/verifyaccount/AddIdentityVerifyAccount;

    .line 43
    .line 44
    if-eqz v1, :cond_5

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 48
    move-result v0

    .line 49
    .line 50
    .line 51
    invoke-static {v0}, Lcom/narvii/account/verifyaccount/VerifyAccountTypeKt;->identityType(I)Lcom/narvii/account/verifyaccount/IdentityType;

    .line 52
    move-result-object v0

    .line 53
    .line 54
    instance-of v1, v0, Lcom/narvii/account/verifyaccount/EmailIdentity;

    .line 55
    .line 56
    if-eqz v1, :cond_3

    .line 57
    .line 58
    .line 59
    const v0, 0x7f120335

    .line 60
    goto :goto_0

    .line 61
    .line 62
    :cond_3
    instance-of v0, v0, Lcom/narvii/account/verifyaccount/PhoneIdentity;

    .line 63
    .line 64
    if-eqz v0, :cond_4

    .line 65
    .line 66
    .line 67
    const v0, 0x7f120336

    .line 68
    goto :goto_0

    .line 69
    .line 70
    :cond_4
    new-instance p1, Lw7/s;

    .line 71
    .line 72
    .line 73
    invoke-direct {p1}, Lw7/s;-><init>()V

    .line 74
    throw p1

    .line 75
    .line 76
    :cond_5
    instance-of v0, v0, Lcom/narvii/account/verifyaccount/DeleteAccountVerifyAccount;

    .line 77
    .line 78
    if-eqz v0, :cond_6

    .line 79
    .line 80
    .line 81
    const v0, 0x7f120337

    .line 82
    goto :goto_0

    .line 83
    .line 84
    .line 85
    :cond_6
    const v0, 0x7f120215

    .line 86
    .line 87
    .line 88
    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 89
    return-void
.end method

.method private final validatePassword(Ljava/lang/String;)V
    .locals 4

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
    const-string v1, "api"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 17
    .line 18
    .line 19
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 20
    move-result-object v2

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->https()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 24
    move-result-object v2

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 28
    move-result-object v2

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 32
    move-result-object v2

    .line 33
    .line 34
    const-string v3, "/auth/verify-password"

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 38
    move-result-object v2

    .line 39
    .line 40
    sget-object v3, La0/a;->o:Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getDeviceId()Ljava/lang/String;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, v3, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 48
    move-result-object v0

    .line 49
    .line 50
    .line 51
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 52
    move-result v2

    .line 53
    .line 54
    if-lez v2, :cond_0

    .line 55
    .line 56
    new-instance v2, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    const-string v3, "0 "

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    move-result-object v2

    .line 72
    .line 73
    const-string v3, "secret"

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 77
    .line 78
    .line 79
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 80
    move-result-object v0

    .line 81
    .line 82
    new-instance v2, Lcom/narvii/account/verifyaccount/ConfirmPasswordFragment$validatePassword$1;

    .line 83
    .line 84
    const-class v3, Lcom/narvii/model/api/ApiResponse;

    .line 85
    .line 86
    .line 87
    invoke-direct {v2, p0, p1, v3}, Lcom/narvii/account/verifyaccount/ConfirmPasswordFragment$validatePassword$1;-><init>(Lcom/narvii/account/verifyaccount/ConfirmPasswordFragment;Ljava/lang/String;Ljava/lang/Class;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 91
    return-void
.end method


# virtual methods
.method public final deleteAccount(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "password"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "account"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 14
    .line 15
    const-string v1, "api"

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 22
    .line 23
    .line 24
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 25
    move-result-object v2

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->https()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 29
    move-result-object v2

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 33
    move-result-object v2

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 37
    move-result-object v2

    .line 38
    .line 39
    const-string v3, "/account/delete-request"

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 43
    move-result-object v2

    .line 44
    .line 45
    sget-object v3, La0/a;->o:Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getDeviceId()Ljava/lang/String;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2, v3, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 53
    move-result-object v0

    .line 54
    .line 55
    .line 56
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 57
    move-result v2

    .line 58
    .line 59
    if-lez v2, :cond_0

    .line 60
    .line 61
    new-instance v2, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .line 66
    const-string v3, "0 "

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    move-result-object p1

    .line 77
    .line 78
    const-string v2, "secret"

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v2, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 82
    .line 83
    .line 84
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 85
    move-result-object p1

    .line 86
    .line 87
    new-instance v0, Lcom/narvii/account/verifyaccount/ConfirmPasswordFragment$deleteAccount$1;

    .line 88
    .line 89
    const-class v2, Lcom/narvii/model/api/ApiResponse;

    .line 90
    .line 91
    .line 92
    invoke-direct {v0, p0, v2}, Lcom/narvii/account/verifyaccount/ConfirmPasswordFragment$deleteAccount$1;-><init>(Lcom/narvii/account/verifyaccount/ConfirmPasswordFragment;Ljava/lang/Class;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1, p1, v0}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 96
    return-void
.end method

.method public getPageName()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/account/verifyaccount/ConfirmPasswordFragment;->getVerifyAccountType()Lcom/narvii/account/verifyaccount/VerifyAccountType;

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
    const-string v0, "confirm_password"

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

.method public final goToVerifyIdentity(Ljava/lang/String;)V
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "set_identity_type"

    .line 3
    .line 4
    const-string v1, "password"

    .line 5
    .line 6
    .line 7
    invoke-static {p1, v1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    new-instance v2, Lcom/narvii/account/verifyaccount/VerifyAccountChooseIdentityFragment;

    .line 18
    .line 19
    .line 20
    invoke-direct {v2}, Lcom/narvii/account/verifyaccount/VerifyAccountChooseIdentityFragment;-><init>()V

    .line 21
    .line 22
    .line 23
    const v3, 0x7f010010

    .line 24
    .line 25
    .line 26
    const v4, 0x7f010011

    .line 27
    .line 28
    .line 29
    const v5, 0x7f01000e

    .line 30
    .line 31
    .line 32
    const v6, 0x7f01000f

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v5, v6, v3, v4}, Landroidx/fragment/app/FragmentTransaction;->z(IIII)Landroidx/fragment/app/FragmentTransaction;

    .line 36
    .line 37
    new-instance v3, Landroid/os/Bundle;

    .line 38
    .line 39
    .line 40
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 41
    .line 42
    const-string v4, "verify_type"

    .line 43
    .line 44
    .line 45
    invoke-direct {p0}, Lcom/narvii/account/verifyaccount/ConfirmPasswordFragment;->getVerifyAccountType()Lcom/narvii/account/verifyaccount/VerifyAccountType;

    .line 46
    move-result-object v5

    .line 47
    .line 48
    .line 49
    invoke-static {v5}, Lcom/narvii/account/verifyaccount/VerifyAccountTypeKt;->getIntValue(Lcom/narvii/account/verifyaccount/VerifyAccountType;)I

    .line 50
    move-result v5

    .line 51
    .line 52
    .line 53
    invoke-virtual {v3, v4, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 57
    move-result v4

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3, v0, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 61
    .line 62
    const-string v0, "old_password"

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    iget-object p1, p0, Lcom/narvii/account/settings/AccountSettingsBaseFragment;->accountService:Lcom/narvii/account/AccountService;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getEmail()Ljava/lang/String;

    .line 71
    move-result-object p1

    .line 72
    .line 73
    if-eqz p1, :cond_0

    .line 74
    .line 75
    .line 76
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    invoke-static {p1}, Lkotlin/text/k;->z(Ljava/lang/CharSequence;)Z

    .line 80
    move-result v0

    .line 81
    .line 82
    xor-int/lit8 v0, v0, 0x1

    .line 83
    .line 84
    if-eqz v0, :cond_0

    .line 85
    .line 86
    const-string v0, "email"

    .line 87
    .line 88
    .line 89
    invoke-virtual {v3, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    goto :goto_0

    .line 91
    :catch_0
    move-exception p1

    .line 92
    goto :goto_1

    .line 93
    .line 94
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/narvii/account/settings/AccountSettingsBaseFragment;->accountService:Lcom/narvii/account/AccountService;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getPhoneNumber()Ljava/lang/String;

    .line 98
    move-result-object p1

    .line 99
    .line 100
    if-eqz p1, :cond_1

    .line 101
    .line 102
    .line 103
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    invoke-static {p1}, Lkotlin/text/k;->z(Ljava/lang/CharSequence;)Z

    .line 107
    move-result v0

    .line 108
    .line 109
    xor-int/lit8 v0, v0, 0x1

    .line 110
    .line 111
    if-eqz v0, :cond_1

    .line 112
    .line 113
    const-string v0, "phone"

    .line 114
    .line 115
    .line 116
    invoke-virtual {v3, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    :cond_1
    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContainerId()Ljava/lang/Integer;

    .line 123
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    const/4 v0, 0x0

    .line 125
    .line 126
    const-string v3, "verifyAccount"

    .line 127
    .line 128
    if-eqz p1, :cond_2

    .line 129
    .line 130
    .line 131
    :try_start_1
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 135
    move-result p1

    .line 136
    .line 137
    .line 138
    invoke-virtual {v1, p1, v2, v3}, Landroidx/fragment/app/FragmentTransaction;->v(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 139
    move-result-object p1

    .line 140
    .line 141
    .line 142
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentTransaction;->h(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 143
    move-result-object p1

    .line 144
    .line 145
    .line 146
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->k()I

    .line 147
    goto :goto_2

    .line 148
    .line 149
    .line 150
    :cond_2
    invoke-direct {p0}, Lcom/narvii/account/verifyaccount/ConfirmPasswordFragment;->getFrame()Landroid/view/View;

    .line 151
    move-result-object p1

    .line 152
    .line 153
    if-eqz p1, :cond_3

    .line 154
    .line 155
    .line 156
    const p1, 0x7f0a05ff

    .line 157
    .line 158
    .line 159
    invoke-virtual {v1, p1, v2, v3}, Landroidx/fragment/app/FragmentTransaction;->v(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 160
    move-result-object p1

    .line 161
    .line 162
    .line 163
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentTransaction;->h(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 164
    move-result-object p1

    .line 165
    .line 166
    .line 167
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->k()I
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 168
    goto :goto_2

    .line 169
    .line 170
    .line 171
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 172
    move-result-object p1

    .line 173
    .line 174
    .line 175
    invoke-static {p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 176
    :cond_3
    :goto_2
    return-void
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

.method public onBackPressed(Lcom/narvii/app/NVActivity;)Z
    .locals 0
    .param p1    # Lcom/narvii/app/NVActivity;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 p1, 0x0

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
    invoke-super {p0, p1}, Lcom/narvii/account/settings/AccountSettingsBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    new-instance p1, Lcom/narvii/account/AccountUtils;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    invoke-direct {p1, v0}, Lcom/narvii/account/AccountUtils;-><init>(Landroid/content/Context;)V

    .line 13
    .line 14
    iput-object p1, p0, Lcom/narvii/account/settings/AccountSettingsBaseFragment;->accountUtils:Lcom/narvii/account/AccountUtils;

    .line 15
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
    invoke-direct {p0}, Lcom/narvii/account/verifyaccount/ConfirmPasswordFragment;->getBinding()Lcom/narvii/amino/databinding/FragmentConfirmPasswordBinding;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/narvii/amino/databinding/FragmentConfirmPasswordBinding;->getRoot()Landroid/widget/LinearLayout;

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
    const p2, 0x7f0a0e9e

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 15
    move-result-object p2

    .line 16
    .line 17
    check-cast p2, Landroid/widget/TextView;

    .line 18
    .line 19
    .line 20
    invoke-direct {p0}, Lcom/narvii/account/verifyaccount/ConfirmPasswordFragment;->getVerifyAccountType()Lcom/narvii/account/verifyaccount/VerifyAccountType;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, Lcom/narvii/account/verifyaccount/VerifyAccountTypeKt;->getPageTitle(Lcom/narvii/account/verifyaccount/VerifyAccountType;)I

    .line 25
    move-result v0

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 29
    .line 30
    .line 31
    const p2, 0x7f0a0ea1

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 35
    move-result-object p2

    .line 36
    .line 37
    const-string v0, "findViewById(...)"

    .line 38
    .line 39
    .line 40
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    check-cast p2, Landroid/widget/TextView;

    .line 43
    .line 44
    .line 45
    invoke-direct {p0, p2}, Lcom/narvii/account/verifyaccount/ConfirmPasswordFragment;->updateSubtitle(Landroid/widget/TextView;)V

    .line 46
    .line 47
    .line 48
    const p2, 0x7f0a0ad0

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 52
    move-result-object p1

    .line 53
    .line 54
    .line 55
    const p2, 0x7f0a04b2

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 59
    move-result-object p1

    .line 60
    .line 61
    .line 62
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    .line 64
    check-cast p1, Landroid/widget/EditText;

    .line 65
    .line 66
    iput-object p1, p0, Lcom/narvii/account/verifyaccount/ConfirmPasswordFragment;->passEdit:Landroid/widget/EditText;

    .line 67
    .line 68
    if-nez p1, :cond_0

    .line 69
    .line 70
    const-string p1, "passEdit"

    .line 71
    .line 72
    .line 73
    invoke-static {p1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 74
    const/4 p1, 0x0

    .line 75
    .line 76
    :cond_0
    new-instance p2, Lcom/narvii/account/verifyaccount/ConfirmPasswordFragment$onViewCreated$1;

    .line 77
    .line 78
    .line 79
    invoke-direct {p2, p0}, Lcom/narvii/account/verifyaccount/ConfirmPasswordFragment$onViewCreated$1;-><init>(Lcom/narvii/account/verifyaccount/ConfirmPasswordFragment;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 83
    .line 84
    .line 85
    invoke-direct {p0}, Lcom/narvii/account/verifyaccount/ConfirmPasswordFragment;->getBinding()Lcom/narvii/amino/databinding/FragmentConfirmPasswordBinding;

    .line 86
    move-result-object p1

    .line 87
    .line 88
    iget-object p1, p1, Lcom/narvii/amino/databinding/FragmentConfirmPasswordBinding;->actionbarBack:Landroid/widget/ImageView;

    .line 89
    .line 90
    new-instance p2, Lcom/narvii/account/verifyaccount/c;

    .line 91
    .line 92
    .line 93
    invoke-direct {p2, p0}, Lcom/narvii/account/verifyaccount/c;-><init>(Lcom/narvii/account/verifyaccount/ConfirmPasswordFragment;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    .line 98
    .line 99
    invoke-direct {p0}, Lcom/narvii/account/verifyaccount/ConfirmPasswordFragment;->getBinding()Lcom/narvii/amino/databinding/FragmentConfirmPasswordBinding;

    .line 100
    move-result-object p1

    .line 101
    .line 102
    iget-object p1, p1, Lcom/narvii/amino/databinding/FragmentConfirmPasswordBinding;->next:Landroid/widget/Button;

    .line 103
    .line 104
    new-instance p2, Lcom/narvii/account/verifyaccount/d;

    .line 105
    .line 106
    .line 107
    invoke-direct {p2, p0}, Lcom/narvii/account/verifyaccount/d;-><init>(Lcom/narvii/account/verifyaccount/ConfirmPasswordFragment;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    .line 112
    .line 113
    invoke-direct {p0}, Lcom/narvii/account/verifyaccount/ConfirmPasswordFragment;->getBinding()Lcom/narvii/amino/databinding/FragmentConfirmPasswordBinding;

    .line 114
    move-result-object p1

    .line 115
    .line 116
    iget-object p1, p1, Lcom/narvii/amino/databinding/FragmentConfirmPasswordBinding;->forgot:Landroid/widget/TextView;

    .line 117
    .line 118
    new-instance p2, Lcom/narvii/account/verifyaccount/e;

    .line 119
    .line 120
    .line 121
    invoke-direct {p2, p0}, Lcom/narvii/account/verifyaccount/e;-><init>(Lcom/narvii/account/verifyaccount/ConfirmPasswordFragment;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    return-void
.end method
