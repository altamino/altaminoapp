.class Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter$1$1;
.super Ljava/lang/Object;
.source "StickerPickerListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter$1;->onActivated(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter$1;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter$1;)V
    .locals 0

    .line 612
    iput-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter$1$1;->this$2:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 615
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter$1$1;->this$2:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter$1;

    iget-object v0, v0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter$1;->this$1:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter;

    iget-object v0, v0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->isDestoryed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 618
    :cond_0
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter$1$1;->this$2:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter$1;

    iget-object v0, v0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter$1;->this$1:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter;

    iget-object v0, v0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    if-eqz v0, :cond_1

    .line 619
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter$1$1;->this$2:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter$1;

    iget-object v0, v0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter$1;->this$1:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter;

    iget-object v0, v0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    iget-object v1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter$1$1;->this$2:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter$1;

    invoke-static {v1}, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter$1;->access$500(Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter$1;)Lcom/narvii/model/IStoreItem;

    move-result-object v1

    check-cast v1, Lcom/narvii/monetization/sticker/model/StickerCollection;

    invoke-virtual {v0, v1}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->selectStickerCollection(Lcom/narvii/monetization/sticker/model/StickerCollection;)V

    .line 620
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter$1$1;->this$2:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter$1;

    iget-object v0, v0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter$1;->this$1:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter;

    iget-object v0, v0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    iget-object v0, v0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerService:Lcom/narvii/monetization/sticker/StickerService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/narvii/monetization/sticker/StickerService;->refreshStickerCollectionInfo(Z)V

    :cond_1
    return-void
.end method
