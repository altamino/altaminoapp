.class public final Lcom/narvii/wallet/BillingManager$connectBillingClient$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/billingclient/api/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/wallet/BillingManager;->connectBillingClient()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public onBillingServiceDisconnected()V
    .locals 2

    .line 1
    .line 2
    const-string v0, "BillingManager2"

    .line 3
    .line 4
    const-string v1, "Billing service disconnected"

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    sget-object v0, Lcom/narvii/wallet/BillingManager;->INSTANCE:Lcom/narvii/wallet/BillingManager;

    .line 10
    .line 11
    sget-object v1, Lcom/narvii/wallet/BillingState$Idle;->INSTANCE:Lcom/narvii/wallet/BillingState$Idle;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/narvii/wallet/BillingManager;->setBillingState(Lcom/narvii/wallet/BillingState;)V

    .line 15
    .line 16
    .line 17
    invoke-static {}, Lcom/narvii/wallet/BillingManager;->access$getRetryConnection$p()Z

    .line 18
    move-result v1

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    const/4 v1, 0x0

    .line 22
    .line 23
    .line 24
    invoke-static {v1}, Lcom/narvii/wallet/BillingManager;->access$setRetryConnection$p(Z)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/narvii/wallet/BillingManager;->connectBillingClient()V

    .line 28
    :cond_0
    return-void
.end method

.method public onBillingSetupFinished(Lcom/android/billingclient/api/h;)V
    .locals 3
    .param p1    # Lcom/android/billingclient/api/h;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "billingResult"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/android/billingclient/api/h;->b()I

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
    const-string v2, "Billing setup finished "

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
    sget-object v0, Lcom/narvii/wallet/BillingManager;->INSTANCE:Lcom/narvii/wallet/BillingManager;

    .line 34
    .line 35
    .line 36
    invoke-static {p1}, Lcom/narvii/wallet/BillingKt;->isSuccess(Lcom/android/billingclient/api/h;)Z

    .line 37
    move-result v1

    .line 38
    .line 39
    if-eqz v1, :cond_0

    .line 40
    .line 41
    sget-object v1, Lcom/narvii/wallet/BillingState$Connected;->INSTANCE:Lcom/narvii/wallet/BillingState$Connected;

    .line 42
    goto :goto_0

    .line 43
    .line 44
    :cond_0
    sget-object v1, Lcom/narvii/wallet/BillingState$Idle;->INSTANCE:Lcom/narvii/wallet/BillingState$Idle;

    .line 45
    .line 46
    .line 47
    :goto_0
    invoke-virtual {v0, v1}, Lcom/narvii/wallet/BillingManager;->setBillingState(Lcom/narvii/wallet/BillingState;)V

    .line 48
    .line 49
    .line 50
    invoke-static {}, Lcom/narvii/wallet/BillingManager;->access$get_setupFinished$p()Landroidx/lifecycle/MutableLiveData;

    .line 51
    move-result-object v0

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->p(Ljava/lang/Object;)V

    .line 55
    return-void
.end method
