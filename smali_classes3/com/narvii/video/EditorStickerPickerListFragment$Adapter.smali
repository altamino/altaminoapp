.class final Lcom/narvii/video/EditorStickerPickerListFragment$Adapter;
.super Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;
.source "EditorStickerPickerListFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/video/EditorStickerPickerListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter<",
        "Lcom/narvii/media/giphy/GiphyItem;",
        "Lcom/narvii/media/giphy/GiphyListResponse;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEditorStickerPickerListFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EditorStickerPickerListFragment.kt\ncom/narvii/video/EditorStickerPickerListFragment$Adapter\n*L\n1#1,172:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/video/EditorStickerPickerListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/video/EditorStickerPickerListFragment;Lcom/narvii/app/NVContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            ")V"
        }
    .end annotation

    const-string v0, "ctx"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    iput-object p1, p0, Lcom/narvii/video/EditorStickerPickerListFragment$Adapter;->this$0:Lcom/narvii/video/EditorStickerPickerListFragment;

    invoke-direct {p0, p2}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public createPageDataSource(Lcom/narvii/app/NVContext;)Lcom/narvii/paging/source/PageDataSource;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            ")",
            "Lcom/narvii/paging/source/PageDataSource<",
            "Lcom/narvii/media/giphy/GiphyItem;",
            "Lcom/narvii/media/giphy/GiphyListResponse;",
            ">;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    sget-object v0, Lcom/narvii/paging/source/PagingConfiguration;->OFFSET_CONFIG:Lcom/narvii/paging/source/PagingConfiguration;

    const-string v1, "offset"

    .line 88
    iput-object v1, v0, Lcom/narvii/paging/source/PagingConfiguration;->offsetStartKey:Ljava/lang/String;

    const-string v1, "limit"

    .line 89
    iput-object v1, v0, Lcom/narvii/paging/source/PagingConfiguration;->offsetStepKey:Ljava/lang/String;

    const/16 v1, 0xc

    .line 90
    iput v1, v0, Lcom/narvii/paging/source/PagingConfiguration;->pageSize:I

    .line 91
    new-instance v1, Lcom/narvii/video/EditorStickerPickerListFragment$GiphyDataSource;

    iget-object v2, p0, Lcom/narvii/video/EditorStickerPickerListFragment$Adapter;->this$0:Lcom/narvii/video/EditorStickerPickerListFragment;

    const-string v3, "pageConfiguration"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2, p1, v0}, Lcom/narvii/video/EditorStickerPickerListFragment$GiphyDataSource;-><init>(Lcom/narvii/video/EditorStickerPickerListFragment;Lcom/narvii/app/NVContext;Lcom/narvii/paging/source/PagingConfiguration;)V

    return-object v1
.end method

.method protected onBindItemViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    instance-of v0, p1, Lcom/narvii/video/EditorStickerPickerListFragment$GiphyItemHolder;

    if-eqz v0, :cond_0

    .line 82
    check-cast p1, Lcom/narvii/video/EditorStickerPickerListFragment$GiphyItemHolder;

    invoke-virtual {p0, p2}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->getItem(I)Lcom/narvii/model/NVObject;

    move-result-object p2

    const-string v0, "getItem(position)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/narvii/media/giphy/GiphyItem;

    invoke-virtual {p1, p2}, Lcom/narvii/video/EditorStickerPickerListFragment$GiphyItemHolder;->bindHolder(Lcom/narvii/media/giphy/GiphyItem;)V

    :cond_0
    return-void
.end method

.method protected onCreateItemViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 2

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/narvii/mediaeditor/R$layout;->item_editor_sticker_list_item:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 77
    new-instance p2, Lcom/narvii/video/EditorStickerPickerListFragment$GiphyItemHolder;

    iget-object v0, p0, Lcom/narvii/video/EditorStickerPickerListFragment$Adapter;->this$0:Lcom/narvii/video/EditorStickerPickerListFragment;

    const-string v1, "itemView"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, v0, p1}, Lcom/narvii/video/EditorStickerPickerListFragment$GiphyItemHolder;-><init>(Lcom/narvii/video/EditorStickerPickerListFragment;Landroid/view/View;)V

    return-object p2
.end method

.method public onItemClick(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    const-string v0, "adapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cell"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    instance-of v0, p3, Lcom/narvii/media/giphy/GiphyItem;

    if-eqz v0, :cond_4

    .line 102
    iget-object p1, p0, Lcom/narvii/video/EditorStickerPickerListFragment$Adapter;->this$0:Lcom/narvii/video/EditorStickerPickerListFragment;

    check-cast p3, Lcom/narvii/media/giphy/GiphyItem;

    invoke-static {p1, p3}, Lcom/narvii/video/EditorStickerPickerListFragment;->access$setSelectedSticker$p(Lcom/narvii/video/EditorStickerPickerListFragment;Lcom/narvii/media/giphy/GiphyItem;)V

    .line 103
    iget-object p1, p0, Lcom/narvii/video/EditorStickerPickerListFragment$Adapter;->this$0:Lcom/narvii/video/EditorStickerPickerListFragment;

    invoke-static {p1}, Lcom/narvii/video/EditorStickerPickerListFragment;->access$getGiphyStickerSelectedCallback$p(Lcom/narvii/video/EditorStickerPickerListFragment;)Lcom/narvii/video/EditorStickerPickerTabFragment$GiphyStickerSelectedCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1, p3}, Lcom/narvii/video/EditorStickerPickerTabFragment$GiphyStickerSelectedCallback;->onGiphyStickerSelected(Lcom/narvii/media/giphy/GiphyItem;)V

    .line 104
    :cond_0
    invoke-virtual {p3}, Lcom/narvii/media/giphy/GiphyItem;->stickerStatus()I

    move-result p1

    const/4 p2, 0x1

    const/4 p5, 0x3

    if-ne p1, p5, :cond_2

    .line 105
    new-instance p1, Lcom/narvii/model/Sticker;

    invoke-direct {p1}, Lcom/narvii/model/Sticker;-><init>()V

    .line 106
    invoke-virtual {p3}, Lcom/narvii/media/giphy/GiphyItem;->id()Ljava/lang/String;

    move-result-object p4

    iput-object p4, p1, Lcom/narvii/model/Sticker;->stickerId:Ljava/lang/String;

    .line 107
    invoke-virtual {p3}, Lcom/narvii/media/giphy/GiphyItem;->collectionId()Ljava/lang/String;

    move-result-object p4

    iput-object p4, p1, Lcom/narvii/model/Sticker;->stickerCollectionId:Ljava/lang/String;

    .line 108
    iput p5, p1, Lcom/narvii/model/Sticker;->sourceType:I

    .line 109
    iget-object p4, p0, Lcom/narvii/video/EditorStickerPickerListFragment$Adapter;->this$0:Lcom/narvii/video/EditorStickerPickerListFragment;

    invoke-static {p4}, Lcom/narvii/video/EditorStickerPickerListFragment;->access$getVideoManager$p(Lcom/narvii/video/EditorStickerPickerListFragment;)Lcom/narvii/video/services/VideoManager;

    move-result-object p4

    .line 110
    iget-object p5, p0, Lcom/narvii/video/EditorStickerPickerListFragment$Adapter;->this$0:Lcom/narvii/video/EditorStickerPickerListFragment;

    invoke-static {p5}, Lcom/narvii/video/EditorStickerPickerListFragment;->access$getGiphyStickerService$p(Lcom/narvii/video/EditorStickerPickerListFragment;)Lcom/narvii/media/giphy/GiphyStickerService;

    move-result-object p5

    invoke-virtual {p5, p3}, Lcom/narvii/media/giphy/GiphyStickerService;->getLocalPath(Lcom/narvii/media/giphy/GiphyItem;)Ljava/lang/String;

    move-result-object p3

    .line 109
    invoke-virtual {p4, p1, p3}, Lcom/narvii/video/services/VideoManager;->obtainInstalledStickerInfo(Lcom/narvii/model/Sticker;Ljava/lang/String;)Lcom/narvii/video/model/StickerInfoPack;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 112
    iget-object p3, p0, Lcom/narvii/video/EditorStickerPickerListFragment$Adapter;->this$0:Lcom/narvii/video/EditorStickerPickerListFragment;

    invoke-virtual {p3}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object p3

    .line 113
    instance-of p4, p3, Lcom/narvii/video/services/VideoManager$IInstallStickerCallback;

    if-eqz p4, :cond_1

    .line 114
    check-cast p3, Lcom/narvii/video/services/VideoManager$IInstallStickerCallback;

    invoke-interface {p3, p1}, Lcom/narvii/video/services/VideoManager$IInstallStickerCallback;->onStickerInstalled(Lcom/narvii/video/model/StickerInfoPack;)V

    :cond_1
    return p2

    .line 118
    :cond_2
    invoke-virtual {p3}, Lcom/narvii/media/giphy/GiphyItem;->stickerStatus()I

    move-result p1

    const/4 p5, 0x2

    if-eq p1, p5, :cond_3

    .line 119
    sget p1, Lcom/narvii/mediaeditor/R$id;->sticker_install_frame:I

    invoke-virtual {p4, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/video/widget/EditorStickerInstallFrameView;

    iget-object p4, p0, Lcom/narvii/video/EditorStickerPickerListFragment$Adapter;->this$0:Lcom/narvii/video/EditorStickerPickerListFragment;

    invoke-static {p4}, Lcom/narvii/video/EditorStickerPickerListFragment;->access$getGiphyStickerService$p(Lcom/narvii/video/EditorStickerPickerListFragment;)Lcom/narvii/media/giphy/GiphyStickerService;

    move-result-object p4

    invoke-virtual {p1, p3, p4}, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->bindGiphySticker(Lcom/narvii/media/giphy/GiphyItem;Lcom/narvii/media/giphy/GiphyStickerService;)V

    :cond_3
    return p2

    .line 123
    :cond_4
    invoke-super/range {p0 .. p5}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->onItemClick(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    instance-of v0, p1, Lcom/narvii/video/EditorStickerPickerListFragment$GiphyItemHolder;

    if-eqz v0, :cond_0

    .line 96
    check-cast p1, Lcom/narvii/video/EditorStickerPickerListFragment$GiphyItemHolder;

    invoke-virtual {p1}, Lcom/narvii/video/EditorStickerPickerListFragment$GiphyItemHolder;->onHolderRecycled()V

    :cond_0
    return-void
.end method
