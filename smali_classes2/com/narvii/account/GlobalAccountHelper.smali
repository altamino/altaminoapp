.class public final Lcom/narvii/account/GlobalAccountHelper;
.super Ljava/lang/Object;
.source "GlobalAccountHelper.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGlobalAccountHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GlobalAccountHelper.kt\ncom/narvii/account/GlobalAccountHelper\n*L\n1#1,36:1\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field private final apiService$delegate:Lkotlin/Lazy;

.field private final ctx:Lcom/narvii/app/NVContext;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/account/GlobalAccountHelper;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "apiService"

    const-string v4, "getApiService()Lcom/narvii/util/http/ApiService;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/narvii/account/GlobalAccountHelper;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/account/GlobalAccountHelper;->ctx:Lcom/narvii/app/NVContext;

    .line 17
    new-instance p1, Lcom/narvii/account/GlobalAccountHelper$apiService$2;

    invoke-direct {p1, p0}, Lcom/narvii/account/GlobalAccountHelper$apiService$2;-><init>(Lcom/narvii/account/GlobalAccountHelper;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/account/GlobalAccountHelper;->apiService$delegate:Lkotlin/Lazy;

    return-void
.end method


# virtual methods
.method public final getApiService()Lcom/narvii/util/http/ApiService;
    .locals 3

    iget-object v0, p0, Lcom/narvii/account/GlobalAccountHelper;->apiService$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/account/GlobalAccountHelper;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    return-object v0
.end method

.method public final getCtx()Lcom/narvii/app/NVContext;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/narvii/account/GlobalAccountHelper;->ctx:Lcom/narvii/app/NVContext;

    return-object v0
.end method

.method public final refreshAccountWithAvatarFrame(ZLcom/narvii/util/Callback;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/narvii/util/Callback<",
            "Lcom/narvii/model/User;",
            ">;Z)V"
        }
    .end annotation

    .line 20
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->https()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const-string v1, "/account"

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    if-eqz p3, :cond_0

    const/4 p3, 0x1

    .line 21
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string/jumbo v1, "withAvatarFrame"

    invoke-virtual {v0, v1, p3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 22
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/account/GlobalAccountHelper;->getApiService()Lcom/narvii/util/http/ApiService;

    move-result-object p3

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    new-instance v1, Lcom/narvii/account/GlobalAccountHelper$refreshAccountWithAvatarFrame$1;

    iget-object v2, p0, Lcom/narvii/account/GlobalAccountHelper;->ctx:Lcom/narvii/app/NVContext;

    invoke-direct {v1, p0, p2, p1, v2}, Lcom/narvii/account/GlobalAccountHelper$refreshAccountWithAvatarFrame$1;-><init>(Lcom/narvii/account/GlobalAccountHelper;Lcom/narvii/util/Callback;ZLcom/narvii/app/NVContext;)V

    invoke-virtual {p3, v0, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method
