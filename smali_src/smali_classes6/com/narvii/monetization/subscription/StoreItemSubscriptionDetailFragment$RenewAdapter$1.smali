.class Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$RenewAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$RenewAdapter$1;->this$1:Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$RenewAdapter;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$RenewAdapter$1;->val$ownershipInfo:Lcom/narvii/model/OwnershipInfo;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/list/prefs/PrefsToggle;)V
    .locals 3

    iget-object p1, p0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$RenewAdapter$1;->val$ownershipInfo:Lcom/narvii/model/OwnershipInfo;

    .line 2
    invoke-virtual {p1}, Lcom/narvii/model/OwnershipInfo;->isAutoRenew()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    new-instance p1, Lcom/narvii/util/dialog/AlertDialog;

    iget-object v0, p0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$RenewAdapter$1;->this$1:Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$RenewAdapter;

    invoke-virtual {v0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    const v0, 0x7f120f72

    .line 4
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setTitle(I)V

    const v0, 0x7f12114a

    .line 5
    invoke-virtual {p1, v0}, Lcom/narvii/util/dialog/AlertDialog;->setMessage(I)V

    .line 6
    new-instance v0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$RenewAdapter$1$1;

    invoke-direct {v0, p0}, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$RenewAdapter$1$1;-><init>(Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$RenewAdapter$1;)V

    const v1, 0x7f1201e2

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 7
    new-instance v0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$RenewAdapter$1$2;

    invoke-direct {v0, p0}, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$RenewAdapter$1$2;-><init>(Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$RenewAdapter$1;)V

    const v1, 0x7f1212a7

    const/16 v2, 0x8

    invoke-virtual {p1, v1, v2, v0}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 8
    new-instance v0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$RenewAdapter$1$3;

    invoke-direct {v0, p0}, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$RenewAdapter$1$3;-><init>(Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$RenewAdapter$1;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 9
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$RenewAdapter$1;->this$1:Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$RenewAdapter;

    .line 10
    iget-object p1, p1, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$RenewAdapter;->this$0:Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;

    invoke-static {p1}, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;->v(Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;)Lcom/narvii/wallet/MembershipService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/wallet/MembershipService;->isMembership()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$RenewAdapter$1;->this$1:Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$RenewAdapter;

    .line 11
    iget-object p1, p1, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$RenewAdapter;->this$0:Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;->y(Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;Z)V

    goto :goto_0

    .line 12
    :cond_1
    new-instance p1, Lcom/narvii/membership/MembershipExpireDialog;

    iget-object v0, p0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$RenewAdapter$1;->this$1:Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$RenewAdapter;

    iget-object v0, v0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$RenewAdapter;->this$0:Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;

    invoke-direct {p1, v0}, Lcom/narvii/membership/MembershipExpireDialog;-><init>(Lcom/narvii/app/NVContext;)V

    .line 13
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    :goto_0
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/list/prefs/PrefsToggle;

    invoke-virtual {p0, p1}, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$RenewAdapter$1;->call(Lcom/narvii/list/prefs/PrefsToggle;)V

    return-void
.end method
