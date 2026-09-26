.class Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment$1;->this$0:Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment$1;->this$0:Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment;

    .line 3
    .line 4
    iget-object p1, p1, Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment;->selectedStickers:Ljava/util/List;

    .line 5
    .line 6
    .line 7
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 8
    move-result p1

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment$1;->this$0:Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V

    .line 16
    return-void

    .line 17
    .line 18
    :cond_0
    iget-object p1, p0, Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment$1;->this$0:Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment;

    .line 19
    .line 20
    .line 21
    invoke-static {p1}, Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment;->t(Lcom/narvii/monetization/sticker/post/CustomizedStickerPickListFragment;)V

    .line 22
    return-void
.end method
