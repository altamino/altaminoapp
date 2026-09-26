.class public final Lcom/narvii/account/settings/UpdatePhoneNumberSettingsFragment;
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

.field private final phoneNumberText$delegate:Lw7/m;
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
    const-string v3, "getBinding()Lcom/narvii/amino/databinding/FragmentUpdatePhoneNumberSettingsBinding;"

    .line 10
    .line 11
    const-class v4, Lcom/narvii/account/settings/UpdatePhoneNumberSettingsFragment;

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
    sput-object v0, Lcom/narvii/account/settings/UpdatePhoneNumberSettingsFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

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
    sget-object v0, Lcom/narvii/account/settings/UpdatePhoneNumberSettingsFragment$binding$2;->INSTANCE:Lcom/narvii/account/settings/UpdatePhoneNumberSettingsFragment$binding$2;

    .line 6
    .line 7
    .line 8
    invoke-static {p0, v0}, Lcom/narvii/util/FragmentExtensionsKt;->viewBinding(Landroidx/fragment/app/Fragment;Le8/l;)Lkotlin/properties/d;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    iput-object v0, p0, Lcom/narvii/account/settings/UpdatePhoneNumberSettingsFragment;->binding$delegate:Lkotlin/properties/d;

    .line 12
    .line 13
    new-instance v0, Lcom/narvii/account/settings/UpdatePhoneNumberSettingsFragment$phoneNumberText$2;

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, p0}, Lcom/narvii/account/settings/UpdatePhoneNumberSettingsFragment$phoneNumberText$2;-><init>(Lcom/narvii/account/settings/UpdatePhoneNumberSettingsFragment;)V

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    iput-object v0, p0, Lcom/narvii/account/settings/UpdatePhoneNumberSettingsFragment;->phoneNumberText$delegate:Lw7/m;

    .line 23
    return-void
.end method

.method private final addPhoneNumber()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/account/verifyaccount/AddIdentityVerifyAccount;

    .line 3
    .line 4
    sget-object v1, Lcom/narvii/account/verifyaccount/PhoneIdentity;->INSTANCE:Lcom/narvii/account/verifyaccount/PhoneIdentity;

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Lcom/narvii/account/verifyaccount/AddIdentityVerifyAccount;-><init>(Lcom/narvii/account/verifyaccount/IdentityType;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v0}, Lcom/narvii/account/settings/UpdatePhoneNumberSettingsFragment;->goToConfirmPassword(Lcom/narvii/account/verifyaccount/VerifyAccountType;)V

    .line 11
    return-void
.end method

.method private final getBinding()Lcom/narvii/amino/databinding/FragmentUpdatePhoneNumberSettingsBinding;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/account/settings/UpdatePhoneNumberSettingsFragment;->binding$delegate:Lkotlin/properties/d;

    .line 3
    .line 4
    sget-object v1, Lcom/narvii/account/settings/UpdatePhoneNumberSettingsFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

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
    check-cast v0, Lcom/narvii/amino/databinding/FragmentUpdatePhoneNumberSettingsBinding;

    .line 14
    return-object v0
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
    const/4 v3, 0x1

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

.method public static synthetic n(Lcom/narvii/account/settings/UpdatePhoneNumberSettingsFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/account/settings/UpdatePhoneNumberSettingsFragment;->onViewCreated$lambda$0(Lcom/narvii/account/settings/UpdatePhoneNumberSettingsFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic o(Lcom/narvii/account/settings/UpdatePhoneNumberSettingsFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/account/settings/UpdatePhoneNumberSettingsFragment;->onViewCreated$lambda$1(Lcom/narvii/account/settings/UpdatePhoneNumberSettingsFragment;Landroid/view/View;)V

    return-void
.end method

.method private static final onViewCreated$lambda$0(Lcom/narvii/account/settings/UpdatePhoneNumberSettingsFragment;Landroid/view/View;)V
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
    invoke-direct {p0}, Lcom/narvii/account/settings/UpdatePhoneNumberSettingsFragment;->addPhoneNumber()V

    .line 9
    return-void
.end method

.method private static final onViewCreated$lambda$1(Lcom/narvii/account/settings/UpdatePhoneNumberSettingsFragment;Landroid/view/View;)V
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
    invoke-direct {p0}, Lcom/narvii/account/settings/UpdatePhoneNumberSettingsFragment;->updatePhoneNumber()V

    .line 9
    return-void
.end method

.method public static synthetic p(Lcom/narvii/account/settings/UpdatePhoneNumberSettingsFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/account/settings/UpdatePhoneNumberSettingsFragment;->updateViews$lambda$2(Lcom/narvii/account/settings/UpdatePhoneNumberSettingsFragment;Landroid/view/View;)V

    return-void
.end method

.method private final updatePhoneNumber()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/account/verifyaccount/UpdateIdentityVerifyAccount;

    .line 3
    .line 4
    sget-object v1, Lcom/narvii/account/verifyaccount/PhoneIdentity;->INSTANCE:Lcom/narvii/account/verifyaccount/PhoneIdentity;

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Lcom/narvii/account/verifyaccount/UpdateIdentityVerifyAccount;-><init>(Lcom/narvii/account/verifyaccount/IdentityType;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v0}, Lcom/narvii/account/settings/UpdatePhoneNumberSettingsFragment;->goToConfirmPassword(Lcom/narvii/account/verifyaccount/VerifyAccountType;)V

    .line 11
    return-void
.end method

.method private static final updateViews$lambda$2(Lcom/narvii/account/settings/UpdatePhoneNumberSettingsFragment;Landroid/view/View;)V
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
.method public final getPhoneNumberText()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/account/settings/UpdatePhoneNumberSettingsFragment;->phoneNumberText$delegate:Lw7/m;

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
    iget-object v0, p0, Lcom/narvii/account/settings/UpdatePhoneNumberSettingsFragment;->verifyCodeHelper:Lcom/narvii/account/verifyaccount/VerifyCodeSharedPrefsHelper;

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
    const/4 v0, 0x2

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 35
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
    invoke-virtual {p0, p1}, Lcom/narvii/account/settings/UpdatePhoneNumberSettingsFragment;->setVerifyCodeHelper(Lcom/narvii/account/verifyaccount/VerifyCodeSharedPrefsHelper;)V

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
    .annotation build Lorg/jetbrains/annotations/Nullable;
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
    invoke-direct {p0}, Lcom/narvii/account/settings/UpdatePhoneNumberSettingsFragment;->getBinding()Lcom/narvii/amino/databinding/FragmentUpdatePhoneNumberSettingsBinding;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/narvii/amino/databinding/FragmentUpdatePhoneNumberSettingsBinding;->getRoot()Landroid/widget/LinearLayout;

    .line 13
    move-result-object p1

    .line 14
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
    invoke-direct {p0}, Lcom/narvii/account/settings/UpdatePhoneNumberSettingsFragment;->getBinding()Lcom/narvii/amino/databinding/FragmentUpdatePhoneNumberSettingsBinding;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    iget-object p1, p1, Lcom/narvii/amino/databinding/FragmentUpdatePhoneNumberSettingsBinding;->addPhoneNumber:Landroid/widget/Button;

    .line 15
    .line 16
    new-instance p2, Lcom/narvii/account/settings/e;

    .line 17
    .line 18
    .line 19
    invoke-direct {p2, p0}, Lcom/narvii/account/settings/e;-><init>(Lcom/narvii/account/settings/UpdatePhoneNumberSettingsFragment;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    .line 24
    .line 25
    invoke-direct {p0}, Lcom/narvii/account/settings/UpdatePhoneNumberSettingsFragment;->getBinding()Lcom/narvii/amino/databinding/FragmentUpdatePhoneNumberSettingsBinding;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    iget-object p1, p1, Lcom/narvii/amino/databinding/FragmentUpdatePhoneNumberSettingsBinding;->changePhoneNumber:Landroid/widget/Button;

    .line 29
    .line 30
    new-instance p2, Lcom/narvii/account/settings/f;

    .line 31
    .line 32
    .line 33
    invoke-direct {p2, p0}, Lcom/narvii/account/settings/f;-><init>(Lcom/narvii/account/settings/UpdatePhoneNumberSettingsFragment;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/narvii/account/settings/UpdatePhoneNumberSettingsFragment;->updateViews()V

    .line 40
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

    iput-object p1, p0, Lcom/narvii/account/settings/UpdatePhoneNumberSettingsFragment;->verifyCodeHelper:Lcom/narvii/account/verifyaccount/VerifyCodeSharedPrefsHelper;

    return-void
.end method

.method protected updateViews()V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/account/settings/AccountSettingsBaseFragment;->updateViews()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/account/settings/UpdatePhoneNumberSettingsFragment;->getBinding()Lcom/narvii/amino/databinding/FragmentUpdatePhoneNumberSettingsBinding;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    iget-object v0, v0, Lcom/narvii/amino/databinding/FragmentUpdatePhoneNumberSettingsBinding;->actionbarBack:Landroid/widget/ImageView;

    .line 10
    .line 11
    new-instance v1, Lcom/narvii/account/settings/g;

    .line 12
    .line 13
    .line 14
    invoke-direct {v1, p0}, Lcom/narvii/account/settings/g;-><init>(Lcom/narvii/account/settings/UpdatePhoneNumberSettingsFragment;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/narvii/account/settings/UpdatePhoneNumberSettingsFragment;->getPhoneNumberText()Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    const/4 v1, 0x0

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    .line 27
    invoke-static {v0}, Lkotlin/text/k;->z(Ljava/lang/CharSequence;)Z

    .line 28
    move-result v0

    .line 29
    const/4 v2, 0x1

    .line 30
    xor-int/2addr v0, v2

    .line 31
    .line 32
    if-ne v0, v2, :cond_0

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move v2, v1

    .line 35
    .line 36
    .line 37
    :goto_0
    invoke-direct {p0}, Lcom/narvii/account/settings/UpdatePhoneNumberSettingsFragment;->getBinding()Lcom/narvii/amino/databinding/FragmentUpdatePhoneNumberSettingsBinding;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    iget-object v0, v0, Lcom/narvii/amino/databinding/FragmentUpdatePhoneNumberSettingsBinding;->addPhoneNumber:Landroid/widget/Button;

    .line 41
    .line 42
    const/16 v3, 0x8

    .line 43
    .line 44
    if-eqz v2, :cond_1

    .line 45
    move v4, v3

    .line 46
    goto :goto_1

    .line 47
    :cond_1
    move v4, v1

    .line 48
    .line 49
    .line 50
    :goto_1
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 51
    .line 52
    .line 53
    invoke-direct {p0}, Lcom/narvii/account/settings/UpdatePhoneNumberSettingsFragment;->getBinding()Lcom/narvii/amino/databinding/FragmentUpdatePhoneNumberSettingsBinding;

    .line 54
    move-result-object v0

    .line 55
    .line 56
    iget-object v0, v0, Lcom/narvii/amino/databinding/FragmentUpdatePhoneNumberSettingsBinding;->changePhoneNumber:Landroid/widget/Button;

    .line 57
    .line 58
    if-eqz v2, :cond_2

    .line 59
    move v4, v1

    .line 60
    goto :goto_2

    .line 61
    :cond_2
    move v4, v3

    .line 62
    .line 63
    .line 64
    :goto_2
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 65
    .line 66
    .line 67
    invoke-direct {p0}, Lcom/narvii/account/settings/UpdatePhoneNumberSettingsFragment;->getBinding()Lcom/narvii/amino/databinding/FragmentUpdatePhoneNumberSettingsBinding;

    .line 68
    move-result-object v0

    .line 69
    .line 70
    iget-object v0, v0, Lcom/narvii/amino/databinding/FragmentUpdatePhoneNumberSettingsBinding;->noPhoneSet:Landroid/widget/TextView;

    .line 71
    .line 72
    if-eqz v2, :cond_3

    .line 73
    move v4, v3

    .line 74
    goto :goto_3

    .line 75
    :cond_3
    move v4, v1

    .line 76
    .line 77
    .line 78
    :goto_3
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 79
    .line 80
    .line 81
    invoke-direct {p0}, Lcom/narvii/account/settings/UpdatePhoneNumberSettingsFragment;->getBinding()Lcom/narvii/amino/databinding/FragmentUpdatePhoneNumberSettingsBinding;

    .line 82
    move-result-object v0

    .line 83
    .line 84
    iget-object v0, v0, Lcom/narvii/amino/databinding/FragmentUpdatePhoneNumberSettingsBinding;->desc:Landroid/widget/TextView;

    .line 85
    .line 86
    if-eqz v2, :cond_4

    .line 87
    move v4, v1

    .line 88
    goto :goto_4

    .line 89
    :cond_4
    move v4, v3

    .line 90
    .line 91
    .line 92
    :goto_4
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 93
    .line 94
    .line 95
    invoke-direct {p0}, Lcom/narvii/account/settings/UpdatePhoneNumberSettingsFragment;->getBinding()Lcom/narvii/amino/databinding/FragmentUpdatePhoneNumberSettingsBinding;

    .line 96
    move-result-object v0

    .line 97
    .line 98
    iget-object v0, v0, Lcom/narvii/amino/databinding/FragmentUpdatePhoneNumberSettingsBinding;->phoneInputLayout:Lcom/narvii/widget/TextInputLayout;

    .line 99
    .line 100
    if-eqz v2, :cond_5

    .line 101
    goto :goto_5

    .line 102
    :cond_5
    move v1, v3

    .line 103
    .line 104
    .line 105
    :goto_5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 106
    .line 107
    iget-object v0, p0, Lcom/narvii/account/settings/AccountSettingsBaseFragment;->accountUtils:Lcom/narvii/account/AccountUtils;

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0}, Lcom/narvii/account/settings/UpdatePhoneNumberSettingsFragment;->getPhoneNumberText()Ljava/lang/String;

    .line 111
    move-result-object v1

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, v1}, Lcom/narvii/account/AccountUtils;->getCountryCode(Ljava/lang/String;)Ljava/lang/String;

    .line 115
    move-result-object v0

    .line 116
    .line 117
    if-eqz v0, :cond_6

    .line 118
    .line 119
    .line 120
    invoke-direct {p0}, Lcom/narvii/account/settings/UpdatePhoneNumberSettingsFragment;->getBinding()Lcom/narvii/amino/databinding/FragmentUpdatePhoneNumberSettingsBinding;

    .line 121
    move-result-object v1

    .line 122
    .line 123
    iget-object v1, v1, Lcom/narvii/amino/databinding/FragmentUpdatePhoneNumberSettingsBinding;->countryPicker:Lcom/narvii/account/mobile/MyPhoneCountryCodePicker;

    .line 124
    .line 125
    new-instance v2, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    .line 130
    const-string v3, "+"

    .line 131
    .line 132
    .line 133
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    move-result-object v0

    .line 141
    .line 142
    .line 143
    invoke-virtual {v1, v0}, Lcom/narvii/account/mobile/MyPhoneCountryCodePicker;->setPhoneNumber(Ljava/lang/String;)V

    .line 144
    .line 145
    :cond_6
    iget-object v0, p0, Lcom/narvii/account/settings/AccountSettingsBaseFragment;->accountUtils:Lcom/narvii/account/AccountUtils;

    .line 146
    .line 147
    .line 148
    invoke-virtual {p0}, Lcom/narvii/account/settings/UpdatePhoneNumberSettingsFragment;->getPhoneNumberText()Ljava/lang/String;

    .line 149
    move-result-object v1

    .line 150
    .line 151
    .line 152
    invoke-virtual {v0, v1}, Lcom/narvii/account/AccountUtils;->getNationalNumber(Ljava/lang/String;)Ljava/lang/String;

    .line 153
    move-result-object v0

    .line 154
    .line 155
    if-eqz v0, :cond_7

    .line 156
    .line 157
    .line 158
    invoke-direct {p0}, Lcom/narvii/account/settings/UpdatePhoneNumberSettingsFragment;->getBinding()Lcom/narvii/amino/databinding/FragmentUpdatePhoneNumberSettingsBinding;

    .line 159
    move-result-object v1

    .line 160
    .line 161
    iget-object v1, v1, Lcom/narvii/amino/databinding/FragmentUpdatePhoneNumberSettingsBinding;->edit:Landroid/widget/EditText;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    :cond_7
    return-void
.end method
