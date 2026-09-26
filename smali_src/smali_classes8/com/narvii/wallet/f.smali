.class public final synthetic Lcom/narvii/wallet/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/billingclient/api/o;


# instance fields
.field public final synthetic a:Lcom/narvii/wallet/CoinBillingManager;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/wallet/CoinBillingManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/wallet/f;->a:Lcom/narvii/wallet/CoinBillingManager;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/billingclient/api/h;Ljava/util/List;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/wallet/f;->a:Lcom/narvii/wallet/CoinBillingManager;

    invoke-static {v0, p1, p2}, Lcom/narvii/wallet/CoinBillingManager;->d(Lcom/narvii/wallet/CoinBillingManager;Lcom/android/billingclient/api/h;Ljava/util/List;)V

    return-void
.end method
