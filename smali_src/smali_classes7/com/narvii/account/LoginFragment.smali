.class public final Lcom/narvii/account/LoginFragment;
.super Lcom/narvii/account/AccountBaseFragment;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/app/FragmentOnBackListener;
.implements Lcom/narvii/services/EventLogProfileService$EventLogProfileListener;
.implements Landroid/text/TextWatcher;


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
.field public accountUtils:Lcom/narvii/account/AccountUtils;

.field private final binding$delegate:Lkotlin/properties/d;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private eventLogProfileService:Lcom/narvii/services/EventLogProfileService;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private eventProfileGot:Z

.field private final listener:Lcom/narvii/account/AccountResponseListener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private pendingOnFinishLogin:Lcom/narvii/account/PendingOnFinishLogin;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private receiver:Landroid/content/BroadcastReceiver;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private request:Lcom/narvii/util/http/ApiRequest;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private sharedPreferences:Landroid/content/SharedPreferences;
    .annotation build Lorg/jetbrains/annotations/Nullable;
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
    const-string v3, "getBinding()Lcom/narvii/amino/databinding/FragmentLoginBinding;"

    .line 10
    .line 11
    const-class v4, Lcom/narvii/account/LoginFragment;

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
    sput-object v0, Lcom/narvii/account/LoginFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 24
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
    sget-object v0, Lcom/narvii/account/LoginFragment$binding$2;->INSTANCE:Lcom/narvii/account/LoginFragment$binding$2;

    .line 6
    .line 7
    .line 8
    invoke-static {p0, v0}, Lcom/narvii/util/FragmentExtensionsKt;->viewBinding(Landroidx/fragment/app/Fragment;Le8/l;)Lkotlin/properties/d;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    iput-object v0, p0, Lcom/narvii/account/LoginFragment;->binding$delegate:Lkotlin/properties/d;

    .line 12
    .line 13
    new-instance v0, Lcom/narvii/account/LoginFragment$receiver$1;

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, p0}, Lcom/narvii/account/LoginFragment$receiver$1;-><init>(Lcom/narvii/account/LoginFragment;)V

    .line 17
    .line 18
    iput-object v0, p0, Lcom/narvii/account/LoginFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 19
    .line 20
    new-instance v0, Lcom/narvii/account/LoginFragment$listener$1;

    .line 21
    .line 22
    .line 23
    invoke-direct {v0, p0}, Lcom/narvii/account/LoginFragment$listener$1;-><init>(Lcom/narvii/account/LoginFragment;)V

    .line 24
    .line 25
    iput-object v0, p0, Lcom/narvii/account/LoginFragment;->listener:Lcom/narvii/account/AccountResponseListener;

    .line 26
    return-void
.end method

.method public static final synthetic access$getBinding(Lcom/narvii/account/LoginFragment;)Lcom/narvii/amino/databinding/FragmentLoginBinding;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/account/LoginFragment;->getBinding()Lcom/narvii/amino/databinding/FragmentLoginBinding;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$savePendingOnFinishLogin(Lcom/narvii/account/LoginFragment;Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/AccountResponse;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/narvii/account/LoginFragment;->savePendingOnFinishLogin(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/AccountResponse;)V

    .line 4
    return-void
.end method

.method private final forgotPassword()V
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
    .line 11
    const v1, 0x7f010010

    .line 12
    .line 13
    .line 14
    const v2, 0x7f010011

    .line 15
    .line 16
    .line 17
    const v3, 0x7f01000e

    .line 18
    .line 19
    .line 20
    const v4, 0x7f01000f

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v3, v4, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->z(IIII)Landroidx/fragment/app/FragmentTransaction;

    .line 24
    .line 25
    new-instance v1, Lcom/narvii/account/resetpassword/EmailResetPasswordFragment;

    .line 26
    .line 27
    .line 28
    invoke-direct {v1}, Lcom/narvii/account/resetpassword/EmailResetPasswordFragment;-><init>()V

    .line 44
    const-string v2, "reset"

    .line 45
    .line 46
    .line 47
    const v3, 0x7f0a05ff

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v3, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->v(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 51
    move-result-object v0

    .line 52
    const/4 v1, 0x0

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->h(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 56
    move-result-object v0

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->k()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    goto :goto_0

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 65
    move-result-object v0

    .line 66
    .line 67
    .line 68
    invoke-static {v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 69
    :goto_0
    return-void
.end method

.method private final getBinding()Lcom/narvii/amino/databinding/FragmentLoginBinding;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/account/LoginFragment;->binding$delegate:Lkotlin/properties/d;

    .line 3
    .line 4
    sget-object v1, Lcom/narvii/account/LoginFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

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
    check-cast v0, Lcom/narvii/amino/databinding/FragmentLoginBinding;

    .line 14
    return-object v0
.end method

.method private final getCurrentPhoneNumber()Ljava/lang/String;
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/account/LoginFragment;->getBinding()Lcom/narvii/amino/databinding/FragmentLoginBinding;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget-object v0, v0, Lcom/narvii/amino/databinding/FragmentLoginBinding;->emailOrPhoneET:Landroid/widget/EditText;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 22
    const/4 v1, 0x2

    .line 23
    const/4 v2, 0x0

    .line 24
    .line 25
    const-string v3, "00"

    .line 26
    const/4 v4, 0x0

    .line 27
    .line 28
    .line 29
    invoke-static {v0, v3, v4, v1, v2}, Lkotlin/text/k;->K(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 30
    move-result v1

    .line 31
    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    .line 35
    invoke-static {v0, v3}, Lkotlin/text/k;->t0(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    const-string v2, "+"

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    move-result-object v0

    .line 54
    :cond_0
    return-object v0
.end method

.method private static final onViewCreated$lambda$12$lambda$11(Lcom/narvii/account/LoginFragment;Landroid/view/View;)V
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

.method private static final onViewCreated$lambda$12$lambda$5(Lcom/narvii/account/LoginFragment;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    .line 2
    const-string p1, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const/4 p1, 0x6

    .line 7
    .line 8
    if-ne p2, p1, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/narvii/account/LoginFragment;->sendLoginRequest()V

    .line 12
    const/4 p0, 0x1

    .line 13
    return p0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    return p0
.end method

.method private static final onViewCreated$lambda$12$lambda$6(Lcom/narvii/account/LoginFragment;Landroid/view/View;)V
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
    invoke-direct {p0}, Lcom/narvii/account/LoginFragment;->forgotPassword()V

    .line 9
    return-void
.end method

.method private static final onViewCreated$lambda$12$lambda$7(Lcom/narvii/account/LoginFragment;Landroid/view/View;)V
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
    invoke-virtual {p0}, Lcom/narvii/account/LoginFragment;->sendLoginRequest()V

    .line 9
    return-void
.end method

.method private static final onViewCreated$lambda$12$lambda$9(Lcom/narvii/account/LoginFragment;Landroid/view/View;)V
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

.method public static synthetic q(Lcom/narvii/account/LoginFragment;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/narvii/account/LoginFragment;->onViewCreated$lambda$12$lambda$5(Lcom/narvii/account/LoginFragment;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic r(Lcom/narvii/account/LoginFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/account/LoginFragment;->onViewCreated$lambda$12$lambda$6(Lcom/narvii/account/LoginFragment;Landroid/view/View;)V

    return-void
.end method

.method private final requestMobileSignUpProvider()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->https()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    const-string v1, "auth/config-v2"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    const-string v1, "api"

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 31
    .line 32
    new-instance v2, Lcom/narvii/account/LoginFragment$requestMobileSignUpProvider$1;

    .line 33
    .line 34
    const-class v3, Lcom/narvii/account/AuthConfigResponse;

    .line 35
    .line 36
    .line 37
    invoke-direct {v2, p0, v3}, Lcom/narvii/account/LoginFragment$requestMobileSignUpProvider$1;-><init>(Lcom/narvii/account/LoginFragment;Ljava/lang/Class;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 41
    return-void
.end method

.method public static synthetic s(Lcom/narvii/account/LoginFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/account/LoginFragment;->onViewCreated$lambda$12$lambda$7(Lcom/narvii/account/LoginFragment;Landroid/view/View;)V

    return-void
.end method

.method private final savePendingOnFinishLogin(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/AccountResponse;)V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/account/PendingOnFinishLogin;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p1, p2}, Lcom/narvii/account/PendingOnFinishLogin;-><init>(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/AccountResponse;)V

    .line 6
    .line 7
    iput-object v0, p0, Lcom/narvii/account/LoginFragment;->pendingOnFinishLogin:Lcom/narvii/account/PendingOnFinishLogin;

    .line 8
    return-void
.end method

.method private final setupRequestBuilder(Lcom/narvii/util/http/ApiRequest$Builder;)V
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/account/LoginFragment;->getBinding()Lcom/narvii/amino/databinding/FragmentLoginBinding;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    instance-of v2, v1, Lcom/narvii/account/LoginActivity;

    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    check-cast v1, Lcom/narvii/account/LoginActivity;

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v1, 0x0

    .line 17
    .line 18
    :goto_0
    iget-object v2, v0, Lcom/narvii/amino/databinding/FragmentLoginBinding;->emailOrPhoneET:Landroid/widget/EditText;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 22
    move-result-object v2

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 26
    move-result-object v2

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v2}, Lcom/narvii/account/AccountBaseFragment;->setUsername(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/narvii/account/LoginFragment;->getAccountUtils()Lcom/narvii/account/AccountUtils;

    .line 33
    move-result-object v2

    .line 34
    .line 35
    iget-object v3, v0, Lcom/narvii/amino/databinding/FragmentLoginBinding;->emailOrPhoneET:Landroid/widget/EditText;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 39
    move-result-object v3

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 43
    move-result-object v3

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2, v3}, Lcom/narvii/account/AccountUtils;->isValidEmail(Ljava/lang/String;)Z

    .line 47
    move-result v2

    .line 48
    .line 49
    const-string v3, "v"

    .line 50
    const/4 v4, 0x2

    .line 51
    .line 52
    if-eqz v2, :cond_4

    .line 53
    .line 54
    if-nez v1, :cond_1

    .line 55
    goto :goto_1

    .line 56
    .line 57
    :cond_1
    iput v4, v1, Lcom/narvii/account/LoginActivity;->statType:I

    .line 58
    .line 59
    :goto_1
    iget-object v2, v0, Lcom/narvii/amino/databinding/FragmentLoginBinding;->emailOrPhoneET:Landroid/widget/EditText;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 63
    move-result-object v2

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 67
    move-result-object v2

    .line 68
    .line 69
    const-string v5, "email"

    .line 70
    .line 71
    if-eqz p1, :cond_2

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, v5, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 75
    .line 76
    :cond_2
    if-eqz p1, :cond_3

    .line 77
    .line 78
    .line 79
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 80
    move-result-object v6

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, v3, v6}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 84
    .line 85
    :cond_3
    if-eqz p1, :cond_4

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, v5, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 89
    .line 90
    .line 91
    :cond_4
    invoke-virtual {p0}, Lcom/narvii/account/LoginFragment;->getAccountUtils()Lcom/narvii/account/AccountUtils;

    .line 92
    move-result-object v2

    .line 93
    .line 94
    iget-object v0, v0, Lcom/narvii/amino/databinding/FragmentLoginBinding;->emailOrPhoneET:Landroid/widget/EditText;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 98
    move-result-object v0

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 102
    move-result-object v0

    .line 103
    .line 104
    .line 105
    invoke-virtual {v2, v0}, Lcom/narvii/account/AccountUtils;->isPhoneWithCountryCode(Ljava/lang/String;)Z

    .line 106
    move-result v0

    .line 107
    .line 108
    if-eqz v0, :cond_8

    .line 109
    .line 110
    if-nez v1, :cond_5

    .line 111
    goto :goto_2

    .line 112
    :cond_5
    const/4 v0, 0x1

    .line 113
    .line 114
    iput v0, v1, Lcom/narvii/account/LoginActivity;->statType:I

    .line 115
    .line 116
    .line 117
    :goto_2
    invoke-direct {p0}, Lcom/narvii/account/LoginFragment;->getCurrentPhoneNumber()Ljava/lang/String;

    .line 118
    move-result-object v0

    .line 119
    .line 120
    if-eqz v0, :cond_8

    .line 121
    .line 122
    const-string v1, "phoneNumber"

    .line 123
    .line 124
    if-eqz p1, :cond_6

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 128
    .line 129
    :cond_6
    if-eqz p1, :cond_7

    .line 130
    .line 131
    .line 132
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 133
    move-result-object v2

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 137
    .line 138
    :cond_7
    if-eqz p1, :cond_8

    .line 139
    .line 140
    .line 141
    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 142
    :cond_8
    return-void
.end method

.method public static synthetic t(Lcom/narvii/account/LoginFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/account/LoginFragment;->onViewCreated$lambda$12$lambda$9(Lcom/narvii/account/LoginFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic u(Lcom/narvii/account/LoginFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/account/LoginFragment;->onViewCreated$lambda$12$lambda$11(Lcom/narvii/account/LoginFragment;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected addStatusBarMargin()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1    # Landroid/text/Editable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/account/LoginFragment;->getBinding()Lcom/narvii/amino/databinding/FragmentLoginBinding;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    iget-object v0, p1, Lcom/narvii/amino/databinding/FragmentLoginBinding;->login:Landroid/widget/Button;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/account/LoginFragment;->isContentVerified()Z

    .line 10
    move-result v1

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/narvii/account/LoginFragment;->getAccountUtils()Lcom/narvii/account/AccountUtils;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    iget-object v1, p1, Lcom/narvii/amino/databinding/FragmentLoginBinding;->emailOrPhoneET:Landroid/widget/EditText;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lcom/narvii/account/AccountUtils;->isPhoneWithCountryCode(Ljava/lang/String;)Z

    .line 31
    move-result v0

    .line 32
    .line 33
    if-nez v0, :cond_0

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/narvii/account/LoginFragment;->getAccountUtils()Lcom/narvii/account/AccountUtils;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    iget-object v1, p1, Lcom/narvii/amino/databinding/FragmentLoginBinding;->emailOrPhoneET:Landroid/widget/EditText;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 43
    move-result-object v1

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 47
    move-result-object v1

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1}, Lcom/narvii/account/AccountUtils;->hasOnlyDigits(Ljava/lang/String;)Z

    .line 51
    move-result v0

    .line 52
    .line 53
    if-eqz v0, :cond_0

    .line 54
    const/4 v0, 0x1

    .line 55
    goto :goto_0

    .line 56
    :cond_0
    const/4 v0, 0x0

    .line 57
    .line 58
    .line 59
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 60
    move-result-object v1

    .line 61
    .line 62
    if-eqz v0, :cond_1

    .line 63
    .line 64
    .line 65
    const v0, 0x7f060161

    .line 66
    goto :goto_1

    .line 67
    .line 68
    .line 69
    :cond_1
    const v0, 0x7f0604b1

    .line 70
    .line 71
    .line 72
    :goto_1
    invoke-static {v1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 73
    move-result v0

    .line 74
    .line 75
    iget-object p1, p1, Lcom/narvii/amino/databinding/FragmentLoginBinding;->phoneValidationTV:Landroid/widget/TextView;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 79
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

.method public clearResponseWhenAccountChange()V
    .locals 0

    return-void
.end method

.method public completeLogEvent(Lcom/narvii/logging/LogEvent$Builder;)V
    .locals 2
    .param p1    # Lcom/narvii/logging/LogEvent$Builder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "builder"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1}, Lcom/narvii/account/AccountBaseFragment;->completeLogEvent(Lcom/narvii/logging/LogEvent$Builder;)V

    .line 9
    .line 10
    const-string v0, "onBoarding"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 14
    move-result v0

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    const-string v1, "coldStart"

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v1, v0}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    .line 24
    return-void
.end method

.method public final executePendingFinishRequest()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/account/LoginFragment;->pendingOnFinishLogin:Lcom/narvii/account/PendingOnFinishLogin;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iget-object v1, p0, Lcom/narvii/account/LoginFragment;->listener:Lcom/narvii/account/AccountResponseListener;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/narvii/account/PendingOnFinishLogin;->getReq()Lcom/narvii/util/http/ApiRequest;

    .line 11
    move-result-object v2

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/narvii/account/PendingOnFinishLogin;->getResp()Lcom/narvii/model/api/AccountResponse;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v2, v0}, Lcom/narvii/account/AccountResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/AccountResponse;)V

    .line 19
    const/4 v0, 0x0

    .line 20
    .line 21
    iput-object v0, p0, Lcom/narvii/account/LoginFragment;->pendingOnFinishLogin:Lcom/narvii/account/PendingOnFinishLogin;

    .line 22
    return-void
.end method

.method public final getAccountUtils()Lcom/narvii/account/AccountUtils;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/account/LoginFragment;->accountUtils:Lcom/narvii/account/AccountUtils;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-object v0

    .line 6
    .line 7
    :cond_0
    const-string v0, "accountUtils"

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public final getListener()Lcom/narvii/account/AccountResponseListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/account/LoginFragment;->listener:Lcom/narvii/account/AccountResponseListener;

    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "login_options"

    return-object v0
.end method

.method public final getReceiver()Landroid/content/BroadcastReceiver;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/account/LoginFragment;->receiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method public final getRequest()Lcom/narvii/util/http/ApiRequest;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/account/LoginFragment;->request:Lcom/narvii/util/http/ApiRequest;

    return-object v0
.end method

.method public final getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/account/LoginFragment;->sharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public final isContentVerified()Z
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/account/LoginFragment;->getBinding()Lcom/narvii/amino/databinding/FragmentLoginBinding;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/narvii/account/LoginFragment;->getAccountUtils()Lcom/narvii/account/AccountUtils;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    iget-object v2, v0, Lcom/narvii/amino/databinding/FragmentLoginBinding;->emailOrPhoneET:Landroid/widget/EditText;

    .line 11
    .line 12
    iget-object v3, v0, Lcom/narvii/amino/databinding/FragmentLoginBinding;->passwordET:Landroid/widget/EditText;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v2, v3}, Lcom/narvii/account/AccountUtils;->isEmailAndPassVerifed(Landroid/widget/TextView;Landroid/widget/TextView;)Z

    .line 16
    move-result v1

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    const/4 v0, 0x1

    .line 20
    goto :goto_0

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/account/LoginFragment;->getAccountUtils()Lcom/narvii/account/AccountUtils;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    iget-object v2, v0, Lcom/narvii/amino/databinding/FragmentLoginBinding;->emailOrPhoneET:Landroid/widget/EditText;

    .line 27
    .line 28
    iget-object v0, v0, Lcom/narvii/amino/databinding/FragmentLoginBinding;->passwordET:Landroid/widget/EditText;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v2, v0}, Lcom/narvii/account/AccountUtils;->isPhoneWithCountryAndPassVerified(Landroid/widget/TextView;Landroid/widget/TextView;)Z

    .line 32
    move-result v0

    .line 33
    :goto_0
    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .param p3    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/account/AccountBaseFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 4
    const/4 v0, -0x1

    .line 5
    .line 6
    if-ne p2, v0, :cond_c

    .line 7
    .line 8
    const/16 p2, 0xc47

    .line 9
    .line 10
    if-ne p1, p2, :cond_c

    .line 11
    .line 12
    if-eqz p3, :cond_c

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    instance-of p2, p1, Lcom/narvii/account/LoginActivity;

    .line 19
    const/4 v0, 0x0

    .line 20
    .line 21
    if-eqz p2, :cond_0

    .line 22
    .line 23
    check-cast p1, Lcom/narvii/account/LoginActivity;

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move-object p1, v0

    .line 26
    .line 27
    :goto_0
    if-nez p1, :cond_1

    .line 28
    goto :goto_1

    .line 29
    .line 30
    :cond_1
    const-string p2, "param_birthday"

    .line 31
    .line 32
    .line 33
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    move-result-object p2

    .line 35
    .line 36
    iput-object p2, p1, Lcom/narvii/account/LoginActivity;->birthday:Ljava/lang/String;

    .line 37
    .line 38
    :goto_1
    if-eqz p1, :cond_2

    .line 39
    .line 40
    iget-object p1, p1, Lcom/narvii/account/LoginActivity;->loggingMethod:Ljava/lang/String;

    .line 41
    goto :goto_2

    .line 42
    :cond_2
    move-object p1, v0

    .line 43
    .line 44
    :goto_2
    const-string p2, "Phone"

    .line 45
    const/4 p3, 0x1

    .line 46
    .line 47
    .line 48
    invoke-static {p2, p1, p3}, Lkotlin/text/k;->w(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 49
    move-result p2

    .line 50
    .line 51
    .line 52
    const v1, 0x7f0a05ff

    .line 53
    .line 54
    const-string v2, "key_sign_up_method"

    .line 55
    .line 56
    .line 57
    const v3, 0x7f010011

    .line 58
    .line 59
    .line 60
    const v4, 0x7f010010

    .line 61
    .line 62
    .line 63
    const v5, 0x7f01000f

    .line 64
    .line 65
    .line 66
    const v6, 0x7f01000e

    .line 67
    .line 68
    if-eqz p2, :cond_5

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 72
    move-result-object p1

    .line 73
    .line 74
    if-eqz p1, :cond_3

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 78
    move-result-object p1

    .line 79
    goto :goto_3

    .line 80
    :cond_3
    move-object p1, v0

    .line 81
    .line 82
    :goto_3
    if-eqz p1, :cond_4

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, v6, v5, v4, v3}, Landroidx/fragment/app/FragmentTransaction;->z(IIII)Landroidx/fragment/app/FragmentTransaction;

    .line 86
    .line 87
    :cond_4
    new-instance p2, Lcom/narvii/account/MobileSignupFragment;

    .line 88
    .line 89
    .line 90
    invoke-direct {p2}, Lcom/narvii/account/MobileSignupFragment;-><init>()V

    .line 91
    .line 92
    new-instance p3, Landroid/os/Bundle;

    .line 93
    .line 94
    .line 95
    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 96
    .line 97
    const-string v3, "phoneSignup"

    .line 98
    .line 99
    .line 100
    invoke-virtual {p3, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p2, p3}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 104
    .line 105
    if-eqz p1, :cond_c

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1, v1, p2}, Landroidx/fragment/app/FragmentTransaction;->u(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 109
    move-result-object p1

    .line 110
    .line 111
    if-eqz p1, :cond_c

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentTransaction;->h(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 115
    move-result-object p1

    .line 116
    .line 117
    if-eqz p1, :cond_c

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->k()I

    .line 121
    .line 122
    goto/16 :goto_5

    .line 123
    .line 124
    :cond_5
    const-string p2, "Email"

    .line 125
    .line 126
    .line 127
    invoke-static {p2, p1, p3}, Lkotlin/text/k;->w(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 128
    move-result p2

    .line 129
    .line 130
    if-eqz p2, :cond_8

    .line 131
    .line 132
    .line 133
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 134
    move-result-object p1

    .line 135
    .line 136
    if-eqz p1, :cond_6

    .line 137
    .line 138
    .line 139
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 140
    move-result-object p1

    .line 141
    goto :goto_4

    .line 142
    :cond_6
    move-object p1, v0

    .line 143
    .line 144
    :goto_4
    if-eqz p1, :cond_7

    .line 145
    .line 146
    .line 147
    invoke-virtual {p1, v6, v5, v4, v3}, Landroidx/fragment/app/FragmentTransaction;->z(IIII)Landroidx/fragment/app/FragmentTransaction;

    .line 148
    .line 149
    :cond_7
    new-instance p2, Lcom/narvii/account/EmailSignupFragment;

    .line 150
    .line 151
    .line 152
    invoke-direct {p2}, Lcom/narvii/account/EmailSignupFragment;-><init>()V

    .line 153
    .line 154
    new-instance p3, Landroid/os/Bundle;

    .line 155
    .line 156
    .line 157
    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 158
    .line 159
    const-string v3, "emailSignup"

    .line 160
    .line 161
    .line 162
    invoke-virtual {p3, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {p2, p3}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 166
    .line 167
    if-eqz p1, :cond_c

    .line 168
    .line 169
    .line 170
    invoke-virtual {p1, v1, p2}, Landroidx/fragment/app/FragmentTransaction;->u(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 171
    move-result-object p1

    .line 172
    .line 173
    if-eqz p1, :cond_c

    .line 174
    .line 175
    .line 176
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentTransaction;->h(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 177
    move-result-object p1

    .line 178
    .line 179
    if-eqz p1, :cond_c

    .line 180
    .line 181
    .line 182
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->k()I

    .line 183
    goto :goto_5

    .line 184
    .line 185
    :cond_8
    const-string p2, "Facebook"

    .line 186
    .line 187
    .line 188
    invoke-static {p2, p1, p3}, Lkotlin/text/k;->w(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 189
    move-result p2

    .line 190
    .line 191
    if-eqz p2, :cond_a

    .line 192
    .line 193
    .line 194
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 195
    move-result-object p1

    .line 196
    .line 197
    if-eqz p1, :cond_9

    .line 198
    .line 199
    .line 200
    const p2, 0x7f0a054c

    .line 201
    .line 202
    .line 203
    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentManager;->l0(I)Landroidx/fragment/app/Fragment;

    .line 204
    move-result-object v0

    .line 205
    .line 206
    .line 207
    .line 208
    :cond_9
    if-eqz v0, :cond_c

    .line 209
    .line 210
    .line 211
    .line 212
    goto :goto_5

    .line 213
    .line 214
    :cond_a
    const-string p2, "Google"

    .line 215
    .line 216
    .line 217
    invoke-static {p2, p1, p3}, Lkotlin/text/k;->w(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 218
    move-result p1

    .line 219
    .line 220
    if-eqz p1, :cond_c

    .line 221
    .line 222
    .line 223
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 224
    move-result-object p1

    .line 225
    .line 226
    if-eqz p1, :cond_b

    .line 227
    .line 228
    .line 229
    const p2, 0x7f0a0626

    .line 230
    .line 231
    .line 232
    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentManager;->l0(I)Landroidx/fragment/app/Fragment;

    .line 233
    move-result-object v0

    .line 234
    .line 235
    :cond_b
    check-cast v0, Lcom/narvii/account/GoogleLoginFragment;

    .line 236
    .line 237
    if-eqz v0, :cond_c

    .line 238
    .line 239
    .line 240
    invoke-virtual {v0}, Lcom/narvii/account/GoogleLoginFragment;->googleConnect()V

    .line 241
    :cond_c
    :goto_5
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "context"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onAttach(Landroid/content/Context;)V

    .line 9
    .line 10
    const-string p1, "prefs"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    check-cast p1, Landroid/content/SharedPreferences;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/narvii/account/LoginFragment;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 19
    return-void
.end method

.method public onBackPressed(Lcom/narvii/app/NVActivity;)Z
    .locals 1
    .param p1    # Lcom/narvii/app/NVActivity;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    sget-object p1, Lcom/narvii/logging/ActSemantic;->cancelAuth:Lcom/narvii/logging/ActSemantic;

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    const-string v0, "EngagementArea"

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 16
    const/4 p1, 0x0

    .line 17
    return p1
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
    const-string p1, "eventLogProfile"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    check-cast p1, Lcom/narvii/services/EventLogProfileService;

    .line 12
    .line 13
    iput-object p1, p0, Lcom/narvii/account/LoginFragment;->eventLogProfileService:Lcom/narvii/services/EventLogProfileService;

    .line 14
    .line 15
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 16
    .line 17
    sput-object p1, Lcom/narvii/account/LoginActivity;->showPhoneNumberItem:Ljava/lang/Boolean;

    .line 18
    .line 19
    .line 20
    invoke-direct {p0}, Lcom/narvii/account/LoginFragment;->requestMobileSignUpProvider()V

    .line 21
    .line 22
    iget-object p1, p0, Lcom/narvii/account/LoginFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 23
    .line 24
    new-instance v0, Landroid/content/IntentFilter;

    .line 25
    .line 26
    const-string v1, "com.narvii.action.ACTION_MOBILE_REGISTER_SWITCH_LOGIN"

    .line 27
    .line 28
    .line 29
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/NVFragment;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 33
    .line 34
    iget-object p1, p0, Lcom/narvii/account/LoginFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 35
    .line 36
    new-instance v0, Landroid/content/IntentFilter;

    .line 37
    .line 38
    const-string v1, "com.narvii.action.ACTION_MOBILE_REGISTER_SWITCH_RESTORE"

    .line 39
    .line 40
    .line 41
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/NVFragment;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 45
    .line 46
    const-string p1, "onBoarding"

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 50
    move-result p1

    .line 51
    .line 52
    if-eqz p1, :cond_0

    .line 53
    .line 54
    const-string p1, "prefs"

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 58
    move-result-object p1

    .line 59
    .line 60
    check-cast p1, Landroid/content/SharedPreferences;

    .line 61
    .line 62
    const-string v0, "signUpStrategy"

    .line 63
    .line 64
    .line 65
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 66
    move-result v1

    .line 67
    .line 68
    if-nez v1, :cond_0

    .line 69
    .line 70
    .line 71
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 72
    move-result-object p1

    .line 73
    const/4 v1, 0x2

    .line 74
    .line 75
    .line 76
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 77
    move-result-object p1

    .line 78
    .line 79
    .line 80
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 81
    .line 82
    :cond_0
    iget-object p1, p0, Lcom/narvii/account/LoginFragment;->eventLogProfileService:Lcom/narvii/services/EventLogProfileService;

    .line 83
    const/4 v0, 0x0

    .line 84
    .line 85
    if-eqz p1, :cond_1

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1}, Lcom/narvii/services/EventLogProfileService;->getResponse()Lcom/narvii/logging/EventLogProfileResponse;

    .line 89
    move-result-object p1

    .line 90
    goto :goto_0

    .line 91
    :cond_1
    move-object p1, v0

    .line 92
    .line 93
    :goto_0
    if-nez p1, :cond_5

    .line 94
    .line 95
    iget-object p1, p0, Lcom/narvii/account/LoginFragment;->eventLogProfileService:Lcom/narvii/services/EventLogProfileService;

    .line 96
    .line 97
    if-eqz p1, :cond_2

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1}, Lcom/narvii/services/EventLogProfileService;->getError()Ljava/lang/String;

    .line 101
    move-result-object p1

    .line 102
    goto :goto_1

    .line 103
    :cond_2
    move-object p1, v0

    .line 104
    .line 105
    :goto_1
    if-eqz p1, :cond_3

    .line 106
    goto :goto_2

    .line 107
    .line 108
    :cond_3
    iget-object p1, p0, Lcom/narvii/account/LoginFragment;->eventLogProfileService:Lcom/narvii/services/EventLogProfileService;

    .line 109
    .line 110
    if-eqz p1, :cond_4

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1}, Lcom/narvii/services/EventLogProfileService;->refreshIfIdle()V

    .line 114
    .line 115
    :cond_4
    iget-object p1, p0, Lcom/narvii/account/LoginFragment;->eventLogProfileService:Lcom/narvii/services/EventLogProfileService;

    .line 116
    .line 117
    if-eqz p1, :cond_6

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1, p0}, Lcom/narvii/services/EventLogProfileService;->addListener(Lcom/narvii/services/EventLogProfileService$EventLogProfileListener;)V

    .line 121
    goto :goto_3

    .line 122
    :cond_5
    :goto_2
    const/4 p1, 0x1

    .line 123
    .line 124
    iput-boolean p1, p0, Lcom/narvii/account/LoginFragment;->eventProfileGot:Z

    .line 125
    .line 126
    .line 127
    :cond_6
    :goto_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 128
    move-result-object p1

    .line 129
    .line 130
    instance-of v1, p1, Lcom/narvii/account/LoginActivity;

    .line 131
    .line 132
    if-eqz v1, :cond_7

    .line 133
    move-object v0, p1

    .line 134
    .line 135
    check-cast v0, Lcom/narvii/account/LoginActivity;

    .line 136
    .line 137
    :cond_7
    if-nez v0, :cond_8

    .line 138
    goto :goto_4

    .line 139
    .line 140
    :cond_8
    const-string p1, ""

    .line 141
    .line 142
    iput-object p1, v0, Lcom/narvii/account/LoginActivity;->birthday:Ljava/lang/String;

    .line 143
    .line 144
    :goto_4
    new-instance p1, Lcom/narvii/account/AccountUtils;

    .line 145
    .line 146
    .line 147
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 148
    move-result-object v0

    .line 149
    .line 150
    .line 151
    invoke-direct {p1, v0}, Lcom/narvii/account/AccountUtils;-><init>(Landroid/content/Context;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p0, p1}, Lcom/narvii/account/LoginFragment;->setAccountUtils(Lcom/narvii/account/AccountUtils;)V

    .line 155
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
    invoke-direct {p0}, Lcom/narvii/account/LoginFragment;->getBinding()Lcom/narvii/amino/databinding/FragmentLoginBinding;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/narvii/amino/databinding/FragmentLoginBinding;->getRoot()Landroid/widget/ScrollView;

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

.method public onDestroy()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/account/LoginFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->unregisterLocalReceiver(Landroid/content/BroadcastReceiver;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroy()V

    .line 9
    return-void
.end method

.method public onProfileChanged(Lcom/narvii/logging/EventLogProfileResponse;Z)V
    .locals 0
    .param p1    # Lcom/narvii/logging/EventLogProfileResponse;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/account/LoginFragment;->eventLogProfileService:Lcom/narvii/services/EventLogProfileService;

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p0}, Lcom/narvii/services/EventLogProfileService;->removeListener(Lcom/narvii/services/EventLogProfileService$EventLogProfileListener;)V

    .line 8
    :cond_0
    const/4 p1, 0x1

    .line 9
    .line 10
    iput-boolean p1, p0, Lcom/narvii/account/LoginFragment;->eventProfileGot:Z

    .line 11
    return-void
.end method

.method public onRequestFailed(Ljava/lang/String;Z)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/account/LoginFragment;->eventLogProfileService:Lcom/narvii/services/EventLogProfileService;

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p0}, Lcom/narvii/services/EventLogProfileService;->removeListener(Lcom/narvii/services/EventLogProfileService$EventLogProfileListener;)V

    .line 8
    :cond_0
    const/4 p1, 0x1

    .line 9
    .line 10
    iput-boolean p1, p0, Lcom/narvii/account/LoginFragment;->eventProfileGot:Z

    .line 11
    return-void
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
    .locals 4
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
    invoke-direct {p0}, Lcom/narvii/account/LoginFragment;->getBinding()Lcom/narvii/amino/databinding/FragmentLoginBinding;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    invoke-super {p0, p1, p2}, Lcom/narvii/account/AccountBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 16
    move-result-object p2

    .line 17
    .line 18
    .line 19
    const v1, 0x7f0a083f

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    .line 26
    invoke-static {p2, p1}, Lcom/narvii/util/statusbar/StatusBarUtils;->addMarginTopToContentChild(Landroid/app/Activity;Landroid/view/View;)V

    .line 27
    .line 28
    const-string p1, "emailOrPhone"

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    move-result-object p2

    .line 33
    const/4 v1, 0x0

    .line 34
    .line 35
    if-eqz p2, :cond_1

    .line 36
    .line 37
    .line 38
    invoke-static {p2}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 39
    .line 40
    iget-object v2, v0, Lcom/narvii/amino/databinding/FragmentLoginBinding;->emailOrPhoneET:Landroid/widget/EditText;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    .line 45
    const-string v2, "pass"

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    move-result-object v2

    .line 50
    .line 51
    if-eqz v2, :cond_1

    .line 52
    .line 53
    .line 54
    invoke-static {v2}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 55
    .line 56
    iget-object v3, v0, Lcom/narvii/amino/databinding/FragmentLoginBinding;->passwordET:Landroid/widget/EditText;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    .line 61
    iget-object v3, v0, Lcom/narvii/amino/databinding/FragmentLoginBinding;->login:Landroid/widget/Button;

    .line 62
    .line 63
    .line 64
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 65
    move-result v2

    .line 66
    .line 67
    if-lez v2, :cond_0

    .line 68
    .line 69
    .line 70
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 71
    move-result p2

    .line 72
    .line 73
    if-lez p2, :cond_0

    .line 74
    const/4 p2, 0x1

    .line 75
    goto :goto_0

    .line 76
    :cond_0
    move p2, v1

    .line 77
    .line 78
    .line 79
    :goto_0
    invoke-virtual {v3, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 80
    .line 81
    .line 82
    :cond_1
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 83
    move-result-object p1

    .line 84
    const/4 p2, 0x0

    .line 85
    .line 86
    if-eqz p1, :cond_2

    .line 87
    .line 88
    .line 89
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 93
    move-result p1

    .line 94
    .line 95
    if-nez p1, :cond_5

    .line 96
    .line 97
    :cond_2
    iget-object p1, p0, Lcom/narvii/account/LoginFragment;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 98
    .line 99
    if-eqz p1, :cond_5

    .line 100
    .line 101
    if-eqz p1, :cond_3

    .line 102
    .line 103
    const-string v2, "last_email"

    .line 104
    .line 105
    .line 106
    invoke-interface {p1, v2, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 107
    move-result-object p1

    .line 108
    .line 109
    if-eqz p1, :cond_3

    .line 110
    .line 111
    iget-object v2, v0, Lcom/narvii/amino/databinding/FragmentLoginBinding;->emailOrPhoneET:Landroid/widget/EditText;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    goto :goto_2

    .line 116
    .line 117
    :cond_3
    iget-object p1, p0, Lcom/narvii/account/LoginFragment;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 118
    .line 119
    if-eqz p1, :cond_4

    .line 120
    .line 121
    const-string v2, "last_phoneNumber"

    .line 122
    .line 123
    .line 124
    invoke-interface {p1, v2, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 125
    move-result-object p1

    .line 126
    goto :goto_1

    .line 127
    :cond_4
    move-object p1, p2

    .line 128
    .line 129
    :goto_1
    iget-object v2, v0, Lcom/narvii/amino/databinding/FragmentLoginBinding;->emailOrPhoneET:Landroid/widget/EditText;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    .line 134
    :cond_5
    :goto_2
    iget-object p1, v0, Lcom/narvii/amino/databinding/FragmentLoginBinding;->emailOrPhoneET:Landroid/widget/EditText;

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 138
    .line 139
    iget-object p1, v0, Lcom/narvii/amino/databinding/FragmentLoginBinding;->passwordET:Landroid/widget/EditText;

    .line 140
    .line 141
    .line 142
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 143
    .line 144
    iget-object p1, v0, Lcom/narvii/amino/databinding/FragmentLoginBinding;->passwordET:Landroid/widget/EditText;

    .line 145
    .line 146
    new-instance v2, Lcom/narvii/account/x;

    .line 147
    .line 148
    .line 149
    invoke-direct {v2, p0}, Lcom/narvii/account/x;-><init>(Lcom/narvii/account/LoginFragment;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 153
    .line 154
    iget-object p1, v0, Lcom/narvii/amino/databinding/FragmentLoginBinding;->forgot:Landroid/widget/TextView;

    .line 155
    .line 156
    new-instance v2, Lcom/narvii/account/y;

    .line 157
    .line 158
    .line 159
    invoke-direct {v2, p0}, Lcom/narvii/account/y;-><init>(Lcom/narvii/account/LoginFragment;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    .line 164
    iget-object p1, v0, Lcom/narvii/amino/databinding/FragmentLoginBinding;->login:Landroid/widget/Button;

    .line 165
    .line 166
    new-instance v2, Lcom/narvii/account/z;

    .line 167
    .line 168
    .line 169
    invoke-direct {v2, p0}, Lcom/narvii/account/z;-><init>(Lcom/narvii/account/LoginFragment;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 176
    move-result-object p1

    .line 177
    .line 178
    instance-of v2, p1, Lcom/narvii/account/LoginActivity;

    .line 179
    .line 180
    if-eqz v2, :cond_6

    .line 181
    move-object p2, p1

    .line 182
    .line 183
    check-cast p2, Lcom/narvii/account/LoginActivity;

    .line 184
    .line 185
    :cond_6
    if-nez p2, :cond_7

    .line 186
    goto :goto_3

    .line 187
    :cond_7
    const/4 p1, 0x3

    .line 188
    .line 189
    iput p1, p2, Lcom/narvii/account/LoginActivity;->statMaxLoginStep:I

    .line 190
    .line 191
    :goto_3
    if-nez p2, :cond_8

    .line 192
    goto :goto_4

    .line 193
    .line 194
    :cond_8
    iput v1, p2, Lcom/narvii/account/LoginActivity;->statMaxSignupSetp:I

    .line 195
    .line 196
    .line 197
    :goto_4
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 198
    move-result-object p1

    .line 199
    .line 200
    .line 201
    const p2, 0x7f12005c

    .line 202
    .line 203
    .line 204
    invoke-virtual {p1, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 205
    move-result-object p1

    .line 206
    .line 207
    .line 208
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 209
    move-result-object p1

    .line 210
    .line 211
    .line 212
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 213
    move-result-object p2

    .line 214
    .line 215
    .line 216
    const v2, 0x7f060496

    .line 217
    .line 218
    .line 219
    invoke-static {p2, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 220
    move-result p2

    .line 221
    .line 222
    iget-object v2, v0, Lcom/narvii/amino/databinding/FragmentLoginBinding;->signupLinkTV:Landroid/widget/TextView;

    .line 223
    .line 224
    const-string v3, "signupLinkTV"

    .line 225
    .line 226
    .line 227
    invoke-static {v2, v3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 231
    move-result-object p2

    .line 232
    .line 233
    new-instance v3, Lcom/narvii/account/LoginFragment$onViewCreated$1$7;

    .line 234
    .line 235
    .line 236
    invoke-direct {v3, p0}, Lcom/narvii/account/LoginFragment$onViewCreated$1$7;-><init>(Lcom/narvii/account/LoginFragment;)V

    .line 237
    .line 238
    .line 239
    invoke-static {v2, p1, v1, p2, v3}, Lcom/narvii/util/kotlin/TextViewExtensionKt;->makeTextLink(Landroid/widget/TextView;Ljava/lang/String;ZLjava/lang/Integer;Le8/a;)V

    .line 240
    .line 241
    iget-object p1, v0, Lcom/narvii/amino/databinding/FragmentLoginBinding;->facebook:Landroid/widget/LinearLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 250
    .line 251
    iget-object p1, v0, Lcom/narvii/amino/databinding/FragmentLoginBinding;->google:Landroid/widget/LinearLayout;

    .line 252
    .line 253
    new-instance p2, Lcom/narvii/account/b0;

    .line 254
    .line 255
    .line 256
    invoke-direct {p2, p0}, Lcom/narvii/account/b0;-><init>(Lcom/narvii/account/LoginFragment;)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 260
    return-void
.end method

.method public final sendLoginRequest()V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/account/LoginFragment;->isContentVerified()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-direct {p0}, Lcom/narvii/account/LoginFragment;->getBinding()Lcom/narvii/amino/databinding/FragmentLoginBinding;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    iget-object v0, v0, Lcom/narvii/amino/databinding/FragmentLoginBinding;->login:Landroid/widget/Button;

    .line 14
    const/4 v1, 0x0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 18
    .line 19
    const-string v0, "account"

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 26
    .line 27
    const-string v1, "api"

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 31
    move-result-object v1

    .line 32
    .line 33
    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 34
    .line 35
    .line 36
    invoke-direct {p0}, Lcom/narvii/account/LoginFragment;->getBinding()Lcom/narvii/amino/databinding/FragmentLoginBinding;

    .line 37
    move-result-object v2

    .line 38
    .line 39
    iget-object v2, v2, Lcom/narvii/amino/databinding/FragmentLoginBinding;->passwordET:Landroid/widget/EditText;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 43
    move-result-object v2

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 47
    move-result-object v2

    .line 48
    .line 49
    .line 50
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 51
    move-result-object v3

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3}, Lcom/narvii/util/http/ApiRequest$Builder;->https()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 55
    move-result-object v4

    .line 56
    .line 57
    .line 58
    invoke-virtual {v4}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 59
    move-result-object v4

    .line 60
    .line 61
    .line 62
    invoke-virtual {v4}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 63
    .line 64
    const-string v4, "/auth/login"

    .line 65
    .line 66
    .line 67
    invoke-virtual {v3, v4}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 68
    .line 69
    .line 70
    invoke-direct {p0, v3}, Lcom/narvii/account/LoginFragment;->setupRequestBuilder(Lcom/narvii/util/http/ApiRequest$Builder;)V

    .line 71
    .line 72
    new-instance v4, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    const-string v5, "0 "

    .line 78
    .line 79
    .line 80
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    move-result-object v4

    .line 88
    .line 89
    const-string v5, "secret"

    .line 90
    .line 91
    .line 92
    invoke-virtual {v3, v5, v4}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 93
    .line 94
    sget-object v4, La0/a;->o:Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getDeviceId()Ljava/lang/String;

    .line 98
    move-result-object v0

    .line 99
    .line 100
    .line 101
    invoke-virtual {v3, v4, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 102
    .line 103
    sget v0, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    .line 104
    .line 105
    .line 106
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 107
    move-result-object v0

    .line 108
    .line 109
    const-string v4, "clientType"

    .line 110
    .line 111
    .line 112
    invoke-virtual {v3, v4, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 113
    .line 114
    const-string v0, "action"

    .line 115
    .line 116
    const-string v4, "normal"

    .line 117
    .line 118
    .line 119
    invoke-virtual {v3, v0, v4}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 120
    .line 121
    const-string v0, "pass"

    .line 122
    .line 123
    .line 124
    invoke-virtual {v3, v0, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v3}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 128
    move-result-object v0

    .line 129
    .line 130
    iput-object v0, p0, Lcom/narvii/account/LoginFragment;->request:Lcom/narvii/util/http/ApiRequest;

    .line 131
    .line 132
    iget-object v2, p0, Lcom/narvii/account/LoginFragment;->listener:Lcom/narvii/account/AccountResponseListener;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 136
    const/4 v0, 0x1

    .line 137
    .line 138
    .line 139
    invoke-virtual {p0, v0}, Lcom/narvii/account/AccountBaseFragment;->setAccountExists(Z)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p0}, Lcom/narvii/account/AccountBaseFragment;->startSubmit()V

    .line 143
    return-void
.end method

.method public final setAccountUtils(Lcom/narvii/account/AccountUtils;)V
    .locals 1
    .param p1    # Lcom/narvii/account/AccountUtils;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/account/LoginFragment;->accountUtils:Lcom/narvii/account/AccountUtils;

    return-void
.end method

.method public final setReceiver(Landroid/content/BroadcastReceiver;)V
    .locals 1
    .param p1    # Landroid/content/BroadcastReceiver;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/account/LoginFragment;->receiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public final setRequest(Lcom/narvii/util/http/ApiRequest;)V
    .locals 0
    .param p1    # Lcom/narvii/util/http/ApiRequest;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/account/LoginFragment;->request:Lcom/narvii/util/http/ApiRequest;

    return-void
.end method

.method public final setSharedPreferences(Landroid/content/SharedPreferences;)V
    .locals 0
    .param p1    # Landroid/content/SharedPreferences;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/account/LoginFragment;->sharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method public shouldShowDialog()V
    .locals 0

    return-void
.end method
