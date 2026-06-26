.class Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$5;
.super Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;
.source "StickerPickerListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;Lcom/narvii/monetization/sticker/model/StickerCollection;ZLandroid/widget/ListView;Lcom/narvii/list/refresh/SwipeRefreshLayout;Landroid/widget/Adapter;II)V
    .locals 9

    move-object v8, p0

    move-object v0, p1

    .line 298
    iput-object v0, v8, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$5;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;-><init>(Lcom/narvii/monetization/sticker/model/StickerCollection;ZLandroid/widget/ListView;Lcom/narvii/list/refresh/SwipeRefreshLayout;Landroid/widget/Adapter;II)V

    return-void
.end method


# virtual methods
.method protected onTouchUp()V
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$5;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    invoke-static {v0}, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->access$100(Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;)Lcom/narvii/monetization/sticker/StickerPreviewListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$5;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    invoke-static {v0}, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->access$100(Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;)Lcom/narvii/monetization/sticker/StickerPreviewListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/monetization/sticker/StickerPreviewListener;->onStickerPreviewEnd()V

    :cond_0
    return-void
.end method
