.class Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment$3;
.super Ljava/lang/Object;
.source "StickerPickerTabFragment.java"

# interfaces
.implements Lcom/narvii/monetization/sticker/StickerService$StickerCollectionListObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment$3;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onListChanged()V
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment$3;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    invoke-static {v0}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->access$600(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;)Lcom/narvii/monetization/sticker/StickerService;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment$3;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    invoke-static {v0}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->access$700(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;)Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 148
    :cond_1
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment$3;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    invoke-static {v0}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->access$600(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;)Lcom/narvii/monetization/sticker/StickerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/monetization/sticker/StickerService;->getSharedStickerPackList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 149
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 150
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment$3;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    invoke-static {v0}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->access$700(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;)Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->dismissWithoutAnimation()V

    .line 151
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment$3;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->access$800(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;Z)V

    :cond_2
    return-void
.end method

.method public onRequestFailed()V
    .locals 0

    return-void
.end method
