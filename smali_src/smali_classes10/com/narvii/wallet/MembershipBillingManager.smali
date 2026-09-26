.class public final Lcom/narvii/wallet/MembershipBillingManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMembershipBillingManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MembershipBillingManager.kt\ncom/narvii/wallet/MembershipBillingManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,156:1\n1549#2:157\n1620#2,3:158\n766#2:161\n857#2,2:162\n1855#2,2:164\n1855#2,2:166\n*S KotlinDebug\n*F\n+ 1 MembershipBillingManager.kt\ncom/narvii/wallet/MembershipBillingManager\n*L\n82#1:157\n82#1:158,3\n128#1:161\n128#1:162,2\n141#1:164,2\n97#1:166,2\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/narvii/wallet/MembershipBillingManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "MembershipBillingManager"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static nvContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/narvii/app/NVContext;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static purchaseList:Ljava/util/List;
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

.field private static final purchaseMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/billingclient/api/Purchase;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static subsDetails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/l;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final subsUpdate:La;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La<",
            "Lcom/android/billingclient/api/h;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final subscriptionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/billingclient/api/l;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/wallet/MembershipBillingManager;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/narvii/wallet/MembershipBillingManager;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/narvii/wallet/MembershipBillingManager;->INSTANCE:Lcom/narvii/wallet/MembershipBillingManager;

    .line 8
    .line 9
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 10
    const/4 v1, 0x0

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 14
    .line 15
    sput-object v0, Lcom/narvii/wallet/MembershipBillingManager;->nvContext:Ljava/lang/ref/WeakReference;

    .line 16
    .line 17
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 18
    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 21
    .line 22
    sput-object v0, Lcom/narvii/wallet/MembershipBillingManager;->subscriptionMap:Ljava/util/Map;

    .line 23
    .line 24
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 25
    .line 26
    .line 27
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 28
    .line 29
    sput-object v0, Lcom/narvii/wallet/MembershipBillingManager;->purchaseMap:Ljava/util/Map;

    .line 30
    .line 31
    .line 32
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    check-cast v0, Ljava/lang/Iterable;

    .line 36
    .line 37
    .line 38
    invoke-static {v0}, Lkotlin/collections/t;->U0(Ljava/lang/Iterable;)Ljava/util/List;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    sput-object v0, Lcom/narvii/wallet/MembershipBillingManager;->purchaseList:Ljava/util/List;

    .line 42
    .line 43
    .line 44
    invoke-static {}, Lkotlin/collections/t;->m()Ljava/util/List;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    sput-object v0, Lcom/narvii/wallet/MembershipBillingManager;->subsDetails:Ljava/util/List;

    .line 48
    .line 49
    new-instance v0, La;

    .line 50
    .line 51
    .line 52
    invoke-direct {v0}, La;-><init>()V

    .line 53
    .line 54
    sput-object v0, Lcom/narvii/wallet/MembershipBillingManager;->subsUpdate:La;

    .line 55
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

.method public static synthetic a(Lcom/android/billingclient/api/Purchase;Lcom/android/billingclient/api/h;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/wallet/MembershipBillingManager;->acknowledgeNonConsumablePurchases$lambda$7$lambda$6(Lcom/android/billingclient/api/Purchase;Lcom/android/billingclient/api/h;)V

    return-void
.end method

.method private final acknowledgeNonConsumablePurchases(Ljava/util/List;)V
    .locals 4
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
    check-cast p1, Ljava/lang/Iterable;

    .line 3
    .line 4
    .line 5
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    check-cast v0, Lcom/android/billingclient/api/Purchase;

    .line 19
    .line 20
    .line 21
    invoke-static {}, Lcom/android/billingclient/api/b;->b()Lcom/android/billingclient/api/b$a;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/android/billingclient/api/Purchase;->h()Ljava/lang/String;

    .line 26
    move-result-object v2

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v2}, Lcom/android/billingclient/api/b$a;->b(Ljava/lang/String;)Lcom/android/billingclient/api/b$a;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/android/billingclient/api/b$a;->a()Lcom/android/billingclient/api/b;

    .line 34
    move-result-object v1

    .line 35
    .line 36
    const-string v2, "build(...)"

    .line 37
    .line 38
    .line 39
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    sget-object v2, Lcom/narvii/wallet/BillingManager;->INSTANCE:Lcom/narvii/wallet/BillingManager;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2}, Lcom/narvii/wallet/BillingManager;->getBillingClient()Lcom/android/billingclient/api/BillingClient;

    .line 45
    move-result-object v2

    .line 46
    .line 47
    new-instance v3, Lcom/narvii/wallet/k;

    .line 48
    .line 49
    .line 50
    invoke-direct {v3, v0}, Lcom/narvii/wallet/k;-><init>(Lcom/android/billingclient/api/Purchase;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2, v1, v3}, Lcom/android/billingclient/api/BillingClient;->a(Lcom/android/billingclient/api/b;Lcom/android/billingclient/api/c;)V

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    return-void
.end method

.method private static final acknowledgeNonConsumablePurchases$lambda$7$lambda$6(Lcom/android/billingclient/api/Purchase;Lcom/android/billingclient/api/h;)V
    .locals 2

    .line 1
    .line 2
    const-string v0, "$it"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "billingResult"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lcom/narvii/wallet/BillingKt;->isSuccess(Lcom/android/billingclient/api/h;)Z

    .line 14
    move-result v0

    .line 15
    .line 16
    const-string v1, "MembershipBillingManager"

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/android/billingclient/api/Purchase;->j()Ljava/util/ArrayList;

    .line 22
    move-result-object p0

    .line 23
    .line 24
    const-string p1, "getSkus(...)"

    .line 25
    .line 26
    .line 27
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-static {p0}, Lkotlin/collections/t;->l0(Ljava/util/List;)Ljava/lang/Object;

    .line 31
    move-result-object p0

    .line 32
    .line 33
    new-instance p1, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    const-string v0, "Purchase  "

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string p0, " acknowledged."

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    move-result-object p0

    .line 54
    .line 55
    .line 56
    invoke-static {v1, p0}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    goto :goto_0

    .line 58
    .line 59
    .line 60
    :cond_0
    invoke-virtual {p1}, Lcom/android/billingclient/api/h;->a()Ljava/lang/String;

    .line 61
    move-result-object p0

    .line 62
    .line 63
    .line 64
    invoke-static {v1, p0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :goto_0
    return-void
.end method

.method public static synthetic b(Le8/l;Lcom/android/billingclient/api/h;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/wallet/MembershipBillingManager;->querySubsPurchases$lambda$3(Le8/l;Lcom/android/billingclient/api/h;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic c(Le8/a;Lcom/android/billingclient/api/h;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/wallet/MembershipBillingManager;->querySubsDetails$lambda$2(Le8/a;Lcom/android/billingclient/api/h;Ljava/util/List;)V

    return-void
.end method

.method private final processPurchases(Ljava/util/List;)V
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
    const-string v1, "MembershipBillingManager"

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
    sget-object v3, Lcom/narvii/wallet/MembershipBillingManager;->INSTANCE:Lcom/narvii/wallet/MembershipBillingManager;

    .line 53
    .line 54
    .line 55
    invoke-direct {v3}, Lcom/narvii/wallet/MembershipBillingManager;->requireContext()Lcom/narvii/app/NVContext;

    .line 56
    move-result-object v3

    .line 57
    .line 58
    const-string v4, "account"

    .line 59
    .line 60
    .line 61
    invoke-interface {v3, v4}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 62
    move-result-object v3

    .line 63
    .line 64
    check-cast v3, Lcom/narvii/account/AccountService;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2}, Lcom/android/billingclient/api/Purchase;->f()I

    .line 68
    move-result v4

    .line 69
    const/4 v5, 0x1

    .line 70
    .line 71
    if-ne v4, v5, :cond_0

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2}, Lcom/android/billingclient/api/Purchase;->k()Z

    .line 75
    move-result v4

    .line 76
    .line 77
    if-nez v4, :cond_0

    .line 78
    .line 79
    sget-object v4, Lcom/narvii/wallet/BillingManager;->INSTANCE:Lcom/narvii/wallet/BillingManager;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v3}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 83
    move-result-object v3

    .line 84
    .line 85
    const-string v5, "getUserId(...)"

    .line 86
    .line 87
    .line 88
    invoke-static {v3, v5}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v4, v2, v3}, Lcom/narvii/wallet/BillingManager;->checkPurchaseForAminoId(Lcom/android/billingclient/api/Purchase;Ljava/lang/String;)Z

    .line 92
    move-result v2

    .line 93
    .line 94
    if-eqz v2, :cond_0

    .line 95
    .line 96
    .line 97
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 98
    goto :goto_0

    .line 99
    .line 100
    :cond_1
    sget-object p1, Lcom/narvii/wallet/MembershipBillingManager;->INSTANCE:Lcom/narvii/wallet/MembershipBillingManager;

    .line 101
    .line 102
    .line 103
    invoke-direct {p1, v0}, Lcom/narvii/wallet/MembershipBillingManager;->acknowledgeNonConsumablePurchases(Ljava/util/List;)V

    .line 104
    return-void
.end method

.method private static final querySubsDetails$lambda$2(Le8/a;Lcom/android/billingclient/api/h;Ljava/util/List;)V
    .locals 4

    .line 1
    .line 2
    const-string v0, "$update"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "billingResult"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string v0, "productDetailsList"

    .line 13
    .line 14
    .line 15
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 19
    move-result v0

    .line 20
    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    const-string v2, "SKU details response size: "

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    const-string v1, "MembershipBillingManager"

    .line 39
    .line 40
    .line 41
    invoke-static {v1, v0}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-static {p1}, Lcom/narvii/wallet/BillingKt;->isSuccess(Lcom/android/billingclient/api/h;)Z

    .line 45
    move-result v0

    .line 46
    .line 47
    if-eqz v0, :cond_1

    .line 48
    move-object v0, p2

    .line 49
    .line 50
    check-cast v0, Ljava/util/Collection;

    .line 51
    .line 52
    .line 53
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 54
    move-result v0

    .line 55
    .line 56
    xor-int/lit8 v0, v0, 0x1

    .line 57
    .line 58
    if-eqz v0, :cond_1

    .line 59
    .line 60
    sput-object p2, Lcom/narvii/wallet/MembershipBillingManager;->subsDetails:Ljava/util/List;

    .line 61
    .line 62
    sget-object v0, Lcom/narvii/wallet/MembershipBillingManager;->subscriptionMap:Ljava/util/Map;

    .line 63
    .line 64
    .line 65
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 66
    .line 67
    check-cast p2, Ljava/lang/Iterable;

    .line 68
    .line 69
    .line 70
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 71
    move-result-object p2

    .line 72
    .line 73
    .line 74
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 75
    move-result v0

    .line 76
    .line 77
    if-eqz v0, :cond_0

    .line 78
    .line 79
    .line 80
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 81
    move-result-object v0

    .line 82
    .line 83
    check-cast v0, Lcom/android/billingclient/api/l;

    .line 84
    .line 85
    sget-object v1, Lcom/narvii/wallet/MembershipBillingManager;->subscriptionMap:Ljava/util/Map;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0}, Lcom/android/billingclient/api/l;->b()Ljava/lang/String;

    .line 89
    move-result-object v2

    .line 90
    .line 91
    const-string v3, "getProductId(...)"

    .line 92
    .line 93
    .line 94
    invoke-static {v2, v3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    goto :goto_0

    .line 102
    .line 103
    .line 104
    :cond_0
    invoke-interface {p0}, Le8/a;->invoke()Ljava/lang/Object;

    .line 105
    goto :goto_1

    .line 106
    .line 107
    :cond_1
    sget-object p0, Lcom/narvii/wallet/MembershipBillingManager;->INSTANCE:Lcom/narvii/wallet/MembershipBillingManager;

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0}, Lcom/narvii/wallet/MembershipBillingManager;->clearSubs()V

    .line 111
    .line 112
    :goto_1
    sget-object p0, Lcom/narvii/wallet/MembershipBillingManager;->subsUpdate:La;

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0, p1}, La;->p(Ljava/lang/Object;)V

    .line 116
    return-void
.end method

.method private static final querySubsPurchases$lambda$3(Le8/l;Lcom/android/billingclient/api/h;Ljava/util/List;)V
    .locals 1

    .line 1
    .line 2
    const-string v0, "$onFinish"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "<anonymous parameter 0>"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string p1, "purchaseList"

    .line 13
    .line 14
    .line 15
    invoke-static {p2, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    sget-object p1, Lcom/narvii/wallet/MembershipBillingManager;->INSTANCE:Lcom/narvii/wallet/MembershipBillingManager;

    .line 18
    .line 19
    .line 20
    invoke-direct {p1, p2}, Lcom/narvii/wallet/MembershipBillingManager;->processPurchases(Ljava/util/List;)V

    .line 21
    .line 22
    .line 23
    invoke-interface {p0, p2}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    return-void
.end method

.method private final requireContext()Lcom/narvii/app/NVContext;
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/wallet/MembershipBillingManager;->nvContext:Ljava/lang/ref/WeakReference;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/app/NVContext;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    return-object v0

    .line 12
    .line 13
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 14
    .line 15
    const-string v1, "NVContext is null"

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 19
    throw v0
.end method


# virtual methods
.method public final clearSubs()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lkotlin/collections/t;->m()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    sput-object v0, Lcom/narvii/wallet/MembershipBillingManager;->subsDetails:Ljava/util/List;

    .line 7
    .line 8
    sget-object v0, Lcom/narvii/wallet/MembershipBillingManager;->subscriptionMap:Ljava/util/Map;

    .line 9
    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 12
    return-void
.end method

.method public final getProductDetails([Ljava/lang/String;)Lcom/android/billingclient/api/l;
    .locals 7
    .param p1    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    const-string v0, "skuList"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    array-length v0, p1

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    :goto_0
    if-ge v1, v0, :cond_2

    .line 10
    .line 11
    aget-object v2, p1, v1

    .line 12
    .line 13
    sget-object v3, Lcom/narvii/wallet/MembershipBillingManager;->purchaseMap:Ljava/util/Map;

    .line 14
    .line 15
    .line 16
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    move-result-object v3

    .line 18
    .line 19
    check-cast v3, Lcom/android/billingclient/api/Purchase;

    .line 20
    .line 21
    .line 22
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipBillingManager;->requireContext()Lcom/narvii/app/NVContext;

    .line 23
    move-result-object v4

    .line 24
    .line 25
    const-string v5, "account"

    .line 26
    .line 27
    .line 28
    invoke-interface {v4, v5}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 29
    move-result-object v4

    .line 30
    .line 31
    check-cast v4, Lcom/narvii/account/AccountService;

    .line 32
    .line 33
    if-eqz v3, :cond_0

    .line 34
    .line 35
    sget-object v5, Lcom/narvii/wallet/BillingManager;->INSTANCE:Lcom/narvii/wallet/BillingManager;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v4}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 39
    move-result-object v4

    .line 40
    .line 41
    const-string v6, "getUserId(...)"

    .line 42
    .line 43
    .line 44
    invoke-static {v4, v6}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v5, v3, v4}, Lcom/narvii/wallet/BillingManager;->checkPurchaseForAminoId(Lcom/android/billingclient/api/Purchase;Ljava/lang/String;)Z

    .line 48
    move-result v3

    .line 49
    .line 50
    if-nez v3, :cond_0

    .line 51
    goto :goto_1

    .line 52
    .line 53
    :cond_0
    sget-object v3, Lcom/narvii/wallet/MembershipBillingManager;->subscriptionMap:Ljava/util/Map;

    .line 54
    .line 55
    .line 56
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    move-result-object v2

    .line 58
    .line 59
    check-cast v2, Lcom/android/billingclient/api/l;

    .line 60
    .line 61
    if-eqz v2, :cond_1

    .line 62
    return-object v2

    .line 63
    .line 64
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 65
    goto :goto_0

    .line 66
    :cond_2
    const/4 p1, 0x0

    .line 67
    return-object p1
.end method

.method public final getPurchaseList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/narvii/wallet/MembershipBillingManager;->purchaseList:Ljava/util/List;

    return-object v0
.end method

.method public final getSubsDetails()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/l;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/narvii/wallet/MembershipBillingManager;->subsDetails:Ljava/util/List;

    return-object v0
.end method

.method public final getSubsUpdate()La;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La<",
            "Lcom/android/billingclient/api/h;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/narvii/wallet/MembershipBillingManager;->subsUpdate:La;

    return-object v0
.end method

.method public final initialize(Lcom/narvii/app/NVContext;)V
    .locals 1
    .param p1    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "ctx"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 11
    .line 12
    sput-object v0, Lcom/narvii/wallet/MembershipBillingManager;->nvContext:Ljava/lang/ref/WeakReference;

    .line 13
    return-void
.end method

.method public final processPurchase(Lcom/android/billingclient/api/Purchase;)V
    .locals 3
    .param p1    # Lcom/android/billingclient/api/Purchase;
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
    sget-object v0, Lcom/narvii/wallet/MembershipBillingManager;->purchaseMap:Ljava/util/Map;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->j()Ljava/util/ArrayList;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    const-string v2, "getSkus(...)"

    .line 14
    .line 15
    .line 16
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-static {v1}, Lkotlin/collections/t;->l0(Ljava/util/List;)Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    check-cast v1, Ljava/lang/String;

    .line 23
    .line 24
    if-nez v1, :cond_0

    .line 25
    .line 26
    const-string v1, ""

    .line 27
    .line 28
    .line 29
    :cond_0
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    invoke-static {p1}, Lkotlin/collections/t;->e(Ljava/lang/Object;)Ljava/util/List;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    .line 36
    invoke-direct {p0, p1}, Lcom/narvii/wallet/MembershipBillingManager;->processPurchases(Ljava/util/List;)V

    .line 37
    return-void
.end method

.method public final purchaseSub(Landroid/app/Activity;Lcom/android/billingclient/api/l;)V
    .locals 3
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/billingclient/api/l;
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
    const-string v0, "productDetails"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    sget-object v0, Lcom/narvii/wallet/BillingManager;->INSTANCE:Lcom/narvii/wallet/BillingManager;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/narvii/wallet/BillingManager;->getBillingState()Lcom/narvii/wallet/BillingState;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/narvii/wallet/BillingState;->isConnected()Z

    .line 20
    move-result v1

    .line 21
    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2}, Lcom/android/billingclient/api/l;->d()Ljava/util/List;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    if-eqz v1, :cond_2

    .line 29
    .line 30
    .line 31
    invoke-static {v1}, Lkotlin/collections/t;->l0(Ljava/util/List;)Ljava/lang/Object;

    .line 32
    move-result-object v1

    .line 33
    .line 34
    check-cast v1, Lcom/android/billingclient/api/l$d;

    .line 35
    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/android/billingclient/api/l$d;->a()Ljava/lang/String;

    .line 40
    move-result-object v1

    .line 41
    .line 42
    if-nez v1, :cond_0

    .line 43
    goto :goto_0

    .line 44
    .line 45
    .line 46
    :cond_0
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 47
    move-result v2

    .line 48
    .line 49
    if-nez v2, :cond_1

    .line 50
    .line 51
    const-string p1, "MembershipBillingManager"

    .line 52
    .line 53
    const-string p2, "Offer token is empty"

    .line 54
    .line 55
    .line 56
    invoke-static {p1, p2}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    return-void

    .line 58
    .line 59
    .line 60
    :cond_1
    invoke-static {}, Lcom/android/billingclient/api/g$b;->a()Lcom/android/billingclient/api/g$b$a;

    .line 61
    move-result-object v2

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2, p2}, Lcom/android/billingclient/api/g$b$a;->c(Lcom/android/billingclient/api/l;)Lcom/android/billingclient/api/g$b$a;

    .line 65
    move-result-object p2

    .line 66
    .line 67
    .line 68
    invoke-virtual {p2, v1}, Lcom/android/billingclient/api/g$b$a;->b(Ljava/lang/String;)Lcom/android/billingclient/api/g$b$a;

    .line 69
    move-result-object p2

    .line 70
    .line 71
    .line 72
    invoke-virtual {p2}, Lcom/android/billingclient/api/g$b$a;->a()Lcom/android/billingclient/api/g$b;

    .line 73
    move-result-object p2

    .line 74
    .line 75
    .line 76
    invoke-static {p2}, Lkotlin/collections/t;->e(Ljava/lang/Object;)Ljava/util/List;

    .line 77
    move-result-object p2

    .line 78
    .line 79
    .line 80
    invoke-static {}, Lcom/android/billingclient/api/g;->a()Lcom/android/billingclient/api/g$a;

    .line 81
    move-result-object v1

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1, p2}, Lcom/android/billingclient/api/g$a;->c(Ljava/util/List;)Lcom/android/billingclient/api/g$a;

    .line 85
    move-result-object p2

    .line 86
    .line 87
    .line 88
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipBillingManager;->requireContext()Lcom/narvii/app/NVContext;

    .line 89
    move-result-object v1

    .line 90
    .line 91
    const-string v2, "account"

    .line 92
    .line 93
    .line 94
    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 95
    move-result-object v1

    .line 96
    .line 97
    check-cast v1, Lcom/narvii/account/AccountService;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 101
    move-result-object v1

    .line 102
    .line 103
    .line 104
    invoke-virtual {p2, v1}, Lcom/android/billingclient/api/g$a;->b(Ljava/lang/String;)Lcom/android/billingclient/api/g$a;

    .line 105
    move-result-object p2

    .line 106
    .line 107
    .line 108
    invoke-virtual {p2}, Lcom/android/billingclient/api/g$a;->a()Lcom/android/billingclient/api/g;

    .line 109
    move-result-object p2

    .line 110
    .line 111
    const-string v1, "build(...)"

    .line 112
    .line 113
    .line 114
    invoke-static {p2, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0}, Lcom/narvii/wallet/BillingManager;->getBillingClient()Lcom/android/billingclient/api/BillingClient;

    .line 118
    move-result-object v0

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0, p1, p2}, Lcom/android/billingclient/api/BillingClient;->e(Landroid/app/Activity;Lcom/android/billingclient/api/g;)Lcom/android/billingclient/api/h;

    .line 122
    nop

    .line 123
    :cond_2
    :goto_0
    return-void
.end method

.method public final querySubsDetails(Ljava/util/ArrayList;Le8/a;)V
    .locals 3
    .param p1    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Le8/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Le8/a<",
            "Lw7/l0;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "skuList"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string/jumbo v0, "update"

    .line 9
    .line 10
    .line 11
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    new-instance v0, Ljava/util/ArrayList;

    .line 14
    .line 15
    const/16 v1, 0xa

    .line 16
    .line 17
    .line 18
    invoke-static {p1, v1}, Lkotlin/collections/t;->x(Ljava/lang/Iterable;I)I

    .line 19
    move-result v1

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 23
    .line 24
    .line 25
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    .line 29
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    move-result v1

    .line 31
    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    .line 35
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    move-result-object v1

    .line 37
    .line 38
    check-cast v1, Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    invoke-static {}, Lcom/android/billingclient/api/q$b;->a()Lcom/android/billingclient/api/q$b$a;

    .line 42
    move-result-object v2

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2, v1}, Lcom/android/billingclient/api/q$b$a;->b(Ljava/lang/String;)Lcom/android/billingclient/api/q$b$a;

    .line 46
    move-result-object v1

    .line 47
    .line 48
    .line 49
    const-string/jumbo v2, "subs"

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v2}, Lcom/android/billingclient/api/q$b$a;->c(Ljava/lang/String;)Lcom/android/billingclient/api/q$b$a;

    .line 53
    move-result-object v1

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Lcom/android/billingclient/api/q$b$a;->a()Lcom/android/billingclient/api/q$b;

    .line 57
    move-result-object v1

    .line 58
    .line 59
    .line 60
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 61
    goto :goto_0

    .line 62
    .line 63
    .line 64
    :cond_0
    invoke-static {}, Lcom/android/billingclient/api/q;->a()Lcom/android/billingclient/api/q$a;

    .line 65
    move-result-object p1

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, v0}, Lcom/android/billingclient/api/q$a;->b(Ljava/util/List;)Lcom/android/billingclient/api/q$a;

    .line 69
    move-result-object p1

    .line 70
    .line 71
    const-string v0, "setProductList(...)"

    .line 72
    .line 73
    .line 74
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    .line 76
    sget-object v0, Lcom/narvii/wallet/BillingManager;->INSTANCE:Lcom/narvii/wallet/BillingManager;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Lcom/narvii/wallet/BillingManager;->getBillingClient()Lcom/android/billingclient/api/BillingClient;

    .line 80
    move-result-object v0

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1}, Lcom/android/billingclient/api/q$a;->a()Lcom/android/billingclient/api/q;

    .line 84
    move-result-object p1

    .line 85
    .line 86
    new-instance v1, Lcom/narvii/wallet/j;

    .line 87
    .line 88
    .line 89
    invoke-direct {v1, p2}, Lcom/narvii/wallet/j;-><init>(Le8/a;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, p1, v1}, Lcom/android/billingclient/api/BillingClient;->g(Lcom/android/billingclient/api/q;Lcom/android/billingclient/api/m;)V

    .line 93
    return-void
.end method

.method public final querySubsPurchases(Le8/l;)V
    .locals 3
    .param p1    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le8/l<",
            "-",
            "Ljava/util/List<",
            "+",
            "Lcom/android/billingclient/api/Purchase;",
            ">;",
            "Lw7/l0;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "onFinish"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    sget-object v0, Lcom/narvii/wallet/BillingManager;->INSTANCE:Lcom/narvii/wallet/BillingManager;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/narvii/wallet/BillingManager;->getBillingClient()Lcom/android/billingclient/api/BillingClient;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-static {}, Lcom/android/billingclient/api/r;->a()Lcom/android/billingclient/api/r$a;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    .line 18
    const-string/jumbo v2, "subs"

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
    new-instance v2, Lcom/narvii/wallet/i;

    .line 29
    .line 30
    .line 31
    invoke-direct {v2, p1}, Lcom/narvii/wallet/i;-><init>(Le8/l;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1, v2}, Lcom/android/billingclient/api/BillingClient;->h(Lcom/android/billingclient/api/r;Lcom/android/billingclient/api/o;)V

    .line 35
    return-void
.end method

.method public final setPurchaseList(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/billingclient/api/Purchase;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/narvii/wallet/MembershipBillingManager;->purchaseList:Ljava/util/List;

    return-void
.end method

.method public final setSubsDetails(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/l;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/narvii/wallet/MembershipBillingManager;->subsDetails:Ljava/util/List;

    return-void
.end method
