.class final Lcom/narvii/video/EditorStickerPickerListFragment$GiphyItemHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "EditorStickerPickerListFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/video/EditorStickerPickerListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GiphyItemHolder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/video/EditorStickerPickerListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/video/EditorStickerPickerListFragment;Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const-string v0, "itemView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    iput-object p1, p0, Lcom/narvii/video/EditorStickerPickerListFragment$GiphyItemHolder;->this$0:Lcom/narvii/video/EditorStickerPickerListFragment;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final bindHolder(Lcom/narvii/media/giphy/GiphyItem;)V
    .locals 5

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v1, "itemView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lcom/narvii/mediaeditor/R$id;->thumbnail:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVImageView;

    invoke-virtual {p1}, Lcom/narvii/media/giphy/GiphyItem;->thumbUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 154
    new-instance v0, Lcom/narvii/model/Sticker;

    invoke-direct {v0}, Lcom/narvii/model/Sticker;-><init>()V

    .line 155
    invoke-virtual {p1}, Lcom/narvii/media/giphy/GiphyItem;->id()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/narvii/model/Sticker;->stickerId:Ljava/lang/String;

    .line 156
    invoke-virtual {p1}, Lcom/narvii/media/giphy/GiphyItem;->collectionId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/narvii/model/Sticker;->stickerCollectionId:Ljava/lang/String;

    .line 157
    iget-object v2, p0, Lcom/narvii/video/EditorStickerPickerListFragment$GiphyItemHolder;->this$0:Lcom/narvii/video/EditorStickerPickerListFragment;

    invoke-static {v2}, Lcom/narvii/video/EditorStickerPickerListFragment;->access$getVideoManager$p(Lcom/narvii/video/EditorStickerPickerListFragment;)Lcom/narvii/video/services/VideoManager;

    move-result-object v2

    .line 158
    iget-object v3, p0, Lcom/narvii/video/EditorStickerPickerListFragment$GiphyItemHolder;->this$0:Lcom/narvii/video/EditorStickerPickerListFragment;

    invoke-static {v3}, Lcom/narvii/video/EditorStickerPickerListFragment;->access$getGiphyStickerService$p(Lcom/narvii/video/EditorStickerPickerListFragment;)Lcom/narvii/media/giphy/GiphyStickerService;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/narvii/media/giphy/GiphyStickerService;->getLocalPath(Lcom/narvii/media/giphy/GiphyItem;)Ljava/lang/String;

    move-result-object v3

    .line 157
    invoke-virtual {v2, v0, v3}, Lcom/narvii/video/services/VideoManager;->obtainInstalledStickerInfo(Lcom/narvii/model/Sticker;Ljava/lang/String;)Lcom/narvii/video/model/StickerInfoPack;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/4 v2, 0x3

    goto :goto_1

    .line 159
    :cond_1
    invoke-virtual {p1}, Lcom/narvii/media/giphy/GiphyItem;->stickerStatus()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/narvii/media/giphy/GiphyItem;->stickerStatus()I

    move-result v2

    .line 160
    :goto_1
    iput v2, p1, Lcom/narvii/media/giphy/GiphyItem;->stickerStatus:I

    .line 161
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v3, Lcom/narvii/mediaeditor/R$id;->sticker_install_frame:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;

    invoke-virtual {p1}, Lcom/narvii/media/giphy/GiphyItem;->stickerStatus()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->setStickerStatus(I)V

    .line 162
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v3, Lcom/narvii/mediaeditor/R$id;->sticker_install_frame:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;

    iget-object v3, p0, Lcom/narvii/video/EditorStickerPickerListFragment$GiphyItemHolder;->this$0:Lcom/narvii/video/EditorStickerPickerListFragment;

    invoke-static {v3}, Lcom/narvii/video/EditorStickerPickerListFragment;->access$getSelectedSticker$p(Lcom/narvii/video/EditorStickerPickerListFragment;)Lcom/narvii/media/giphy/GiphyItem;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, v3, Lcom/narvii/media/giphy/GiphyItem;->id:Ljava/lang/String;

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :goto_2
    iget-object v4, p1, Lcom/narvii/media/giphy/GiphyItem;->id:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->setStickerSelected(Z)V

    const/4 v0, 0x2

    if-ne v2, v0, :cond_4

    .line 164
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lcom/narvii/mediaeditor/R$id;->sticker_install_frame:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;

    iget-object v1, p0, Lcom/narvii/video/EditorStickerPickerListFragment$GiphyItemHolder;->this$0:Lcom/narvii/video/EditorStickerPickerListFragment;

    invoke-static {v1}, Lcom/narvii/video/EditorStickerPickerListFragment;->access$getGiphyStickerService$p(Lcom/narvii/video/EditorStickerPickerListFragment;)Lcom/narvii/media/giphy/GiphyStickerService;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->bindGiphySticker(Lcom/narvii/media/giphy/GiphyItem;Lcom/narvii/media/giphy/GiphyStickerService;)V

    :cond_4
    return-void
.end method

.method public final onHolderRecycled()V
    .locals 2

    .line 169
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v1, "itemView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lcom/narvii/mediaeditor/R$id;->sticker_install_frame:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;

    invoke-virtual {v0}, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->onViewRecycled()V

    return-void
.end method
