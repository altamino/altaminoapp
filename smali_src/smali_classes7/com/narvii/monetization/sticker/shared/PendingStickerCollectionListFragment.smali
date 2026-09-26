.class public Lcom/narvii/monetization/sticker/shared/PendingStickerCollectionListFragment;
.super Lcom/narvii/list/NVListFragment;
.source "SourceFile"

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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 0

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/monetization/sticker/shared/PendingStickerCollectionListFragment$Adapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1, p0, p0}, Lcom/narvii/monetization/sticker/shared/PendingStickerCollectionListFragment$Adapter;-><init>(Lcom/narvii/monetization/sticker/shared/PendingStickerCollectionListFragment;Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    iput-object p1, p0, Lcom/narvii/monetization/sticker/shared/PendingStickerCollectionListFragment;->adapter:Lcom/narvii/monetization/sticker/shared/PendingStickerCollectionListFragment$Adapter;

    .line 8
    return-object p1
.end method

.method protected getActionBarCustomDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 3
    .line 4
    .line 5
    const v1, -0xcccccd

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 9
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

    .line 1
    .line 2
    const/16 v0, 0xc8

    .line 3
    .line 4
    if-ne p1, v0, :cond_1

    .line 5
    const/4 v0, -0x1

    .line 6
    .line 7
    if-ne p2, v0, :cond_1

    .line 8
    .line 9
    if-eqz p3, :cond_1

    .line 10
    .line 11
    const-string p1, "requestId"

    .line 12
    .line 13
    .line 14
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    move-result-object p1

    .line 16
    const/4 p2, 0x1

    .line 17
    .line 18
    iput-boolean p2, p0, Lcom/narvii/monetization/sticker/shared/PendingStickerCollectionListFragment;->listChanged:Z

    .line 19
    .line 20
    iget-object p2, p0, Lcom/narvii/monetization/sticker/shared/PendingStickerCollectionListFragment;->adapter:Lcom/narvii/monetization/sticker/shared/PendingStickerCollectionListFragment$Adapter;

    .line 21
    .line 22
    if-eqz p2, :cond_0

    .line 23
    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    new-instance p2, Lcom/narvii/monetization/store/data/ShareRequest;

    .line 27
    .line 28
    .line 29
    invoke-direct {p2}, Lcom/narvii/monetization/store/data/ShareRequest;-><init>()V

    .line 30
    .line 31
    iput-object p1, p2, Lcom/narvii/monetization/store/data/ShareRequest;->requestId:Ljava/lang/String;

    .line 32
    .line 33
    new-instance p1, Lcom/narvii/notification/Notification;

    .line 34
    .line 35
    const-string p3, "delete"

    .line 36
    .line 37
    .line 38
    invoke-direct {p1, p3, p2}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 39
    .line 40
    iget-object p2, p0, Lcom/narvii/monetization/sticker/shared/PendingStickerCollectionListFragment;->adapter:Lcom/narvii/monetization/sticker/shared/PendingStickerCollectionListFragment$Adapter;

    .line 41
    const/4 p3, 0x0

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2, p1, p3}, Lcom/narvii/list/NVPagedAdapter;->editList(Lcom/narvii/notification/Notification;Z)V

    .line 45
    :cond_0
    return-void

    .line 46
    .line 47
    .line 48
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 49
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const p1, 0x7f120e61

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 10
    return-void
.end method

.method public willFinish(Lcom/narvii/app/NVActivity;)V
    .locals 2

    .line 1
    .line 2
    iget-boolean p1, p0, Lcom/narvii/monetization/sticker/shared/PendingStickerCollectionListFragment;->listChanged:Z

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    const-string p1, "sticker"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    check-cast p1, Lcom/narvii/monetization/sticker/StickerService;

    .line 13
    const/4 v0, 0x1

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v0}, Lcom/narvii/monetization/sticker/StickerService;->refreshSharedStickerPackList(Z)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    .line 23
    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->b(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    new-instance v0, Landroid/content/Intent;

    .line 27
    .line 28
    const-string v1, "com.narvii.action.PENDING_STICKER_CHANGED"

    .line 29
    .line 30
    .line 31
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->d(Landroid/content/Intent;)Z

    .line 35
    :cond_0
    return-void
.end method
