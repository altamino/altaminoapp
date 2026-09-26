.class Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment$3;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onListChanged()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment$3;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->E(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;)Lcom/narvii/monetization/sticker/StickerService;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    return-void

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment$3;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->y(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;)Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    return-void

    .line 19
    .line 20
    :cond_1
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment$3;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->E(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;)Lcom/narvii/monetization/sticker/StickerService;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/narvii/monetization/sticker/StickerService;->getSharedStickerPackList()Ljava/util/List;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    .line 33
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 34
    move-result v0

    .line 35
    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment$3;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    .line 39
    .line 40
    .line 41
    invoke-static {v0}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->y(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;)Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;

    .line 42
    move-result-object v0

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->dismissWithoutAnimation()V

    .line 46
    .line 47
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment$3;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    .line 48
    const/4 v1, 0x0

    .line 49
    .line 50
    .line 51
    invoke-static {v0, v1}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->J(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;Z)V

    .line 52
    :cond_2
    return-void
.end method

.method public onRequestFailed()V
    .locals 0

    return-void
.end method
