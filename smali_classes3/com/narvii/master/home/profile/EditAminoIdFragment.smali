.class public final Lcom/narvii/master/home/profile/EditAminoIdFragment;
.super Lcom/narvii/app/NVFragment;
.source "EditAminoIdFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/master/home/profile/EditAminoIdFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEditAminoIdFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EditAminoIdFragment.kt\ncom/narvii/master/home/profile/EditAminoIdFragment\n*L\n1#1,214:1\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;

.field public static final Companion:Lcom/narvii/master/home/profile/EditAminoIdFragment$Companion;

.field public static final MAX_LENGTH:I = 0x19

.field public static final MIN_LENGTH:I = 0x3


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private final account$delegate:Lkotlin/Lazy;

.field private final api$delegate:Lkotlin/Lazy;

.field private changeAminoIdReq:Lcom/narvii/util/http/ApiRequest;

.field private final comfirmDialog$delegate:Lkotlin/Lazy;

.field private final editDelete$delegate:Lkotlin/Lazy;

.field private final edtAminoId$delegate:Lkotlin/Lazy;

.field private errorDialog:Lcom/narvii/widget/ACMAlertDialog;

.field private final inputHint$delegate:Lkotlin/Lazy;

.field private final limitAlert$delegate:Lkotlin/Lazy;

.field private progressDialog:Lcom/narvii/util/dialog/ProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x7

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/master/home/profile/EditAminoIdFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "account"

    const-string v4, "getAccount()Lcom/narvii/account/AccountService;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/master/home/profile/EditAminoIdFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "api"

    const-string v4, "getApi()Lcom/narvii/util/http/ApiService;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/master/home/profile/EditAminoIdFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "edtAminoId"

    const-string v4, "getEdtAminoId()Landroid/widget/EditText;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/master/home/profile/EditAminoIdFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "editDelete"

    const-string v4, "getEditDelete()Landroid/widget/ImageView;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/master/home/profile/EditAminoIdFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "limitAlert"

    const-string v4, "getLimitAlert()Landroid/widget/TextView;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/master/home/profile/EditAminoIdFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "inputHint"

    const-string v4, "getInputHint()Landroid/widget/TextView;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/master/home/profile/EditAminoIdFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "comfirmDialog"

    const-string v4, "getComfirmDialog()Lcom/narvii/widget/ACMAlertDialog;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Lcom/narvii/master/home/profile/EditAminoIdFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/narvii/master/home/profile/EditAminoIdFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/master/home/profile/EditAminoIdFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/narvii/master/home/profile/EditAminoIdFragment;->Companion:Lcom/narvii/master/home/profile/EditAminoIdFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    .line 40
    new-instance v0, Lcom/narvii/master/home/profile/EditAminoIdFragment$account$2;

    invoke-direct {v0, p0}, Lcom/narvii/master/home/profile/EditAminoIdFragment$account$2;-><init>(Lcom/narvii/master/home/profile/EditAminoIdFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/master/home/profile/EditAminoIdFragment;->account$delegate:Lkotlin/Lazy;

    .line 41
    new-instance v0, Lcom/narvii/master/home/profile/EditAminoIdFragment$api$2;

    invoke-direct {v0, p0}, Lcom/narvii/master/home/profile/EditAminoIdFragment$api$2;-><init>(Lcom/narvii/master/home/profile/EditAminoIdFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/master/home/profile/EditAminoIdFragment;->api$delegate:Lkotlin/Lazy;

    const v0, 0x7f0903bd

    .line 44
    invoke-direct {p0, v0}, Lcom/narvii/master/home/profile/EditAminoIdFragment;->bind(I)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/master/home/profile/EditAminoIdFragment;->edtAminoId$delegate:Lkotlin/Lazy;

    const v0, 0x7f0903c2

    .line 45
    invoke-direct {p0, v0}, Lcom/narvii/master/home/profile/EditAminoIdFragment;->bind(I)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/master/home/profile/EditAminoIdFragment;->editDelete$delegate:Lkotlin/Lazy;

    const v0, 0x7f09065f

    .line 46
    invoke-direct {p0, v0}, Lcom/narvii/master/home/profile/EditAminoIdFragment;->bind(I)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/master/home/profile/EditAminoIdFragment;->limitAlert$delegate:Lkotlin/Lazy;

    const v0, 0x7f0905ab

    .line 47
    invoke-direct {p0, v0}, Lcom/narvii/master/home/profile/EditAminoIdFragment;->bind(I)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/master/home/profile/EditAminoIdFragment;->inputHint$delegate:Lkotlin/Lazy;

    .line 51
    new-instance v0, Lcom/narvii/master/home/profile/EditAminoIdFragment$comfirmDialog$2;

    invoke-direct {v0, p0}, Lcom/narvii/master/home/profile/EditAminoIdFragment$comfirmDialog$2;-><init>(Lcom/narvii/master/home/profile/EditAminoIdFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/master/home/profile/EditAminoIdFragment;->comfirmDialog$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$createComfirmDialog(Lcom/narvii/master/home/profile/EditAminoIdFragment;)Lcom/narvii/widget/ACMAlertDialog;
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/narvii/master/home/profile/EditAminoIdFragment;->createComfirmDialog()Lcom/narvii/widget/ACMAlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getAccount$p(Lcom/narvii/master/home/profile/EditAminoIdFragment;)Lcom/narvii/account/AccountService;
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/narvii/master/home/profile/EditAminoIdFragment;->getAccount()Lcom/narvii/account/AccountService;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getApi$p(Lcom/narvii/master/home/profile/EditAminoIdFragment;)Lcom/narvii/util/http/ApiService;
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/narvii/master/home/profile/EditAminoIdFragment;->getApi()Lcom/narvii/util/http/ApiService;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getChangeAminoIdReq$p(Lcom/narvii/master/home/profile/EditAminoIdFragment;)Lcom/narvii/util/http/ApiRequest;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/narvii/master/home/profile/EditAminoIdFragment;->changeAminoIdReq:Lcom/narvii/util/http/ApiRequest;

    return-object p0
.end method

.method public static final synthetic access$getEdtAminoId$p(Lcom/narvii/master/home/profile/EditAminoIdFragment;)Landroid/widget/EditText;
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/narvii/master/home/profile/EditAminoIdFragment;->getEdtAminoId()Landroid/widget/EditText;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getErrorDialog$p(Lcom/narvii/master/home/profile/EditAminoIdFragment;)Lcom/narvii/widget/ACMAlertDialog;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/narvii/master/home/profile/EditAminoIdFragment;->errorDialog:Lcom/narvii/widget/ACMAlertDialog;

    return-object p0
.end method

.method public static final synthetic access$getProgressDialog$p(Lcom/narvii/master/home/profile/EditAminoIdFragment;)Lcom/narvii/util/dialog/ProgressDialog;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/narvii/master/home/profile/EditAminoIdFragment;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    return-object p0
.end method

.method public static final synthetic access$setChangeAminoIdReq$p(Lcom/narvii/master/home/profile/EditAminoIdFragment;Lcom/narvii/util/http/ApiRequest;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/narvii/master/home/profile/EditAminoIdFragment;->changeAminoIdReq:Lcom/narvii/util/http/ApiRequest;

    return-void
.end method

.method public static final synthetic access$setErrorDialog$p(Lcom/narvii/master/home/profile/EditAminoIdFragment;Lcom/narvii/widget/ACMAlertDialog;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/narvii/master/home/profile/EditAminoIdFragment;->errorDialog:Lcom/narvii/widget/ACMAlertDialog;

    return-void
.end method

.method public static final synthetic access$setProgressDialog$p(Lcom/narvii/master/home/profile/EditAminoIdFragment;Lcom/narvii/util/dialog/ProgressDialog;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/narvii/master/home/profile/EditAminoIdFragment;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    return-void
.end method

.method public static final synthetic access$submit(Lcom/narvii/master/home/profile/EditAminoIdFragment;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/narvii/master/home/profile/EditAminoIdFragment;->submit()V

    return-void
.end method

.method public static final synthetic access$updateView(Lcom/narvii/master/home/profile/EditAminoIdFragment;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/narvii/master/home/profile/EditAminoIdFragment;->updateView()V

    return-void
.end method

.method private final bind(I)Lkotlin/Lazy;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)",
            "Lkotlin/Lazy<",
            "TT;>;"
        }
    .end annotation

    .line 211
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/narvii/master/home/profile/EditAminoIdFragment$bind$1;

    invoke-direct {v1, p0, p1}, Lcom/narvii/master/home/profile/EditAminoIdFragment$bind$1;-><init>(Lcom/narvii/master/home/profile/EditAminoIdFragment;I)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    return-object p1
.end method

.method private final createComfirmDialog()Lcom/narvii/widget/ACMAlertDialog;
    .locals 3

    .line 70
    new-instance v0, Lcom/narvii/widget/ACMAlertDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f012e

    .line 71
    invoke-virtual {v0, v1}, Lcom/narvii/widget/ACMAlertDialog;->setTitle(I)V

    const v1, 0x7f0f03d1

    .line 72
    invoke-virtual {v0, v1}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    const v1, 0x7f0f0193

    const/4 v2, 0x0

    .line 73
    invoke-virtual {v0, v1, v2}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 74
    new-instance v1, Lcom/narvii/master/home/profile/EditAminoIdFragment$createComfirmDialog$1;

    invoke-direct {v1, p0}, Lcom/narvii/master/home/profile/EditAminoIdFragment$createComfirmDialog$1;-><init>(Lcom/narvii/master/home/profile/EditAminoIdFragment;)V

    const v2, 0x7f0f119f

    invoke-virtual {v0, v2, v1}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    return-object v0
.end method

.method private final getAccount()Lcom/narvii/account/AccountService;
    .locals 3

    iget-object v0, p0, Lcom/narvii/master/home/profile/EditAminoIdFragment;->account$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/master/home/profile/EditAminoIdFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    return-object v0
.end method

.method private final getApi()Lcom/narvii/util/http/ApiService;
    .locals 3

    iget-object v0, p0, Lcom/narvii/master/home/profile/EditAminoIdFragment;->api$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/master/home/profile/EditAminoIdFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    return-object v0
.end method

.method private final getComfirmDialog()Lcom/narvii/widget/ACMAlertDialog;
    .locals 3

    iget-object v0, p0, Lcom/narvii/master/home/profile/EditAminoIdFragment;->comfirmDialog$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/master/home/profile/EditAminoIdFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/ACMAlertDialog;

    return-object v0
.end method

.method private final getEditDelete()Landroid/widget/ImageView;
    .locals 3

    iget-object v0, p0, Lcom/narvii/master/home/profile/EditAminoIdFragment;->editDelete$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/master/home/profile/EditAminoIdFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method private final getEdtAminoId()Landroid/widget/EditText;
    .locals 3

    iget-object v0, p0, Lcom/narvii/master/home/profile/EditAminoIdFragment;->edtAminoId$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/master/home/profile/EditAminoIdFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    return-object v0
.end method

.method private final getInputHint()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Lcom/narvii/master/home/profile/EditAminoIdFragment;->inputHint$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/master/home/profile/EditAminoIdFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final getLimitAlert()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Lcom/narvii/master/home/profile/EditAminoIdFragment;->limitAlert$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/master/home/profile/EditAminoIdFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final submit()V
    .locals 4

    .line 171
    iget-object v0, p0, Lcom/narvii/master/home/profile/EditAminoIdFragment;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/narvii/master/home/profile/EditAminoIdFragment;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/narvii/master/home/profile/EditAminoIdFragment$submit$1;

    invoke-direct {v1, p0}, Lcom/narvii/master/home/profile/EditAminoIdFragment$submit$1;-><init>(Lcom/narvii/master/home/profile/EditAminoIdFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 178
    :cond_1
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    .line 179
    invoke-direct {p0}, Lcom/narvii/master/home/profile/EditAminoIdFragment;->getEdtAminoId()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "aminoId"

    invoke-virtual {v0, v2, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 180
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->https()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    const-string v2, "/account/change-amino-id"

    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->body(Lcom/fasterxml/jackson/databind/node/ObjectNode;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/master/home/profile/EditAminoIdFragment;->changeAminoIdReq:Lcom/narvii/util/http/ApiRequest;

    .line 181
    invoke-direct {p0}, Lcom/narvii/master/home/profile/EditAminoIdFragment;->getApi()Lcom/narvii/util/http/ApiService;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/master/home/profile/EditAminoIdFragment;->changeAminoIdReq:Lcom/narvii/util/http/ApiRequest;

    new-instance v2, Lcom/narvii/master/home/profile/EditAminoIdFragment$submit$2;

    const-class v3, Lcom/narvii/model/api/EditAminoIdResponse;

    invoke-direct {v2, p0, v3}, Lcom/narvii/master/home/profile/EditAminoIdFragment$submit$2;-><init>(Lcom/narvii/master/home/profile/EditAminoIdFragment;Ljava/lang/Class;)V

    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method private final updateAminoId()V
    .locals 1

    .line 205
    invoke-direct {p0}, Lcom/narvii/master/home/profile/EditAminoIdFragment;->getComfirmDialog()Lcom/narvii/widget/ACMAlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 206
    invoke-direct {p0}, Lcom/narvii/master/home/profile/EditAminoIdFragment;->getComfirmDialog()Lcom/narvii/widget/ACMAlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    :cond_0
    return-void
.end method

.method private final updateView()V
    .locals 11

    .line 145
    invoke-direct {p0}, Lcom/narvii/master/home/profile/EditAminoIdFragment;->getEdtAminoId()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 146
    sget-object v1, Lcom/narvii/util/CheckAminoIdUtils;->Companion:Lcom/narvii/util/CheckAminoIdUtils$Companion;

    const/4 v2, 0x3

    const/16 v3, 0x19

    invoke-virtual {v1, v0, v3, v2}, Lcom/narvii/util/CheckAminoIdUtils$Companion;->validateAminoId(Ljava/lang/String;II)I

    move-result v0

    const-wide v4, 0xffffffffL

    const/16 v1, 0x8

    const/4 v6, 0x1

    if-eq v0, v6, :cond_3

    const/4 v7, 0x2

    const-wide v8, 0xffff004dL

    const/4 v10, 0x0

    if-eq v0, v7, :cond_2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 158
    :cond_0
    invoke-direct {p0}, Lcom/narvii/master/home/profile/EditAminoIdFragment;->getEdtAminoId()Landroid/widget/EditText;

    move-result-object v0

    long-to-int v2, v4

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTextColor(I)V

    .line 159
    invoke-direct {p0}, Lcom/narvii/master/home/profile/EditAminoIdFragment;->getLimitAlert()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 163
    :cond_1
    invoke-direct {p0}, Lcom/narvii/master/home/profile/EditAminoIdFragment;->getEdtAminoId()Landroid/widget/EditText;

    move-result-object v0

    long-to-int v1, v8

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 164
    invoke-direct {p0}, Lcom/narvii/master/home/profile/EditAminoIdFragment;->getLimitAlert()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 165
    invoke-direct {p0}, Lcom/narvii/master/home/profile/EditAminoIdFragment;->getLimitAlert()Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0f010b

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v10

    invoke-virtual {p0, v1, v2}, Landroid/support/v4/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 152
    :cond_2
    invoke-direct {p0}, Lcom/narvii/master/home/profile/EditAminoIdFragment;->getEdtAminoId()Landroid/widget/EditText;

    move-result-object v0

    long-to-int v1, v8

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 153
    invoke-direct {p0}, Lcom/narvii/master/home/profile/EditAminoIdFragment;->getLimitAlert()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 154
    invoke-direct {p0}, Lcom/narvii/master/home/profile/EditAminoIdFragment;->getLimitAlert()Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0f010a

    invoke-virtual {p0, v1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 148
    :cond_3
    invoke-direct {p0}, Lcom/narvii/master/home/profile/EditAminoIdFragment;->getLimitAlert()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 149
    invoke-direct {p0}, Lcom/narvii/master/home/profile/EditAminoIdFragment;->getEdtAminoId()Landroid/widget/EditText;

    move-result-object v0

    long-to-int v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    :goto_0
    return-void
.end method

.method private final validatePass()Z
    .locals 4

    .line 140
    invoke-direct {p0}, Lcom/narvii/master/home/profile/EditAminoIdFragment;->getEdtAminoId()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 141
    sget-object v1, Lcom/narvii/util/CheckAminoIdUtils;->Companion:Lcom/narvii/util/CheckAminoIdUtils$Companion;

    const/16 v2, 0x19

    const/4 v3, 0x3

    invoke-virtual {v1, v0, v2, v3}, Lcom/narvii/util/CheckAminoIdUtils$Companion;->validateAminoId(Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/master/home/profile/EditAminoIdFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/master/home/profile/EditAminoIdFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/master/home/profile/EditAminoIdFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/master/home/profile/EditAminoIdFragment;->_$_findViewCache:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/narvii/master/home/profile/EditAminoIdFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public initNVTheme()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 81
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 82
    invoke-direct {p0}, Lcom/narvii/master/home/profile/EditAminoIdFragment;->getEdtAminoId()Landroid/widget/EditText;

    move-result-object p1

    new-instance v0, Lcom/narvii/master/home/profile/EditAminoIdFragment$onActivityCreated$1;

    invoke-direct {v0, p0}, Lcom/narvii/master/home/profile/EditAminoIdFragment$onActivityCreated$1;-><init>(Lcom/narvii/master/home/profile/EditAminoIdFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 95
    invoke-direct {p0}, Lcom/narvii/master/home/profile/EditAminoIdFragment;->getEditDelete()Landroid/widget/ImageView;

    move-result-object p1

    new-instance v0, Lcom/narvii/master/home/profile/EditAminoIdFragment$onActivityCreated$2;

    invoke-direct {v0, p0}, Lcom/narvii/master/home/profile/EditAminoIdFragment$onActivityCreated$2;-><init>(Lcom/narvii/master/home/profile/EditAminoIdFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 57
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    .line 58
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f080264

    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    const p1, 0x7f0f03cf

    .line 59
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 60
    new-instance p1, Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/narvii/master/home/profile/EditAminoIdFragment;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    const/4 p1, 0x1

    .line 61
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 9

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f0f1077

    const/4 v1, 0x0

    .line 115
    invoke-interface {p1, v1, v0, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 116
    new-instance v8, Lcom/narvii/util/ActionBarIcon;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const v1, 0x7f0f0483

    invoke-virtual {p0, v1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v4, 0x7f060223

    invoke-static {v1, v4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    const v4, 0x3f59999a    # 0.85f

    const/16 v6, 0x7f

    const/4 v7, 0x0

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/narvii/util/ActionBarIcon;-><init>(Landroid/content/Context;Ljava/lang/String;FIIZ)V

    invoke-interface {v0, v8}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x2

    .line 117
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 119
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0b0299

    const/4 v0, 0x0

    .line 99
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/narvii/master/home/profile/EditAminoIdFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0f1077

    if-ne v0, v1, :cond_0

    .line 124
    invoke-direct {p0}, Lcom/narvii/master/home/profile/EditAminoIdFragment;->updateAminoId()V

    .line 126
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPause()V
    .locals 1

    .line 65
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/SoftKeyboard;->hideSoftKeyboard(Landroid/content/Context;)V

    .line 66
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onPause()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "menu"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f0f1077

    .line 103
    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 104
    invoke-direct/range {p0 .. p0}, Lcom/narvii/master/home/profile/EditAminoIdFragment;->validatePass()Z

    move-result v3

    const-string v4, "submitItem"

    .line 105
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    const v4, 0x7f060223

    const v5, 0x7f0f0483

    if-eqz v3, :cond_0

    .line 107
    new-instance v3, Lcom/narvii/util/ActionBarIcon;

    invoke-virtual/range {p0 .. p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v0, v5}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    const v9, 0x3f59999a    # 0.85f

    invoke-virtual/range {p0 .. p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v10

    const/16 v11, 0xff

    const/4 v12, 0x0

    move-object v6, v3

    invoke-direct/range {v6 .. v12}, Lcom/narvii/util/ActionBarIcon;-><init>(Landroid/content/Context;Ljava/lang/String;FIIZ)V

    goto :goto_0

    .line 109
    :cond_0
    new-instance v3, Lcom/narvii/util/ActionBarIcon;

    invoke-virtual/range {p0 .. p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v0, v5}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v15

    const v16, 0x3f59999a    # 0.85f

    invoke-virtual/range {p0 .. p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v17

    const/16 v18, 0x80

    const/16 v19, 0x0

    move-object v13, v3

    invoke-direct/range {v13 .. v19}, Lcom/narvii/util/ActionBarIcon;-><init>(Landroid/content/Context;Ljava/lang/String;FIIZ)V

    .line 106
    :goto_0
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 111
    invoke-super/range {p0 .. p1}, Landroid/support/v4/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 131
    invoke-direct {p0}, Lcom/narvii/master/home/profile/EditAminoIdFragment;->getEdtAminoId()Landroid/widget/EditText;

    move-result-object p1

    invoke-direct {p0}, Lcom/narvii/master/home/profile/EditAminoIdFragment;->getAccount()Lcom/narvii/account/AccountService;

    move-result-object p2

    invoke-virtual {p2}, Lcom/narvii/account/AccountService;->getAminoId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 132
    invoke-direct {p0}, Lcom/narvii/master/home/profile/EditAminoIdFragment;->getInputHint()Landroid/widget/TextView;

    move-result-object p1

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p2, v1

    const/16 v0, 0x19

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p2, v1

    const v0, 0x7f0f03d0

    invoke-virtual {p0, v0, p2}, Landroid/support/v4/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
