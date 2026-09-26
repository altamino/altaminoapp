.class public final Lcom/narvii/wallet/CoinBillingManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/wallet/CoinBillingManager$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCoinBillingManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoinBillingManager.kt\ncom/narvii/wallet/CoinBillingManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,352:1\n1549#2:353\n1620#2,3:354\n766#2:357\n857#2,2:358\n1855#2,2:360\n1855#2,2:362\n*S KotlinDebug\n*F\n+ 1 CoinBillingManager.kt\ncom/narvii/wallet/CoinBillingManager\n*L\n140#1:353\n140#1:354,3\n175#1:357\n175#1:358,2\n188#1:360,2\n148#1:362,2\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/wallet/CoinBillingManager$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static volatile INSTANCE:Lcom/narvii/wallet/CoinBillingManager; = null
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "CoinBillingManager"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private _productList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/wallet/Product;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private billingError:Z

.field private context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private errorDialog:Lcom/narvii/util/dialog/AlertDialog;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final logging:Lcom/narvii/util/logging/LoggingService;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final nvContext:Lcom/narvii/app/NVContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final onWalletChangedLive:La;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La<",
            "Lcom/narvii/wallet/WalletResponse;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private pendingDialog:Lcom/narvii/util/dialog/ProgressDialog;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private pendingProduct:Lcom/narvii/wallet/Product;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final productMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/billingclient/api/SkuDetails;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private progressDialog:Lcom/narvii/util/dialog/ProgressDialog;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private purchaseList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/android/billingclient/api/Purchase;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private purchasingProduct:Lcom/narvii/wallet/Product;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final queryInAppFinishedLive:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/wallet/CoinBillingManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/wallet/CoinBillingManager$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Lcom/narvii/wallet/CoinBillingManager;->Companion:Lcom/narvii/wallet/CoinBillingManager$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.narvii.app.NVContext"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/narvii/wallet/CoinBillingManager;->nvContext:Lcom/narvii/app/NVContext;

    const-string v1, "logging"

    .line 4
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getService(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/narvii/util/logging/LoggingService;

    iput-object v0, p0, Lcom/narvii/wallet/CoinBillingManager;->logging:Lcom/narvii/util/logging/LoggingService;

    .line 5
    invoke-static {}, Lkotlin/collections/t;->m()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/wallet/CoinBillingManager;->purchaseList:Ljava/util/List;

    .line 6
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/wallet/CoinBillingManager;->productMap:Ljava/util/Map;

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/wallet/CoinBillingManager;->_productList:Ljava/util/List;

    .line 8
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/narvii/wallet/CoinBillingManager;->queryInAppFinishedLive:Landroidx/lifecycle/MutableLiveData;

    .line 9
    new-instance v0, La;

    invoke-direct {v0}, La;-><init>()V

    iput-object v0, p0, Lcom/narvii/wallet/CoinBillingManager;->onWalletChangedLive:La;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/wallet/CoinBillingManager;-><init>()V

    return-void
.end method

.method public static synthetic a(ZLcom/narvii/wallet/CoinBillingManager;Lcom/android/billingclient/api/Purchase;Lcom/android/billingclient/api/h;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/narvii/wallet/CoinBillingManager;->handleConsumablePurchase$lambda$8(ZLcom/narvii/wallet/CoinBillingManager;Lcom/android/billingclient/api/Purchase;Lcom/android/billingclient/api/h;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$getBillingError$p(Lcom/narvii/wallet/CoinBillingManager;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Lcom/narvii/wallet/CoinBillingManager;->billingError:Z

    .line 3
    return p0
.end method

.method public static final synthetic access$getINSTANCE$cp()Lcom/narvii/wallet/CoinBillingManager;
    .locals 1

    sget-object v0, Lcom/narvii/wallet/CoinBillingManager;->INSTANCE:Lcom/narvii/wallet/CoinBillingManager;

    return-object v0
.end method

.method public static final synthetic access$getNvContext$p(Lcom/narvii/wallet/CoinBillingManager;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/wallet/CoinBillingManager;->nvContext:Lcom/narvii/app/NVContext;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getPendingProduct$p(Lcom/narvii/wallet/CoinBillingManager;)Lcom/narvii/wallet/Product;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/wallet/CoinBillingManager;->pendingProduct:Lcom/narvii/wallet/Product;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getProgressDialog$p(Lcom/narvii/wallet/CoinBillingManager;)Lcom/narvii/util/dialog/ProgressDialog;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/wallet/CoinBillingManager;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getPurchasingProduct$p(Lcom/narvii/wallet/CoinBillingManager;)Lcom/narvii/wallet/Product;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/wallet/CoinBillingManager;->purchasingProduct:Lcom/narvii/wallet/Product;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$handleBillingResultError(Lcom/narvii/wallet/CoinBillingManager;Lcom/android/billingclient/api/h;Lcom/narvii/wallet/Product;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/narvii/wallet/CoinBillingManager;->handleBillingResultError(Lcom/android/billingclient/api/h;Lcom/narvii/wallet/Product;)V

    .line 4
    return-void
.end method

.method public static final synthetic access$handleConsumablePurchase(Lcom/narvii/wallet/CoinBillingManager;Lcom/android/billingclient/api/Purchase;Z)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/narvii/wallet/CoinBillingManager;->handleConsumablePurchase(Lcom/android/billingclient/api/Purchase;Z)V

    .line 4
    return-void
.end method

.method public static final synthetic access$processPurchases(Lcom/narvii/wallet/CoinBillingManager;Ljava/util/List;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/wallet/CoinBillingManager;->processPurchases(Ljava/util/List;)V

    .line 4
    return-void
.end method

.method public static final synthetic access$queryInAppProductDetails(Lcom/narvii/wallet/CoinBillingManager;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/wallet/CoinBillingManager;->queryInAppProductDetails()V

    .line 4
    return-void
.end method

.method public static final synthetic access$queryInAppPurchases(Lcom/narvii/wallet/CoinBillingManager;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/wallet/CoinBillingManager;->queryInAppPurchases()V

    .line 4
    return-void
.end method

.method public static final synthetic access$setBillingError$p(Lcom/narvii/wallet/CoinBillingManager;Z)V
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/wallet/CoinBillingManager;->billingError:Z

    .line 3
    return-void
.end method

.method public static final synthetic access$setINSTANCE$cp(Lcom/narvii/wallet/CoinBillingManager;)V
    .locals 0

    sput-object p0, Lcom/narvii/wallet/CoinBillingManager;->INSTANCE:Lcom/narvii/wallet/CoinBillingManager;

    return-void
.end method

.method public static final synthetic access$setProgressDialog$p(Lcom/narvii/wallet/CoinBillingManager;Lcom/narvii/util/dialog/ProgressDialog;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/wallet/CoinBillingManager;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 3
    return-void
.end method

.method public static final synthetic access$set_productList$p(Lcom/narvii/wallet/CoinBillingManager;Ljava/util/List;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/wallet/CoinBillingManager;->_productList:Ljava/util/List;

    .line 3
    return-void
.end method

.method public static final synthetic access$showErrorAlert(Lcom/narvii/wallet/CoinBillingManager;Ljava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/wallet/CoinBillingManager;->showErrorAlert(Ljava/lang/String;)V

    .line 4
    return-void
.end method

.method public static synthetic b(Lcom/narvii/wallet/CoinBillingManager;Lcom/android/billingclient/api/h;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/wallet/CoinBillingManager;->queryInAppProductDetails$lambda$3(Lcom/narvii/wallet/CoinBillingManager;Lcom/android/billingclient/api/h;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic c(Lcom/narvii/wallet/CoinBillingManager;Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/wallet/CoinBillingManager;->showPending$lambda$9(Lcom/narvii/wallet/CoinBillingManager;Landroid/content/DialogInterface;)V

    return-void
.end method

.method private final clearPending()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-object v0, p0, Lcom/narvii/wallet/CoinBillingManager;->pendingProduct:Lcom/narvii/wallet/Product;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/narvii/wallet/CoinBillingManager;->pendingDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 11
    .line 12
    :cond_0
    iput-object v0, p0, Lcom/narvii/wallet/CoinBillingManager;->pendingDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 13
    return-void
.end method

.method private final createInAppRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-string v1, "/wallet/product"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 10
    const/4 v1, 0x4

    .line 11
    .line 12
    .line 13
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    const-string v2, "paymentType"

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/narvii/wallet/CoinBillingManager;->nvContext:Lcom/narvii/app/NVContext;

    .line 22
    .line 23
    .line 24
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    const-string v2, "packageName"

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 35
    .line 36
    if-eqz p1, :cond_0

    .line 37
    .line 38
    const-string p1, "page"

    .line 39
    .line 40
    const-string v1, "rcmd"

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, p1, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 44
    .line 45
    .line 46
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 47
    move-result-object p1

    .line 48
    .line 49
    const-string v0, "build(...)"

    .line 50
    .line 51
    .line 52
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    return-object p1
.end method

.method public static synthetic d(Lcom/narvii/wallet/CoinBillingManager;Lcom/android/billingclient/api/h;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/wallet/CoinBillingManager;->queryInAppPurchases$lambda$4(Lcom/narvii/wallet/CoinBillingManager;Lcom/android/billingclient/api/h;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic fetchInAppProducts$default(Lcom/narvii/wallet/CoinBillingManager;ZLcom/narvii/util/http/ApiResponseListener;ILjava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    and-int/lit8 p3, p3, 0x1

    .line 3
    .line 4
    if-eqz p3, :cond_0

    .line 5
    const/4 p1, 0x0

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/narvii/wallet/CoinBillingManager;->fetchInAppProducts(ZLcom/narvii/util/http/ApiResponseListener;)V

    .line 9
    return-void
.end method

.method public static final getInstance()Lcom/narvii/wallet/CoinBillingManager;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/narvii/wallet/CoinBillingManager;->Companion:Lcom/narvii/wallet/CoinBillingManager$Companion;

    invoke-virtual {v0}, Lcom/narvii/wallet/CoinBillingManager$Companion;->getInstance()Lcom/narvii/wallet/CoinBillingManager;

    move-result-object v0

    return-object v0
.end method

.method private final handleBillingResultError(Lcom/android/billingclient/api/h;Lcom/narvii/wallet/Product;)V
    .locals 5

    .line 1
    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/narvii/wallet/CoinBillingManager;->clearPending()V

    .line 6
    const/4 v0, 0x0

    .line 7
    const/4 v1, 0x1

    .line 8
    .line 9
    .line 10
    invoke-static {p0, v0, v1, v0}, Lcom/narvii/wallet/CoinBillingManager;->showErrorAlert$default(Lcom/narvii/wallet/CoinBillingManager;Ljava/lang/String;ILjava/lang/Object;)V

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/wallet/CoinBillingManager;->logging:Lcom/narvii/util/logging/LoggingService;

    .line 13
    .line 14
    const/16 v2, 0x8

    .line 15
    .line 16
    new-array v2, v2, [Ljava/lang/Object;

    .line 17
    .line 18
    const-string v3, "sku"

    .line 19
    const/4 v4, 0x0

    .line 20
    .line 21
    aput-object v3, v2, v4

    .line 22
    .line 23
    iget-object p2, p2, Lcom/narvii/wallet/Product;->skuList:[Ljava/lang/String;

    .line 24
    .line 25
    aget-object p2, p2, v4

    .line 26
    .line 27
    aput-object p2, v2, v1

    .line 28
    const/4 p2, 0x2

    .line 29
    .line 30
    const-string v1, "reason"

    .line 31
    .line 32
    aput-object v1, v2, p2

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/android/billingclient/api/h;->b()I

    .line 36
    move-result p2

    .line 37
    .line 38
    .line 39
    invoke-static {p2}, Lcom/narvii/wallet/IabUtils;->getReason(I)Ljava/lang/String;

    .line 40
    move-result-object p2

    .line 41
    const/4 v1, 0x3

    .line 42
    .line 43
    aput-object p2, v2, v1

    .line 44
    const/4 p2, 0x4

    .line 45
    .line 46
    const-string v1, "code"

    .line 47
    .line 48
    aput-object v1, v2, p2

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Lcom/android/billingclient/api/h;->b()I

    .line 52
    move-result p2

    .line 53
    .line 54
    .line 55
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    move-result-object p2

    .line 57
    const/4 v1, 0x5

    .line 58
    .line 59
    aput-object p2, v2, v1

    .line 60
    const/4 p2, 0x6

    .line 61
    .line 62
    const-string v1, "message"

    .line 63
    .line 64
    aput-object v1, v2, p2

    .line 65
    const/4 p2, 0x7

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1}, Lcom/android/billingclient/api/h;->a()Ljava/lang/String;

    .line 69
    move-result-object p1

    .line 70
    .line 71
    aput-object p1, v2, p2

    .line 72
    .line 73
    const-string p1, "WalletPurchaseError"

    .line 74
    .line 75
    .line 76
    invoke-interface {v0, p1, v2}, Lcom/narvii/util/logging/LoggingService;->logEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    :cond_0
    return-void
.end method

.method private final handleConsumablePurchase(Lcom/android/billingclient/api/Purchase;Z)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/android/billingclient/api/i;->b()Lcom/android/billingclient/api/i$a;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->h()Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/i$a;->b(Ljava/lang/String;)Lcom/android/billingclient/api/i$a;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/android/billingclient/api/i$a;->a()Lcom/android/billingclient/api/i;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    const-string v1, "build(...)"

    .line 19
    .line 20
    .line 21
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    sget-object v1, Lcom/narvii/wallet/BillingManager;->INSTANCE:Lcom/narvii/wallet/BillingManager;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/narvii/wallet/BillingManager;->getBillingClient()Lcom/android/billingclient/api/BillingClient;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    new-instance v2, Lcom/narvii/wallet/g;

    .line 30
    .line 31
    .line 32
    invoke-direct {v2, p2, p0, p1}, Lcom/narvii/wallet/g;-><init>(ZLcom/narvii/wallet/CoinBillingManager;Lcom/android/billingclient/api/Purchase;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v0, v2}, Lcom/android/billingclient/api/BillingClient;->b(Lcom/android/billingclient/api/i;Lcom/android/billingclient/api/j;)V

    .line 36
    return-void
.end method

.method private static final handleConsumablePurchase$lambda$8(ZLcom/narvii/wallet/CoinBillingManager;Lcom/android/billingclient/api/Purchase;Lcom/android/billingclient/api/h;Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "this$0"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    const-string v0, "$purchase"

    .line 9
    .line 10
    .line 11
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    const-string v0, "billingResult"

    .line 14
    .line 15
    .line 16
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    const-string v0, "<anonymous parameter 1>"

    .line 19
    .line 20
    .line 21
    invoke-static {p4, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    if-eqz p0, :cond_0

    .line 24
    .line 25
    iget-object p0, p1, Lcom/narvii/wallet/CoinBillingManager;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 26
    .line 27
    if-eqz p0, :cond_0

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 31
    .line 32
    .line 33
    :cond_0
    invoke-virtual {p3}, Lcom/android/billingclient/api/h;->b()I

    .line 34
    move-result p0

    .line 35
    .line 36
    const-string p1, "CoinBillingManager"

    .line 37
    .line 38
    if-nez p0, :cond_1

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->j()Ljava/util/ArrayList;

    .line 42
    move-result-object p0

    .line 43
    .line 44
    const-string p2, "getSkus(...)"

    .line 45
    .line 46
    .line 47
    invoke-static {p0, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-static {p0}, Lkotlin/collections/t;->l0(Ljava/util/List;)Ljava/lang/Object;

    .line 51
    move-result-object p0

    .line 52
    .line 53
    new-instance p2, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    const-string p3, "Purchase "

    .line 59
    .line 60
    .line 61
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    const-string p0, " consumed."

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    move-result-object p0

    .line 74
    .line 75
    .line 76
    invoke-static {p1, p0}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    goto :goto_0

    .line 78
    .line 79
    .line 80
    :cond_1
    invoke-virtual {p3}, Lcom/android/billingclient/api/h;->a()Ljava/lang/String;

    .line 81
    move-result-object p0

    .line 82
    .line 83
    .line 84
    invoke-static {p1, p0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    :goto_0
    return-void
.end method

.method private final handleConsumablePurchases(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/billingclient/api/Purchase;",
            ">;)V"
        }
    .end annotation

    .line 1
    move-object v0, p1

    .line 2
    .line 3
    check-cast v0, Ljava/lang/Iterable;

    .line 4
    .line 5
    .line 6
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    .line 10
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    move-result v1

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    check-cast v1, Lcom/android/billingclient/api/Purchase;

    .line 20
    .line 21
    .line 22
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 23
    move-result-object v2

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 27
    move-result-object v2

    .line 28
    .line 29
    const-string v3, "/wallet/product/purchase"

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 33
    move-result-object v2

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/android/billingclient/api/Purchase;->j()Ljava/util/ArrayList;

    .line 37
    move-result-object v3

    .line 38
    .line 39
    const-string v4, "getSkus(...)"

    .line 40
    .line 41
    .line 42
    invoke-static {v3, v4}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-static {v3}, Lkotlin/collections/t;->l0(Ljava/util/List;)Ljava/lang/Object;

    .line 46
    move-result-object v3

    .line 47
    .line 48
    const-string v4, "sku"

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2, v4, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 52
    move-result-object v2

    .line 53
    .line 54
    iget-object v3, p0, Lcom/narvii/wallet/CoinBillingManager;->nvContext:Lcom/narvii/app/NVContext;

    .line 55
    .line 56
    .line 57
    invoke-interface {v3}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 58
    move-result-object v3

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 62
    move-result-object v3

    .line 63
    .line 64
    const-string v4, "packageName"

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2, v4, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 68
    move-result-object v2

    .line 69
    const/4 v3, 0x4

    .line 70
    .line 71
    .line 72
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 73
    move-result-object v3

    .line 74
    .line 75
    const-string v4, "paymentType"

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2, v4, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 79
    move-result-object v2

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1}, Lcom/android/billingclient/api/Purchase;->d()Ljava/lang/String;

    .line 83
    move-result-object v3

    .line 84
    .line 85
    .line 86
    invoke-static {v3}, Lcom/narvii/util/JacksonUtils;->createObjectNode(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 87
    move-result-object v3

    .line 88
    .line 89
    const-string v4, "paymentContext"

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2, v4, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 93
    move-result-object v2

    .line 94
    .line 95
    .line 96
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 97
    move-result-object v2

    .line 98
    .line 99
    iget-object v3, p0, Lcom/narvii/wallet/CoinBillingManager;->nvContext:Lcom/narvii/app/NVContext;

    .line 100
    .line 101
    const-string v4, "api"

    .line 102
    .line 103
    .line 104
    invoke-interface {v3, v4}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 105
    move-result-object v3

    .line 106
    .line 107
    const-string v4, "getService(...)"

    .line 108
    .line 109
    .line 110
    invoke-static {v3, v4}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    .line 112
    check-cast v3, Lcom/narvii/util/http/ApiService;

    .line 113
    .line 114
    new-instance v4, Lcom/narvii/wallet/CoinBillingManager$handleConsumablePurchases$1$1;

    .line 115
    .line 116
    const-class v5, Lcom/narvii/wallet/WalletResponse;

    .line 117
    .line 118
    .line 119
    invoke-direct {v4, p0, v1, p1, v5}, Lcom/narvii/wallet/CoinBillingManager$handleConsumablePurchases$1$1;-><init>(Lcom/narvii/wallet/CoinBillingManager;Lcom/android/billingclient/api/Purchase;Ljava/util/List;Ljava/lang/Class;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v3, v2, v4}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 123
    goto :goto_0

    .line 124
    :cond_0
    return-void
.end method

.method private final launchBillingFlow(Landroid/app/Activity;Lcom/android/billingclient/api/SkuDetails;)V
    .locals 3

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/wallet/BillingManager;->INSTANCE:Lcom/narvii/wallet/BillingManager;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/wallet/BillingManager;->getBillingState()Lcom/narvii/wallet/BillingState;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/narvii/wallet/BillingState;->isConnected()Z

    .line 10
    move-result v1

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lcom/android/billingclient/api/g;->a()Lcom/android/billingclient/api/g$a;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, p2}, Lcom/android/billingclient/api/g$a;->d(Lcom/android/billingclient/api/SkuDetails;)Lcom/android/billingclient/api/g$a;

    .line 20
    move-result-object p2

    .line 21
    .line 22
    iget-object v1, p0, Lcom/narvii/wallet/CoinBillingManager;->nvContext:Lcom/narvii/app/NVContext;

    .line 23
    .line 24
    const-string v2, "account"

    .line 25
    .line 26
    .line 27
    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    check-cast v1, Lcom/narvii/account/AccountService;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 34
    move-result-object v1

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2, v1}, Lcom/android/billingclient/api/g$a;->b(Ljava/lang/String;)Lcom/android/billingclient/api/g$a;

    .line 38
    move-result-object p2

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2}, Lcom/android/billingclient/api/g$a;->a()Lcom/android/billingclient/api/g;

    .line 42
    move-result-object p2

    .line 43
    .line 44
    const-string v1, "build(...)"

    .line 45
    .line 46
    .line 47
    invoke-static {p2, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/narvii/wallet/BillingManager;->getBillingClient()Lcom/android/billingclient/api/BillingClient;

    .line 51
    move-result-object v0

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, p1, p2}, Lcom/android/billingclient/api/BillingClient;->e(Landroid/app/Activity;Lcom/android/billingclient/api/g;)Lcom/android/billingclient/api/h;

    .line 55
    goto :goto_0

    .line 56
    .line 57
    :cond_0
    iget-object p1, p0, Lcom/narvii/wallet/CoinBillingManager;->logging:Lcom/narvii/util/logging/LoggingService;

    .line 58
    const/4 v0, 0x4

    .line 59
    .line 60
    new-array v0, v0, [Ljava/lang/Object;

    .line 61
    const/4 v1, 0x0

    .line 62
    .line 63
    const-string v2, "sku"

    .line 64
    .line 65
    aput-object v2, v0, v1

    .line 66
    const/4 v1, 0x1

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2}, Lcom/android/billingclient/api/SkuDetails;->b()Ljava/lang/String;

    .line 70
    move-result-object p2

    .line 71
    .line 72
    aput-object p2, v0, v1

    .line 73
    const/4 p2, 0x2

    .line 74
    .line 75
    const-string v1, "message"

    .line 76
    .line 77
    aput-object v1, v0, p2

    .line 78
    const/4 p2, 0x3

    .line 79
    .line 80
    const-string v1, "Unable to launch billing flow, client is not active."

    .line 81
    .line 82
    aput-object v1, v0, p2

    .line 83
    .line 84
    const-string p2, "WalletPurchaseError"

    .line 85
    .line 86
    .line 87
    invoke-interface {p1, p2, v0}, Lcom/narvii/util/logging/LoggingService;->logEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    :goto_0
    return-void
.end method

.method private final observeBillingManager(Landroid/content/Context;)V
    .locals 4

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/wallet/CoinBillingManager;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/narvii/wallet/CoinBillingManager;->getContext()Landroid/content/Context;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    instance-of v0, v0, Landroidx/lifecycle/LifecycleOwner;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    sget-object p1, Lcom/narvii/wallet/BillingManager;->INSTANCE:Lcom/narvii/wallet/BillingManager;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/narvii/wallet/BillingManager;->getSetupFinished()Landroidx/lifecycle/LiveData;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/narvii/wallet/CoinBillingManager;->getContext()Landroid/content/Context;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    .line 29
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 30
    .line 31
    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->o(Landroidx/lifecycle/LifecycleOwner;)V

    .line 35
    goto :goto_0

    .line 36
    .line 37
    :cond_0
    if-eqz p1, :cond_1

    .line 38
    .line 39
    sget-object v0, Lcom/narvii/wallet/BillingManager;->INSTANCE:Lcom/narvii/wallet/BillingManager;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/narvii/wallet/BillingManager;->getSetupFinished()Landroidx/lifecycle/LiveData;

    .line 43
    move-result-object v1

    .line 44
    .line 45
    check-cast p1, Landroidx/lifecycle/LifecycleOwner;

    .line 46
    .line 47
    new-instance v2, Lcom/narvii/wallet/CoinBillingManager$observeBillingManager$1;

    .line 48
    .line 49
    .line 50
    invoke-direct {v2, p0}, Lcom/narvii/wallet/CoinBillingManager$observeBillingManager$1;-><init>(Lcom/narvii/wallet/CoinBillingManager;)V

    .line 51
    .line 52
    new-instance v3, Lcom/narvii/wallet/CoinBillingManager$sam$androidx_lifecycle_Observer$0;

    .line 53
    .line 54
    .line 55
    invoke-direct {v3, v2}, Lcom/narvii/wallet/CoinBillingManager$sam$androidx_lifecycle_Observer$0;-><init>(Le8/l;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, p1, v3}, Landroidx/lifecycle/LiveData;->i(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/narvii/wallet/BillingManager;->getPurchasesUpdate()La;

    .line 62
    move-result-object v1

    .line 63
    .line 64
    new-instance v2, Lcom/narvii/wallet/CoinBillingManager$observeBillingManager$2;

    .line 65
    .line 66
    .line 67
    invoke-direct {v2, p0}, Lcom/narvii/wallet/CoinBillingManager$observeBillingManager$2;-><init>(Lcom/narvii/wallet/CoinBillingManager;)V

    .line 68
    .line 69
    new-instance v3, Lcom/narvii/wallet/CoinBillingManager$sam$androidx_lifecycle_Observer$0;

    .line 70
    .line 71
    .line 72
    invoke-direct {v3, v2}, Lcom/narvii/wallet/CoinBillingManager$sam$androidx_lifecycle_Observer$0;-><init>(Le8/l;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1, p1, v3}, La;->i(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Lcom/narvii/wallet/BillingManager;->getPurchasesUpdate()La;

    .line 79
    move-result-object v0

    .line 80
    .line 81
    new-instance v1, Lcom/narvii/wallet/CoinBillingManager$observeBillingManager$3;

    .line 82
    .line 83
    .line 84
    invoke-direct {v1, p0}, Lcom/narvii/wallet/CoinBillingManager$observeBillingManager$3;-><init>(Lcom/narvii/wallet/CoinBillingManager;)V

    .line 85
    .line 86
    new-instance v2, Lcom/narvii/wallet/CoinBillingManager$sam$androidx_lifecycle_Observer$0;

    .line 87
    .line 88
    .line 89
    invoke-direct {v2, v1}, Lcom/narvii/wallet/CoinBillingManager$sam$androidx_lifecycle_Observer$0;-><init>(Le8/l;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, p1, v2}, La;->i(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 93
    :cond_1
    :goto_0
    return-void
.end method

.method private final onQuerySkuDetailsFinished()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/wallet/CoinBillingManager;->pendingProduct:Lcom/narvii/wallet/Product;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/narvii/wallet/CoinBillingManager;->clearPending()V

    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/narvii/wallet/CoinBillingManager;->billingError:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    const/4 v0, 0x1

    .line 13
    const/4 v1, 0x0

    .line 14
    .line 15
    .line 16
    invoke-static {p0, v1, v0, v1}, Lcom/narvii/wallet/CoinBillingManager;->showErrorAlert$default(Lcom/narvii/wallet/CoinBillingManager;Ljava/lang/String;ILjava/lang/Object;)V

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/narvii/wallet/CoinBillingManager;->queryInAppFinishedLive:Landroidx/lifecycle/MutableLiveData;

    .line 19
    .line 20
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->p(Ljava/lang/Object;)V

    .line 24
    return-void
.end method

.method private final processPurchases(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/billingclient/api/Purchase;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 4
    move-result v0

    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    const-string v2, "Process purchases: "

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    const-string v1, "CoinBillingManager"

    .line 24
    .line 25
    .line 26
    invoke-static {v1, v0}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    check-cast p1, Ljava/lang/Iterable;

    .line 29
    .line 30
    new-instance v0, Ljava/util/ArrayList;

    .line 31
    .line 32
    .line 33
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    .line 40
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    move-result v1

    .line 42
    .line 43
    if-eqz v1, :cond_1

    .line 44
    .line 45
    .line 46
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    move-result-object v1

    .line 48
    move-object v2, v1

    .line 49
    .line 50
    check-cast v2, Lcom/android/billingclient/api/Purchase;

    .line 51
    .line 52
    iget-object v3, p0, Lcom/narvii/wallet/CoinBillingManager;->nvContext:Lcom/narvii/app/NVContext;

    .line 53
    .line 54
    const-string v4, "account"

    .line 55
    .line 56
    .line 57
    invoke-interface {v3, v4}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 58
    move-result-object v3

    .line 59
    .line 60
    check-cast v3, Lcom/narvii/account/AccountService;

    .line 61
    .line 62
    iget-object v4, p0, Lcom/narvii/wallet/CoinBillingManager;->productMap:Ljava/util/Map;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2}, Lcom/android/billingclient/api/Purchase;->j()Ljava/util/ArrayList;

    .line 66
    move-result-object v5

    .line 67
    .line 68
    const-string v6, "getSkus(...)"

    .line 69
    .line 70
    .line 71
    invoke-static {v5, v6}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-static {v5}, Lkotlin/collections/t;->l0(Ljava/util/List;)Ljava/lang/Object;

    .line 75
    move-result-object v5

    .line 76
    .line 77
    .line 78
    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 79
    move-result v4

    .line 80
    .line 81
    if-eqz v4, :cond_0

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2}, Lcom/android/billingclient/api/Purchase;->f()I

    .line 85
    move-result v4

    .line 86
    const/4 v5, 0x1

    .line 87
    .line 88
    if-ne v4, v5, :cond_0

    .line 89
    .line 90
    sget-object v4, Lcom/narvii/wallet/BillingManager;->INSTANCE:Lcom/narvii/wallet/BillingManager;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v3}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 94
    move-result-object v3

    .line 95
    .line 96
    const-string v5, "getUserId(...)"

    .line 97
    .line 98
    .line 99
    invoke-static {v3, v5}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v4, v2, v3}, Lcom/narvii/wallet/BillingManager;->checkPurchaseForAminoId(Lcom/android/billingclient/api/Purchase;Ljava/lang/String;)Z

    .line 103
    move-result v2

    .line 104
    .line 105
    if-eqz v2, :cond_0

    .line 106
    .line 107
    .line 108
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 109
    goto :goto_0

    .line 110
    .line 111
    :cond_1
    iput-object v0, p0, Lcom/narvii/wallet/CoinBillingManager;->purchaseList:Ljava/util/List;

    .line 112
    .line 113
    .line 114
    invoke-direct {p0, v0}, Lcom/narvii/wallet/CoinBillingManager;->handleConsumablePurchases(Ljava/util/List;)V

    .line 115
    return-void
.end method

.method private final queryInAppProductDetails()V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/wallet/CoinBillingManager;->_productList:Ljava/util/List;

    .line 3
    .line 4
    check-cast v0, Ljava/util/Collection;

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    xor-int/lit8 v0, v0, 0x1

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/wallet/CoinBillingManager;->productMap:Ljava/util/Map;

    .line 15
    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 18
    move-result v0

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    sget-object v0, Lcom/narvii/wallet/BillingManager;->INSTANCE:Lcom/narvii/wallet/BillingManager;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/narvii/wallet/BillingManager;->isBillingInitialized()Z

    .line 26
    move-result v0

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    .line 31
    invoke-static {}, Lcom/android/billingclient/api/s;->c()Lcom/android/billingclient/api/s$a;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    const-string v1, "inapp"

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/s$a;->c(Ljava/lang/String;)Lcom/android/billingclient/api/s$a;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    iget-object v1, p0, Lcom/narvii/wallet/CoinBillingManager;->_productList:Ljava/util/List;

    .line 41
    .line 42
    check-cast v1, Ljava/lang/Iterable;

    .line 43
    .line 44
    new-instance v2, Ljava/util/ArrayList;

    .line 45
    .line 46
    const/16 v3, 0xa

    .line 47
    .line 48
    .line 49
    invoke-static {v1, v3}, Lkotlin/collections/t;->x(Ljava/lang/Iterable;I)I

    .line 50
    move-result v3

    .line 51
    .line 52
    .line 53
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 54
    .line 55
    .line 56
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 57
    move-result-object v1

    .line 58
    .line 59
    .line 60
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 61
    move-result v3

    .line 62
    .line 63
    if-eqz v3, :cond_0

    .line 64
    .line 65
    .line 66
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 67
    move-result-object v3

    .line 68
    .line 69
    check-cast v3, Lcom/narvii/wallet/Product;

    .line 70
    .line 71
    iget-object v3, v3, Lcom/narvii/wallet/Product;->skuList:[Ljava/lang/String;

    .line 72
    const/4 v4, 0x0

    .line 73
    .line 74
    aget-object v3, v3, v4

    .line 75
    .line 76
    .line 77
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 78
    goto :goto_0

    .line 79
    .line 80
    .line 81
    :cond_0
    invoke-virtual {v0, v2}, Lcom/android/billingclient/api/s$a;->b(Ljava/util/List;)Lcom/android/billingclient/api/s$a;

    .line 82
    move-result-object v0

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0}, Lcom/android/billingclient/api/s$a;->a()Lcom/android/billingclient/api/s;

    .line 86
    move-result-object v0

    .line 87
    .line 88
    const-string v1, "build(...)"

    .line 89
    .line 90
    .line 91
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    .line 93
    sget-object v1, Lcom/narvii/wallet/BillingManager;->INSTANCE:Lcom/narvii/wallet/BillingManager;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1}, Lcom/narvii/wallet/BillingManager;->getBillingClient()Lcom/android/billingclient/api/BillingClient;

    .line 97
    move-result-object v1

    .line 98
    .line 99
    new-instance v2, Lcom/narvii/wallet/e;

    .line 100
    .line 101
    .line 102
    invoke-direct {v2, p0}, Lcom/narvii/wallet/e;-><init>(Lcom/narvii/wallet/CoinBillingManager;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1, v0, v2}, Lcom/android/billingclient/api/BillingClient;->i(Lcom/android/billingclient/api/s;Lcom/android/billingclient/api/t;)V

    .line 106
    goto :goto_1

    .line 107
    .line 108
    .line 109
    :cond_1
    invoke-direct {p0}, Lcom/narvii/wallet/CoinBillingManager;->queryInAppPurchases()V

    .line 110
    :goto_1
    return-void
.end method

.method private static final queryInAppProductDetails$lambda$3(Lcom/narvii/wallet/CoinBillingManager;Lcom/android/billingclient/api/h;Ljava/util/List;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "this$0"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    const-string v0, "billingResult"

    .line 9
    .line 10
    .line 11
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 17
    move-result v0

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    move-result-object v0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    .line 25
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    const-string v2, "SKU details response size: "

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    const-string v1, "CoinBillingManager"

    .line 43
    .line 44
    .line 45
    invoke-static {v1, v0}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/android/billingclient/api/h;->b()I

    .line 49
    move-result p1

    .line 50
    .line 51
    if-nez p1, :cond_3

    .line 52
    move-object p1, p2

    .line 53
    .line 54
    check-cast p1, Ljava/util/Collection;

    .line 55
    .line 56
    if-eqz p1, :cond_3

    .line 57
    .line 58
    .line 59
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 60
    move-result p1

    .line 61
    .line 62
    if-eqz p1, :cond_1

    .line 63
    goto :goto_2

    .line 64
    :cond_1
    const/4 p1, 0x0

    .line 65
    .line 66
    iput-boolean p1, p0, Lcom/narvii/wallet/CoinBillingManager;->billingError:Z

    .line 67
    .line 68
    iget-object p1, p0, Lcom/narvii/wallet/CoinBillingManager;->productMap:Ljava/util/Map;

    .line 69
    .line 70
    .line 71
    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 72
    .line 73
    .line 74
    invoke-static {p2}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 75
    .line 76
    check-cast p2, Ljava/lang/Iterable;

    .line 77
    .line 78
    .line 79
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 80
    move-result-object p1

    .line 81
    .line 82
    .line 83
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 84
    move-result p2

    .line 85
    .line 86
    if-eqz p2, :cond_2

    .line 87
    .line 88
    .line 89
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 90
    move-result-object p2

    .line 91
    .line 92
    check-cast p2, Lcom/android/billingclient/api/SkuDetails;

    .line 93
    .line 94
    iget-object v0, p0, Lcom/narvii/wallet/CoinBillingManager;->productMap:Ljava/util/Map;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p2}, Lcom/android/billingclient/api/SkuDetails;->b()Ljava/lang/String;

    .line 98
    move-result-object v1

    .line 99
    .line 100
    const-string v2, "getSku(...)"

    .line 101
    .line 102
    .line 103
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-static {p2}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    goto :goto_1

    .line 111
    .line 112
    .line 113
    :cond_2
    invoke-direct {p0}, Lcom/narvii/wallet/CoinBillingManager;->queryInAppPurchases()V

    .line 114
    goto :goto_3

    .line 115
    :cond_3
    :goto_2
    const/4 p1, 0x1

    .line 116
    .line 117
    iput-boolean p1, p0, Lcom/narvii/wallet/CoinBillingManager;->billingError:Z

    .line 118
    .line 119
    .line 120
    :goto_3
    invoke-direct {p0}, Lcom/narvii/wallet/CoinBillingManager;->onQuerySkuDetailsFinished()V

    .line 121
    return-void
.end method

.method private final queryInAppPurchases()V
    .locals 3

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/wallet/BillingManager;->INSTANCE:Lcom/narvii/wallet/BillingManager;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/wallet/BillingManager;->isBillingInitialized()Z

    .line 6
    move-result v1

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/narvii/wallet/BillingManager;->getBillingClient()Lcom/android/billingclient/api/BillingClient;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lcom/android/billingclient/api/r;->a()Lcom/android/billingclient/api/r$a;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    const-string v2, "inapp"

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v2}, Lcom/android/billingclient/api/r$a;->b(Ljava/lang/String;)Lcom/android/billingclient/api/r$a;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/android/billingclient/api/r$a;->a()Lcom/android/billingclient/api/r;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    new-instance v2, Lcom/narvii/wallet/f;

    .line 29
    .line 30
    .line 31
    invoke-direct {v2, p0}, Lcom/narvii/wallet/f;-><init>(Lcom/narvii/wallet/CoinBillingManager;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1, v2}, Lcom/android/billingclient/api/BillingClient;->h(Lcom/android/billingclient/api/r;Lcom/android/billingclient/api/o;)V

    .line 35
    :cond_0
    return-void
.end method

.method private static final queryInAppPurchases$lambda$4(Lcom/narvii/wallet/CoinBillingManager;Lcom/android/billingclient/api/h;Ljava/util/List;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "this$0"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    const-string v0, "<anonymous parameter 0>"

    .line 9
    .line 10
    .line 11
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    const-string p1, "purchaseList"

    .line 14
    .line 15
    .line 16
    invoke-static {p2, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-direct {p0, p2}, Lcom/narvii/wallet/CoinBillingManager;->processPurchases(Ljava/util/List;)V

    .line 20
    return-void
.end method

.method public static final refreshInstance()V
    .locals 1

    sget-object v0, Lcom/narvii/wallet/CoinBillingManager;->Companion:Lcom/narvii/wallet/CoinBillingManager$Companion;

    invoke-virtual {v0}, Lcom/narvii/wallet/CoinBillingManager$Companion;->refreshInstance()V

    return-void
.end method

.method private final showErrorAlert(Ljava/lang/String;)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/wallet/CoinBillingManager;->errorDialog:Lcom/narvii/util/dialog/AlertDialog;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 8
    .line 9
    :cond_0
    new-instance v0, Lcom/narvii/util/dialog/AlertDialog;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/narvii/wallet/CoinBillingManager;->getContext()Landroid/content/Context;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lcom/narvii/util/dialog/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 20
    const/4 p1, 0x0

    .line 21
    const/4 v1, 0x0

    .line 22
    .line 23
    .line 24
    const v2, 0x7f1202ba

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v2, p1, v1}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    .line 31
    .line 32
    iput-object v0, p0, Lcom/narvii/wallet/CoinBillingManager;->errorDialog:Lcom/narvii/util/dialog/AlertDialog;

    .line 33
    return-void
.end method

.method static synthetic showErrorAlert$default(Lcom/narvii/wallet/CoinBillingManager;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    and-int/lit8 p2, p2, 0x1

    .line 3
    .line 4
    if-eqz p2, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/narvii/wallet/CoinBillingManager;->getContext()Landroid/content/Context;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    const p2, 0x7f120826

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    const-string p2, "getString(...)"

    .line 21
    .line 22
    .line 23
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-direct {p0, p1}, Lcom/narvii/wallet/CoinBillingManager;->showErrorAlert(Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method private final showPending()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/wallet/CoinBillingManager;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    iput-object v0, p0, Lcom/narvii/wallet/CoinBillingManager;->pendingDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 12
    .line 13
    new-instance v1, Lcom/narvii/wallet/d;

    .line 14
    .line 15
    .line 16
    invoke-direct {v1, p0}, Lcom/narvii/wallet/d;-><init>(Lcom/narvii/wallet/CoinBillingManager;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 20
    .line 21
    iget-object v0, p0, Lcom/narvii/wallet/CoinBillingManager;->pendingDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 27
    :cond_0
    return-void
.end method

.method private static final showPending$lambda$9(Lcom/narvii/wallet/CoinBillingManager;Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    const-string/jumbo p1, "this$0"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    const/4 p1, 0x0

    .line 8
    .line 9
    iput-object p1, p0, Lcom/narvii/wallet/CoinBillingManager;->pendingProduct:Lcom/narvii/wallet/Product;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/narvii/wallet/CoinBillingManager;->pendingDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 12
    return-void
.end method


# virtual methods
.method public final fetchInAppProducts(Lcom/narvii/util/http/ApiResponseListener;)V
    .locals 3
    .param p1    # Lcom/narvii/util/http/ApiResponseListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/http/ApiResponseListener<",
            "Lcom/narvii/wallet/ProductListResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v2, p1, v0, v1}, Lcom/narvii/wallet/CoinBillingManager;->fetchInAppProducts$default(Lcom/narvii/wallet/CoinBillingManager;ZLcom/narvii/util/http/ApiResponseListener;ILjava/lang/Object;)V

    return-void
.end method

.method public final fetchInAppProducts(ZLcom/narvii/util/http/ApiResponseListener;)V
    .locals 3
    .param p2    # Lcom/narvii/util/http/ApiResponseListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/narvii/util/http/ApiResponseListener<",
            "Lcom/narvii/wallet/ProductListResponse;",
            ">;)V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/narvii/wallet/CoinBillingManager;->_productList:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/wallet/CoinBillingManager;->nvContext:Lcom/narvii/app/NVContext;

    const-string v1, "api"

    .line 3
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getService(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 4
    invoke-direct {p0, p1}, Lcom/narvii/wallet/CoinBillingManager;->createInAppRequest(Z)Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    .line 5
    new-instance v1, Lcom/narvii/wallet/CoinBillingManager$fetchInAppProducts$1;

    const-class v2, Lcom/narvii/wallet/ProductListResponse;

    invoke-direct {v1, p2, p0, v2}, Lcom/narvii/wallet/CoinBillingManager$fetchInAppProducts$1;-><init>(Lcom/narvii/util/http/ApiResponseListener;Lcom/narvii/wallet/CoinBillingManager;Ljava/lang/Class;)V

    .line 6
    invoke-virtual {v0, p1, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-direct {p0}, Lcom/narvii/wallet/CoinBillingManager;->queryInAppProductDetails()V

    :goto_0
    return-void
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/wallet/CoinBillingManager;->context:Landroid/content/Context;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/wallet/CoinBillingManager;->nvContext:Lcom/narvii/app/NVContext;

    .line 7
    .line 8
    .line 9
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 10
    move-result-object v0

    .line 11
    :cond_0
    return-object v0
.end method

.method public final getOnWalletChangedLive()La;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La<",
            "Lcom/narvii/wallet/WalletResponse;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/wallet/CoinBillingManager;->onWalletChangedLive:La;

    return-object v0
.end method

.method public final getProductList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/wallet/Product;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/wallet/CoinBillingManager;->_productList:Ljava/util/List;

    return-object v0
.end method

.method public final getQueryInAppFinishedLive()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/wallet/CoinBillingManager;->queryInAppFinishedLive:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getSkuDetails(Ljava/lang/String;)Lcom/android/billingclient/api/SkuDetails;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    const-string v0, "sku"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/wallet/CoinBillingManager;->productMap:Ljava/util/Map;

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    check-cast p1, Lcom/android/billingclient/api/SkuDetails;

    .line 14
    return-object p1
.end method

.method public final purchaseInAppProduct(Landroid/app/Activity;Lcom/narvii/wallet/Product;)V
    .locals 7
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/wallet/Product;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "activity"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "product"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lcom/narvii/wallet/CoinBillingManager;->clearPending()V

    .line 14
    .line 15
    iget-object v0, p0, Lcom/narvii/wallet/CoinBillingManager;->productMap:Ljava/util/Map;

    .line 16
    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x1

    .line 21
    xor-int/2addr v0, v1

    .line 22
    .line 23
    const-string v2, "sku"

    .line 24
    const/4 v3, 0x2

    .line 25
    const/4 v4, 0x0

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    iget-object v0, p0, Lcom/narvii/wallet/CoinBillingManager;->logging:Lcom/narvii/util/logging/LoggingService;

    .line 30
    .line 31
    new-array v5, v3, [Ljava/lang/Object;

    .line 32
    .line 33
    aput-object v2, v5, v4

    .line 34
    .line 35
    iget-object v6, p2, Lcom/narvii/wallet/Product;->skuList:[Ljava/lang/String;

    .line 36
    .line 37
    aget-object v6, v6, v4

    .line 38
    .line 39
    aput-object v6, v5, v1

    .line 40
    .line 41
    const-string v6, "WalletPurchaseStarting"

    .line 42
    .line 43
    .line 44
    invoke-interface {v0, v6, v5}, Lcom/narvii/util/logging/LoggingService;->logEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    .line 46
    iput-object p2, p0, Lcom/narvii/wallet/CoinBillingManager;->purchasingProduct:Lcom/narvii/wallet/Product;

    .line 47
    .line 48
    iget-object v0, p0, Lcom/narvii/wallet/CoinBillingManager;->productMap:Ljava/util/Map;

    .line 49
    .line 50
    iget-object v5, p2, Lcom/narvii/wallet/Product;->skuList:[Ljava/lang/String;

    .line 51
    .line 52
    aget-object v5, v5, v4

    .line 53
    .line 54
    .line 55
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    move-result-object v0

    .line 57
    .line 58
    .line 59
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 60
    .line 61
    check-cast v0, Lcom/android/billingclient/api/SkuDetails;

    .line 62
    .line 63
    .line 64
    invoke-direct {p0, p1, v0}, Lcom/narvii/wallet/CoinBillingManager;->launchBillingFlow(Landroid/app/Activity;Lcom/android/billingclient/api/SkuDetails;)V

    .line 65
    goto :goto_0

    .line 66
    .line 67
    :cond_0
    iput-object p2, p0, Lcom/narvii/wallet/CoinBillingManager;->pendingProduct:Lcom/narvii/wallet/Product;

    .line 68
    .line 69
    .line 70
    invoke-direct {p0}, Lcom/narvii/wallet/CoinBillingManager;->showPending()V

    .line 71
    .line 72
    :goto_0
    iget-object p1, p0, Lcom/narvii/wallet/CoinBillingManager;->pendingProduct:Lcom/narvii/wallet/Product;

    .line 73
    .line 74
    .line 75
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 76
    move-result p1

    .line 77
    .line 78
    if-eqz p1, :cond_1

    .line 79
    .line 80
    iget-boolean p1, p0, Lcom/narvii/wallet/CoinBillingManager;->billingError:Z

    .line 81
    .line 82
    if-eqz p1, :cond_1

    .line 83
    .line 84
    .line 85
    invoke-direct {p0}, Lcom/narvii/wallet/CoinBillingManager;->clearPending()V

    .line 86
    const/4 p1, 0x0

    .line 87
    .line 88
    .line 89
    invoke-static {p0, p1, v1, p1}, Lcom/narvii/wallet/CoinBillingManager;->showErrorAlert$default(Lcom/narvii/wallet/CoinBillingManager;Ljava/lang/String;ILjava/lang/Object;)V

    .line 90
    .line 91
    iget-object p1, p0, Lcom/narvii/wallet/CoinBillingManager;->logging:Lcom/narvii/util/logging/LoggingService;

    .line 92
    const/4 v0, 0x4

    .line 93
    .line 94
    new-array v0, v0, [Ljava/lang/Object;

    .line 95
    .line 96
    aput-object v2, v0, v4

    .line 97
    .line 98
    iget-object p2, p2, Lcom/narvii/wallet/Product;->skuList:[Ljava/lang/String;

    .line 99
    .line 100
    aget-object p2, p2, v4

    .line 101
    .line 102
    aput-object p2, v0, v1

    .line 103
    .line 104
    const-string p2, "message"

    .line 105
    .line 106
    aput-object p2, v0, v3

    .line 107
    const/4 p2, 0x3

    .line 108
    .line 109
    const-string v1, "Product list is empty."

    .line 110
    .line 111
    aput-object v1, v0, p2

    .line 112
    .line 113
    const-string p2, "WalletPurchaseError"

    .line 114
    .line 115
    .line 116
    invoke-interface {p1, p2, v0}, Lcom/narvii/util/logging/LoggingService;->logEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    :cond_1
    return-void
.end method

.method public final setContext(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/wallet/CoinBillingManager;->observeBillingManager(Landroid/content/Context;)V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/wallet/CoinBillingManager;->context:Landroid/content/Context;

    .line 6
    return-void
.end method
