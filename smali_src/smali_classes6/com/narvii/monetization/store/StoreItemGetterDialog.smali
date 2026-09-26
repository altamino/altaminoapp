.class public abstract Lcom/narvii/monetization/store/StoreItemGetterDialog;
.super Lcom/narvii/util/dialog/AlertDialog;
.source "SourceFile"

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

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, v0}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    const/16 v0, 0x3e8

    .line 10
    .line 11
    iput v0, p0, Lcom/narvii/monetization/store/StoreItemGetterDialog;->AUTO_DISMISS_DELAY:I

    .line 12
    .line 13
    iput-object p1, p0, Lcom/narvii/monetization/store/StoreItemGetterDialog;->context:Lcom/narvii/app/NVContext;

    .line 14
    .line 15
    const-string v0, "membership"

    .line 16
    .line 17
    .line 18
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    check-cast p1, Lcom/narvii/wallet/MembershipService;

    .line 22
    .line 23
    iput-object p1, p0, Lcom/narvii/monetization/store/StoreItemGetterDialog;->membershipService:Lcom/narvii/wallet/MembershipService;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/narvii/monetization/store/StoreItemGetterDialog;->getContentViewLayout()I

    .line 27
    move-result p1

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, p1}, Lcom/narvii/util/dialog/AlertDialog;->setContentView(I)V

    .line 31
    .line 32
    .line 33
    const p1, 0x7f0a0dc9

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    check-cast p1, Lcom/narvii/monetization/StoreItemStatusView;

    .line 40
    .line 41
    iget-object v0, p0, Lcom/narvii/monetization/store/StoreItemGetterDialog;->statusController:Lcom/narvii/monetization/StoreItemOwnStatusController;

    .line 42
    .line 43
    if-nez v0, :cond_0

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, p1}, Lcom/narvii/monetization/store/StoreItemGetterDialog;->getStoreItemOwnStatusController(Lcom/narvii/monetization/StoreItemStatusView;)Lcom/narvii/monetization/StoreItemOwnStatusController;

    .line 47
    move-result-object p1

    .line 48
    .line 49
    iput-object p1, p0, Lcom/narvii/monetization/store/StoreItemGetterDialog;->statusController:Lcom/narvii/monetization/StoreItemOwnStatusController;

    .line 50
    .line 51
    const-string v0, "Dialog"

    .line 52
    .line 53
    iput-object v0, p1, Lcom/narvii/monetization/StoreItemOwnStatusController;->source:Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/narvii/monetization/StoreItemOwnStatusController;->onCreate()V

    .line 57
    .line 58
    :cond_0
    iget-object p1, p0, Lcom/narvii/monetization/store/StoreItemGetterDialog;->statusController:Lcom/narvii/monetization/StoreItemOwnStatusController;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, p2}, Lcom/narvii/monetization/StoreItemOwnStatusController;->setStoreItem(Lcom/narvii/model/IStoreItem;)V

    .line 62
    .line 63
    .line 64
    const p1, 0x7f0a0321

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 68
    move-result-object p1

    .line 69
    .line 70
    iput-object p1, p0, Lcom/narvii/monetization/store/StoreItemGetterDialog;->btnClose:Landroid/view/View;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    return-void
.end method


# virtual methods
.method public autoDismiss()V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/monetization/store/StoreItemGetterDialog$1;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/narvii/monetization/store/StoreItemGetterDialog$1;-><init>(Lcom/narvii/monetization/store/StoreItemGetterDialog;)V

    .line 6
    .line 7
    iget v1, p0, Lcom/narvii/monetization/store/StoreItemGetterDialog;->AUTO_DISMISS_DELAY:I

    .line 8
    int-to-long v1, v1

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1, v2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 12
    return-void
.end method

.method protected abstract getContentViewLayout()I
.end method

.method protected abstract getStoreItemOwnStatusController(Lcom/narvii/monetization/StoreItemStatusView;)Lcom/narvii/monetization/StoreItemOwnStatusController;
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 4
    move-result p1

    .line 5
    .line 6
    .line 7
    const v0, 0x7f0a0321

    .line 8
    .line 9
    if-eq p1, v0, :cond_0

    .line 10
    goto :goto_0

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 14
    :goto_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/app/Dialog;->onDetachedFromWindow()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/monetization/store/StoreItemGetterDialog;->statusController:Lcom/narvii/monetization/StoreItemOwnStatusController;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/narvii/monetization/StoreItemOwnStatusController;->onDestroy()V

    .line 11
    :cond_0
    return-void
.end method
