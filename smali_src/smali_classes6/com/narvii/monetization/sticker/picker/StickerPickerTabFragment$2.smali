.class Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/monetization/sticker/StickerPreviewListener;


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
    iput-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment$2;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onStickerPreviewEnd()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment$2;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->access$200(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;)Lcom/narvii/widget/NVViewPager;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment$2;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->access$300(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;)Lcom/narvii/widget/NVViewPager;

    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x0

    .line 16
    .line 17
    iput-boolean v1, v0, Lcom/narvii/widget/NVViewPager;->disableScroll:Z

    .line 18
    :cond_0
    return-void
.end method

.method public onStickerPreviewStart()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment$2;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->access$000(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;)Lcom/narvii/widget/NVViewPager;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment$2;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->access$100(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;)Lcom/narvii/widget/NVViewPager;

    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x1

    .line 16
    .line 17
    iput-boolean v1, v0, Lcom/narvii/widget/NVViewPager;->disableScroll:Z

    .line 18
    :cond_0
    return-void
.end method
