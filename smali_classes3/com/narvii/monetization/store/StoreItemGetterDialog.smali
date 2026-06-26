.class public abstract Lcom/narvii/monetization/store/StoreItemGetterDialog;
.super Lcom/narvii/util/dialog/AlertDialog;
.source "StoreItemGetterDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field protected AUTO_DISMISS_DELAY:I

.field private btnClose:Landroid/view/View;

.field protected context:Lcom/narvii/app/NVContext;

.field protected membershipService:Lcom/narvii/wallet/MembershipService;

.field private statusController:Lcom/narvii/monetization/StoreItemOwnStatusController;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/model/IStoreItem;)V
    .locals 1

    .line 27
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x3e8

    .line 20
    iput v0, p0, Lcom/narvii/monetization/store/StoreItemGetterDialog;->AUTO_DISMISS_DELAY:I

    .line 28
    iput-object p1, p0, Lcom/narvii/monetization/store/StoreItemGetterDialog;->context:Lcom/narvii/app/NVContext;

    const-string v0, "membership"

    .line 29
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/wallet/MembershipService;

    iput-object p1, p0, Lcom/narvii/monetization/store/StoreItemGetterDialog;->membershipService:Lcom/narvii/wallet/MembershipService;

    .line 31
    invoke-virtual {p0}, Lcom/narvii/monetization/store/StoreItemGetterDialog;->getContentViewLayout()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/narvii/util/dialog/AlertDialog;->setContentView(I)V

    const p1, 0x7f090ace

    .line 33
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/monetization/StoreItemStatusView;

    .line 34
    iget-object v0, p0, Lcom/narvii/monetization/store/StoreItemGetterDialog;->statusController:Lcom/narvii/monetization/StoreItemOwnStatusController;

    if-nez v0, :cond_0

    .line 35
    invoke-virtual {p0, p1}, Lcom/narvii/monetization/store/StoreItemGetterDialog;->getStoreItemOwnStatusController(Lcom/narvii/monetization/StoreItemStatusView;)Lcom/narvii/monetization/StoreItemOwnStatusController;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/monetization/store/StoreItemGetterDialog;->statusController:Lcom/narvii/monetization/StoreItemOwnStatusController;

    .line 36
    iget-object p1, p0, Lcom/narvii/monetization/store/StoreItemGetterDialog;->statusController:Lcom/narvii/monetization/StoreItemOwnStatusController;

    const-string v0, "Dialog"

    iput-object v0, p1, Lcom/narvii/monetization/StoreItemOwnStatusController;->source:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Lcom/narvii/monetization/StoreItemOwnStatusController;->onCreate()V

    .line 39
    :cond_0
    iget-object p1, p0, Lcom/narvii/monetization/store/StoreItemGetterDialog;->statusController:Lcom/narvii/monetization/StoreItemOwnStatusController;

    invoke-virtual {p1, p2}, Lcom/narvii/monetization/StoreItemOwnStatusController;->setStoreItem(Lcom/narvii/model/IStoreItem;)V

    const p1, 0x7f09025e

    .line 41
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/monetization/store/StoreItemGetterDialog;->btnClose:Landroid/view/View;

    .line 42
    iget-object p1, p0, Lcom/narvii/monetization/store/StoreItemGetterDialog;->btnClose:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public autoDismiss()V
    .locals 3

    .line 69
    new-instance v0, Lcom/narvii/monetization/store/StoreItemGetterDialog$1;

    invoke-direct {v0, p0}, Lcom/narvii/monetization/store/StoreItemGetterDialog$1;-><init>(Lcom/narvii/monetization/store/StoreItemGetterDialog;)V

    iget v1, p0, Lcom/narvii/monetization/store/StoreItemGetterDialog;->AUTO_DISMISS_DELAY:I

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method protected abstract getContentViewLayout()I
.end method

.method protected abstract getStoreItemOwnStatusController(Lcom/narvii/monetization/StoreItemStatusView;)Lcom/narvii/monetization/StoreItemOwnStatusController;
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 60
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f09025e

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 62
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/NVDialog;->dismiss()V

    :goto_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 51
    invoke-super {p0}, Landroid/app/Dialog;->onDetachedFromWindow()V

    .line 52
    iget-object v0, p0, Lcom/narvii/monetization/store/StoreItemGetterDialog;->statusController:Lcom/narvii/monetization/StoreItemOwnStatusController;

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {v0}, Lcom/narvii/monetization/StoreItemOwnStatusController;->onDestroy()V

    :cond_0
    return-void
.end method
