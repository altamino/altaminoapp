.class public final Lcom/narvii/account/resetpassword/MobileResetPasswordFragment;
.super Lcom/narvii/account/AccountBaseFragment;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/account/resetpassword/MobileResetPasswordFragment$Companion;
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

.field public static final Companion:Lcom/narvii/account/resetpassword/MobileResetPasswordFragment$Companion;
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
.field private final binding$delegate:Lkotlin/properties/d;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final checkLevel$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private countryCodePicker:Lcom/narvii/account/mobile/MyPhoneCountryCodePicker;

.field private lastRequestNumber:Ljava/lang/String;
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

.field private phoneInputLayout:Lcom/narvii/widget/TextInputLayout;

.field private sendView:Landroid/view/View;

.field private final verifyCodeHelper$delegate:Lw7/m;
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
    const-string v3, "getBinding()Lcom/narvii/amino/databinding/FragmentMobileResetPasswordBinding;"

    .line 10
    .line 11
    const-class v4, Lcom/narvii/account/resetpassword/MobileResetPasswordFragment;

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
    sput-object v0, Lcom/narvii/account/resetpassword/MobileResetPasswordFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 24
    .line 25
    new-instance v0, Lcom/narvii/account/resetpassword/MobileResetPasswordFragment$Companion;

    .line 26
    const/4 v1, 0x0

    .line 27
    .line 28
    .line 29
    invoke-direct {v0, v1}, Lcom/narvii/account/resetpassword/MobileResetPasswordFragment$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    .line 30
    .line 31
    sput-object v0, Lcom/narvii/account/resetpassword/MobileResetPasswordFragment;->Companion:Lcom/narvii/account/resetpassword/MobileResetPasswordFragment$Companion;

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
    new-instance v0, Lcom/narvii/account/resetpassword/MobileResetPasswordFragment$verifyCodeHelper$2;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/narvii/account/resetpassword/MobileResetPasswordFragment$verifyCodeHelper$2;-><init>(Lcom/narvii/account/resetpassword/MobileResetPasswordFragment;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    iput-object v0, p0, Lcom/narvii/account/resetpassword/MobileResetPasswordFragment;->verifyCodeHelper$delegate:Lw7/m;

    .line 15
    .line 16
    sget-object v0, Lcom/narvii/account/resetpassword/MobileResetPasswordFragment$binding$2;->INSTANCE:Lcom/narvii/account/resetpassword/MobileResetPasswordFragment$binding$2;

    .line 17
    .line 18
    .line 19
    invoke-static {p0, v0}, Lcom/narvii/util/FragmentExtensionsKt;->viewBinding(Landroidx/fragment/app/Fragment;Le8/l;)Lkotlin/properties/d;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    iput-object v0, p0, Lcom/narvii/account/resetpassword/MobileResetPasswordFragment;->binding$delegate:Lkotlin/properties/d;

    .line 23
    .line 24
    new-instance v0, Lcom/narvii/account/resetpassword/MobileResetPasswordFragment$checkLevel$2;

    .line 25
    .line 26
    .line 27
    invoke-direct {v0, p0}, Lcom/narvii/account/resetpassword/MobileResetPasswordFragment$checkLevel$2;-><init>(Lcom/narvii/account/resetpassword/MobileResetPasswordFragment;)V

    .line 28
    .line 29
    .line 30
    invoke-static {v0}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    iput-object v0, p0, Lcom/narvii/account/resetpassword/MobileResetPasswordFragment;->checkLevel$delegate:Lw7/m;

    .line 34
    .line 35
    new-instance v0, Lcom/narvii/account/resetpassword/MobileResetPasswordFragment$oldIdentity$2;

    .line 36
    .line 37
    .line 38
    invoke-direct {v0, p0}, Lcom/narvii/account/resetpassword/MobileResetPasswordFragment$oldIdentity$2;-><init>(Lcom/narvii/account/resetpassword/MobileResetPasswordFragment;)V

    .line 39
    .line 40
    .line 41
    invoke-static {v0}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 42
    move-result-object v0

    .line 43
    .line 44
    iput-object v0, p0, Lcom/narvii/account/resetpassword/MobileResetPasswordFragment;->oldIdentity$delegate:Lw7/m;

    .line 45
    .line 46
    new-instance v0, Lcom/narvii/account/resetpassword/MobileResetPasswordFragment$oldIdentityType$2;

    .line 47
    .line 48
    .line 49
    invoke-direct {v0, p0}, Lcom/narvii/account/resetpassword/MobileResetPasswordFragment$oldIdentityType$2;-><init>(Lcom/narvii/account/resetpassword/MobileResetPasswordFragment;)V

    .line 50
    .line 51
    .line 52
    invoke-static {v0}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 53
    move-result-object v0

    .line 54
    .line 55
    iput-object v0, p0, Lcom/narvii/account/resetpassword/MobileResetPasswordFragment;->oldIdentityType$delegate:Lw7/m;

    .line 56
    .line 57
    new-instance v0, Lcom/narvii/account/resetpassword/MobileResetPasswordFragment$oldCode$2;

    .line 58
    .line 59
    .line 60
    invoke-direct {v0, p0}, Lcom/narvii/account/resetpassword/MobileResetPasswordFragment$oldCode$2;-><init>(Lcom/narvii/account/resetpassword/MobileResetPasswordFragment;)V

    .line 61
    .line 62
    .line 63
    invoke-static {v0}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 64
    move-result-object v0

    .line 65
    .line 66
    iput-object v0, p0, Lcom/narvii/account/resetpassword/MobileResetPasswordFragment;->oldCode$delegate:Lw7/m;

    .line 67
    .line 68
    new-instance v0, Lcom/narvii/account/resetpassword/MobileResetPasswordFragment$oldPassword$2;

    .line 69
    .line 70
    .line 71
    invoke-direct {v0, p0}, Lcom/narvii/account/resetpassword/MobileResetPasswordFragment$oldPassword$2;-><init>(Lcom/narvii/account/resetpassword/MobileResetPasswordFragment;)V

    .line 72
    .line 73
    .line 74
    invoke-static {v0}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 75
    move-result-object v0

    .line 76
    .line 77
    iput-object v0, p0, Lcom/narvii/account/resetpassword/MobileResetPasswordFragment;->oldPassword$delegate:Lw7/m;

    .line 78
    return-void
.end method

.method public static final synthetic access$dismissProgress(Lcom/narvii/account/resetpassword/MobileResetPasswordFragment;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/account/AccountBaseFragment;->dismissProgress()V

    .line 4
    return-void
.end method

.method public static final synthetic access$getAuthType(Lcom/narvii/account/resetpassword/MobileResetPasswordFragment;)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/account/resetpassword/MobileResetPasswordFragment;->getAuthType()I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic access$getVerifyCodeHelper(Lcom/narvii/account/resetpassword/MobileResetPasswordFragment;)Lcom/narvii/account/verifyaccount/VerifyCodeSharedPrefsHelper;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/account/resetpassword/MobileResetPasswordFragment;->getVerifyCodeHelper()Lcom/narvii/account/verifyaccount/VerifyCodeSharedPrefsHelper;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$requestSecurityCode(Lcom/narvii/account/resetpassword/MobileResetPasswordFragment;ILjava/lang/String;Ljava/lang/Integer;Lcom/narvii/util/http/ApiResponseListener;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/narvii/account/AccountBaseFragment;->requestSecurityCode(ILjava/lang/String;Ljava/lang/Integer;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 4
    return-void
.end method

.method public static final synthetic access$showProgress(Lcom/narvii/account/resetpassword/MobileResetPasswordFragment;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/account/AccountBaseFragment;->showProgress()V

    .line 4
    return-void
.end method

.method public static final synthetic access$toVerifyCodePage(Lcom/narvii/account/resetpassword/MobileResetPasswordFragment;Ljava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/account/resetpassword/MobileResetPasswordFragment;->toVerifyCodePage(Ljava/lang/String;)V

    .line 4
    return-void
.end method

.method private final getAuthType()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method private final getBinding()Lcom/narvii/amino/databinding/FragmentMobileResetPasswordBinding;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/account/resetpassword/MobileResetPasswordFragment;->binding$delegate:Lkotlin/properties/d;

    .line 3
    .line 4
    sget-object v1, Lcom/narvii/account/resetpassword/MobileResetPasswordFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

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
    check-cast v0, Lcom/narvii/amino/databinding/FragmentMobileResetPasswordBinding;

    .line 14
    return-object v0
.end method

.method private final getCheckLevel()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/account/resetpassword/MobileResetPasswordFragment;->checkLevel$delegate:Lw7/m;

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

.method private final getCurrentPhoneNumber()Ljava/lang/String;
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/account/resetpassword/MobileResetPasswordFragment;->countryCodePicker:Lcom/narvii/account/mobile/MyPhoneCountryCodePicker;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string v0, "countryCodePicker"

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
    invoke-virtual {v0}, Lcom/narvii/account/mobile/MyPhoneCountryCodePicker;->getCountryCode()I

    .line 15
    move-result v0

    .line 16
    .line 17
    iget-object v2, p0, Lcom/narvii/account/resetpassword/MobileResetPasswordFragment;->phoneInputLayout:Lcom/narvii/widget/TextInputLayout;

    .line 18
    .line 19
    if-nez v2, :cond_1

    .line 20
    .line 21
    const-string v2, "phoneInputLayout"

    .line 22
    .line 23
    .line 24
    invoke-static {v2}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    move-object v1, v2

    .line 27
    .line 28
    .line 29
    :goto_0
    invoke-virtual {v1}, Lcom/narvii/widget/TextInputLayout;->getEditContent()Ljava/lang/String;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    .line 33
    invoke-static {v1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    .line 37
    move-result-object v1

    .line 38
    .line 39
    .line 40
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    move-result-object v1

    .line 42
    .line 43
    new-instance v2, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    const-string v3, "+"

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    const-string v0, " "

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    move-result-object v0

    .line 67
    return-object v0
.end method

.method private final getOldCode()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/account/resetpassword/MobileResetPasswordFragment;->oldCode$delegate:Lw7/m;

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
    iget-object v0, p0, Lcom/narvii/account/resetpassword/MobileResetPasswordFragment;->oldIdentity$delegate:Lw7/m;

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
    iget-object v0, p0, Lcom/narvii/account/resetpassword/MobileResetPasswordFragment;->oldIdentityType$delegate:Lw7/m;

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
    iget-object v0, p0, Lcom/narvii/account/resetpassword/MobileResetPasswordFragment;->oldPassword$delegate:Lw7/m;

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

.method private final getVerifyCodeHelper()Lcom/narvii/account/verifyaccount/VerifyCodeSharedPrefsHelper;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/account/resetpassword/MobileResetPasswordFragment;->verifyCodeHelper$delegate:Lw7/m;

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

.method private final isContentVerified()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/account/resetpassword/MobileResetPasswordFragment;->phoneInputLayout:Lcom/narvii/widget/TextInputLayout;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const-string v0, "phoneInputLayout"

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
    invoke-virtual {v0}, Lcom/narvii/widget/TextInputLayout;->getEditContent()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    move-result v0

    .line 19
    .line 20
    xor-int/lit8 v0, v0, 0x1

    .line 21
    return v0
.end method

.method private static final onViewCreated$lambda$0(Lcom/narvii/account/resetpassword/MobileResetPasswordFragment;Landroid/view/View;)V
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
    const-string v0, "VerifyNumber"

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
    .line 23
    invoke-direct {p0}, Lcom/narvii/account/resetpassword/MobileResetPasswordFragment;->verifyNumber()V

    .line 24
    return-void
.end method

.method public static synthetic q(Lcom/narvii/account/resetpassword/MobileResetPasswordFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/account/resetpassword/MobileResetPasswordFragment;->onViewCreated$lambda$0(Lcom/narvii/account/resetpassword/MobileResetPasswordFragment;Landroid/view/View;)V

    return-void
.end method

.method private final toCheckPhone(Ljava/lang/String;Lcom/narvii/util/http/ApiResponseListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/narvii/util/http/ApiResponseListener<",
            "Lcom/narvii/model/api/ApiResponse;",
            ">;)V"
        }
    .end annotation

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
    const-string v3, "/auth/register-check"

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
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getDeviceId()Ljava/lang/String;

    .line 47
    move-result-object v0

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2, v3, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 51
    move-result-object v0

    .line 52
    .line 53
    const-string v2, "phoneNumber"

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v2, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 57
    move-result-object v0

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v2, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 61
    move-result-object p1

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 65
    move-result-object p1

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, p1, p2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 69
    return-void
.end method

.method private final toLoginPage()V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Landroid/content/Intent;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 6
    .line 7
    const-string v1, "phoneNumber"

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/narvii/account/resetpassword/MobileResetPasswordFragment;->getCurrentPhoneNumber()Ljava/lang/String;

    .line 11
    move-result-object v2

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lcom/narvii/account/AccountBaseFragment;->switchLogin(Landroid/content/Intent;)V

    .line 18
    return-void
.end method

.method private final toVerifyCodePage(Ljava/lang/String;)V
    .locals 5

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
    iput-object p1, p0, Lcom/narvii/account/resetpassword/MobileResetPasswordFragment;->lastRequestNumber:Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    const-string v1, "beginTransaction(...)"

    .line 20
    .line 21
    .line 22
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const v1, 0x7f010010

    .line 26
    .line 27
    .line 28
    const v2, 0x7f010011

    .line 29
    .line 30
    .line 31
    const v3, 0x7f01000e

    .line 32
    .line 33
    .line 34
    const v4, 0x7f01000f

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v3, v4, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->z(IIII)Landroidx/fragment/app/FragmentTransaction;

    .line 38
    .line 39
    new-instance v1, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;

    .line 40
    .line 41
    .line 42
    invoke-direct {v1}, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;-><init>()V

    .line 43
    .line 44
    new-instance v2, Landroid/os/Bundle;

    .line 45
    .line 46
    .line 47
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 48
    .line 49
    const-string v3, "identity_to_verify_type"

    .line 50
    const/4 v4, 0x1

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 54
    .line 55
    const-string v3, "phone"

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2, v3, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    const-string p1, "verify_type"

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2, p1, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 64
    .line 65
    const-string p1, "check_level"

    .line 66
    .line 67
    .line 68
    invoke-direct {p0}, Lcom/narvii/account/resetpassword/MobileResetPasswordFragment;->getCheckLevel()I

    .line 69
    move-result v3

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2, p1, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 73
    .line 74
    const-string p1, "old_identity"

    .line 75
    .line 76
    .line 77
    invoke-direct {p0}, Lcom/narvii/account/resetpassword/MobileResetPasswordFragment;->getOldIdentity()Ljava/lang/String;

    .line 78
    move-result-object v3

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2, p1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    const-string p1, "type"

    .line 84
    .line 85
    .line 86
    invoke-direct {p0}, Lcom/narvii/account/resetpassword/MobileResetPasswordFragment;->getOldIdentityType()I

    .line 87
    move-result v3

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2, p1, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 91
    .line 92
    const-string p1, "old_code"

    .line 93
    .line 94
    .line 95
    invoke-direct {p0}, Lcom/narvii/account/resetpassword/MobileResetPasswordFragment;->getOldCode()Ljava/lang/String;

    .line 96
    move-result-object v3

    .line 97
    .line 98
    .line 99
    invoke-virtual {v2, p1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .line 101
    const-string p1, "old_password"

    .line 102
    .line 103
    .line 104
    invoke-direct {p0}, Lcom/narvii/account/resetpassword/MobileResetPasswordFragment;->getOldPassword()Ljava/lang/String;

    .line 105
    move-result-object v3

    .line 106
    .line 107
    .line 108
    invoke-virtual {v2, p1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .line 110
    const-string p1, "key_third_part_secret"

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 114
    move-result-object v3

    .line 115
    .line 116
    .line 117
    invoke-virtual {v2, p1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    .line 119
    const-string p1, "key_is_third_part"

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 123
    move-result v3

    .line 124
    .line 125
    .line 126
    invoke-virtual {v2, p1, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 127
    .line 128
    const-string p1, "key_sign_up_method"

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 132
    move-result-object v3

    .line 133
    .line 134
    .line 135
    invoke-virtual {v2, p1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    .line 137
    const-string p1, "key_third_party_nickname"

    .line 138
    .line 139
    .line 140
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 141
    move-result-object v3

    .line 142
    .line 143
    .line 144
    invoke-virtual {v2, p1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    .line 146
    const-string p1, "key_avatar_url"

    .line 147
    .line 148
    .line 149
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 150
    move-result-object v3

    .line 151
    .line 152
    .line 153
    invoke-virtual {v2, p1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContainerId()Ljava/lang/Integer;

    .line 160
    move-result-object p1

    .line 161
    .line 162
    if-eqz p1, :cond_1

    .line 163
    .line 164
    .line 165
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 166
    move-result p1

    .line 167
    .line 168
    .line 169
    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/FragmentTransaction;->u(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 170
    move-result-object p1

    .line 171
    const/4 v0, 0x0

    .line 172
    .line 173
    .line 174
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentTransaction;->h(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 175
    move-result-object p1

    .line 176
    .line 177
    .line 178
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->k()I

    .line 179
    :cond_1
    return-void
.end method

.method private final verifyNumber()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/account/resetpassword/MobileResetPasswordFragment;->getCurrentPhoneNumber()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/narvii/account/resetpassword/MobileResetPasswordFragment;->lastRequestNumber:Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 10
    move-result v1

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, v0}, Lcom/narvii/account/resetpassword/MobileResetPasswordFragment;->toVerifyCodePage(Ljava/lang/String;)V

    .line 16
    return-void

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/account/AccountBaseFragment;->showProgress()V

    .line 20
    const/4 v1, 0x1

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v1}, Lcom/narvii/account/AccountBaseFragment;->setIsRequesting(Z)V

    .line 24
    .line 25
    new-instance v1, Lcom/narvii/account/resetpassword/MobileResetPasswordFragment$verifyNumber$1;

    .line 26
    .line 27
    const-class v2, Lcom/narvii/model/api/ApiResponse;

    .line 28
    .line 29
    .line 30
    invoke-direct {v1, p0, v0, v2}, Lcom/narvii/account/resetpassword/MobileResetPasswordFragment$verifyNumber$1;-><init>(Lcom/narvii/account/resetpassword/MobileResetPasswordFragment;Ljava/lang/String;Ljava/lang/Class;)V

    .line 31
    .line 32
    .line 33
    invoke-direct {p0, v0, v1}, Lcom/narvii/account/resetpassword/MobileResetPasswordFragment;->toCheckPhone(Ljava/lang/String;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 34
    return-void
.end method


# virtual methods
.method protected addStatusBarMargin()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .param p1    # Landroid/text/Editable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/account/resetpassword/MobileResetPasswordFragment;->sendView:Landroid/view/View;

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    const-string p1, "sendView"

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 10
    const/4 p1, 0x0

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-direct {p0}, Lcom/narvii/account/resetpassword/MobileResetPasswordFragment;->isContentVerified()Z

    .line 14
    move-result v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 18
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

    const-string v0, "ResetPasswordEnterPhoneNumber"

    return-object v0
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
    invoke-direct {p0}, Lcom/narvii/account/resetpassword/MobileResetPasswordFragment;->getBinding()Lcom/narvii/amino/databinding/FragmentMobileResetPasswordBinding;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/narvii/amino/databinding/FragmentMobileResetPasswordBinding;->getRoot()Landroid/widget/LinearLayout;

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

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

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
    const p2, 0x7f0a0ae2

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 15
    move-result-object p2

    .line 16
    .line 17
    const-string v0, "findViewById(...)"

    .line 18
    .line 19
    .line 20
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    check-cast p2, Lcom/narvii/widget/TextInputLayout;

    .line 23
    .line 24
    iput-object p2, p0, Lcom/narvii/account/resetpassword/MobileResetPasswordFragment;->phoneInputLayout:Lcom/narvii/widget/TextInputLayout;

    .line 25
    .line 26
    .line 27
    const p2, 0x7f0a03c8

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 31
    move-result-object p2

    .line 32
    .line 33
    .line 34
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    check-cast p2, Lcom/narvii/account/mobile/MyPhoneCountryCodePicker;

    .line 37
    .line 38
    iput-object p2, p0, Lcom/narvii/account/resetpassword/MobileResetPasswordFragment;->countryCodePicker:Lcom/narvii/account/mobile/MyPhoneCountryCodePicker;

    .line 39
    .line 40
    .line 41
    const p2, 0x7f0a0cd8

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 45
    move-result-object p1

    .line 46
    .line 47
    .line 48
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    .line 50
    iput-object p1, p0, Lcom/narvii/account/resetpassword/MobileResetPasswordFragment;->sendView:Landroid/view/View;

    .line 51
    .line 52
    iget-object p1, p0, Lcom/narvii/account/resetpassword/MobileResetPasswordFragment;->phoneInputLayout:Lcom/narvii/widget/TextInputLayout;

    .line 53
    const/4 p2, 0x0

    .line 54
    .line 55
    if-nez p1, :cond_0

    .line 56
    .line 57
    const-string p1, "phoneInputLayout"

    .line 58
    .line 59
    .line 60
    invoke-static {p1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 61
    move-object p1, p2

    .line 62
    .line 63
    .line 64
    :cond_0
    invoke-virtual {p1, p0}, Lcom/narvii/widget/TextInputLayout;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 65
    .line 66
    iget-object p1, p0, Lcom/narvii/account/resetpassword/MobileResetPasswordFragment;->sendView:Landroid/view/View;

    .line 67
    .line 68
    if-nez p1, :cond_1

    .line 69
    .line 70
    const-string p1, "sendView"

    .line 71
    .line 72
    .line 73
    invoke-static {p1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 74
    goto :goto_0

    .line 75
    :cond_1
    move-object p2, p1

    .line 76
    .line 77
    :goto_0
    new-instance p1, Lcom/narvii/account/resetpassword/d;

    .line 78
    .line 79
    .line 80
    invoke-direct {p1, p0}, Lcom/narvii/account/resetpassword/d;-><init>(Lcom/narvii/account/resetpassword/MobileResetPasswordFragment;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    return-void
.end method
