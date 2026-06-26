.class public final Lcom/narvii/visitor/VisitorsSettingFragment;
.super Lcom/narvii/list/NVListFragment;
.source "VisitorsSettingFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/visitor/VisitorsSettingFragment$Adapter;,
        Lcom/narvii/visitor/VisitorsSettingFragment$PrefsSelect;,
        Lcom/narvii/visitor/VisitorsSettingFragment$VisitorsSettingResponse;,
        Lcom/narvii/visitor/VisitorsSettingFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVisitorsSettingFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VisitorsSettingFragment.kt\ncom/narvii/visitor/VisitorsSettingFragment\n*L\n1#1,299:1\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;

.field public static final Companion:Lcom/narvii/visitor/VisitorsSettingFragment$Companion;

.field public static final PROFILE_OPTION:I = 0x1


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private final account$delegate:Lkotlin/Lazy;

.field private final adapter$delegate:Lkotlin/Lazy;

.field private final api$delegate:Lkotlin/Lazy;

.field private final config$delegate:Lkotlin/Lazy;

.field private loadSuccess:Z

.field private notificationStatus:I

.field private privacyMode:I

.field private privacyRequest:Lcom/narvii/util/http/ApiRequest;

.field private final progressDialog$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x5

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/visitor/VisitorsSettingFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "api"

    const-string v4, "getApi()Lcom/narvii/util/http/ApiService;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/visitor/VisitorsSettingFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "account"

    const-string v4, "getAccount()Lcom/narvii/account/AccountService;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/visitor/VisitorsSettingFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "config"

    const-string v4, "getConfig()Lcom/narvii/config/ConfigService;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/visitor/VisitorsSettingFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "adapter"

    const-string v4, "getAdapter()Lcom/narvii/visitor/VisitorsSettingFragment$Adapter;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/visitor/VisitorsSettingFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "progressDialog"

    const-string v4, "getProgressDialog()Lcom/narvii/util/dialog/ProgressDialog;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Lcom/narvii/visitor/VisitorsSettingFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/narvii/visitor/VisitorsSettingFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/visitor/VisitorsSettingFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/narvii/visitor/VisitorsSettingFragment;->Companion:Lcom/narvii/visitor/VisitorsSettingFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    .line 44
    new-instance v0, Lcom/narvii/visitor/VisitorsSettingFragment$api$2;

    invoke-direct {v0, p0}, Lcom/narvii/visitor/VisitorsSettingFragment$api$2;-><init>(Lcom/narvii/visitor/VisitorsSettingFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/visitor/VisitorsSettingFragment;->api$delegate:Lkotlin/Lazy;

    .line 45
    new-instance v0, Lcom/narvii/visitor/VisitorsSettingFragment$account$2;

    invoke-direct {v0, p0}, Lcom/narvii/visitor/VisitorsSettingFragment$account$2;-><init>(Lcom/narvii/visitor/VisitorsSettingFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/visitor/VisitorsSettingFragment;->account$delegate:Lkotlin/Lazy;

    .line 46
    new-instance v0, Lcom/narvii/visitor/VisitorsSettingFragment$config$2;

    invoke-direct {v0, p0}, Lcom/narvii/visitor/VisitorsSettingFragment$config$2;-><init>(Lcom/narvii/visitor/VisitorsSettingFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/visitor/VisitorsSettingFragment;->config$delegate:Lkotlin/Lazy;

    .line 47
    new-instance v0, Lcom/narvii/visitor/VisitorsSettingFragment$adapter$2;

    invoke-direct {v0, p0}, Lcom/narvii/visitor/VisitorsSettingFragment$adapter$2;-><init>(Lcom/narvii/visitor/VisitorsSettingFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/visitor/VisitorsSettingFragment;->adapter$delegate:Lkotlin/Lazy;

    .line 48
    new-instance v0, Lcom/narvii/visitor/VisitorsSettingFragment$progressDialog$2;

    invoke-direct {v0, p0}, Lcom/narvii/visitor/VisitorsSettingFragment$progressDialog$2;-><init>(Lcom/narvii/visitor/VisitorsSettingFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/visitor/VisitorsSettingFragment;->progressDialog$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getAccount$p(Lcom/narvii/visitor/VisitorsSettingFragment;)Lcom/narvii/account/AccountService;
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/narvii/visitor/VisitorsSettingFragment;->getAccount()Lcom/narvii/account/AccountService;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getAdapter$p(Lcom/narvii/visitor/VisitorsSettingFragment;)Lcom/narvii/visitor/VisitorsSettingFragment$Adapter;
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/narvii/visitor/VisitorsSettingFragment;->getAdapter()Lcom/narvii/visitor/VisitorsSettingFragment$Adapter;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getApi$p(Lcom/narvii/visitor/VisitorsSettingFragment;)Lcom/narvii/util/http/ApiService;
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/narvii/visitor/VisitorsSettingFragment;->getApi()Lcom/narvii/util/http/ApiService;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getLoadSuccess$p(Lcom/narvii/visitor/VisitorsSettingFragment;)Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Lcom/narvii/visitor/VisitorsSettingFragment;->loadSuccess:Z

    return p0
.end method

.method public static final synthetic access$getNotificationStatus$p(Lcom/narvii/visitor/VisitorsSettingFragment;)I
    .locals 0

    .line 39
    iget p0, p0, Lcom/narvii/visitor/VisitorsSettingFragment;->notificationStatus:I

    return p0
.end method

.method public static final synthetic access$getPrivacyMode$p(Lcom/narvii/visitor/VisitorsSettingFragment;)I
    .locals 0

    .line 39
    iget p0, p0, Lcom/narvii/visitor/VisitorsSettingFragment;->privacyMode:I

    return p0
.end method

.method public static final synthetic access$getPrivacyRequest$p(Lcom/narvii/visitor/VisitorsSettingFragment;)Lcom/narvii/util/http/ApiRequest;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/narvii/visitor/VisitorsSettingFragment;->privacyRequest:Lcom/narvii/util/http/ApiRequest;

    return-object p0
.end method

.method public static final synthetic access$getProgressDialog$p(Lcom/narvii/visitor/VisitorsSettingFragment;)Lcom/narvii/util/dialog/ProgressDialog;
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/narvii/visitor/VisitorsSettingFragment;->getProgressDialog()Lcom/narvii/util/dialog/ProgressDialog;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getProgressView$p(Lcom/narvii/visitor/VisitorsSettingFragment;)Landroid/view/View;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/narvii/list/NVListFragment;->progressView:Landroid/view/View;

    return-object p0
.end method

.method public static final synthetic access$setLoadSuccess$p(Lcom/narvii/visitor/VisitorsSettingFragment;Z)V
    .locals 0

    .line 39
    iput-boolean p1, p0, Lcom/narvii/visitor/VisitorsSettingFragment;->loadSuccess:Z

    return-void
.end method

.method public static final synthetic access$setNotificationStatus$p(Lcom/narvii/visitor/VisitorsSettingFragment;I)V
    .locals 0

    .line 39
    iput p1, p0, Lcom/narvii/visitor/VisitorsSettingFragment;->notificationStatus:I

    return-void
.end method

.method public static final synthetic access$setPrivacyMode$p(Lcom/narvii/visitor/VisitorsSettingFragment;I)V
    .locals 0

    .line 39
    iput p1, p0, Lcom/narvii/visitor/VisitorsSettingFragment;->privacyMode:I

    return-void
.end method

.method public static final synthetic access$setPrivacyRequest$p(Lcom/narvii/visitor/VisitorsSettingFragment;Lcom/narvii/util/http/ApiRequest;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/narvii/visitor/VisitorsSettingFragment;->privacyRequest:Lcom/narvii/util/http/ApiRequest;

    return-void
.end method

.method public static final synthetic access$setProgressView$p(Lcom/narvii/visitor/VisitorsSettingFragment;Landroid/view/View;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/narvii/list/NVListFragment;->progressView:Landroid/view/View;

    return-void
.end method

.method public static final synthetic access$updateVisitorSetting(Lcom/narvii/visitor/VisitorsSettingFragment;Lcom/narvii/model/VisitorSetting;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/narvii/visitor/VisitorsSettingFragment;->updateVisitorSetting(Lcom/narvii/model/VisitorSetting;)V

    return-void
.end method

.method private final getAccount()Lcom/narvii/account/AccountService;
    .locals 3

    iget-object v0, p0, Lcom/narvii/visitor/VisitorsSettingFragment;->account$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/visitor/VisitorsSettingFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    return-object v0
.end method

.method private final getAdapter()Lcom/narvii/visitor/VisitorsSettingFragment$Adapter;
    .locals 3

    iget-object v0, p0, Lcom/narvii/visitor/VisitorsSettingFragment;->adapter$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/visitor/VisitorsSettingFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/visitor/VisitorsSettingFragment$Adapter;

    return-object v0
.end method

.method private final getApi()Lcom/narvii/util/http/ApiService;
    .locals 3

    iget-object v0, p0, Lcom/narvii/visitor/VisitorsSettingFragment;->api$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/visitor/VisitorsSettingFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    return-object v0
.end method

.method private final getConfig()Lcom/narvii/config/ConfigService;
    .locals 3

    iget-object v0, p0, Lcom/narvii/visitor/VisitorsSettingFragment;->config$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/visitor/VisitorsSettingFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    return-object v0
.end method

.method private final getProgressDialog()Lcom/narvii/util/dialog/ProgressDialog;
    .locals 3

    iget-object v0, p0, Lcom/narvii/visitor/VisitorsSettingFragment;->progressDialog$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/visitor/VisitorsSettingFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/dialog/ProgressDialog;

    return-object v0
.end method

.method private final sendVisitorSettingRequest()V
    .locals 4

    .line 241
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->progressView:Landroid/view/View;

    const-string v1, "progressView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 242
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const-string v1, "account/visit-settings"

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 243
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 244
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    .line 245
    invoke-direct {p0}, Lcom/narvii/visitor/VisitorsSettingFragment;->getApi()Lcom/narvii/util/http/ApiService;

    move-result-object v1

    new-instance v2, Lcom/narvii/visitor/VisitorsSettingFragment$sendVisitorSettingRequest$1;

    const-class v3, Lcom/narvii/visitor/VisitorsSettingFragment$VisitorsSettingResponse;

    invoke-direct {v2, p0, v3}, Lcom/narvii/visitor/VisitorsSettingFragment$sendVisitorSettingRequest$1;-><init>(Lcom/narvii/visitor/VisitorsSettingFragment;Ljava/lang/Class;)V

    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method private final updateVisitorSetting(Lcom/narvii/model/VisitorSetting;)V
    .locals 2

    .line 267
    iget v0, p1, Lcom/narvii/model/VisitorSetting;->privacyMode:I

    iput v0, p0, Lcom/narvii/visitor/VisitorsSettingFragment;->privacyMode:I

    .line 268
    iget p1, p1, Lcom/narvii/model/VisitorSetting;->notificationStatus:I

    iput p1, p0, Lcom/narvii/visitor/VisitorsSettingFragment;->notificationStatus:I

    .line 269
    invoke-direct {p0}, Lcom/narvii/visitor/VisitorsSettingFragment;->getAccount()Lcom/narvii/account/AccountService;

    move-result-object p1

    iget v0, p0, Lcom/narvii/visitor/VisitorsSettingFragment;->privacyMode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/narvii/visitor/VisitorsSettingFragment;->notificationStatus:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/narvii/account/AccountService;->updateVisitorSetting(Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 270
    invoke-direct {p0}, Lcom/narvii/visitor/VisitorsSettingFragment;->getAdapter()Lcom/narvii/visitor/VisitorsSettingFragment$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/list/prefs/PrefsAdapter;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/visitor/VisitorsSettingFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/visitor/VisitorsSettingFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/visitor/VisitorsSettingFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/visitor/VisitorsSettingFragment;->_$_findViewCache:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/narvii/visitor/VisitorsSettingFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 0

    .line 83
    invoke-direct {p0}, Lcom/narvii/visitor/VisitorsSettingFragment;->getAdapter()Lcom/narvii/visitor/VisitorsSettingFragment$Adapter;

    move-result-object p1

    return-object p1
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "RecentVisitorsSetting"

    return-object v0
.end method

.method protected getSelectorDarkColor()I
    .locals 1

    const v0, 0x33ffffff

    return v0
.end method

.method public isSwipeRefresh()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 58
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 59
    invoke-direct {p0}, Lcom/narvii/visitor/VisitorsSettingFragment;->getConfig()Lcom/narvii/config/ConfigService;

    move-result-object p1

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lcom/narvii/app/theme/NVThemeFragment;->setDarkNVTheme$default(Lcom/narvii/app/theme/NVThemeFragment;ZZILjava/lang/Object;)V

    const p1, 0x7f0f0e1a

    .line 60
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 61
    invoke-direct {p0}, Lcom/narvii/visitor/VisitorsSettingFragment;->getAccount()Lcom/narvii/account/AccountService;

    move-result-object p1

    const-string v0, "account"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getVisitorPrivacyMode()I

    move-result p1

    iput p1, p0, Lcom/narvii/visitor/VisitorsSettingFragment;->privacyMode:I

    .line 62
    invoke-direct {p0}, Lcom/narvii/visitor/VisitorsSettingFragment;->getAccount()Lcom/narvii/account/AccountService;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getVisitorNotificationStatus()I

    move-result p1

    iput p1, p0, Lcom/narvii/visitor/VisitorsSettingFragment;->notificationStatus:I

    return-void
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/narvii/visitor/VisitorsSettingFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method protected onErrorRetry()V
    .locals 1

    const/4 v0, 0x0

    .line 236
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVListFragment;->setErrorMessage(Ljava/lang/String;)V

    .line 237
    invoke-direct {p0}, Lcom/narvii/visitor/VisitorsSettingFragment;->sendVisitorSettingRequest()V

    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 0

    .line 75
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 76
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    if-eqz p1, :cond_1

    const/4 p2, 0x0

    .line 77
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDividerHeight(I)V

    :cond_1
    return-void
.end method

.method public onThemeChange(I)V
    .locals 2

    .line 286
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onThemeChange(I)V

    const-string v0, "null cannot be cast to non-null type com.narvii.widget.NVListView"

    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    .line 288
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f06007d

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    .line 289
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    if-eqz v1, :cond_2

    check-cast v1, Lcom/narvii/widget/NVListView;

    invoke-virtual {v1, p1}, Lcom/narvii/widget/NVListView;->setOverscrollStretchHeader(I)V

    .line 290
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    if-eqz v1, :cond_1

    check-cast v1, Lcom/narvii/widget/NVListView;

    invoke-virtual {v1, p1}, Lcom/narvii/widget/NVListView;->setOverscrollStretchFooter(I)V

    .line 291
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Lcom/narvii/widget/NVListView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVListView;->setListContentBackgroundColor(I)V

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 290
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 289
    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    const/4 v1, 0x1

    if-ne p1, v1, :cond_7

    .line 293
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f060181

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    .line 294
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    if-eqz v1, :cond_6

    check-cast v1, Lcom/narvii/widget/NVListView;

    invoke-virtual {v1, p1}, Lcom/narvii/widget/NVListView;->setOverscrollStretchHeader(I)V

    .line 295
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    if-eqz v1, :cond_5

    check-cast v1, Lcom/narvii/widget/NVListView;

    invoke-virtual {v1, p1}, Lcom/narvii/widget/NVListView;->setOverscrollStretchFooter(I)V

    .line 296
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    if-eqz p1, :cond_4

    check-cast p1, Lcom/narvii/widget/NVListView;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVListView;->setListContentBackgroundColor(I)V

    goto :goto_0

    :cond_4
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 295
    :cond_5
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 294
    :cond_6
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    :goto_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 67
    invoke-direct {p0}, Lcom/narvii/visitor/VisitorsSettingFragment;->sendVisitorSettingRequest()V

    return-void
.end method
