.class public final Lcom/narvii/mediaeditor/databinding/ScenesBackgroundMusicLayoutBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final balanceSeekBar:Lcom/narvii/scene/view/BalanceSeekBar;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final editSceneBGMLayout:Lcom/narvii/scene/view/EditSceneBGMLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final fadeInView:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final fadeOutView:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final optionsPanel:Lcom/narvii/scene/view/AudioOptionPanel;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final overlay:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final playerContainer:Lcom/narvii/scene/view/PlayerContainerLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final previewLayout:Lcom/narvii/scene/view/ScenePreviewLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final retrieveController:Lcom/narvii/video/widget/MediaRetrieveController;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final videoPlayButton:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final videoTimeLine:Lcom/narvii/widget/HorizontalRecyclerView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final videoTimeLineComponent:Lcom/narvii/video/widget/MediaTimeLineComponent;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Lcom/narvii/scene/view/BalanceSeekBar;Lcom/narvii/scene/view/EditSceneBGMLayout;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/narvii/scene/view/AudioOptionPanel;Landroid/widget/LinearLayout;Lcom/narvii/scene/view/PlayerContainerLayout;Lcom/narvii/scene/view/ScenePreviewLayout;Lcom/narvii/video/widget/MediaRetrieveController;Landroid/widget/ImageView;Lcom/narvii/widget/HorizontalRecyclerView;Lcom/narvii/video/widget/MediaTimeLineComponent;)V
    .locals 0
    .param p1    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/scene/view/BalanceSeekBar;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/narvii/scene/view/EditSceneBGMLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/narvii/scene/view/AudioOptionPanel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Lcom/narvii/scene/view/PlayerContainerLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Lcom/narvii/scene/view/ScenePreviewLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p10    # Lcom/narvii/video/widget/MediaRetrieveController;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p11    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p12    # Lcom/narvii/widget/HorizontalRecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p13    # Lcom/narvii/video/widget/MediaTimeLineComponent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/mediaeditor/databinding/ScenesBackgroundMusicLayoutBinding;->rootView:Landroid/widget/LinearLayout;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/narvii/mediaeditor/databinding/ScenesBackgroundMusicLayoutBinding;->balanceSeekBar:Lcom/narvii/scene/view/BalanceSeekBar;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/narvii/mediaeditor/databinding/ScenesBackgroundMusicLayoutBinding;->editSceneBGMLayout:Lcom/narvii/scene/view/EditSceneBGMLayout;

    .line 10
    .line 11
    iput-object p4, p0, Lcom/narvii/mediaeditor/databinding/ScenesBackgroundMusicLayoutBinding;->fadeInView:Landroid/widget/TextView;

    .line 12
    .line 13
    iput-object p5, p0, Lcom/narvii/mediaeditor/databinding/ScenesBackgroundMusicLayoutBinding;->fadeOutView:Landroid/widget/TextView;

    .line 14
    .line 15
    iput-object p6, p0, Lcom/narvii/mediaeditor/databinding/ScenesBackgroundMusicLayoutBinding;->optionsPanel:Lcom/narvii/scene/view/AudioOptionPanel;

    .line 16
    .line 17
    iput-object p7, p0, Lcom/narvii/mediaeditor/databinding/ScenesBackgroundMusicLayoutBinding;->overlay:Landroid/widget/LinearLayout;

    .line 18
    .line 19
    iput-object p8, p0, Lcom/narvii/mediaeditor/databinding/ScenesBackgroundMusicLayoutBinding;->playerContainer:Lcom/narvii/scene/view/PlayerContainerLayout;

    .line 20
    .line 21
    iput-object p9, p0, Lcom/narvii/mediaeditor/databinding/ScenesBackgroundMusicLayoutBinding;->previewLayout:Lcom/narvii/scene/view/ScenePreviewLayout;

    .line 22
    .line 23
    iput-object p10, p0, Lcom/narvii/mediaeditor/databinding/ScenesBackgroundMusicLayoutBinding;->retrieveController:Lcom/narvii/video/widget/MediaRetrieveController;

    .line 24
    .line 25
    iput-object p11, p0, Lcom/narvii/mediaeditor/databinding/ScenesBackgroundMusicLayoutBinding;->videoPlayButton:Landroid/widget/ImageView;

    .line 26
    .line 27
    iput-object p12, p0, Lcom/narvii/mediaeditor/databinding/ScenesBackgroundMusicLayoutBinding;->videoTimeLine:Lcom/narvii/widget/HorizontalRecyclerView;

    .line 28
    .line 29
    iput-object p13, p0, Lcom/narvii/mediaeditor/databinding/ScenesBackgroundMusicLayoutBinding;->videoTimeLineComponent:Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 30
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/narvii/mediaeditor/databinding/ScenesBackgroundMusicLayoutBinding;
    .locals 17
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    sget v1, Lcom/narvii/mediaeditor/R$id;->balance_seek_bar:I

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 8
    move-result-object v2

    .line 9
    move-object v5, v2

    .line 10
    .line 11
    check-cast v5, Lcom/narvii/scene/view/BalanceSeekBar;

    .line 12
    .line 13
    if-eqz v5, :cond_0

    .line 14
    .line 15
    sget v1, Lcom/narvii/mediaeditor/R$id;->edit_scene_BGM_Layout:I

    .line 16
    .line 17
    .line 18
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 19
    move-result-object v2

    .line 20
    move-object v6, v2

    .line 21
    .line 22
    check-cast v6, Lcom/narvii/scene/view/EditSceneBGMLayout;

    .line 23
    .line 24
    if-eqz v6, :cond_0

    .line 25
    .line 26
    sget v1, Lcom/narvii/mediaeditor/R$id;->fade_in_view:I

    .line 27
    .line 28
    .line 29
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 30
    move-result-object v2

    .line 31
    move-object v7, v2

    .line 32
    .line 33
    check-cast v7, Landroid/widget/TextView;

    .line 34
    .line 35
    if-eqz v7, :cond_0

    .line 36
    .line 37
    sget v1, Lcom/narvii/mediaeditor/R$id;->fade_out_view:I

    .line 38
    .line 39
    .line 40
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 41
    move-result-object v2

    .line 42
    move-object v8, v2

    .line 43
    .line 44
    check-cast v8, Landroid/widget/TextView;

    .line 45
    .line 46
    if-eqz v8, :cond_0

    .line 47
    .line 48
    sget v1, Lcom/narvii/mediaeditor/R$id;->options_panel:I

    .line 49
    .line 50
    .line 51
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 52
    move-result-object v2

    .line 53
    move-object v9, v2

    .line 54
    .line 55
    check-cast v9, Lcom/narvii/scene/view/AudioOptionPanel;

    .line 56
    .line 57
    if-eqz v9, :cond_0

    .line 58
    move-object v10, v0

    .line 59
    .line 60
    check-cast v10, Landroid/widget/LinearLayout;

    .line 61
    .line 62
    sget v1, Lcom/narvii/mediaeditor/R$id;->player_container:I

    .line 63
    .line 64
    .line 65
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 66
    move-result-object v2

    .line 67
    move-object v11, v2

    .line 68
    .line 69
    check-cast v11, Lcom/narvii/scene/view/PlayerContainerLayout;

    .line 70
    .line 71
    if-eqz v11, :cond_0

    .line 72
    .line 73
    sget v1, Lcom/narvii/mediaeditor/R$id;->preview_layout:I

    .line 74
    .line 75
    .line 76
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 77
    move-result-object v2

    .line 78
    move-object v12, v2

    .line 79
    .line 80
    check-cast v12, Lcom/narvii/scene/view/ScenePreviewLayout;

    .line 81
    .line 82
    if-eqz v12, :cond_0

    .line 83
    .line 84
    sget v1, Lcom/narvii/mediaeditor/R$id;->retrieve_controller:I

    .line 85
    .line 86
    .line 87
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 88
    move-result-object v2

    .line 89
    move-object v13, v2

    .line 90
    .line 91
    check-cast v13, Lcom/narvii/video/widget/MediaRetrieveController;

    .line 92
    .line 93
    if-eqz v13, :cond_0

    .line 94
    .line 95
    sget v1, Lcom/narvii/mediaeditor/R$id;->video_play_button:I

    .line 96
    .line 97
    .line 98
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 99
    move-result-object v2

    .line 100
    move-object v14, v2

    .line 101
    .line 102
    check-cast v14, Landroid/widget/ImageView;

    .line 103
    .line 104
    if-eqz v14, :cond_0

    .line 105
    .line 106
    sget v1, Lcom/narvii/mediaeditor/R$id;->video_time_line:I

    .line 107
    .line 108
    .line 109
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 110
    move-result-object v2

    .line 111
    move-object v15, v2

    .line 112
    .line 113
    check-cast v15, Lcom/narvii/widget/HorizontalRecyclerView;

    .line 114
    .line 115
    if-eqz v15, :cond_0

    .line 116
    .line 117
    sget v1, Lcom/narvii/mediaeditor/R$id;->video_time_line_component:I

    .line 118
    .line 119
    .line 120
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 121
    move-result-object v2

    .line 122
    .line 123
    move-object/from16 v16, v2

    .line 124
    .line 125
    check-cast v16, Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 126
    .line 127
    if-eqz v16, :cond_0

    .line 128
    .line 129
    new-instance v0, Lcom/narvii/mediaeditor/databinding/ScenesBackgroundMusicLayoutBinding;

    .line 130
    move-object v3, v0

    .line 131
    move-object v4, v10

    .line 132
    .line 133
    .line 134
    invoke-direct/range {v3 .. v16}, Lcom/narvii/mediaeditor/databinding/ScenesBackgroundMusicLayoutBinding;-><init>(Landroid/widget/LinearLayout;Lcom/narvii/scene/view/BalanceSeekBar;Lcom/narvii/scene/view/EditSceneBGMLayout;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/narvii/scene/view/AudioOptionPanel;Landroid/widget/LinearLayout;Lcom/narvii/scene/view/PlayerContainerLayout;Lcom/narvii/scene/view/ScenePreviewLayout;Lcom/narvii/video/widget/MediaRetrieveController;Landroid/widget/ImageView;Lcom/narvii/widget/HorizontalRecyclerView;Lcom/narvii/video/widget/MediaTimeLineComponent;)V

    .line 135
    return-object v0

    .line 136
    .line 137
    .line 138
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 139
    move-result-object v0

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 143
    move-result-object v0

    .line 144
    .line 145
    new-instance v1, Ljava/lang/NullPointerException;

    .line 146
    .line 147
    const-string v2, "Missing required view with ID: "

    .line 148
    .line 149
    .line 150
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 151
    move-result-object v0

    .line 152
    .line 153
    .line 154
    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 155
    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/narvii/mediaeditor/databinding/ScenesBackgroundMusicLayoutBinding;
    .locals 2
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lcom/narvii/mediaeditor/databinding/ScenesBackgroundMusicLayoutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/mediaeditor/databinding/ScenesBackgroundMusicLayoutBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/mediaeditor/databinding/ScenesBackgroundMusicLayoutBinding;
    .locals 2
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget v0, Lcom/narvii/mediaeditor/R$layout;->scenes_background_music_layout:I

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/narvii/mediaeditor/databinding/ScenesBackgroundMusicLayoutBinding;->bind(Landroid/view/View;)Lcom/narvii/mediaeditor/databinding/ScenesBackgroundMusicLayoutBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/narvii/mediaeditor/databinding/ScenesBackgroundMusicLayoutBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/narvii/mediaeditor/databinding/ScenesBackgroundMusicLayoutBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
