.class public final Lcom/narvii/wallet/CoinBillingManager$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/wallet/CoinBillingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCoinBillingManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoinBillingManager.kt\ncom/narvii/wallet/CoinBillingManager$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,352:1\n1#2:353\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/wallet/CoinBillingManager$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInstance()Lcom/narvii/wallet/CoinBillingManager;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/wallet/CoinBillingManager;->access$getINSTANCE$cp()Lcom/narvii/wallet/CoinBillingManager;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    monitor-enter p0

    .line 8
    .line 9
    .line 10
    :try_start_0
    invoke-static {}, Lcom/narvii/wallet/CoinBillingManager;->access$getINSTANCE$cp()Lcom/narvii/wallet/CoinBillingManager;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    new-instance v0, Lcom/narvii/wallet/CoinBillingManager;

    .line 16
    const/4 v1, 0x0

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, v1}, Lcom/narvii/wallet/CoinBillingManager;-><init>(Lkotlin/jvm/internal/k;)V

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Lcom/narvii/wallet/CoinBillingManager;->access$setINSTANCE$cp(Lcom/narvii/wallet/CoinBillingManager;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception v0

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    :goto_0
    monitor-exit p0

    .line 27
    goto :goto_2

    .line 28
    :goto_1
    monitor-exit p0

    .line 29
    throw v0

    .line 30
    :cond_1
    :goto_2
    return-object v0
.end method

.method public final refreshInstance()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/wallet/CoinBillingManager;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Lcom/narvii/wallet/CoinBillingManager;-><init>(Lkotlin/jvm/internal/k;)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lcom/narvii/wallet/CoinBillingManager;->access$setINSTANCE$cp(Lcom/narvii/wallet/CoinBillingManager;)V

    .line 10
    return-void
.end method
