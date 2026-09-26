.class final Lcom/narvii/video/EditorStickerPickerListFragment$GiphyItemHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/video/EditorStickerPickerListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GiphyItemHolder"
.end annotation


# instance fields
.field private final binding:Lcom/narvii/mediaeditor/databinding/ItemEditorStickerListItemBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic this$0:Lcom/narvii/video/EditorStickerPickerListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/video/EditorStickerPickerListFragment;Lcom/narvii/mediaeditor/databinding/ItemEditorStickerListItemBinding;)V
    .locals 1
    .param p1    # Lcom/narvii/video/EditorStickerPickerListFragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/mediaeditor/databinding/ItemEditorStickerListItemBinding;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "binding"

    .line 3
    .line 4
    .line 5
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iput-object p1, p0, Lcom/narvii/video/EditorStickerPickerListFragment$GiphyItemHolder;->this$0:Lcom/narvii/video/EditorStickerPickerListFragment;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2}, Lcom/narvii/mediaeditor/databinding/ItemEditorStickerListItemBinding;->getRoot()Landroid/widget/FrameLayout;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 15
    .line 16
    iput-object p2, p0, Lcom/narvii/video/EditorStickerPickerListFragment$GiphyItemHolder;->binding:Lcom/narvii/mediaeditor/databinding/ItemEditorStickerListItemBinding;

    .line 17
    return-void
.end method


# virtual methods
.method public final bindHolder(Lcom/narvii/media/giphy/GiphyItem;)V
    .locals 6
    .param p1    # Lcom/narvii/media/giphy/GiphyItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "data"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/video/EditorStickerPickerListFragment$GiphyItemHolder;->binding:Lcom/narvii/mediaeditor/databinding/ItemEditorStickerListItemBinding;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/narvii/mediaeditor/databinding/ItemEditorStickerListItemBinding;->thumbnail:Lcom/narvii/widget/NVImageView;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/narvii/media/giphy/GiphyItem;->thumbUrl()Ljava/lang/String;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 17
    .line 18
    new-instance v0, Lcom/narvii/model/Sticker;

    .line 19
    .line 20
    .line 21
    invoke-direct {v0}, Lcom/narvii/model/Sticker;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/narvii/media/giphy/GiphyItem;->id()Ljava/lang/String;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    iput-object v1, v0, Lcom/narvii/model/Sticker;->stickerId:Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/narvii/media/giphy/GiphyItem;->collectionId()Ljava/lang/String;

    .line 31
    move-result-object v1

    .line 32
    .line 33
    iput-object v1, v0, Lcom/narvii/model/Sticker;->stickerCollectionId:Ljava/lang/String;

    .line 34
    .line 35
    iget-object v1, p0, Lcom/narvii/video/EditorStickerPickerListFragment$GiphyItemHolder;->this$0:Lcom/narvii/video/EditorStickerPickerListFragment;

    .line 36
    .line 37
    .line 38
    invoke-static {v1}, Lcom/narvii/video/EditorStickerPickerListFragment;->access$getVideoManager$p(Lcom/narvii/video/EditorStickerPickerListFragment;)Lcom/narvii/video/services/VideoManager;

    .line 39
    move-result-object v1

    .line 40
    const/4 v2, 0x0

    .line 41
    .line 42
    if-nez v1, :cond_0

    .line 43
    .line 44
    .line 45
    const-string/jumbo v1, "videoManager"

    .line 46
    .line 47
    .line 48
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 49
    move-object v1, v2

    .line 50
    .line 51
    :cond_0
    iget-object v3, p0, Lcom/narvii/video/EditorStickerPickerListFragment$GiphyItemHolder;->this$0:Lcom/narvii/video/EditorStickerPickerListFragment;

    .line 52
    .line 53
    .line 54
    invoke-static {v3}, Lcom/narvii/video/EditorStickerPickerListFragment;->access$getGiphyStickerService$p(Lcom/narvii/video/EditorStickerPickerListFragment;)Lcom/narvii/media/giphy/GiphyStickerService;

    .line 55
    move-result-object v3

    .line 56
    .line 57
    const-string v4, "giphyStickerService"

    .line 58
    .line 59
    if-nez v3, :cond_1

    .line 60
    .line 61
    .line 62
    invoke-static {v4}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 63
    move-object v3, v2

    .line 64
    .line 65
    .line 66
    :cond_1
    invoke-virtual {v3, p1}, Lcom/narvii/media/giphy/GiphyStickerService;->getLocalPath(Lcom/narvii/media/giphy/GiphyItem;)Ljava/lang/String;

    .line 67
    move-result-object v3

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, v0, v3}, Lcom/narvii/video/services/VideoManager;->obtainInstalledStickerInfo(Lcom/narvii/model/Sticker;Ljava/lang/String;)Lcom/narvii/video/model/StickerInfoPack;

    .line 71
    move-result-object v0

    .line 72
    .line 73
    if-eqz v0, :cond_2

    .line 74
    const/4 v0, 0x3

    .line 75
    goto :goto_0

    .line 76
    .line 77
    .line 78
    :cond_2
    invoke-virtual {p1}, Lcom/narvii/media/giphy/GiphyItem;->stickerStatus()I

    .line 79
    move-result v0

    .line 80
    .line 81
    if-nez v0, :cond_3

    .line 82
    const/4 v0, 0x1

    .line 83
    goto :goto_0

    .line 84
    .line 85
    .line 86
    :cond_3
    invoke-virtual {p1}, Lcom/narvii/media/giphy/GiphyItem;->stickerStatus()I

    .line 87
    move-result v0

    .line 88
    .line 89
    :goto_0
    iput v0, p1, Lcom/narvii/media/giphy/GiphyItem;->stickerStatus:I

    .line 90
    .line 91
    iget-object v1, p0, Lcom/narvii/video/EditorStickerPickerListFragment$GiphyItemHolder;->binding:Lcom/narvii/mediaeditor/databinding/ItemEditorStickerListItemBinding;

    .line 92
    .line 93
    iget-object v1, v1, Lcom/narvii/mediaeditor/databinding/ItemEditorStickerListItemBinding;->stickerInstallFrame:Lcom/narvii/video/widget/EditorStickerInstallFrameView;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1}, Lcom/narvii/media/giphy/GiphyItem;->stickerStatus()I

    .line 97
    move-result v3

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1, v3}, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->setStickerStatus(I)V

    .line 101
    .line 102
    iget-object v1, p0, Lcom/narvii/video/EditorStickerPickerListFragment$GiphyItemHolder;->binding:Lcom/narvii/mediaeditor/databinding/ItemEditorStickerListItemBinding;

    .line 103
    .line 104
    iget-object v1, v1, Lcom/narvii/mediaeditor/databinding/ItemEditorStickerListItemBinding;->stickerInstallFrame:Lcom/narvii/video/widget/EditorStickerInstallFrameView;

    .line 105
    .line 106
    iget-object v3, p0, Lcom/narvii/video/EditorStickerPickerListFragment$GiphyItemHolder;->this$0:Lcom/narvii/video/EditorStickerPickerListFragment;

    .line 107
    .line 108
    .line 109
    invoke-static {v3}, Lcom/narvii/video/EditorStickerPickerListFragment;->access$getSelectedSticker$p(Lcom/narvii/video/EditorStickerPickerListFragment;)Lcom/narvii/media/giphy/GiphyItem;

    .line 110
    move-result-object v3

    .line 111
    .line 112
    if-eqz v3, :cond_4

    .line 113
    .line 114
    iget-object v3, v3, Lcom/narvii/media/giphy/GiphyItem;->id:Ljava/lang/String;

    .line 115
    goto :goto_1

    .line 116
    :cond_4
    move-object v3, v2

    .line 117
    .line 118
    :goto_1
    iget-object v5, p1, Lcom/narvii/media/giphy/GiphyItem;->id:Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    invoke-static {v3, v5}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 122
    move-result v3

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1, v3}, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->setStickerSelected(Z)V

    .line 126
    const/4 v1, 0x2

    .line 127
    .line 128
    if-ne v0, v1, :cond_6

    .line 129
    .line 130
    iget-object v0, p0, Lcom/narvii/video/EditorStickerPickerListFragment$GiphyItemHolder;->binding:Lcom/narvii/mediaeditor/databinding/ItemEditorStickerListItemBinding;

    .line 131
    .line 132
    iget-object v0, v0, Lcom/narvii/mediaeditor/databinding/ItemEditorStickerListItemBinding;->stickerInstallFrame:Lcom/narvii/video/widget/EditorStickerInstallFrameView;

    .line 133
    .line 134
    iget-object v1, p0, Lcom/narvii/video/EditorStickerPickerListFragment$GiphyItemHolder;->this$0:Lcom/narvii/video/EditorStickerPickerListFragment;

    .line 135
    .line 136
    .line 137
    invoke-static {v1}, Lcom/narvii/video/EditorStickerPickerListFragment;->access$getGiphyStickerService$p(Lcom/narvii/video/EditorStickerPickerListFragment;)Lcom/narvii/media/giphy/GiphyStickerService;

    .line 138
    move-result-object v1

    .line 139
    .line 140
    if-nez v1, :cond_5

    .line 141
    .line 142
    .line 143
    invoke-static {v4}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 144
    goto :goto_2

    .line 145
    :cond_5
    move-object v2, v1

    .line 146
    .line 147
    .line 148
    :goto_2
    invoke-virtual {v0, p1, v2}, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->bindGiphySticker(Lcom/narvii/media/giphy/GiphyItem;Lcom/narvii/media/giphy/GiphyStickerService;)V

    .line 149
    :cond_6
    return-void
.end method

.method public final onHolderRecycled()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/EditorStickerPickerListFragment$GiphyItemHolder;->binding:Lcom/narvii/mediaeditor/databinding/ItemEditorStickerListItemBinding;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/mediaeditor/databinding/ItemEditorStickerListItemBinding;->stickerInstallFrame:Lcom/narvii/video/widget/EditorStickerInstallFrameView;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->onViewRecycled()V

    .line 8
    return-void
.end method
