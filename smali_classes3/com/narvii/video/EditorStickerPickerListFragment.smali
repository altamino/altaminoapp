.class public final Lcom/narvii/video/EditorStickerPickerListFragment;
.super Lcom/narvii/paging/NVRecyclerViewFragment;
.source "EditorStickerPickerListFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/video/EditorStickerPickerListFragment$Adapter;,
        Lcom/narvii/video/EditorStickerPickerListFragment$GiphyDataSource;,
        Lcom/narvii/video/EditorStickerPickerListFragment$GiphyItemHolder;
    }
.end annotation


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private apiKey:Ljava/lang/String;

.field private giphyStickerSelectedCallback:Lcom/narvii/video/EditorStickerPickerTabFragment$GiphyStickerSelectedCallback;

.field private giphyStickerService:Lcom/narvii/media/giphy/GiphyStickerService;

.field private selectedSticker:Lcom/narvii/media/giphy/GiphyItem;

.field private stickerPackId:Ljava/lang/String;

.field private videoManager:Lcom/narvii/video/services/VideoManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/narvii/paging/NVRecyclerViewFragment;-><init>()V

    return-void
.end method

.method public static final synthetic access$getApiKey$p(Lcom/narvii/video/EditorStickerPickerListFragment;)Ljava/lang/String;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/narvii/video/EditorStickerPickerListFragment;->apiKey:Ljava/lang/String;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "apiKey"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$getGiphyStickerSelectedCallback$p(Lcom/narvii/video/EditorStickerPickerListFragment;)Lcom/narvii/video/EditorStickerPickerTabFragment$GiphyStickerSelectedCallback;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/narvii/video/EditorStickerPickerListFragment;->giphyStickerSelectedCallback:Lcom/narvii/video/EditorStickerPickerTabFragment$GiphyStickerSelectedCallback;

    return-object p0
.end method

.method public static final synthetic access$getGiphyStickerService$p(Lcom/narvii/video/EditorStickerPickerListFragment;)Lcom/narvii/media/giphy/GiphyStickerService;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/narvii/video/EditorStickerPickerListFragment;->giphyStickerService:Lcom/narvii/media/giphy/GiphyStickerService;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "giphyStickerService"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$getSelectedSticker$p(Lcom/narvii/video/EditorStickerPickerListFragment;)Lcom/narvii/media/giphy/GiphyItem;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/narvii/video/EditorStickerPickerListFragment;->selectedSticker:Lcom/narvii/media/giphy/GiphyItem;

    return-object p0
.end method

.method public static final synthetic access$getStickerPackId$p(Lcom/narvii/video/EditorStickerPickerListFragment;)Ljava/lang/String;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/narvii/video/EditorStickerPickerListFragment;->stickerPackId:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getVideoManager$p(Lcom/narvii/video/EditorStickerPickerListFragment;)Lcom/narvii/video/services/VideoManager;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/narvii/video/EditorStickerPickerListFragment;->videoManager:Lcom/narvii/video/services/VideoManager;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "videoManager"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$setApiKey$p(Lcom/narvii/video/EditorStickerPickerListFragment;Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/narvii/video/EditorStickerPickerListFragment;->apiKey:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setGiphyStickerSelectedCallback$p(Lcom/narvii/video/EditorStickerPickerListFragment;Lcom/narvii/video/EditorStickerPickerTabFragment$GiphyStickerSelectedCallback;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/narvii/video/EditorStickerPickerListFragment;->giphyStickerSelectedCallback:Lcom/narvii/video/EditorStickerPickerTabFragment$GiphyStickerSelectedCallback;

    return-void
.end method

.method public static final synthetic access$setGiphyStickerService$p(Lcom/narvii/video/EditorStickerPickerListFragment;Lcom/narvii/media/giphy/GiphyStickerService;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/narvii/video/EditorStickerPickerListFragment;->giphyStickerService:Lcom/narvii/media/giphy/GiphyStickerService;

    return-void
.end method

.method public static final synthetic access$setSelectedSticker$p(Lcom/narvii/video/EditorStickerPickerListFragment;Lcom/narvii/media/giphy/GiphyItem;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/narvii/video/EditorStickerPickerListFragment;->selectedSticker:Lcom/narvii/media/giphy/GiphyItem;

    return-void
.end method

.method public static final synthetic access$setStickerPackId$p(Lcom/narvii/video/EditorStickerPickerListFragment;Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/narvii/video/EditorStickerPickerListFragment;->stickerPackId:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setVideoManager$p(Lcom/narvii/video/EditorStickerPickerListFragment;Lcom/narvii/video/services/VideoManager;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/narvii/video/EditorStickerPickerListFragment;->videoManager:Lcom/narvii/video/services/VideoManager;

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/video/EditorStickerPickerListFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/video/EditorStickerPickerListFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/video/EditorStickerPickerListFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/video/EditorStickerPickerListFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/video/EditorStickerPickerListFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method protected createAdapter()Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;
    .locals 1

    .line 50
    new-instance v0, Lcom/narvii/video/EditorStickerPickerListFragment$Adapter;

    invoke-direct {v0, p0, p0}, Lcom/narvii/video/EditorStickerPickerListFragment$Adapter;-><init>(Lcom/narvii/video/EditorStickerPickerListFragment;Lcom/narvii/app/NVContext;)V

    return-object v0
.end method

.method public createLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .locals 3

    .line 54
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 42
    invoke-super {p0, p1}, Lcom/narvii/paging/NVRecyclerViewFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "stickerPackId"

    .line 43
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/video/EditorStickerPickerListFragment;->stickerPackId:Ljava/lang/String;

    const-string p1, "videoManager"

    .line 44
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "getService<VideoManager>(\"videoManager\")"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/video/services/VideoManager;

    iput-object p1, p0, Lcom/narvii/video/EditorStickerPickerListFragment;->videoManager:Lcom/narvii/video/services/VideoManager;

    const-string p1, "giphySticker"

    .line 45
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "getService<GiphyStickerService>(\"giphySticker\")"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/media/giphy/GiphyStickerService;

    iput-object p1, p0, Lcom/narvii/video/EditorStickerPickerListFragment;->giphyStickerService:Lcom/narvii/media/giphy/GiphyStickerService;

    const-string p1, "config"

    .line 46
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/config/ConfigService;

    const-string v0, "giphyApiKey"

    const-string v1, "12ss5TcLvRjUze"

    invoke-virtual {p1, v0, v1}, Lcom/narvii/config/ConfigService;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getService<ConfigService\u2026piKey\", \"12ss5TcLvRjUze\")"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/video/EditorStickerPickerListFragment;->apiKey:Ljava/lang/String;

    return-void
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/narvii/paging/NVRecyclerViewFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/narvii/video/EditorStickerPickerListFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public final setCurrentSelectedSticker(Lcom/narvii/media/giphy/GiphyItem;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/narvii/video/EditorStickerPickerListFragment;->selectedSticker:Lcom/narvii/media/giphy/GiphyItem;

    .line 67
    iget-object p1, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->adapter:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public final setGiphyStickerSelectedCallback(Lcom/narvii/video/EditorStickerPickerTabFragment$GiphyStickerSelectedCallback;)V
    .locals 1

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    iput-object p1, p0, Lcom/narvii/video/EditorStickerPickerListFragment;->giphyStickerSelectedCallback:Lcom/narvii/video/EditorStickerPickerTabFragment$GiphyStickerSelectedCallback;

    return-void
.end method

.method public final setStickerPackId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "packId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/narvii/video/EditorStickerPickerListFragment;->stickerPackId:Ljava/lang/String;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 61
    :cond_0
    iput-object p1, p0, Lcom/narvii/video/EditorStickerPickerListFragment;->stickerPackId:Ljava/lang/String;

    .line 62
    iget-object p1, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->adapter:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->resetList()V

    :cond_1
    return-void
.end method
