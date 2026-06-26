.class Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter$1;
.super Lcom/narvii/monetization/StickerCollectionOwnStatusController;
.source "StickerPickerListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter;Lcom/narvii/app/NVContext;Lcom/narvii/monetization/StoreItemStatusView;)V
    .locals 0

    .line 604
    iput-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter$1;->this$1:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter;

    invoke-direct {p0, p2, p3}, Lcom/narvii/monetization/StickerCollectionOwnStatusController;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/monetization/StoreItemStatusView;)V

    return-void
.end method

.method static synthetic access$500(Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter$1;)Lcom/narvii/model/IStoreItem;
    .locals 0

    .line 604
    iget-object p0, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->iStoreItem:Lcom/narvii/model/IStoreItem;

    return-object p0
.end method


# virtual methods
.method protected disableRefreshMyCollectionList()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onActivated(Z)V
    .locals 2

    .line 607
    invoke-super {p0, p1}, Lcom/narvii/monetization/StickerCollectionOwnStatusController;->onActivated(Z)V

    .line 609
    iget-object p1, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->storeItemStatusView:Lcom/narvii/monetization/StoreItemStatusView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 610
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter$1;->this$1:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter;

    iget-object p1, p1, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    iget-object p1, p1, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerService:Lcom/narvii/monetization/sticker/StickerService;

    iget-object v0, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->iStoreItem:Lcom/narvii/model/IStoreItem;

    check-cast v0, Lcom/narvii/monetization/sticker/model/StickerCollection;

    invoke-virtual {p1, v0}, Lcom/narvii/monetization/sticker/StickerService;->addStickerCollection(Lcom/narvii/monetization/sticker/model/StickerCollection;)V

    .line 612
    new-instance p1, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter$1$1;

    invoke-direct {p1, p0}, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter$1$1;-><init>(Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter$1;)V

    const-wide/16 v0, 0x32

    invoke-static {p1, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method protected sendNotificationAfterActivated()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
