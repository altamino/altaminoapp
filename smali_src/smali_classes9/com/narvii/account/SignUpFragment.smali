.class public final Lcom/narvii/account/SignUpFragment;
.super Lcom/narvii/account/AccountBaseFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSignUpFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SignUpFragment.kt\ncom/narvii/account/SignUpFragment\n+ 2 FragmentViewModelLazy.kt\nandroidx/fragment/app/FragmentViewModelLazyKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,175:1\n106#2,15:176\n262#3,2:191\n*S KotlinDebug\n*F\n+ 1 SignUpFragment.kt\ncom/narvii/account/SignUpFragment\n*L\n29#1:176,15\n94#1:191,2\n*E\n"
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


# instance fields
.field private final binding$delegate:Lkotlin/properties/d;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private birthdayActivityResultLauncher:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private isEmailBirthdayConfirmation:Z

.field private isPhoneBirthdayConfirmation:Z

.field private final viewModel$delegate:Lw7/m;
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
    const-string v3, "getBinding()Lcom/narvii/amino/databinding/FragmentSignUpBinding;"

    .line 10
    .line 11
    const-class v4, Lcom/narvii/account/SignUpFragment;

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
    sput-object v0, Lcom/narvii/account/SignUpFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 24
    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/account/AccountBaseFragment;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/account/SignUpFragment$special$$inlined$viewModels$default$1;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/narvii/account/SignUpFragment$special$$inlined$viewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 9
    .line 10
    sget-object v1, Lw7/q;->NONE:Lw7/q;

    .line 11
    .line 12
    new-instance v2, Lcom/narvii/account/SignUpFragment$special$$inlined$viewModels$default$2;

    .line 13
    .line 14
    .line 15
    invoke-direct {v2, v0}, Lcom/narvii/account/SignUpFragment$special$$inlined$viewModels$default$2;-><init>(Le8/a;)V

    .line 16
    .line 17
    .line 18
    invoke-static {v1, v2}, Lw7/n;->b(Lw7/q;Le8/a;)Lw7/m;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    const-class v1, Lcom/narvii/account/vm/SignUpViewModel;

    .line 22
    .line 23
    .line 24
    invoke-static {v1}, Lkotlin/jvm/internal/q0;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    new-instance v2, Lcom/narvii/account/SignUpFragment$special$$inlined$viewModels$default$3;

    .line 28
    .line 29
    .line 30
    invoke-direct {v2, v0}, Lcom/narvii/account/SignUpFragment$special$$inlined$viewModels$default$3;-><init>(Lw7/m;)V

    .line 31
    .line 32
    new-instance v3, Lcom/narvii/account/SignUpFragment$special$$inlined$viewModels$default$4;

    .line 33
    const/4 v4, 0x0

    .line 34
    .line 35
    .line 36
    invoke-direct {v3, v4, v0}, Lcom/narvii/account/SignUpFragment$special$$inlined$viewModels$default$4;-><init>(Le8/a;Lw7/m;)V

    .line 37
    .line 38
    new-instance v4, Lcom/narvii/account/SignUpFragment$special$$inlined$viewModels$default$5;

    .line 39
    .line 40
    .line 41
    invoke-direct {v4, p0, v0}, Lcom/narvii/account/SignUpFragment$special$$inlined$viewModels$default$5;-><init>(Landroidx/fragment/app/Fragment;Lw7/m;)V

    .line 42
    .line 43
    .line 44
    invoke-static {p0, v1, v2, v3, v4}, Landroidx/fragment/app/FragmentViewModelLazyKt;->c(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Le8/a;Le8/a;Le8/a;)Lw7/m;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    iput-object v0, p0, Lcom/narvii/account/SignUpFragment;->viewModel$delegate:Lw7/m;

    .line 48
    .line 49
    sget-object v0, Lcom/narvii/account/SignUpFragment$binding$2;->INSTANCE:Lcom/narvii/account/SignUpFragment$binding$2;

    .line 50
    .line 51
    .line 52
    invoke-static {p0, v0}, Lcom/narvii/util/FragmentExtensionsKt;->viewBinding(Landroidx/fragment/app/Fragment;Le8/l;)Lkotlin/properties/d;

    .line 53
    move-result-object v0

    .line 54
    .line 55
    iput-object v0, p0, Lcom/narvii/account/SignUpFragment;->binding$delegate:Lkotlin/properties/d;

    .line 56
    return-void
.end method

.method public static final synthetic access$getBinding(Lcom/narvii/account/SignUpFragment;)Lcom/narvii/amino/databinding/FragmentSignUpBinding;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/account/SignUpFragment;->getBinding()Lcom/narvii/amino/databinding/FragmentSignUpBinding;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final getBinding()Lcom/narvii/amino/databinding/FragmentSignUpBinding;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/account/SignUpFragment;->binding$delegate:Lkotlin/properties/d;

    .line 3
    .line 4
    sget-object v1, Lcom/narvii/account/SignUpFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

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
    check-cast v0, Lcom/narvii/amino/databinding/FragmentSignUpBinding;

    .line 14
    return-object v0
.end method

.method private final getViewModel()Lcom/narvii/account/vm/SignUpViewModel;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/account/SignUpFragment;->viewModel$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/account/vm/SignUpViewModel;

    .line 9
    return-object v0
.end method

.method private final goToEmailSignup()V
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
    new-instance v1, Lcom/narvii/account/EmailSignupFragment;

    .line 31
    .line 32
    .line 33
    invoke-direct {v1}, Lcom/narvii/account/EmailSignupFragment;-><init>()V

    .line 34
    .line 35
    new-instance v2, Landroid/os/Bundle;

    .line 36
    .line 37
    .line 38
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 39
    .line 40
    const-string v3, "key_sign_up_method"

    .line 41
    .line 42
    const-string v4, "emailSignup"

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 49
    .line 50
    .line 51
    const v2, 0x7f0a05ff

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/FragmentTransaction;->u(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 55
    move-result-object v0

    .line 56
    const/4 v1, 0x0

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->h(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 60
    move-result-object v0

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->k()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    goto :goto_0

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 69
    move-result-object v0

    .line 70
    .line 71
    .line 72
    invoke-static {v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 73
    :goto_0
    return-void
.end method

.method private final goToPhoneNumberSignup()V
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
    new-instance v1, Lcom/narvii/account/MobileSignupFragment;

    .line 31
    .line 32
    .line 33
    invoke-direct {v1}, Lcom/narvii/account/MobileSignupFragment;-><init>()V

    .line 34
    .line 35
    new-instance v2, Landroid/os/Bundle;

    .line 36
    .line 37
    .line 38
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 39
    .line 40
    const-string v3, "key_sign_up_method"

    .line 41
    .line 42
    const-string v4, "phoneSignup"

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 49
    .line 50
    .line 51
    const v2, 0x7f0a05ff

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/FragmentTransaction;->u(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 55
    move-result-object v0

    .line 56
    const/4 v1, 0x0

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->h(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 60
    move-result-object v0

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->k()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    goto :goto_0

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 69
    move-result-object v0

    .line 70
    .line 71
    .line 72
    invoke-static {v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 73
    :goto_0
    return-void
.end method

.method private static final onCreate$lambda$2(Lcom/narvii/account/SignUpFragment;Landroidx/activity/result/ActivityResult;)V
    .locals 2

    .line 1
    .line 2
    const-string v0, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->e()I

    .line 9
    move-result v0

    .line 10
    const/4 v1, -0x1

    .line 11
    .line 12
    if-ne v0, v1, :cond_2

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    instance-of v1, v0, Lcom/narvii/account/LoginActivity;

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    check-cast v0, Lcom/narvii/account/LoginActivity;

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 25
    .line 26
    :goto_0
    if-eqz v0, :cond_2

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->c()Landroid/content/Intent;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    if-eqz p1, :cond_2

    .line 33
    .line 34
    const-string v1, "param_birthday"

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    move-result-object p1

    .line 39
    .line 40
    iput-object p1, v0, Lcom/narvii/account/LoginActivity;->birthday:Ljava/lang/String;

    .line 41
    .line 42
    iget-boolean p1, p0, Lcom/narvii/account/SignUpFragment;->isEmailBirthdayConfirmation:Z

    .line 43
    const/4 v0, 0x0

    .line 44
    .line 45
    if-eqz p1, :cond_1

    .line 46
    .line 47
    iput-boolean v0, p0, Lcom/narvii/account/SignUpFragment;->isEmailBirthdayConfirmation:Z

    .line 48
    .line 49
    .line 50
    invoke-direct {p0}, Lcom/narvii/account/SignUpFragment;->goToEmailSignup()V

    .line 51
    goto :goto_1

    .line 52
    .line 53
    :cond_1
    iget-boolean p1, p0, Lcom/narvii/account/SignUpFragment;->isPhoneBirthdayConfirmation:Z

    .line 54
    .line 55
    if-eqz p1, :cond_2

    .line 56
    .line 57
    iput-boolean v0, p0, Lcom/narvii/account/SignUpFragment;->isPhoneBirthdayConfirmation:Z

    .line 58
    .line 59
    .line 60
    invoke-direct {p0}, Lcom/narvii/account/SignUpFragment;->goToPhoneNumberSignup()V

    .line 61
    :cond_2
    :goto_1
    return-void
.end method

.method private static final onViewCreated$lambda$3(Lcom/narvii/account/SignUpFragment;Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    const-string p1, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-class p1, Lcom/narvii/birthday/EnterBirthdayFragment;

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    const-string v0, "param_birthday_type"

    .line 14
    .line 15
    sget-object v1, Lcom/narvii/birthday/EnterBirthdayFragment$BirthdayType;->SIGNUP:Lcom/narvii/birthday/EnterBirthdayFragment$BirthdayType;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 19
    const/4 v0, 0x1

    .line 20
    .line 21
    iput-boolean v0, p0, Lcom/narvii/account/SignUpFragment;->isEmailBirthdayConfirmation:Z

    .line 22
    .line 23
    iget-object p0, p0, Lcom/narvii/account/SignUpFragment;->birthdayActivityResultLauncher:Landroidx/activity/result/ActivityResultLauncher;

    .line 24
    .line 25
    if-nez p0, :cond_0

    .line 26
    .line 27
    const-string p0, "birthdayActivityResultLauncher"

    .line 28
    .line 29
    .line 30
    invoke-static {p0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 31
    const/4 p0, 0x0

    .line 32
    .line 33
    .line 34
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/activity/result/ActivityResultLauncher;->a(Ljava/lang/Object;)V

    .line 35
    return-void
.end method

.method private static final onViewCreated$lambda$4(Lcom/narvii/account/SignUpFragment;Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    const-string p1, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-class p1, Lcom/narvii/birthday/EnterBirthdayFragment;

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    const-string v0, "param_birthday_type"

    .line 14
    .line 15
    sget-object v1, Lcom/narvii/birthday/EnterBirthdayFragment$BirthdayType;->SIGNUP:Lcom/narvii/birthday/EnterBirthdayFragment$BirthdayType;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 19
    const/4 v0, 0x1

    .line 20
    .line 21
    iput-boolean v0, p0, Lcom/narvii/account/SignUpFragment;->isPhoneBirthdayConfirmation:Z

    .line 22
    .line 23
    iget-object p0, p0, Lcom/narvii/account/SignUpFragment;->birthdayActivityResultLauncher:Landroidx/activity/result/ActivityResultLauncher;

    .line 24
    .line 25
    if-nez p0, :cond_0

    .line 26
    .line 27
    const-string p0, "birthdayActivityResultLauncher"

    .line 28
    .line 29
    .line 30
    invoke-static {p0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 31
    const/4 p0, 0x0

    .line 32
    .line 33
    .line 34
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/activity/result/ActivityResultLauncher;->a(Ljava/lang/Object;)V

    .line 35
    return-void
.end method

.method private static final onViewCreated$lambda$6(Lcom/narvii/account/SignUpFragment;Landroid/view/View;)V
    .locals 2

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
    move-result-object p1

    .line 10
    .line 11
    instance-of v0, p1, Lcom/narvii/account/LoginActivity;

    .line 12
    const/4 v1, 0x0

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    check-cast p1, Lcom/narvii/account/LoginActivity;

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move-object p1, v1

    .line 19
    .line 20
    :goto_0
    if-eqz p1, :cond_1

    .line 21
    const/4 v0, 0x3

    .line 22
    .line 23
    iput v0, p1, Lcom/narvii/account/LoginActivity;->statType:I

    .line 24
    .line 25
    const-string v0, "Facebook"

    .line 26
    .line 27
    iput-object v0, p1, Lcom/narvii/account/LoginActivity;->loggingMethod:Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 31
    move-result-object p0

    .line 32
    .line 33
    if-eqz p0, :cond_2

    .line 34
    .line 35
    .line 36
    const p1, 0x7f0a054c

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager;->l0(I)Landroidx/fragment/app/Fragment;

    .line 40
    move-result-object v1

    .line 41
    .line 42
    .line 43
    .line 44
    :cond_2
    if-eqz v1, :cond_3

    .line 45
    .line 46
    .line 47
    .line 48
    :cond_3
    return-void
.end method

.method private static final onViewCreated$lambda$8(Lcom/narvii/account/SignUpFragment;Landroid/view/View;)V
    .locals 2

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
    move-result-object p1

    .line 10
    .line 11
    instance-of v0, p1, Lcom/narvii/account/LoginActivity;

    .line 12
    const/4 v1, 0x0

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    check-cast p1, Lcom/narvii/account/LoginActivity;

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move-object p1, v1

    .line 19
    .line 20
    :goto_0
    if-eqz p1, :cond_1

    .line 21
    const/4 v0, 0x4

    .line 22
    .line 23
    iput v0, p1, Lcom/narvii/account/LoginActivity;->statType:I

    .line 24
    .line 25
    const-string v0, "Google"

    .line 26
    .line 27
    iput-object v0, p1, Lcom/narvii/account/LoginActivity;->loggingMethod:Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 31
    move-result-object p0

    .line 32
    .line 33
    if-eqz p0, :cond_2

    .line 34
    .line 35
    .line 36
    const p1, 0x7f0a0626

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager;->l0(I)Landroidx/fragment/app/Fragment;

    .line 40
    move-result-object v1

    .line 41
    .line 42
    :cond_2
    check-cast v1, Lcom/narvii/account/GoogleLoginFragment;

    .line 43
    .line 44
    if-eqz v1, :cond_3

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Lcom/narvii/account/GoogleLoginFragment;->googleConnect()V

    .line 48
    :cond_3
    return-void
.end method

.method public static synthetic q(Lcom/narvii/account/SignUpFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/account/SignUpFragment;->onViewCreated$lambda$6(Lcom/narvii/account/SignUpFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic r(Lcom/narvii/account/SignUpFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/account/SignUpFragment;->onViewCreated$lambda$4(Lcom/narvii/account/SignUpFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic s(Lcom/narvii/account/SignUpFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/account/SignUpFragment;->onViewCreated$lambda$8(Lcom/narvii/account/SignUpFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic t(Lcom/narvii/account/SignUpFragment;Landroidx/activity/result/ActivityResult;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/account/SignUpFragment;->onCreate$lambda$2(Lcom/narvii/account/SignUpFragment;Landroidx/activity/result/ActivityResult;)V

    return-void
.end method

.method public static synthetic u(Lcom/narvii/account/SignUpFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/account/SignUpFragment;->onViewCreated$lambda$3(Lcom/narvii/account/SignUpFragment;Landroid/view/View;)V

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

    const-string v0, "sign_up_options"

    return-object v0
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
    new-instance p1, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    .line 6
    .line 7
    .line 8
    invoke-direct {p1}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    .line 9
    .line 10
    new-instance v0, Lcom/narvii/account/x0;

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/narvii/account/x0;-><init>(Lcom/narvii/account/SignUpFragment;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    const-string v0, "registerForActivityResult(...)"

    .line 20
    .line 21
    .line 22
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    iput-object p1, p0, Lcom/narvii/account/SignUpFragment;->birthdayActivityResultLauncher:Landroidx/activity/result/ActivityResultLauncher;

    .line 25
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
    invoke-direct {p0}, Lcom/narvii/account/SignUpFragment;->getBinding()Lcom/narvii/amino/databinding/FragmentSignUpBinding;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/narvii/amino/databinding/FragmentSignUpBinding;->getRoot()Landroid/widget/ScrollView;

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
    .locals 3
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
    .line 15
    const v0, 0x7f0a083f

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    .line 22
    invoke-static {p2, p1}, Lcom/narvii/util/statusbar/StatusBarUtils;->addMarginTopToContentChild(Landroid/app/Activity;Landroid/view/View;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    .line 29
    const p2, 0x7f120044

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 41
    move-result-object p2

    .line 42
    .line 43
    .line 44
    const v0, 0x7f060496

    .line 45
    .line 46
    .line 47
    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 48
    move-result p2

    .line 49
    .line 50
    .line 51
    invoke-direct {p0}, Lcom/narvii/account/SignUpFragment;->getBinding()Lcom/narvii/amino/databinding/FragmentSignUpBinding;

    .line 52
    move-result-object v0

    .line 53
    .line 54
    iget-object v0, v0, Lcom/narvii/amino/databinding/FragmentSignUpBinding;->signupLinkTV:Landroid/widget/TextView;

    .line 55
    .line 56
    const-string v1, "signupLinkTV"

    .line 57
    .line 58
    .line 59
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    move-result-object p2

    .line 64
    .line 65
    new-instance v1, Lcom/narvii/account/SignUpFragment$onViewCreated$1;

    .line 66
    .line 67
    .line 68
    invoke-direct {v1, p0}, Lcom/narvii/account/SignUpFragment$onViewCreated$1;-><init>(Lcom/narvii/account/SignUpFragment;)V

    .line 69
    const/4 v2, 0x0

    .line 70
    .line 71
    .line 72
    invoke-static {v0, p1, v2, p2, v1}, Lcom/narvii/util/kotlin/TextViewExtensionKt;->makeTextLink(Landroid/widget/TextView;Ljava/lang/String;ZLjava/lang/Integer;Le8/a;)V

    .line 73
    .line 74
    .line 75
    invoke-direct {p0}, Lcom/narvii/account/SignUpFragment;->getBinding()Lcom/narvii/amino/databinding/FragmentSignUpBinding;

    .line 76
    move-result-object p1

    .line 77
    .line 78
    iget-object p1, p1, Lcom/narvii/amino/databinding/FragmentSignUpBinding;->emailSignup:Landroid/widget/Button;

    .line 79
    .line 80
    new-instance p2, Lcom/narvii/account/y0;

    .line 81
    .line 82
    .line 83
    invoke-direct {p2, p0}, Lcom/narvii/account/y0;-><init>(Lcom/narvii/account/SignUpFragment;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    .line 88
    .line 89
    invoke-direct {p0}, Lcom/narvii/account/SignUpFragment;->getBinding()Lcom/narvii/amino/databinding/FragmentSignUpBinding;

    .line 90
    move-result-object p1

    .line 91
    .line 92
    iget-object p1, p1, Lcom/narvii/amino/databinding/FragmentSignUpBinding;->phoneSignup:Landroid/widget/Button;

    .line 93
    .line 94
    const-string p2, "phoneSignup"

    .line 95
    .line 96
    .line 97
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    .line 99
    sget-object p2, Lcom/narvii/account/LoginActivity;->showPhoneNumberItem:Ljava/lang/Boolean;

    .line 100
    .line 101
    const-string v0, "showPhoneNumberItem"

    .line 102
    .line 103
    .line 104
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 108
    move-result p2

    .line 109
    .line 110
    if-eqz p2, :cond_0

    .line 111
    goto :goto_0

    .line 112
    .line 113
    :cond_0
    const/16 v2, 0x8

    .line 114
    .line 115
    .line 116
    :goto_0
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 117
    .line 118
    .line 119
    invoke-direct {p0}, Lcom/narvii/account/SignUpFragment;->getBinding()Lcom/narvii/amino/databinding/FragmentSignUpBinding;

    .line 120
    move-result-object p1

    .line 121
    .line 122
    iget-object p1, p1, Lcom/narvii/amino/databinding/FragmentSignUpBinding;->phoneSignup:Landroid/widget/Button;

    .line 123
    .line 124
    new-instance p2, Lcom/narvii/account/z0;

    .line 125
    .line 126
    .line 127
    invoke-direct {p2, p0}, Lcom/narvii/account/z0;-><init>(Lcom/narvii/account/SignUpFragment;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    .line 132
    .line 133
    invoke-direct {p0}, Lcom/narvii/account/SignUpFragment;->getBinding()Lcom/narvii/amino/databinding/FragmentSignUpBinding;

    .line 134
    move-result-object p1

    .line 135
    .line 136
    iget-object p1, p1, Lcom/narvii/amino/databinding/FragmentSignUpBinding;->facebook:Landroid/widget/LinearLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 145
    .line 146
    .line 147
    invoke-direct {p0}, Lcom/narvii/account/SignUpFragment;->getBinding()Lcom/narvii/amino/databinding/FragmentSignUpBinding;

    .line 148
    move-result-object p1

    .line 149
    .line 150
    iget-object p1, p1, Lcom/narvii/amino/databinding/FragmentSignUpBinding;->google:Landroid/widget/LinearLayout;

    .line 151
    .line 152
    new-instance p2, Lcom/narvii/account/b1;

    .line 153
    .line 154
    .line 155
    invoke-direct {p2, p0}, Lcom/narvii/account/b1;-><init>(Lcom/narvii/account/SignUpFragment;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    .line 160
    .line 161
    invoke-direct {p0}, Lcom/narvii/account/SignUpFragment;->getViewModel()Lcom/narvii/account/vm/SignUpViewModel;

    .line 162
    move-result-object p1

    .line 163
    .line 164
    .line 165
    invoke-virtual {p1}, Lcom/narvii/account/vm/SignUpViewModel;->getUiState()Landroidx/lifecycle/LiveData;

    .line 166
    move-result-object p1

    .line 167
    .line 168
    .line 169
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    .line 170
    move-result-object p2

    .line 171
    .line 172
    new-instance v0, Lcom/narvii/account/SignUpFragment$onViewCreated$6;

    .line 173
    .line 174
    .line 175
    invoke-direct {v0, p0}, Lcom/narvii/account/SignUpFragment$onViewCreated$6;-><init>(Lcom/narvii/account/SignUpFragment;)V

    .line 176
    .line 177
    new-instance v1, Lcom/narvii/account/SignUpFragment$sam$androidx_lifecycle_Observer$0;

    .line 178
    .line 179
    .line 180
    invoke-direct {v1, v0}, Lcom/narvii/account/SignUpFragment$sam$androidx_lifecycle_Observer$0;-><init>(Le8/l;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {p1, p2, v1}, Landroidx/lifecycle/LiveData;->i(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 184
    .line 185
    .line 186
    invoke-direct {p0}, Lcom/narvii/account/SignUpFragment;->getViewModel()Lcom/narvii/account/vm/SignUpViewModel;

    .line 187
    move-result-object p1

    .line 188
    .line 189
    .line 190
    invoke-virtual {p1}, Lcom/narvii/account/vm/SignUpViewModel;->loadPhoneAndEmailSignUp()V

    .line 191
    return-void
.end method
