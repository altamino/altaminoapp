.class Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter$1$1;->this$2:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter$1;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter$1$1;->this$2:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter$1;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter$1;->this$1:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->isDestoryed()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    return-void

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter$1$1;->this$2:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter$1;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter$1;->this$1:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    instance-of v0, v0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter$1$1;->this$2:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter$1;

    .line 30
    .line 31
    iget-object v0, v0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter$1;->this$1:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter;

    .line 32
    .line 33
    iget-object v0, v0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    check-cast v0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    .line 40
    .line 41
    iget-object v1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter$1$1;->this$2:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter$1;

    .line 42
    .line 43
    .line 44
    invoke-static {v1}, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter$1;->access$000(Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter$1;)Lcom/narvii/model/IStoreItem;

    .line 45
    move-result-object v1

    .line 46
    .line 47
    check-cast v1, Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->selectStickerCollection(Lcom/narvii/monetization/sticker/model/StickerCollection;)V

    .line 51
    .line 52
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter$1$1;->this$2:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter$1;

    .line 53
    .line 54
    iget-object v0, v0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter$1;->this$1:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter;

    .line 55
    .line 56
    iget-object v0, v0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    .line 57
    .line 58
    iget-object v0, v0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerService:Lcom/narvii/monetization/sticker/StickerService;

    .line 59
    const/4 v1, 0x1

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v1}, Lcom/narvii/monetization/sticker/StickerService;->refreshStickerCollectionInfo(Z)V

    .line 63
    :cond_1
    return-void
.end method
