.class public final Lcom/narvii/video/EditorStickerPickerListFragment;
.super Lcom/narvii/paging/NVRecyclerViewFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/video/EditorStickerPickerListFragment$Adapter;,
        Lcom/narvii/video/EditorStickerPickerListFragment$GiphyDataSource;,
        Lcom/narvii/video/EditorStickerPickerListFragment$GiphyItemHolder;
    }
.end annotation


# instance fields
.field private apiKey:Ljava/lang/String;

.field private giphyStickerSelectedCallback:Lcom/narvii/video/EditorStickerPickerTabFragment$GiphyStickerSelectedCallback;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private giphyStickerService:Lcom/narvii/media/giphy/GiphyStickerService;

.field private selectedSticker:Lcom/narvii/media/giphy/GiphyItem;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private stickerPackId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private videoManager:Lcom/narvii/video/services/VideoManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/paging/NVRecyclerViewFragment;-><init>()V

    .line 4
    return-void
.end method

.method public static final synthetic access$getApiKey$p(Lcom/narvii/video/EditorStickerPickerListFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/video/EditorStickerPickerListFragment;->apiKey:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getGiphyStickerSelectedCallback$p(Lcom/narvii/video/EditorStickerPickerListFragment;)Lcom/narvii/video/EditorStickerPickerTabFragment$GiphyStickerSelectedCallback;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/video/EditorStickerPickerListFragment;->giphyStickerSelectedCallback:Lcom/narvii/video/EditorStickerPickerTabFragment$GiphyStickerSelectedCallback;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getGiphyStickerService$p(Lcom/narvii/video/EditorStickerPickerListFragment;)Lcom/narvii/media/giphy/GiphyStickerService;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/video/EditorStickerPickerListFragment;->giphyStickerService:Lcom/narvii/media/giphy/GiphyStickerService;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getSelectedSticker$p(Lcom/narvii/video/EditorStickerPickerListFragment;)Lcom/narvii/media/giphy/GiphyItem;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/video/EditorStickerPickerListFragment;->selectedSticker:Lcom/narvii/media/giphy/GiphyItem;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getStickerPackId$p(Lcom/narvii/video/EditorStickerPickerListFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/video/EditorStickerPickerListFragment;->stickerPackId:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getVideoManager$p(Lcom/narvii/video/EditorStickerPickerListFragment;)Lcom/narvii/video/services/VideoManager;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/video/EditorStickerPickerListFragment;->videoManager:Lcom/narvii/video/services/VideoManager;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$setSelectedSticker$p(Lcom/narvii/video/EditorStickerPickerListFragment;Lcom/narvii/media/giphy/GiphyItem;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/video/EditorStickerPickerListFragment;->selectedSticker:Lcom/narvii/media/giphy/GiphyItem;

    .line 3
    return-void
.end method


# virtual methods
.method protected createAdapter()Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/video/EditorStickerPickerListFragment$Adapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0, p0}, Lcom/narvii/video/EditorStickerPickerListFragment$Adapter;-><init>(Lcom/narvii/video/EditorStickerPickerListFragment;Lcom/narvii/app/NVContext;)V

    .line 6
    return-object v0
.end method

.method public createLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x4

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 11
    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/paging/NVRecyclerViewFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string p1, "stickerPackId"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    iput-object p1, p0, Lcom/narvii/video/EditorStickerPickerListFragment;->stickerPackId:Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    const-string/jumbo p1, "videoManager"

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    const-string v0, "getService(...)"

    .line 21
    .line 22
    .line 23
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    check-cast p1, Lcom/narvii/video/services/VideoManager;

    .line 26
    .line 27
    iput-object p1, p0, Lcom/narvii/video/EditorStickerPickerListFragment;->videoManager:Lcom/narvii/video/services/VideoManager;

    .line 28
    .line 29
    const-string p1, "giphySticker"

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    .line 36
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    check-cast p1, Lcom/narvii/media/giphy/GiphyStickerService;

    .line 39
    .line 40
    iput-object p1, p0, Lcom/narvii/video/EditorStickerPickerListFragment;->giphyStickerService:Lcom/narvii/media/giphy/GiphyStickerService;

    .line 41
    .line 42
    const-string p1, "config"

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 46
    move-result-object p1

    .line 47
    .line 48
    check-cast p1, Lcom/narvii/config/ConfigService;

    .line 49
    .line 50
    const-string v0, "giphyApiKey"

    .line 51
    .line 52
    const-string v1, "12ss5TcLvRjUze"

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, v0, v1}, Lcom/narvii/config/ConfigService;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 56
    move-result-object p1

    .line 57
    .line 58
    const-string v0, "getString(...)"

    .line 59
    .line 60
    .line 61
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    .line 63
    iput-object p1, p0, Lcom/narvii/video/EditorStickerPickerListFragment;->apiKey:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public final setCurrentSelectedSticker(Lcom/narvii/media/giphy/GiphyItem;)V
    .locals 0
    .param p1    # Lcom/narvii/media/giphy/GiphyItem;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/video/EditorStickerPickerListFragment;->selectedSticker:Lcom/narvii/media/giphy/GiphyItem;

    .line 3
    .line 4
    iget-object p1, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->adapter:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 10
    :cond_0
    return-void
.end method

.method public final setGiphyStickerSelectedCallback(Lcom/narvii/video/EditorStickerPickerTabFragment$GiphyStickerSelectedCallback;)V
    .locals 1
    .param p1    # Lcom/narvii/video/EditorStickerPickerTabFragment$GiphyStickerSelectedCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/video/EditorStickerPickerListFragment;->giphyStickerSelectedCallback:Lcom/narvii/video/EditorStickerPickerTabFragment$GiphyStickerSelectedCallback;

    return-void
.end method

.method public final setStickerPackId(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "packId"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/video/EditorStickerPickerListFragment;->stickerPackId:Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    invoke-static {v0, p1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 11
    move-result v0

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    return-void

    .line 15
    .line 16
    :cond_0
    iput-object p1, p0, Lcom/narvii/video/EditorStickerPickerListFragment;->stickerPackId:Ljava/lang/String;

    .line 17
    .line 18
    iget-object p1, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->adapter:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 19
    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->resetList()V

    .line 24
    :cond_1
    return-void
.end method
