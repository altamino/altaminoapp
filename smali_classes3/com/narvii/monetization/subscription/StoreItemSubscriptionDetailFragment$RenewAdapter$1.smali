.class Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$RenewAdapter$1;
.super Ljava/lang/Object;
.source "StoreItemSubscriptionDetailFragment.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$RenewAdapter;->buildCells(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Lcom/narvii/list/prefs/PrefsToggle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$RenewAdapter;

.field final synthetic val$ownershipInfo:Lcom/narvii/model/OwnershipInfo;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$RenewAdapter;Lcom/narvii/model/OwnershipInfo;)V
    .locals 0

    .line 433
    iput-object p1, p0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$RenewAdapter$1;->this$1:Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$RenewAdapter;

    iput-object p2, p0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$RenewAdapter$1;->val$ownershipInfo:Lcom/narvii/model/OwnershipInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/list/prefs/PrefsToggle;)V
    .locals 3

    .line 440
    iget-object p1, p0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$RenewAdapter$1;->val$ownershipInfo:Lcom/narvii/model/OwnershipInfo;

    invoke-virtual {p1}, Lcom/narvii/model/OwnershipInfo;->isAutoRenew()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 441
    new-instance p1, Lcom/narvii/util/dialog/AlertDialog;

    iget-object v0, p0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$RenewAdapter$1;->this$1:Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$RenewAdapter;

    invoke-virtual {v0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0f0e51

    .line 442
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setTitle(I)V

    const v0, 0x7f0f1039

    .line 443
    invoke-virtual {p1, v0}, Lcom/narvii/util/dialog/AlertDialog;->setMessage(I)V

    const v0, 0x7f0f0193

    const/4 v1, 0x0

    .line 444
    new-instance v2, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$RenewAdapter$1$1;

    invoke-direct {v2, p0}, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$RenewAdapter$1$1;-><init>(Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$RenewAdapter$1;)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v0, 0x7f0f119f

    const/16 v1, 0x8

    .line 450
    new-instance v2, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$RenewAdapter$1$2;

    invoke-direct {v2, p0}, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$RenewAdapter$1$2;-><init>(Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$RenewAdapter$1;)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 456
    new-instance v0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$RenewAdapter$1$3;

    invoke-direct {v0, p0}, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$RenewAdapter$1$3;-><init>(Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$RenewAdapter$1;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 462
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    goto :goto_0

    .line 464
    :cond_0
    iget-object p1, p0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$RenewAdapter$1;->this$1:Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$RenewAdapter;

    iget-object p1, p1, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$RenewAdapter;->this$0:Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;

    invoke-static {p1}, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;->access$300(Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;)Lcom/narvii/wallet/MembershipService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/wallet/MembershipService;->isMembership()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 465
    iget-object p1, p0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$RenewAdapter$1;->this$1:Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$RenewAdapter;

    iget-object p1, p1, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$RenewAdapter;->this$0:Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;->access$500(Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;Z)V

    goto :goto_0

    .line 467
    :cond_1
    new-instance p1, Lcom/narvii/membership/MembershipExpireDialog;

    iget-object v0, p0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$RenewAdapter$1;->this$1:Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$RenewAdapter;

    iget-object v0, v0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$RenewAdapter;->this$0:Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;

    invoke-direct {p1, v0}, Lcom/narvii/membership/MembershipExpireDialog;-><init>(Lcom/narvii/app/NVContext;)V

    .line 468
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    :goto_0
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 433
    check-cast p1, Lcom/narvii/list/prefs/PrefsToggle;

    invoke-virtual {p0, p1}, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$RenewAdapter$1;->call(Lcom/narvii/list/prefs/PrefsToggle;)V

    return-void
.end method
