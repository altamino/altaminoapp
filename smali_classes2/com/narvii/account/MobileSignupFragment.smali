.class public final Lcom/narvii/account/MobileSignupFragment;
.super Lcom/narvii/account/AccountBaseFragment;
.source "MobileSignupFragment.kt"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMobileSignupFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MobileSignupFragment.kt\ncom/narvii/account/MobileSignupFragment\n*L\n1#1,194:1\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private final accountUtils$delegate:Lkotlin/Lazy;

.field public countryCodePicker:Lcom/narvii/account/mobile/MyPhoneCountryCodePicker;

.field private lastRequestNumber:Ljava/lang/String;

.field public phoneInputLayout:Lcom/narvii/widget/TextInputLayout;

.field public sendView:Landroid/view/View;

.field private final verifyCodeHelper$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/account/MobileSignupFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "accountUtils"

    const-string v4, "getAccountUtils()Lcom/narvii/account/AccountUtils;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/account/MobileSignupFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string/jumbo v3, "verifyCodeHelper"

    const-string v4, "getVerifyCodeHelper()Lcom/narvii/account/VerifyCodeSharedPrefsHelper;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/narvii/account/MobileSignupFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Lcom/narvii/account/AccountBaseFragment;-><init>()V

    .line 29
    new-instance v0, Lcom/narvii/account/MobileSignupFragment$accountUtils$2;

    invoke-direct {v0, p0}, Lcom/narvii/account/MobileSignupFragment$accountUtils$2;-><init>(Lcom/narvii/account/MobileSignupFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/account/MobileSignupFragment;->accountUtils$delegate:Lkotlin/Lazy;

    .line 34
    new-instance v0, Lcom/narvii/account/MobileSignupFragment$verifyCodeHelper$2;

    invoke-direct {v0, p0}, Lcom/narvii/account/MobileSignupFragment$verifyCodeHelper$2;-><init>(Lcom/narvii/account/MobileSignupFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/account/MobileSignupFragment;->verifyCodeHelper$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getAuthType(Lcom/narvii/account/MobileSignupFragment;)I
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/narvii/account/MobileSignupFragment;->getAuthType()I

    move-result p0

    return p0
.end method

.method public static final synthetic access$getVerifyCodeHelper$p(Lcom/narvii/account/MobileSignupFragment;)Lcom/narvii/account/VerifyCodeSharedPrefsHelper;
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/narvii/account/MobileSignupFragment;->getVerifyCodeHelper()Lcom/narvii/account/VerifyCodeSharedPrefsHelper;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$toLoginPage(Lcom/narvii/account/MobileSignupFragment;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/narvii/account/MobileSignupFragment;->toLoginPage()V

    return-void
.end method

.method public static final synthetic access$toVerifyCodePage(Lcom/narvii/account/MobileSignupFragment;Ljava/lang/String;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/narvii/account/MobileSignupFragment;->toVerifyCodePage(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$verifyNumber(Lcom/narvii/account/MobileSignupFragment;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/narvii/account/MobileSignupFragment;->verifyNumber()V

    return-void
.end method

.method private final getAuthType()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method private final getCurrentPhoneNumber()Ljava/lang/String;
    .locals 4

    .line 159
    iget-object v0, p0, Lcom/narvii/account/MobileSignupFragment;->phoneInputLayout:Lcom/narvii/widget/TextInputLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/narvii/widget/TextInputLayout;->getEditContent()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 160
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/narvii/account/MobileSignupFragment;->countryCodePicker:Lcom/narvii/account/mobile/MyPhoneCountryCodePicker;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/narvii/account/mobile/MyPhoneCountryCodePicker;->getCountryCode()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "countryCodePicker"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 159
    :cond_1
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1

    :cond_2
    const-string v0, "phoneInputLayout"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method private final getVerifyCodeHelper()Lcom/narvii/account/VerifyCodeSharedPrefsHelper;
    .locals 3

    iget-object v0, p0, Lcom/narvii/account/MobileSignupFragment;->verifyCodeHelper$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/account/MobileSignupFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/VerifyCodeSharedPrefsHelper;

    return-object v0
.end method

.method private final isContentVerified()Z
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/narvii/account/MobileSignupFragment;->phoneInputLayout:Lcom/narvii/widget/TextInputLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/widget/TextInputLayout;->getEditContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    :cond_0
    const-string v0, "phoneInputLayout"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
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

    const-string v0, "account"

    .line 118
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    const-string v1, "api"

    .line 119
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 120
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->https()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    const-string v3, "/auth/register-check"

    .line 121
    invoke-virtual {v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    const-string v3, "deviceID"

    invoke-virtual {v2, v3, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const-string v2, "phoneNumber"

    .line 123
    invoke-virtual {v0, v2, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 124
    invoke-virtual {v0, v2, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    .line 125
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    .line 126
    invoke-virtual {v1, p1, p2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void

    .line 122
    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 p1, 0x0

    throw p1
.end method

.method private final toLoginPage()V
    .locals 3

    .line 151
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 152
    invoke-direct {p0}, Lcom/narvii/account/MobileSignupFragment;->getCurrentPhoneNumber()Ljava/lang/String;

    move-result-object v1

    const-string v2, "phoneNumber"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    invoke-virtual {p0, v0}, Lcom/narvii/account/AccountBaseFragment;->switchLogin(Landroid/content/Intent;)V

    return-void
.end method

.method private final toVerifyCodePage(Ljava/lang/String;)V
    .locals 6

    .line 130
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 133
    :cond_0
    iput-object p1, p0, Lcom/narvii/account/MobileSignupFragment;->lastRequestNumber:Ljava/lang/String;

    .line 134
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v2, 0x7f01000e

    const v3, 0x7f01000f

    const v4, 0x7f010010

    const v5, 0x7f010011

    .line 135
    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    .line 137
    new-instance v2, Lcom/narvii/account/CodeVerifyFragment;

    invoke-direct {v2}, Lcom/narvii/account/CodeVerifyFragment;-><init>()V

    .line 138
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const/4 v4, 0x1

    const-string/jumbo v5, "type"

    .line 139
    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "phone"

    .line 140
    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "key_third_part_secret"

    .line 141
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "key_is_third_part"

    .line 142
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v3, p1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "key_sign_up_method"

    .line 143
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "key_third_party_nickname"

    .line 144
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "key_avatar_url"

    .line 145
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-virtual {v2, v3}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    const p1, 0x7f0904ba

    .line 147
    invoke-virtual {v0, p1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void

    .line 134
    :cond_1
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1
.end method

.method private final verifyNumber()V
    .locals 3

    .line 56
    invoke-direct {p0}, Lcom/narvii/account/MobileSignupFragment;->getCurrentPhoneNumber()Ljava/lang/String;

    move-result-object v0

    .line 57
    iget-object v1, p0, Lcom/narvii/account/MobileSignupFragment;->lastRequestNumber:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    invoke-direct {p0, v0}, Lcom/narvii/account/MobileSignupFragment;->toVerifyCodePage(Ljava/lang/String;)V

    return-void

    .line 61
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/account/AccountBaseFragment;->showProgress()V

    const/4 v1, 0x1

    .line 62
    invoke-virtual {p0, v1}, Lcom/narvii/account/AccountBaseFragment;->setIsRequesting(Z)V

    .line 63
    new-instance v1, Lcom/narvii/account/MobileSignupFragment$verifyNumber$1;

    const-class v2, Lcom/narvii/model/api/ApiResponse;

    invoke-direct {v1, p0, v0, v2}, Lcom/narvii/account/MobileSignupFragment$verifyNumber$1;-><init>(Lcom/narvii/account/MobileSignupFragment;Ljava/lang/String;Ljava/lang/Class;)V

    invoke-direct {p0, v0, v1}, Lcom/narvii/account/MobileSignupFragment;->toCheckPhone(Ljava/lang/String;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/account/MobileSignupFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/account/MobileSignupFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/account/MobileSignupFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/account/MobileSignupFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/account/MobileSignupFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 181
    iget-object p1, p0, Lcom/narvii/account/MobileSignupFragment;->sendView:Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/narvii/account/MobileSignupFragment;->isContentVerified()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    return-void

    :cond_0
    const-string p1, "sendView"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method protected final getAccountUtils()Lcom/narvii/account/AccountUtils;
    .locals 3

    iget-object v0, p0, Lcom/narvii/account/MobileSignupFragment;->accountUtils$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/account/MobileSignupFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountUtils;

    return-object v0
.end method

.method public final getCountryCodePicker()Lcom/narvii/account/mobile/MyPhoneCountryCodePicker;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/narvii/account/MobileSignupFragment;->countryCodePicker:Lcom/narvii/account/mobile/MyPhoneCountryCodePicker;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "countryCodePicker"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "SignUpEnterPhoneNumber"

    return-object v0
.end method

.method public final getPhoneInputLayout()Lcom/narvii/widget/TextInputLayout;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/narvii/account/MobileSignupFragment;->phoneInputLayout:Lcom/narvii/widget/TextInputLayout;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "phoneInputLayout"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getSendView()Landroid/view/View;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/narvii/account/MobileSignupFragment;->sendView:Landroid/view/View;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "sendView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method protected handleAlreadyRegistered(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 103
    new-instance p2, Lcom/narvii/widget/ACMAlertDialog;

    const-string v0, "SignUpNumberTaken"

    invoke-direct {p2, p0, v0}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    const v0, 0x7f0f0cc8

    .line 104
    invoke-virtual {p2, v0}, Lcom/narvii/widget/ACMAlertDialog;->setTitle(I)V

    .line 105
    invoke-virtual {p2, p1}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 106
    new-instance v0, Lcom/narvii/account/MobileSignupFragment$handleAlreadyRegistered$$inlined$apply$lambda$1;

    invoke-direct {v0, p2, p0, p1}, Lcom/narvii/account/MobileSignupFragment$handleAlreadyRegistered$$inlined$apply$lambda$1;-><init>(Lcom/narvii/widget/ACMAlertDialog;Lcom/narvii/account/MobileSignupFragment;Ljava/lang/String;)V

    const v1, 0x7f0f03cd

    invoke-virtual {p2, v1, v0}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 110
    new-instance v0, Lcom/narvii/account/MobileSignupFragment$handleAlreadyRegistered$$inlined$apply$lambda$2;

    invoke-direct {v0, p2, p0, p1}, Lcom/narvii/account/MobileSignupFragment$handleAlreadyRegistered$$inlined$apply$lambda$2;-><init>(Lcom/narvii/widget/ACMAlertDialog;Lcom/narvii/account/MobileSignupFragment;Ljava/lang/String;)V

    const p1, 0x7f0f0043

    invoke-virtual {p2, p1, v0}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 114
    invoke-virtual {p2}, Lcom/narvii/app/NVDialog;->show()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0b02c2

    const/4 v0, 0x0

    .line 40
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/narvii/account/MobileSignupFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-super {p0, p1, p2}, Lcom/narvii/account/AccountBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f09082b

    .line 45
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string/jumbo v0, "view.findViewById(R.id.phone_input_layout)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/narvii/widget/TextInputLayout;

    iput-object p2, p0, Lcom/narvii/account/MobileSignupFragment;->phoneInputLayout:Lcom/narvii/widget/TextInputLayout;

    const p2, 0x7f0902f5

    .line 46
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string/jumbo v0, "view.findViewById(R.id.country_picker)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/narvii/account/mobile/MyPhoneCountryCodePicker;

    iput-object p2, p0, Lcom/narvii/account/MobileSignupFragment;->countryCodePicker:Lcom/narvii/account/mobile/MyPhoneCountryCodePicker;

    const p2, 0x7f090a10

    .line 47
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string/jumbo p2, "view.findViewById(R.id.send)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/account/MobileSignupFragment;->sendView:Landroid/view/View;

    .line 48
    iget-object p1, p0, Lcom/narvii/account/MobileSignupFragment;->phoneInputLayout:Lcom/narvii/widget/TextInputLayout;

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1, p0}, Lcom/narvii/widget/TextInputLayout;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 49
    iget-object p1, p0, Lcom/narvii/account/MobileSignupFragment;->sendView:Landroid/view/View;

    if-eqz p1, :cond_0

    new-instance p2, Lcom/narvii/account/MobileSignupFragment$onViewCreated$1;

    invoke-direct {p2, p0}, Lcom/narvii/account/MobileSignupFragment$onViewCreated$1;-><init>(Lcom/narvii/account/MobileSignupFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    const-string p1, "sendView"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p2

    :cond_1
    const-string p1, "phoneInputLayout"

    .line 48
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p2
.end method

.method public final setCountryCodePicker(Lcom/narvii/account/mobile/MyPhoneCountryCodePicker;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iput-object p1, p0, Lcom/narvii/account/MobileSignupFragment;->countryCodePicker:Lcom/narvii/account/mobile/MyPhoneCountryCodePicker;

    return-void
.end method

.method public final setPhoneInputLayout(Lcom/narvii/widget/TextInputLayout;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iput-object p1, p0, Lcom/narvii/account/MobileSignupFragment;->phoneInputLayout:Lcom/narvii/widget/TextInputLayout;

    return-void
.end method

.method public final setSendView(Landroid/view/View;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iput-object p1, p0, Lcom/narvii/account/MobileSignupFragment;->sendView:Landroid/view/View;

    return-void
.end method
