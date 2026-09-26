.class final Lcom/narvii/video/EditorStickerPickerListFragment$Adapter;
.super Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;
.source "SourceFile"


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


# instance fields
.field final synthetic this$0:Lcom/narvii/video/EditorStickerPickerListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/video/EditorStickerPickerListFragment;Lcom/narvii/app/NVContext;)V
    .locals 1
    .param p1    # Lcom/narvii/video/EditorStickerPickerListFragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "ctx"

    .line 3
    .line 4
    .line 5
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iput-object p1, p0, Lcom/narvii/video/EditorStickerPickerListFragment$Adapter;->this$0:Lcom/narvii/video/EditorStickerPickerListFragment;

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p2}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 11
    return-void
.end method


# virtual methods
.method public createPageDataSource(Lcom/narvii/app/NVContext;)Lcom/narvii/paging/source/PageDataSource;
    .locals 3
    .param p1    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "context"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    sget-object v0, Lcom/narvii/paging/source/PagingConfiguration;->OFFSET_CONFIG:Lcom/narvii/paging/source/PagingConfiguration;

    .line 8
    .line 9
    const-string v1, "offset"

    .line 10
    .line 11
    iput-object v1, v0, Lcom/narvii/paging/source/PagingConfiguration;->offsetStartKey:Ljava/lang/String;

    .line 12
    .line 13
    const-string v1, "limit"

    .line 14
    .line 15
    iput-object v1, v0, Lcom/narvii/paging/source/PagingConfiguration;->offsetStepKey:Ljava/lang/String;

    .line 16
    .line 17
    const/16 v1, 0xc

    .line 18
    .line 19
    iput v1, v0, Lcom/narvii/paging/source/PagingConfiguration;->pageSize:I

    .line 20
    .line 21
    new-instance v1, Lcom/narvii/video/EditorStickerPickerListFragment$GiphyDataSource;

    .line 22
    .line 23
    iget-object v2, p0, Lcom/narvii/video/EditorStickerPickerListFragment$Adapter;->this$0:Lcom/narvii/video/EditorStickerPickerListFragment;

    .line 24
    .line 25
    .line 26
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    invoke-direct {v1, v2, p1, v0}, Lcom/narvii/video/EditorStickerPickerListFragment$GiphyDataSource;-><init>(Lcom/narvii/video/EditorStickerPickerListFragment;Lcom/narvii/app/NVContext;Lcom/narvii/paging/source/PagingConfiguration;)V

    .line 30
    return-object v1
.end method

.method protected onBindItemViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "holder"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    instance-of v0, p1, Lcom/narvii/video/EditorStickerPickerListFragment$GiphyItemHolder;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    check-cast p1, Lcom/narvii/video/EditorStickerPickerListFragment$GiphyItemHolder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p2}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->getItem(I)Lcom/narvii/model/NVObject;

    .line 15
    move-result-object p2

    .line 16
    .line 17
    const-string v0, "getItem(...)"

    .line 18
    .line 19
    .line 20
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    check-cast p2, Lcom/narvii/media/giphy/GiphyItem;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, p2}, Lcom/narvii/video/EditorStickerPickerListFragment$GiphyItemHolder;->bindHolder(Lcom/narvii/media/giphy/GiphyItem;)V

    .line 26
    :cond_0
    return-void
.end method

.method protected onCreateItemViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string p2, "parent"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance p2, Lcom/narvii/video/EditorStickerPickerListFragment$GiphyItemHolder;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/video/EditorStickerPickerListFragment$Adapter;->this$0:Lcom/narvii/video/EditorStickerPickerListFragment;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getContext()Landroid/content/Context;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    .line 16
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 17
    move-result-object v1

    .line 18
    const/4 v2, 0x0

    .line 19
    .line 20
    .line 21
    invoke-static {v1, p1, v2}, Lcom/narvii/mediaeditor/databinding/ItemEditorStickerListItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/mediaeditor/databinding/ItemEditorStickerListItemBinding;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    const-string v1, "inflate(...)"

    .line 25
    .line 26
    .line 27
    invoke-static {p1, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-direct {p2, v0, p1}, Lcom/narvii/video/EditorStickerPickerListFragment$GiphyItemHolder;-><init>(Lcom/narvii/video/EditorStickerPickerListFragment;Lcom/narvii/mediaeditor/databinding/ItemEditorStickerListItemBinding;)V

    .line 31
    return-object p2
.end method

.method public onItemClick(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 2
    .param p1    # Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "adapter"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "item"

    .line 8
    .line 9
    .line 10
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string v0, "cell"

    .line 13
    .line 14
    .line 15
    invoke-static {p4, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    instance-of v0, p3, Lcom/narvii/media/giphy/GiphyItem;

    .line 18
    .line 19
    if-eqz v0, :cond_7

    .line 20
    .line 21
    iget-object p1, p0, Lcom/narvii/video/EditorStickerPickerListFragment$Adapter;->this$0:Lcom/narvii/video/EditorStickerPickerListFragment;

    .line 22
    .line 23
    check-cast p3, Lcom/narvii/media/giphy/GiphyItem;

    .line 24
    .line 25
    .line 26
    invoke-static {p1, p3}, Lcom/narvii/video/EditorStickerPickerListFragment;->access$setSelectedSticker$p(Lcom/narvii/video/EditorStickerPickerListFragment;Lcom/narvii/media/giphy/GiphyItem;)V

    .line 27
    .line 28
    iget-object p1, p0, Lcom/narvii/video/EditorStickerPickerListFragment$Adapter;->this$0:Lcom/narvii/video/EditorStickerPickerListFragment;

    .line 29
    .line 30
    .line 31
    invoke-static {p1}, Lcom/narvii/video/EditorStickerPickerListFragment;->access$getGiphyStickerSelectedCallback$p(Lcom/narvii/video/EditorStickerPickerListFragment;)Lcom/narvii/video/EditorStickerPickerTabFragment$GiphyStickerSelectedCallback;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    if-eqz p1, :cond_0

    .line 35
    .line 36
    .line 37
    invoke-interface {p1, p3}, Lcom/narvii/video/EditorStickerPickerTabFragment$GiphyStickerSelectedCallback;->onGiphyStickerSelected(Lcom/narvii/media/giphy/GiphyItem;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    invoke-virtual {p3}, Lcom/narvii/media/giphy/GiphyItem;->stickerStatus()I

    .line 41
    move-result p1

    .line 42
    const/4 p2, 0x1

    .line 43
    .line 44
    const-string p5, "giphyStickerService"

    .line 45
    const/4 v0, 0x3

    .line 46
    const/4 v1, 0x0

    .line 47
    .line 48
    if-ne p1, v0, :cond_4

    .line 49
    .line 50
    new-instance p1, Lcom/narvii/model/Sticker;

    .line 51
    .line 52
    .line 53
    invoke-direct {p1}, Lcom/narvii/model/Sticker;-><init>()V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p3}, Lcom/narvii/media/giphy/GiphyItem;->id()Ljava/lang/String;

    .line 57
    move-result-object p4

    .line 58
    .line 59
    iput-object p4, p1, Lcom/narvii/model/Sticker;->stickerId:Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p3}, Lcom/narvii/media/giphy/GiphyItem;->collectionId()Ljava/lang/String;

    .line 63
    move-result-object p4

    .line 64
    .line 65
    iput-object p4, p1, Lcom/narvii/model/Sticker;->stickerCollectionId:Ljava/lang/String;

    .line 66
    .line 67
    iput v0, p1, Lcom/narvii/model/Sticker;->sourceType:I

    .line 68
    .line 69
    iget-object p4, p0, Lcom/narvii/video/EditorStickerPickerListFragment$Adapter;->this$0:Lcom/narvii/video/EditorStickerPickerListFragment;

    .line 70
    .line 71
    .line 72
    invoke-static {p4}, Lcom/narvii/video/EditorStickerPickerListFragment;->access$getVideoManager$p(Lcom/narvii/video/EditorStickerPickerListFragment;)Lcom/narvii/video/services/VideoManager;

    .line 73
    move-result-object p4

    .line 74
    .line 75
    if-nez p4, :cond_1

    .line 76
    .line 77
    .line 78
    const-string/jumbo p4, "videoManager"

    .line 79
    .line 80
    .line 81
    invoke-static {p4}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 82
    move-object p4, v1

    .line 83
    .line 84
    :cond_1
    iget-object v0, p0, Lcom/narvii/video/EditorStickerPickerListFragment$Adapter;->this$0:Lcom/narvii/video/EditorStickerPickerListFragment;

    .line 85
    .line 86
    .line 87
    invoke-static {v0}, Lcom/narvii/video/EditorStickerPickerListFragment;->access$getGiphyStickerService$p(Lcom/narvii/video/EditorStickerPickerListFragment;)Lcom/narvii/media/giphy/GiphyStickerService;

    .line 88
    move-result-object v0

    .line 89
    .line 90
    if-nez v0, :cond_2

    .line 91
    .line 92
    .line 93
    invoke-static {p5}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 94
    goto :goto_0

    .line 95
    :cond_2
    move-object v1, v0

    .line 96
    .line 97
    .line 98
    :goto_0
    invoke-virtual {v1, p3}, Lcom/narvii/media/giphy/GiphyStickerService;->getLocalPath(Lcom/narvii/media/giphy/GiphyItem;)Ljava/lang/String;

    .line 99
    move-result-object p3

    .line 100
    .line 101
    .line 102
    invoke-virtual {p4, p1, p3}, Lcom/narvii/video/services/VideoManager;->obtainInstalledStickerInfo(Lcom/narvii/model/Sticker;Ljava/lang/String;)Lcom/narvii/video/model/StickerInfoPack;

    .line 103
    move-result-object p1

    .line 104
    .line 105
    if-eqz p1, :cond_6

    .line 106
    .line 107
    iget-object p3, p0, Lcom/narvii/video/EditorStickerPickerListFragment$Adapter;->this$0:Lcom/narvii/video/EditorStickerPickerListFragment;

    .line 108
    .line 109
    .line 110
    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 111
    move-result-object p3

    .line 112
    .line 113
    instance-of p4, p3, Lcom/narvii/video/services/VideoManager$IInstallStickerCallback;

    .line 114
    .line 115
    if-eqz p4, :cond_3

    .line 116
    .line 117
    check-cast p3, Lcom/narvii/video/services/VideoManager$IInstallStickerCallback;

    .line 118
    .line 119
    .line 120
    invoke-interface {p3, p1}, Lcom/narvii/video/services/VideoManager$IInstallStickerCallback;->onStickerInstalled(Lcom/narvii/video/model/StickerInfoPack;)V

    .line 121
    :cond_3
    return p2

    .line 122
    .line 123
    .line 124
    :cond_4
    invoke-virtual {p3}, Lcom/narvii/media/giphy/GiphyItem;->stickerStatus()I

    .line 125
    move-result p1

    .line 126
    const/4 v0, 0x2

    .line 127
    .line 128
    if-eq p1, v0, :cond_6

    .line 129
    .line 130
    sget p1, Lcom/narvii/mediaeditor/R$id;->sticker_install_frame:I

    .line 131
    .line 132
    .line 133
    invoke-virtual {p4, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 134
    move-result-object p1

    .line 135
    .line 136
    check-cast p1, Lcom/narvii/video/widget/EditorStickerInstallFrameView;

    .line 137
    .line 138
    iget-object p4, p0, Lcom/narvii/video/EditorStickerPickerListFragment$Adapter;->this$0:Lcom/narvii/video/EditorStickerPickerListFragment;

    .line 139
    .line 140
    .line 141
    invoke-static {p4}, Lcom/narvii/video/EditorStickerPickerListFragment;->access$getGiphyStickerService$p(Lcom/narvii/video/EditorStickerPickerListFragment;)Lcom/narvii/media/giphy/GiphyStickerService;

    .line 142
    move-result-object p4

    .line 143
    .line 144
    if-nez p4, :cond_5

    .line 145
    .line 146
    .line 147
    invoke-static {p5}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 148
    goto :goto_1

    .line 149
    :cond_5
    move-object v1, p4

    .line 150
    .line 151
    .line 152
    :goto_1
    invoke-virtual {p1, p3, v1}, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->bindGiphySticker(Lcom/narvii/media/giphy/GiphyItem;Lcom/narvii/media/giphy/GiphyStickerService;)V

    .line 153
    :cond_6
    return p2

    .line 154
    .line 155
    .line 156
    :cond_7
    invoke-super/range {p0 .. p5}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->onItemClick(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 157
    move-result p1

    .line 158
    return p1
.end method

.method public onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "holder"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    instance-of v0, p1, Lcom/narvii/video/EditorStickerPickerListFragment$GiphyItemHolder;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    check-cast p1, Lcom/narvii/video/EditorStickerPickerListFragment$GiphyItemHolder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/narvii/video/EditorStickerPickerListFragment$GiphyItemHolder;->onHolderRecycled()V

    .line 15
    :cond_0
    return-void
.end method
