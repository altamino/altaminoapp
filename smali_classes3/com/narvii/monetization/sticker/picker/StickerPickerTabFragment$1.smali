.class Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment$1;
.super Ljava/lang/Object;
.source "StickerPickerTabFragment.java"

# interfaces
.implements Lcom/narvii/monetization/sticker/picker/StickerSelectListener;


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

    .line 101
    iput-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment$1;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStickerSelected(Lcom/narvii/model/Sticker;Lcom/narvii/monetization/sticker/model/StickerCollection;)V
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment$1;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    invoke-static {v0, p1}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->access$002(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;Lcom/narvii/model/Sticker;)Lcom/narvii/model/Sticker;

    .line 105
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment$1;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    iget-boolean v1, v0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->showSelected:Z

    if-eqz v1, :cond_0

    .line 106
    invoke-virtual {v0, p1}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->notifyPagerSelectedStickerChanged(Lcom/narvii/model/Sticker;)V

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment$1;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    invoke-static {v0}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->access$100(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;)Lcom/narvii/monetization/sticker/picker/StickerSelectListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment$1;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    invoke-static {v0}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->access$100(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;)Lcom/narvii/monetization/sticker/picker/StickerSelectListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/narvii/monetization/sticker/picker/StickerSelectListener;->onStickerSelected(Lcom/narvii/model/Sticker;Lcom/narvii/monetization/sticker/model/StickerCollection;)V

    :cond_1
    return-void
.end method
