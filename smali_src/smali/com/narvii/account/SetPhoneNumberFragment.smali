.class public final Lcom/narvii/account/SetPhoneNumberFragment;
.super Lcom/narvii/account/SetIdentityFragment;
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

.field private countryCodePicker:Lcom/narvii/account/mobile/MyPhoneCountryCodePicker;


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
    const-string v3, "getBinding()Lcom/narvii/amino/databinding/FragmentSetPhoneNumberBinding;"

    .line 10
    .line 11
    const-class v4, Lcom/narvii/account/SetPhoneNumberFragment;

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
    sput-object v0, Lcom/narvii/account/SetPhoneNumberFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 24
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/account/SetIdentityFragment;-><init>()V

    .line 4
    .line 5
    sget-object v0, Lcom/narvii/account/SetPhoneNumberFragment$binding$2;->INSTANCE:Lcom/narvii/account/SetPhoneNumberFragment$binding$2;

    .line 6
    .line 7
    .line 8
    invoke-static {p0, v0}, Lcom/narvii/util/FragmentExtensionsKt;->viewBinding(Landroidx/fragment/app/Fragment;Le8/l;)Lkotlin/properties/d;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    iput-object v0, p0, Lcom/narvii/account/SetPhoneNumberFragment;->binding$delegate:Lkotlin/properties/d;

    .line 12
    return-void
.end method

.method public static final synthetic access$getBinding(Lcom/narvii/account/SetPhoneNumberFragment;)Lcom/narvii/amino/databinding/FragmentSetPhoneNumberBinding;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/account/SetPhoneNumberFragment;->getBinding()Lcom/narvii/amino/databinding/FragmentSetPhoneNumberBinding;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final getBinding()Lcom/narvii/amino/databinding/FragmentSetPhoneNumberBinding;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/account/SetPhoneNumberFragment;->binding$delegate:Lkotlin/properties/d;

    .line 3
    .line 4
    sget-object v1, Lcom/narvii/account/SetPhoneNumberFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

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
    check-cast v0, Lcom/narvii/amino/databinding/FragmentSetPhoneNumberBinding;

    .line 14
    return-object v0
.end method

.method private final getCurrentPhoneNumber()Ljava/lang/String;
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/account/SetPhoneNumberFragment;->countryCodePicker:Lcom/narvii/account/mobile/MyPhoneCountryCodePicker;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const-string v0, "countryCodePicker"

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
    invoke-virtual {v0}, Lcom/narvii/account/mobile/MyPhoneCountryCodePicker;->getCountryCode()I

    .line 14
    move-result v0

    .line 15
    .line 16
    .line 17
    invoke-direct {p0}, Lcom/narvii/account/SetPhoneNumberFragment;->getBinding()Lcom/narvii/amino/databinding/FragmentSetPhoneNumberBinding;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    iget-object v1, v1, Lcom/narvii/amino/databinding/FragmentSetPhoneNumberBinding;->phoneInputLayout:Lcom/narvii/widget/TextInputLayout;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/narvii/widget/TextInputLayout;->getEditContent()Ljava/lang/String;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    .line 31
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    move-result-object v1

    .line 33
    .line 34
    new-instance v2, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    const-string v3, "+"

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    const-string v0, " "

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    move-result-object v0

    .line 58
    return-object v0
.end method

.method private static final onViewCreated$lambda$0(Lcom/narvii/account/SetPhoneNumberFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    const-string/jumbo p1, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/narvii/account/SetPhoneNumberFragment;->getCurrentPhoneNumber()Ljava/lang/String;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/narvii/account/SetIdentityFragment;->checkLegality(Ljava/lang/String;)V

    .line 13
    return-void
.end method

.method public static synthetic r(Lcom/narvii/account/SetPhoneNumberFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/account/SetPhoneNumberFragment;->onViewCreated$lambda$0(Lcom/narvii/account/SetPhoneNumberFragment;Landroid/view/View;)V

    return-void
.end method


# virtual methods
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
    invoke-direct {p0}, Lcom/narvii/account/SetPhoneNumberFragment;->getBinding()Lcom/narvii/amino/databinding/FragmentSetPhoneNumberBinding;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/narvii/amino/databinding/FragmentSetPhoneNumberBinding;->getRoot()Landroid/widget/LinearLayout;

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
    const-string/jumbo v0, "view"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1, p2}, Lcom/narvii/account/SetIdentityFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 9
    .line 10
    .line 11
    const p2, 0x7f0a03c8

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    const-string p2, "findViewById(...)"

    .line 18
    .line 19
    .line 20
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    check-cast p1, Lcom/narvii/account/mobile/MyPhoneCountryCodePicker;

    .line 23
    .line 24
    iput-object p1, p0, Lcom/narvii/account/SetPhoneNumberFragment;->countryCodePicker:Lcom/narvii/account/mobile/MyPhoneCountryCodePicker;

    .line 25
    .line 26
    .line 27
    invoke-direct {p0}, Lcom/narvii/account/SetPhoneNumberFragment;->getBinding()Lcom/narvii/amino/databinding/FragmentSetPhoneNumberBinding;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    iget-object p1, p1, Lcom/narvii/amino/databinding/FragmentSetPhoneNumberBinding;->phoneInputLayout:Lcom/narvii/widget/TextInputLayout;

    .line 31
    .line 32
    new-instance p2, Lcom/narvii/account/SetPhoneNumberFragment$onViewCreated$1;

    .line 33
    .line 34
    .line 35
    invoke-direct {p2, p0}, Lcom/narvii/account/SetPhoneNumberFragment$onViewCreated$1;-><init>(Lcom/narvii/account/SetPhoneNumberFragment;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, p2}, Lcom/narvii/widget/TextInputLayout;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 39
    .line 40
    .line 41
    invoke-direct {p0}, Lcom/narvii/account/SetPhoneNumberFragment;->getBinding()Lcom/narvii/amino/databinding/FragmentSetPhoneNumberBinding;

    .line 42
    move-result-object p1

    .line 43
    .line 44
    iget-object p1, p1, Lcom/narvii/amino/databinding/FragmentSetPhoneNumberBinding;->verifyPhone:Landroid/widget/Button;

    .line 45
    .line 46
    new-instance p2, Lcom/narvii/account/n0;

    .line 47
    .line 48
    .line 49
    invoke-direct {p2, p0}, Lcom/narvii/account/n0;-><init>(Lcom/narvii/account/SetPhoneNumberFragment;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    return-void
.end method

.method public requestCode(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "identity"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/account/AccountBaseFragment;->showProgress()V

    .line 9
    const/4 v0, 0x1

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    new-instance v1, Lcom/narvii/account/SetPhoneNumberFragment$requestCode$1;

    .line 16
    .line 17
    const-class v2, Lcom/narvii/model/api/ApiResponse;

    .line 18
    .line 19
    .line 20
    invoke-direct {v1, p0, p1, v2}, Lcom/narvii/account/SetPhoneNumberFragment$requestCode$1;-><init>(Lcom/narvii/account/SetPhoneNumberFragment;Ljava/lang/String;Ljava/lang/Class;)V

    .line 21
    .line 22
    const/16 v2, 0x8

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v2, p1, v0, v1}, Lcom/narvii/account/AccountBaseFragment;->requestSecurityCode(ILjava/lang/String;Ljava/lang/Integer;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 26
    return-void
.end method
