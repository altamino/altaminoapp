.class Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment$1;
.super Ljava/lang/Object;
.source "CustomizedStickerPickListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment$1;->this$0:Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 90
    iget-object p1, p0, Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment$1;->this$0:Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment;

    iget-object p1, p1, Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment;->selectedStickers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 91
    iget-object p1, p0, Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment$1;->this$0:Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V

    return-void

    .line 94
    :cond_0
    iget-object p1, p0, Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment$1;->this$0:Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment;

    invoke-static {p1}, Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment;->access$000(Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment;)V

    return-void
.end method
