.class Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment$1;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onStickerSelected(Lcom/narvii/model/Sticker;Lcom/narvii/monetization/sticker/model/StickerCollection;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment$1;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p1}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->F(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;Lcom/narvii/model/Sticker;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment$1;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    .line 8
    .line 9
    iget-boolean v1, v0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->showSelected:Z

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->notifyPagerSelectedStickerChanged(Lcom/narvii/model/Sticker;)V

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment$1;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->D(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;)Lcom/narvii/monetization/sticker/picker/StickerSelectListener;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment$1;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    .line 25
    .line 26
    .line 27
    invoke-static {v0}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->D(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;)Lcom/narvii/monetization/sticker/picker/StickerSelectListener;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    .line 31
    invoke-interface {v0, p1, p2}, Lcom/narvii/monetization/sticker/picker/StickerSelectListener;->onStickerSelected(Lcom/narvii/model/Sticker;Lcom/narvii/monetization/sticker/model/StickerCollection;)V

    .line 32
    :cond_1
    return-void
.end method
