.class Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment$2;
.super Ljava/lang/Object;
.source "StickerPickerTabFragment.java"

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

    .line 116
    iput-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment$2;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStickerPreviewEnd()V
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment$2;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    invoke-static {v0}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->access$400(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;)Lcom/narvii/widget/NVViewPager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment$2;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    invoke-static {v0}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->access$500(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;)Lcom/narvii/widget/NVViewPager;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/narvii/widget/NVViewPager;->disableScroll:Z

    :cond_0
    return-void
.end method

.method public onStickerPreviewStart()V
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment$2;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    invoke-static {v0}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->access$200(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;)Lcom/narvii/widget/NVViewPager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment$2;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    invoke-static {v0}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->access$300(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;)Lcom/narvii/widget/NVViewPager;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/narvii/widget/NVViewPager;->disableScroll:Z

    :cond_0
    return-void
.end method
