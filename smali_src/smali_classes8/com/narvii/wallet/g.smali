.class public final synthetic Lcom/narvii/wallet/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/billingclient/api/j;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lcom/narvii/wallet/CoinBillingManager;

.field public final synthetic c:Lcom/android/billingclient/api/Purchase;


# direct methods
.method public synthetic constructor <init>(ZLcom/narvii/wallet/CoinBillingManager;Lcom/android/billingclient/api/Purchase;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/narvii/wallet/g;->a:Z

    iput-object p2, p0, Lcom/narvii/wallet/g;->b:Lcom/narvii/wallet/CoinBillingManager;

    iput-object p3, p0, Lcom/narvii/wallet/g;->c:Lcom/android/billingclient/api/Purchase;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/billingclient/api/h;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/narvii/wallet/g;->a:Z

    iget-object v1, p0, Lcom/narvii/wallet/g;->b:Lcom/narvii/wallet/CoinBillingManager;

    iget-object v2, p0, Lcom/narvii/wallet/g;->c:Lcom/android/billingclient/api/Purchase;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/narvii/wallet/CoinBillingManager;->a(ZLcom/narvii/wallet/CoinBillingManager;Lcom/android/billingclient/api/Purchase;Lcom/android/billingclient/api/h;Ljava/lang/String;)V

    return-void
.end method
