.class public final synthetic Lcom/narvii/wallet/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lcom/narvii/wallet/MembershipMainRecyclerFragment;

.field public final synthetic b:Lcom/narvii/wallet/BillingManager;

.field public final synthetic c:Lcom/narvii/account/AccountService;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/wallet/MembershipMainRecyclerFragment;Lcom/narvii/wallet/BillingManager;Lcom/narvii/account/AccountService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/wallet/n;->a:Lcom/narvii/wallet/MembershipMainRecyclerFragment;

    iput-object p2, p0, Lcom/narvii/wallet/n;->b:Lcom/narvii/wallet/BillingManager;

    iput-object p3, p0, Lcom/narvii/wallet/n;->c:Lcom/narvii/account/AccountService;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/narvii/wallet/n;->a:Lcom/narvii/wallet/MembershipMainRecyclerFragment;

    iget-object v1, p0, Lcom/narvii/wallet/n;->b:Lcom/narvii/wallet/BillingManager;

    iget-object v2, p0, Lcom/narvii/wallet/n;->c:Lcom/narvii/account/AccountService;

    check-cast p1, Lcom/android/billingclient/api/h;

    invoke-static {v0, v1, v2, p1}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->t(Lcom/narvii/wallet/MembershipMainRecyclerFragment;Lcom/narvii/wallet/BillingManager;Lcom/narvii/account/AccountService;Lcom/android/billingclient/api/h;)V

    return-void
.end method
