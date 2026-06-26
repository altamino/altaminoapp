.class public Lcom/narvii/monetization/sticker/shared/PendingStickerCollectionListFragment;
.super Lcom/narvii/list/NVListFragment;
.source "PendingStickerCollectionListFragment.java"

# interfaces
.implements Lcom/narvii/app/FragmentWillFinishListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/monetization/sticker/shared/PendingStickerCollectionListFragment$Adapter;
    }
.end annotation


# static fields
.field public static final REQUEST_HANDLE_REQUEST:I = 0xc8


# instance fields
.field private adapter:Lcom/narvii/monetization/sticker/shared/PendingStickerCollectionListFragment$Adapter;

.field private listChanged:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 0

    .line 57
    new-instance p1, Lcom/narvii/monetization/sticker/shared/PendingStickerCollectionListFragment$Adapter;

    invoke-direct {p1, p0, p0}, Lcom/narvii/monetization/sticker/shared/PendingStickerCollectionListFragment$Adapter;-><init>(Lcom/narvii/monetization/sticker/shared/PendingStickerCollectionListFragment;Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/monetization/sticker/shared/PendingStickerCollectionListFragment;->adapter:Lcom/narvii/monetization/sticker/shared/PendingStickerCollectionListFragment$Adapter;

    .line 58
    iget-object p1, p0, Lcom/narvii/monetization/sticker/shared/PendingStickerCollectionListFragment;->adapter:Lcom/narvii/monetization/sticker/shared/PendingStickerCollectionListFragment$Adapter;

    return-object p1
.end method

.method protected getActionBarCustomDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 52
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const v1, -0xcccccd

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object v0
.end method

.method public isModel()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSwipeRefresh()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    if-eqz p3, :cond_1

    const-string p1, "requestId"

    .line 74
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    .line 75
    iput-boolean p2, p0, Lcom/narvii/monetization/sticker/shared/PendingStickerCollectionListFragment;->listChanged:Z

    .line 76
    iget-object p2, p0, Lcom/narvii/monetization/sticker/shared/PendingStickerCollectionListFragment;->adapter:Lcom/narvii/monetization/sticker/shared/PendingStickerCollectionListFragment$Adapter;

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 77
    new-instance p2, Lcom/narvii/monetization/store/data/ShareRequest;

    invoke-direct {p2}, Lcom/narvii/monetization/store/data/ShareRequest;-><init>()V

    .line 78
    iput-object p1, p2, Lcom/narvii/monetization/store/data/ShareRequest;->requestId:Ljava/lang/String;

    .line 79
    new-instance p1, Lcom/narvii/notification/Notification;

    const-string p3, "delete"

    invoke-direct {p1, p3, p2}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 80
    iget-object p2, p0, Lcom/narvii/monetization/sticker/shared/PendingStickerCollectionListFragment;->adapter:Lcom/narvii/monetization/sticker/shared/PendingStickerCollectionListFragment$Adapter;

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3}, Lcom/narvii/list/NVPagedAdapter;->editList(Lcom/narvii/notification/Notification;Z)V

    :cond_0
    return-void

    .line 84
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVFragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 46
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0f0d3c

    .line 47
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    return-void
.end method

.method public willFinish(Lcom/narvii/app/NVActivity;)V
    .locals 2

    .line 180
    iget-boolean p1, p0, Lcom/narvii/monetization/sticker/shared/PendingStickerCollectionListFragment;->listChanged:Z

    if-eqz p1, :cond_0

    const-string p1, "sticker"

    .line 181
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/monetization/sticker/StickerService;

    const/4 v0, 0x1

    .line 182
    invoke-virtual {p1, v0}, Lcom/narvii/monetization/sticker/StickerService;->refreshSharedStickerPackList(Z)V

    .line 184
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object p1

    .line 185
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.narvii.action.PENDING_STICKER_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    :cond_0
    return-void
.end method
