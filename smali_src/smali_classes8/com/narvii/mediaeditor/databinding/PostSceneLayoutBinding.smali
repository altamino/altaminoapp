.class public final Lcom/narvii/mediaeditor/databinding/PostSceneLayoutBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final backgroundMusicButton:Lcom/narvii/scene/view/NvStoryBackgroundMusicButton;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final createSceneLayout:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final emptyManageLayout:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final emptyPlaceholderView:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final errorPlaceholderView:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final flWarning:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final ivCreateScene:Lcom/narvii/widget/TintButton;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final ivWarning:Lcom/narvii/widget/TintButton;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final manageLayout:Landroid/widget/RelativeLayout;
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

.field public final playerView:Landroid/widget/RelativeLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final previewContainer:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final radiusLayout:Lcom/narvii/widget/RadiusLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final roundCornerCover:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final sceneRecyclerView:Lcom/narvii/scene/view/SceneRecyclerView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final timeSplit:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final tvAdvancedStory:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final tvManageScene:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final tvTimeCurrent:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final tvTimeTotal:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final videoPlayButton:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Lcom/narvii/scene/view/NvStoryBackgroundMusicButton;Landroid/widget/FrameLayout;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/FrameLayout;Lcom/narvii/widget/TintButton;Lcom/narvii/widget/TintButton;Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;Lcom/narvii/scene/view/PlayerContainerLayout;Landroid/widget/RelativeLayout;Landroid/widget/FrameLayout;Lcom/narvii/widget/RadiusLayout;Landroid/widget/ImageView;Lcom/narvii/scene/view/SceneRecyclerView;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 2
    .param p1    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/scene/view/NvStoryBackgroundMusicButton;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Lcom/narvii/widget/TintButton;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Lcom/narvii/widget/TintButton;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p10    # Landroid/widget/RelativeLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p11    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p12    # Lcom/narvii/scene/view/PlayerContainerLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p13    # Landroid/widget/RelativeLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p14    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p15    # Lcom/narvii/widget/RadiusLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p16    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p17    # Lcom/narvii/scene/view/SceneRecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p18    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p19    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p20    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p21    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p22    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p23    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/narvii/mediaeditor/databinding/PostSceneLayoutBinding;->rootView:Landroid/widget/LinearLayout;

    move-object v1, p2

    iput-object v1, v0, Lcom/narvii/mediaeditor/databinding/PostSceneLayoutBinding;->backgroundMusicButton:Lcom/narvii/scene/view/NvStoryBackgroundMusicButton;

    move-object v1, p3

    iput-object v1, v0, Lcom/narvii/mediaeditor/databinding/PostSceneLayoutBinding;->createSceneLayout:Landroid/widget/FrameLayout;

    move-object v1, p4

    iput-object v1, v0, Lcom/narvii/mediaeditor/databinding/PostSceneLayoutBinding;->emptyManageLayout:Landroid/widget/TextView;

    move-object v1, p5

    iput-object v1, v0, Lcom/narvii/mediaeditor/databinding/PostSceneLayoutBinding;->emptyPlaceholderView:Landroid/widget/LinearLayout;

    move-object v1, p6

    iput-object v1, v0, Lcom/narvii/mediaeditor/databinding/PostSceneLayoutBinding;->errorPlaceholderView:Landroid/widget/LinearLayout;

    move-object v1, p7

    iput-object v1, v0, Lcom/narvii/mediaeditor/databinding/PostSceneLayoutBinding;->flWarning:Landroid/widget/FrameLayout;

    move-object v1, p8

    iput-object v1, v0, Lcom/narvii/mediaeditor/databinding/PostSceneLayoutBinding;->ivCreateScene:Lcom/narvii/widget/TintButton;

    move-object v1, p9

    iput-object v1, v0, Lcom/narvii/mediaeditor/databinding/PostSceneLayoutBinding;->ivWarning:Lcom/narvii/widget/TintButton;

    move-object v1, p10

    iput-object v1, v0, Lcom/narvii/mediaeditor/databinding/PostSceneLayoutBinding;->manageLayout:Landroid/widget/RelativeLayout;

    move-object v1, p11

    iput-object v1, v0, Lcom/narvii/mediaeditor/databinding/PostSceneLayoutBinding;->overlay:Landroid/widget/LinearLayout;

    move-object v1, p12

    iput-object v1, v0, Lcom/narvii/mediaeditor/databinding/PostSceneLayoutBinding;->playerContainer:Lcom/narvii/scene/view/PlayerContainerLayout;

    move-object v1, p13

    iput-object v1, v0, Lcom/narvii/mediaeditor/databinding/PostSceneLayoutBinding;->playerView:Landroid/widget/RelativeLayout;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/narvii/mediaeditor/databinding/PostSceneLayoutBinding;->previewContainer:Landroid/widget/FrameLayout;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/narvii/mediaeditor/databinding/PostSceneLayoutBinding;->radiusLayout:Lcom/narvii/widget/RadiusLayout;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/narvii/mediaeditor/databinding/PostSceneLayoutBinding;->roundCornerCover:Landroid/widget/ImageView;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/narvii/mediaeditor/databinding/PostSceneLayoutBinding;->sceneRecyclerView:Lcom/narvii/scene/view/SceneRecyclerView;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/narvii/mediaeditor/databinding/PostSceneLayoutBinding;->timeSplit:Landroid/view/View;

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/narvii/mediaeditor/databinding/PostSceneLayoutBinding;->tvAdvancedStory:Landroid/widget/TextView;

    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/narvii/mediaeditor/databinding/PostSceneLayoutBinding;->tvManageScene:Landroid/widget/TextView;

    move-object/from16 v1, p21

    iput-object v1, v0, Lcom/narvii/mediaeditor/databinding/PostSceneLayoutBinding;->tvTimeCurrent:Landroid/widget/TextView;

    move-object/from16 v1, p22

    iput-object v1, v0, Lcom/narvii/mediaeditor/databinding/PostSceneLayoutBinding;->tvTimeTotal:Landroid/widget/TextView;

    move-object/from16 v1, p23

    iput-object v1, v0, Lcom/narvii/mediaeditor/databinding/PostSceneLayoutBinding;->videoPlayButton:Landroid/widget/ImageView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/narvii/mediaeditor/databinding/PostSceneLayoutBinding;
    .locals 27
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
    sget v1, Lcom/narvii/mediaeditor/R$id;->background_music_button:I

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
    check-cast v5, Lcom/narvii/scene/view/NvStoryBackgroundMusicButton;

    .line 12
    .line 13
    if-eqz v5, :cond_0

    .line 14
    .line 15
    sget v1, Lcom/narvii/mediaeditor/R$id;->create_scene_layout:I

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
    check-cast v6, Landroid/widget/FrameLayout;

    .line 23
    .line 24
    if-eqz v6, :cond_0

    .line 25
    .line 26
    sget v1, Lcom/narvii/mediaeditor/R$id;->empty_manage_layout:I

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
    sget v1, Lcom/narvii/mediaeditor/R$id;->empty_placeholder_view:I

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
    check-cast v8, Landroid/widget/LinearLayout;

    .line 45
    .line 46
    if-eqz v8, :cond_0

    .line 47
    .line 48
    sget v1, Lcom/narvii/mediaeditor/R$id;->error_placeholder_view:I

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
    check-cast v9, Landroid/widget/LinearLayout;

    .line 56
    .line 57
    if-eqz v9, :cond_0

    .line 58
    .line 59
    sget v1, Lcom/narvii/mediaeditor/R$id;->fl_warning:I

    .line 60
    .line 61
    .line 62
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 63
    move-result-object v2

    .line 64
    move-object v10, v2

    .line 65
    .line 66
    check-cast v10, Landroid/widget/FrameLayout;

    .line 67
    .line 68
    if-eqz v10, :cond_0

    .line 69
    .line 70
    sget v1, Lcom/narvii/mediaeditor/R$id;->iv_create_scene:I

    .line 71
    .line 72
    .line 73
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 74
    move-result-object v2

    .line 75
    move-object v11, v2

    .line 76
    .line 77
    check-cast v11, Lcom/narvii/widget/TintButton;

    .line 78
    .line 79
    if-eqz v11, :cond_0

    .line 80
    .line 81
    sget v1, Lcom/narvii/mediaeditor/R$id;->iv_warning:I

    .line 82
    .line 83
    .line 84
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 85
    move-result-object v2

    .line 86
    move-object v12, v2

    .line 87
    .line 88
    check-cast v12, Lcom/narvii/widget/TintButton;

    .line 89
    .line 90
    if-eqz v12, :cond_0

    .line 91
    .line 92
    sget v1, Lcom/narvii/mediaeditor/R$id;->manage_layout:I

    .line 93
    .line 94
    .line 95
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 96
    move-result-object v2

    .line 97
    move-object v13, v2

    .line 98
    .line 99
    check-cast v13, Landroid/widget/RelativeLayout;

    .line 100
    .line 101
    if-eqz v13, :cond_0

    .line 102
    move-object v14, v0

    .line 103
    .line 104
    check-cast v14, Landroid/widget/LinearLayout;

    .line 105
    .line 106
    sget v1, Lcom/narvii/mediaeditor/R$id;->player_container:I

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
    check-cast v15, Lcom/narvii/scene/view/PlayerContainerLayout;

    .line 114
    .line 115
    if-eqz v15, :cond_0

    .line 116
    .line 117
    sget v1, Lcom/narvii/mediaeditor/R$id;->player_view:I

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
    check-cast v16, Landroid/widget/RelativeLayout;

    .line 126
    .line 127
    if-eqz v16, :cond_0

    .line 128
    .line 129
    sget v1, Lcom/narvii/mediaeditor/R$id;->preview_container:I

    .line 130
    .line 131
    .line 132
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 133
    move-result-object v2

    .line 134
    .line 135
    move-object/from16 v17, v2

    .line 136
    .line 137
    check-cast v17, Landroid/widget/FrameLayout;

    .line 138
    .line 139
    if-eqz v17, :cond_0

    .line 140
    .line 141
    sget v1, Lcom/narvii/mediaeditor/R$id;->radius_layout:I

    .line 142
    .line 143
    .line 144
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 145
    move-result-object v2

    .line 146
    .line 147
    move-object/from16 v18, v2

    .line 148
    .line 149
    check-cast v18, Lcom/narvii/widget/RadiusLayout;

    .line 150
    .line 151
    if-eqz v18, :cond_0

    .line 152
    .line 153
    sget v1, Lcom/narvii/mediaeditor/R$id;->round_corner_cover:I

    .line 154
    .line 155
    .line 156
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 157
    move-result-object v2

    .line 158
    .line 159
    move-object/from16 v19, v2

    .line 160
    .line 161
    check-cast v19, Landroid/widget/ImageView;

    .line 162
    .line 163
    if-eqz v19, :cond_0

    .line 164
    .line 165
    sget v1, Lcom/narvii/mediaeditor/R$id;->scene_recycler_view:I

    .line 166
    .line 167
    .line 168
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 169
    move-result-object v2

    .line 170
    .line 171
    move-object/from16 v20, v2

    .line 172
    .line 173
    check-cast v20, Lcom/narvii/scene/view/SceneRecyclerView;

    .line 174
    .line 175
    if-eqz v20, :cond_0

    .line 176
    .line 177
    sget v1, Lcom/narvii/mediaeditor/R$id;->time_split:I

    .line 178
    .line 179
    .line 180
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 181
    move-result-object v21

    .line 182
    .line 183
    if-eqz v21, :cond_0

    .line 184
    .line 185
    sget v1, Lcom/narvii/mediaeditor/R$id;->tv_advanced_story:I

    .line 186
    .line 187
    .line 188
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 189
    move-result-object v2

    .line 190
    .line 191
    move-object/from16 v22, v2

    .line 192
    .line 193
    check-cast v22, Landroid/widget/TextView;

    .line 194
    .line 195
    if-eqz v22, :cond_0

    .line 196
    .line 197
    sget v1, Lcom/narvii/mediaeditor/R$id;->tv_manage_scene:I

    .line 198
    .line 199
    .line 200
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 201
    move-result-object v2

    .line 202
    .line 203
    move-object/from16 v23, v2

    .line 204
    .line 205
    check-cast v23, Landroid/widget/TextView;

    .line 206
    .line 207
    if-eqz v23, :cond_0

    .line 208
    .line 209
    sget v1, Lcom/narvii/mediaeditor/R$id;->tv_time_current:I

    .line 210
    .line 211
    .line 212
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 213
    move-result-object v2

    .line 214
    .line 215
    move-object/from16 v24, v2

    .line 216
    .line 217
    check-cast v24, Landroid/widget/TextView;

    .line 218
    .line 219
    if-eqz v24, :cond_0

    .line 220
    .line 221
    sget v1, Lcom/narvii/mediaeditor/R$id;->tv_time_total:I

    .line 222
    .line 223
    .line 224
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 225
    move-result-object v2

    .line 226
    .line 227
    move-object/from16 v25, v2

    .line 228
    .line 229
    check-cast v25, Landroid/widget/TextView;

    .line 230
    .line 231
    if-eqz v25, :cond_0

    .line 232
    .line 233
    sget v1, Lcom/narvii/mediaeditor/R$id;->video_play_button:I

    .line 234
    .line 235
    .line 236
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 237
    move-result-object v2

    .line 238
    .line 239
    move-object/from16 v26, v2

    .line 240
    .line 241
    check-cast v26, Landroid/widget/ImageView;

    .line 242
    .line 243
    if-eqz v26, :cond_0

    .line 244
    .line 245
    new-instance v0, Lcom/narvii/mediaeditor/databinding/PostSceneLayoutBinding;

    .line 246
    move-object v3, v0

    .line 247
    move-object v4, v14

    .line 248
    .line 249
    .line 250
    invoke-direct/range {v3 .. v26}, Lcom/narvii/mediaeditor/databinding/PostSceneLayoutBinding;-><init>(Landroid/widget/LinearLayout;Lcom/narvii/scene/view/NvStoryBackgroundMusicButton;Landroid/widget/FrameLayout;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/FrameLayout;Lcom/narvii/widget/TintButton;Lcom/narvii/widget/TintButton;Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;Lcom/narvii/scene/view/PlayerContainerLayout;Landroid/widget/RelativeLayout;Landroid/widget/FrameLayout;Lcom/narvii/widget/RadiusLayout;Landroid/widget/ImageView;Lcom/narvii/scene/view/SceneRecyclerView;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    .line 251
    return-object v0

    .line 252
    .line 253
    .line 254
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 255
    move-result-object v0

    .line 256
    .line 257
    .line 258
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 259
    move-result-object v0

    .line 260
    .line 261
    new-instance v1, Ljava/lang/NullPointerException;

    .line 262
    .line 263
    const-string v2, "Missing required view with ID: "

    .line 264
    .line 265
    .line 266
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 267
    move-result-object v0

    .line 268
    .line 269
    .line 270
    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 271
    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/narvii/mediaeditor/databinding/PostSceneLayoutBinding;
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
    invoke-static {p0, v0, v1}, Lcom/narvii/mediaeditor/databinding/PostSceneLayoutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/mediaeditor/databinding/PostSceneLayoutBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/mediaeditor/databinding/PostSceneLayoutBinding;
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

    sget v0, Lcom/narvii/mediaeditor/R$layout;->post_scene_layout:I

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/narvii/mediaeditor/databinding/PostSceneLayoutBinding;->bind(Landroid/view/View;)Lcom/narvii/mediaeditor/databinding/PostSceneLayoutBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/narvii/mediaeditor/databinding/PostSceneLayoutBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/narvii/mediaeditor/databinding/PostSceneLayoutBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
