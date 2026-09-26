.class public final Lcom/narvii/wallet/BillingManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/narvii/wallet/BillingManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final _setupFinished:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/android/billingclient/api/h;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static billingClient:Lcom/android/billingclient/api/BillingClient;

.field private static billingState:Lcom/narvii/wallet/BillingState;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final purchasesUpdate:La;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La<",
            "Lcom/narvii/wallet/PurchasesUpdate;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static retryConnection:Z

.field private static final setupFinished:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Lcom/android/billingclient/api/h;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/wallet/BillingManager;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/narvii/wallet/BillingManager;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/narvii/wallet/BillingManager;->INSTANCE:Lcom/narvii/wallet/BillingManager;

    .line 8
    .line 9
    sget-object v0, Lcom/narvii/wallet/BillingState$Idle;->INSTANCE:Lcom/narvii/wallet/BillingState$Idle;

    .line 10
    .line 11
    sput-object v0, Lcom/narvii/wallet/BillingManager;->billingState:Lcom/narvii/wallet/BillingState;

    .line 12
    .line 13
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 14
    .line 15
    .line 16
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 17
    .line 18
    sput-object v0, Lcom/narvii/wallet/BillingManager;->_setupFinished:Landroidx/lifecycle/MutableLiveData;

    .line 19
    .line 20
    sput-object v0, Lcom/narvii/wallet/BillingManager;->setupFinished:Landroidx/lifecycle/LiveData;

    .line 21
    .line 22
    new-instance v0, La;

    .line 23
    .line 24
    .line 25
    invoke-direct {v0}, La;-><init>()V

    .line 26
    .line 27
    sput-object v0, Lcom/narvii/wallet/BillingManager;->purchasesUpdate:La;

    .line 28
    const/4 v0, 0x1

    .line 29
    .line 30
    sput-boolean v0, Lcom/narvii/wallet/BillingManager;->retryConnection:Z

    .line 31
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static synthetic a(Lcom/android/billingclient/api/h;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/wallet/BillingManager;->init$lambda$1$lambda$0(Lcom/android/billingclient/api/h;Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$getRetryConnection$p()Z
    .locals 1

    sget-boolean v0, Lcom/narvii/wallet/BillingManager;->retryConnection:Z

    return v0
.end method

.method public static final synthetic access$get_setupFinished$p()Landroidx/lifecycle/MutableLiveData;
    .locals 1

    sget-object v0, Lcom/narvii/wallet/BillingManager;->_setupFinished:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public static final synthetic access$setRetryConnection$p(Z)V
    .locals 0

    sput-boolean p0, Lcom/narvii/wallet/BillingManager;->retryConnection:Z

    return-void
.end method

.method private static final init$lambda$1$lambda$0(Lcom/android/billingclient/api/h;Ljava/util/List;)V
    .locals 3

    .line 1
    .line 2
    const-string v0, "billingResult"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/billingclient/api/h;->b()I

    .line 9
    move-result v0

    .line 10
    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    const-string v2, "Purchase updated "

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    const-string v1, "BillingManager2"

    .line 29
    .line 30
    .line 31
    invoke-static {v1, v0}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    sget-object v0, Lcom/narvii/wallet/BillingManager;->purchasesUpdate:La;

    .line 34
    .line 35
    new-instance v1, Lcom/narvii/wallet/PurchasesUpdate;

    .line 36
    .line 37
    .line 38
    invoke-direct {v1, p0, p1}, Lcom/narvii/wallet/PurchasesUpdate;-><init>(Lcom/android/billingclient/api/h;Ljava/util/List;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, La;->p(Ljava/lang/Object;)V

    .line 42
    return-void
.end method


# virtual methods
.method public final checkPurchaseForAminoId(Lcom/android/billingclient/api/Purchase;Ljava/lang/String;)Z
    .locals 2
    .param p1    # Lcom/android/billingclient/api/Purchase;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "purchase"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string/jumbo v0, "userId"

    .line 9
    .line 10
    .line 11
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->b()Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->createObjectNode(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    .line 22
    const-string/jumbo v1, "udi"

    .line 23
    .line 24
    .line 25
    filled-new-array {v1}, [Ljava/lang/String;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    .line 29
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    const-string v1, ""

    .line 33
    .line 34
    if-nez v0, :cond_0

    .line 35
    move-object v0, v1

    .line 36
    .line 37
    .line 38
    :cond_0
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->a()Lcom/android/billingclient/api/a;

    .line 39
    move-result-object p1

    .line 40
    .line 41
    if-eqz p1, :cond_1

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/android/billingclient/api/a;->a()Ljava/lang/String;

    .line 45
    move-result-object p1

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    const/4 p1, 0x0

    .line 48
    .line 49
    :goto_0
    if-nez p1, :cond_2

    .line 50
    goto :goto_1

    .line 51
    :cond_2
    move-object v1, p1

    .line 52
    .line 53
    .line 54
    :goto_1
    invoke-static {v0, p2}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 55
    move-result p1

    .line 56
    .line 57
    if-nez p1, :cond_4

    .line 58
    .line 59
    .line 60
    invoke-static {v1, p2}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 61
    move-result p1

    .line 62
    .line 63
    if-eqz p1, :cond_3

    .line 64
    goto :goto_2

    .line 65
    :cond_3
    const/4 p1, 0x0

    .line 66
    goto :goto_3

    .line 67
    :cond_4
    :goto_2
    const/4 p1, 0x1

    .line 68
    :goto_3
    return p1
.end method

.method public final clear()V
    .locals 2

    .line 1
    .line 2
    const-string v0, "clear BillingManager2"

    .line 3
    .line 4
    const-string v1, "BillingManager2"

    .line 5
    .line 6
    .line 7
    invoke-static {v1, v0}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/narvii/wallet/BillingManager;->isBillingInitialized()Z

    .line 11
    move-result v0

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/narvii/wallet/BillingManager;->getBillingClient()Lcom/android/billingclient/api/BillingClient;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingClient;->d()Z

    .line 21
    move-result v0

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    const-string v0, "Ending connection..."

    .line 26
    .line 27
    .line 28
    invoke-static {v1, v0}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/narvii/wallet/BillingManager;->getBillingClient()Lcom/android/billingclient/api/BillingClient;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingClient;->c()V

    .line 36
    .line 37
    :cond_0
    sget-object v0, Lcom/narvii/wallet/BillingState$Idle;->INSTANCE:Lcom/narvii/wallet/BillingState$Idle;

    .line 38
    .line 39
    sput-object v0, Lcom/narvii/wallet/BillingManager;->billingState:Lcom/narvii/wallet/BillingState;

    .line 40
    return-void
.end method

.method public final connectBillingClient()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/wallet/BillingManager;->isBillingInitialized()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/wallet/BillingManager;->getBillingClient()Lcom/android/billingclient/api/BillingClient;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingClient;->d()Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    sget-object v0, Lcom/narvii/wallet/BillingManager;->billingState:Lcom/narvii/wallet/BillingState;

    .line 19
    .line 20
    sget-object v1, Lcom/narvii/wallet/BillingState$Connecting;->INSTANCE:Lcom/narvii/wallet/BillingState$Connecting;

    .line 21
    .line 22
    .line 23
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    move-result v0

    .line 25
    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    sput-object v1, Lcom/narvii/wallet/BillingManager;->billingState:Lcom/narvii/wallet/BillingState;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/narvii/wallet/BillingManager;->getBillingClient()Lcom/android/billingclient/api/BillingClient;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    new-instance v1, Lcom/narvii/wallet/BillingManager$connectBillingClient$1;

    .line 35
    .line 36
    .line 37
    invoke-direct {v1}, Lcom/narvii/wallet/BillingManager$connectBillingClient$1;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingClient;->j(Lcom/android/billingclient/api/f;)V

    .line 41
    goto :goto_0

    .line 42
    .line 43
    :cond_0
    const-string v0, "BillingManager2"

    .line 44
    .line 45
    const-string v1, "Billing client is not initialized or already connected"

    .line 46
    .line 47
    .line 48
    invoke-static {v0, v1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :goto_0
    return-void
.end method

.method public final getBillingClient()Lcom/android/billingclient/api/BillingClient;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/wallet/BillingManager;->billingClient:Lcom/android/billingclient/api/BillingClient;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-object v0

    .line 6
    .line 7
    :cond_0
    const-string v0, "billingClient"

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public final getBillingState()Lcom/narvii/wallet/BillingState;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/narvii/wallet/BillingManager;->billingState:Lcom/narvii/wallet/BillingState;

    return-object v0
.end method

.method public final getPurchasesUpdate()La;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La<",
            "Lcom/narvii/wallet/PurchasesUpdate;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/narvii/wallet/BillingManager;->purchasesUpdate:La;

    return-object v0
.end method

.method public final getSetupFinished()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/android/billingclient/api/h;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/narvii/wallet/BillingManager;->setupFinished:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final init(Landroid/content/Context;)V
    .locals 2
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
    const-string v0, "BillingManager2"

    .line 8
    .line 9
    const-string v1, "init BillingManager2"

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    monitor-enter p0

    .line 14
    .line 15
    :try_start_0
    sget-object v0, Lcom/narvii/wallet/BillingManager;->INSTANCE:Lcom/narvii/wallet/BillingManager;

    .line 16
    .line 17
    .line 18
    invoke-static {p1}, Lcom/android/billingclient/api/BillingClient;->f(Landroid/content/Context;)Lcom/android/billingclient/api/BillingClient$Builder;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingClient$Builder;->b()Lcom/android/billingclient/api/BillingClient$Builder;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    new-instance v1, Lcom/narvii/wallet/a;

    .line 26
    .line 27
    .line 28
    invoke-direct {v1}, Lcom/narvii/wallet/a;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v1}, Lcom/android/billingclient/api/BillingClient$Builder;->c(Lcom/android/billingclient/api/p;)Lcom/android/billingclient/api/BillingClient$Builder;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingClient$Builder;->a()Lcom/android/billingclient/api/BillingClient;

    .line 36
    move-result-object p1

    .line 37
    .line 38
    const-string v1, "build(...)"

    .line 39
    .line 40
    .line 41
    invoke-static {p1, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, p1}, Lcom/narvii/wallet/BillingManager;->setBillingClient(Lcom/android/billingclient/api/BillingClient;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/narvii/wallet/BillingManager;->connectBillingClient()V

    .line 48
    .line 49
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    monitor-exit p0

    .line 51
    return-void

    .line 52
    :catchall_0
    move-exception p1

    .line 53
    monitor-exit p0

    .line 54
    throw p1
.end method

.method public final isBillingInitialized()Z
    .locals 1

    sget-object v0, Lcom/narvii/wallet/BillingManager;->billingClient:Lcom/android/billingclient/api/BillingClient;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final setBillingClient(Lcom/android/billingclient/api/BillingClient;)V
    .locals 1
    .param p1    # Lcom/android/billingclient/api/BillingClient;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/narvii/wallet/BillingManager;->billingClient:Lcom/android/billingclient/api/BillingClient;

    return-void
.end method

.method public final setBillingState(Lcom/narvii/wallet/BillingState;)V
    .locals 1
    .param p1    # Lcom/narvii/wallet/BillingState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/narvii/wallet/BillingManager;->billingState:Lcom/narvii/wallet/BillingState;

    return-void
.end method
