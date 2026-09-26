.class public final synthetic Lcom/narvii/wallet/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/billingclient/api/c;


# instance fields
.field public final synthetic a:Lcom/android/billingclient/api/Purchase;


# direct methods
.method public synthetic constructor <init>(Lcom/android/billingclient/api/Purchase;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/wallet/k;->a:Lcom/android/billingclient/api/Purchase;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/billingclient/api/h;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/wallet/k;->a:Lcom/android/billingclient/api/Purchase;

    invoke-static {v0, p1}, Lcom/narvii/wallet/MembershipBillingManager;->a(Lcom/android/billingclient/api/Purchase;Lcom/android/billingclient/api/h;)V

    return-void
.end method
