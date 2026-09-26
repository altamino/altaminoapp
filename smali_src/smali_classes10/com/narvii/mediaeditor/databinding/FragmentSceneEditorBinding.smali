.class public final Lcom/narvii/mediaeditor/databinding/FragmentSceneEditorBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final clipFastSwitchingPanel:Lcom/narvii/video/widget/ClipFastSwitchingPanel;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final coverLayer:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final divider:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final emptyViewOptionAddVideo:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final opCrop:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final opMusic:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final opPip:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final opSfx:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final opSpeed:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final opSplit:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final opSticker:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final opText:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final opTrim:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final operationPanel:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final operationPanelForTemplate:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final optionAddVideo:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final pauseShadow:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final playerButton:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Lcom/github/mmin18/widget/FlexLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final sceneEmptyView:Landroid/widget/RelativeLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final sceneInvalidHint:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final topBarPlaceholder:Lcom/narvii/list/overlay/OverlayListPlaceholder;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final videoContainer:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final videoDuration:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final videoPlaybackTime:Landroid/widget/TextView;
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

.field public final videoViewPlayer:Lcom/narvii/video/widget/videoview/NVEditorPreviewVideoVIew;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/github/mmin18/widget/FlexLayout;Lcom/narvii/video/widget/ClipFastSwitchingPanel;Landroid/view/View;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Lcom/narvii/list/overlay/OverlayListPlaceholder;Landroid/widget/FrameLayout;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/narvii/widget/HorizontalRecyclerView;Lcom/narvii/video/widget/MediaTimeLineComponent;Lcom/narvii/video/widget/videoview/NVEditorPreviewVideoVIew;)V
    .locals 2
    .param p1    # Lcom/github/mmin18/widget/FlexLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/video/widget/ClipFastSwitchingPanel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p10    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p11    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p12    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p13    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p14    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p15    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p16    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p17    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p18    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p19    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p20    # Landroid/widget/RelativeLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p21    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p22    # Lcom/narvii/list/overlay/OverlayListPlaceholder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p23    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p24    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p25    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p26    # Lcom/narvii/widget/HorizontalRecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p27    # Lcom/narvii/video/widget/MediaTimeLineComponent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p28    # Lcom/narvii/video/widget/videoview/NVEditorPreviewVideoVIew;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/narvii/mediaeditor/databinding/FragmentSceneEditorBinding;->rootView:Lcom/github/mmin18/widget/FlexLayout;

    move-object v1, p2

    iput-object v1, v0, Lcom/narvii/mediaeditor/databinding/FragmentSceneEditorBinding;->clipFastSwitchingPanel:Lcom/narvii/video/widget/ClipFastSwitchingPanel;

    move-object v1, p3

    iput-object v1, v0, Lcom/narvii/mediaeditor/databinding/FragmentSceneEditorBinding;->coverLayer:Landroid/view/View;

    move-object v1, p4

    iput-object v1, v0, Lcom/narvii/mediaeditor/databinding/FragmentSceneEditorBinding;->divider:Landroid/view/View;

    move-object v1, p5

    iput-object v1, v0, Lcom/narvii/mediaeditor/databinding/FragmentSceneEditorBinding;->emptyViewOptionAddVideo:Landroid/widget/ImageView;

    move-object v1, p6

    iput-object v1, v0, Lcom/narvii/mediaeditor/databinding/FragmentSceneEditorBinding;->opCrop:Landroid/widget/LinearLayout;

    move-object v1, p7

    iput-object v1, v0, Lcom/narvii/mediaeditor/databinding/FragmentSceneEditorBinding;->opMusic:Landroid/widget/LinearLayout;

    move-object v1, p8

    iput-object v1, v0, Lcom/narvii/mediaeditor/databinding/FragmentSceneEditorBinding;->opPip:Landroid/widget/LinearLayout;

    move-object v1, p9

    iput-object v1, v0, Lcom/narvii/mediaeditor/databinding/FragmentSceneEditorBinding;->opSfx:Landroid/widget/LinearLayout;

    move-object v1, p10

    iput-object v1, v0, Lcom/narvii/mediaeditor/databinding/FragmentSceneEditorBinding;->opSpeed:Landroid/widget/LinearLayout;

    move-object v1, p11

    iput-object v1, v0, Lcom/narvii/mediaeditor/databinding/FragmentSceneEditorBinding;->opSplit:Landroid/widget/LinearLayout;

    move-object v1, p12

    iput-object v1, v0, Lcom/narvii/mediaeditor/databinding/FragmentSceneEditorBinding;->opSticker:Landroid/widget/LinearLayout;

    move-object v1, p13

    iput-object v1, v0, Lcom/narvii/mediaeditor/databinding/FragmentSceneEditorBinding;->opText:Landroid/widget/LinearLayout;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/narvii/mediaeditor/databinding/FragmentSceneEditorBinding;->opTrim:Landroid/widget/LinearLayout;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/narvii/mediaeditor/databinding/FragmentSceneEditorBinding;->operationPanel:Landroid/widget/LinearLayout;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/narvii/mediaeditor/databinding/FragmentSceneEditorBinding;->operationPanelForTemplate:Landroid/widget/LinearLayout;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/narvii/mediaeditor/databinding/FragmentSceneEditorBinding;->optionAddVideo:Landroid/widget/ImageView;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/narvii/mediaeditor/databinding/FragmentSceneEditorBinding;->pauseShadow:Landroid/view/View;

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/narvii/mediaeditor/databinding/FragmentSceneEditorBinding;->playerButton:Landroid/widget/ImageView;

    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/narvii/mediaeditor/databinding/FragmentSceneEditorBinding;->sceneEmptyView:Landroid/widget/RelativeLayout;

    move-object/from16 v1, p21

    iput-object v1, v0, Lcom/narvii/mediaeditor/databinding/FragmentSceneEditorBinding;->sceneInvalidHint:Landroid/widget/TextView;

    move-object/from16 v1, p22

    iput-object v1, v0, Lcom/narvii/mediaeditor/databinding/FragmentSceneEditorBinding;->topBarPlaceholder:Lcom/narvii/list/overlay/OverlayListPlaceholder;

    move-object/from16 v1, p23

    iput-object v1, v0, Lcom/narvii/mediaeditor/databinding/FragmentSceneEditorBinding;->videoContainer:Landroid/widget/FrameLayout;

    move-object/from16 v1, p24

    iput-object v1, v0, Lcom/narvii/mediaeditor/databinding/FragmentSceneEditorBinding;->videoDuration:Landroid/widget/TextView;

    move-object/from16 v1, p25

    iput-object v1, v0, Lcom/narvii/mediaeditor/databinding/FragmentSceneEditorBinding;->videoPlaybackTime:Landroid/widget/TextView;

    move-object/from16 v1, p26

    iput-object v1, v0, Lcom/narvii/mediaeditor/databinding/FragmentSceneEditorBinding;->videoTimeLine:Lcom/narvii/widget/HorizontalRecyclerView;

    move-object/from16 v1, p27

    iput-object v1, v0, Lcom/narvii/mediaeditor/databinding/FragmentSceneEditorBinding;->videoTimeLineComponent:Lcom/narvii/video/widget/MediaTimeLineComponent;

    move-object/from16 v1, p28

    iput-object v1, v0, Lcom/narvii/mediaeditor/databinding/FragmentSceneEditorBinding;->videoViewPlayer:Lcom/narvii/video/widget/videoview/NVEditorPreviewVideoVIew;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/narvii/mediaeditor/databinding/FragmentSceneEditorBinding;
    .locals 32
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
    sget v1, Lcom/narvii/mediaeditor/R$id;->clip_fast_switching_panel:I

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
    check-cast v5, Lcom/narvii/video/widget/ClipFastSwitchingPanel;

    .line 12
    .line 13
    if-eqz v5, :cond_0

    .line 14
    .line 15
    sget v1, Lcom/narvii/mediaeditor/R$id;->cover_layer:I

    .line 16
    .line 17
    .line 18
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 19
    move-result-object v6

    .line 20
    .line 21
    if-eqz v6, :cond_0

    .line 22
    .line 23
    sget v1, Lcom/narvii/mediaeditor/R$id;->divider:I

    .line 24
    .line 25
    .line 26
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 27
    move-result-object v7

    .line 28
    .line 29
    if-eqz v7, :cond_0

    .line 30
    .line 31
    sget v1, Lcom/narvii/mediaeditor/R$id;->empty_view_option_add_video:I

    .line 32
    .line 33
    .line 34
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 35
    move-result-object v2

    .line 36
    move-object v8, v2

    .line 37
    .line 38
    check-cast v8, Landroid/widget/ImageView;

    .line 39
    .line 40
    if-eqz v8, :cond_0

    .line 41
    .line 42
    sget v1, Lcom/narvii/mediaeditor/R$id;->op_crop:I

    .line 43
    .line 44
    .line 45
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 46
    move-result-object v2

    .line 47
    move-object v9, v2

    .line 48
    .line 49
    check-cast v9, Landroid/widget/LinearLayout;

    .line 50
    .line 51
    if-eqz v9, :cond_0

    .line 52
    .line 53
    sget v1, Lcom/narvii/mediaeditor/R$id;->op_music:I

    .line 54
    .line 55
    .line 56
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 57
    move-result-object v2

    .line 58
    move-object v10, v2

    .line 59
    .line 60
    check-cast v10, Landroid/widget/LinearLayout;

    .line 61
    .line 62
    if-eqz v10, :cond_0

    .line 63
    .line 64
    sget v1, Lcom/narvii/mediaeditor/R$id;->op_pip:I

    .line 65
    .line 66
    .line 67
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 68
    move-result-object v2

    .line 69
    move-object v11, v2

    .line 70
    .line 71
    check-cast v11, Landroid/widget/LinearLayout;

    .line 72
    .line 73
    if-eqz v11, :cond_0

    .line 74
    .line 75
    sget v1, Lcom/narvii/mediaeditor/R$id;->op_sfx:I

    .line 76
    .line 77
    .line 78
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 79
    move-result-object v2

    .line 80
    move-object v12, v2

    .line 81
    .line 82
    check-cast v12, Landroid/widget/LinearLayout;

    .line 83
    .line 84
    if-eqz v12, :cond_0

    .line 85
    .line 86
    sget v1, Lcom/narvii/mediaeditor/R$id;->op_speed:I

    .line 87
    .line 88
    .line 89
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 90
    move-result-object v2

    .line 91
    move-object v13, v2

    .line 92
    .line 93
    check-cast v13, Landroid/widget/LinearLayout;

    .line 94
    .line 95
    if-eqz v13, :cond_0

    .line 96
    .line 97
    sget v1, Lcom/narvii/mediaeditor/R$id;->op_split:I

    .line 98
    .line 99
    .line 100
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 101
    move-result-object v2

    .line 102
    move-object v14, v2

    .line 103
    .line 104
    check-cast v14, Landroid/widget/LinearLayout;

    .line 105
    .line 106
    if-eqz v14, :cond_0

    .line 107
    .line 108
    sget v1, Lcom/narvii/mediaeditor/R$id;->op_sticker:I

    .line 109
    .line 110
    .line 111
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 112
    move-result-object v2

    .line 113
    move-object v15, v2

    .line 114
    .line 115
    check-cast v15, Landroid/widget/LinearLayout;

    .line 116
    .line 117
    if-eqz v15, :cond_0

    .line 118
    .line 119
    sget v1, Lcom/narvii/mediaeditor/R$id;->op_text:I

    .line 120
    .line 121
    .line 122
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 123
    move-result-object v2

    .line 124
    .line 125
    move-object/from16 v16, v2

    .line 126
    .line 127
    check-cast v16, Landroid/widget/LinearLayout;

    .line 128
    .line 129
    if-eqz v16, :cond_0

    .line 130
    .line 131
    sget v1, Lcom/narvii/mediaeditor/R$id;->op_trim:I

    .line 132
    .line 133
    .line 134
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 135
    move-result-object v2

    .line 136
    .line 137
    move-object/from16 v17, v2

    .line 138
    .line 139
    check-cast v17, Landroid/widget/LinearLayout;

    .line 140
    .line 141
    if-eqz v17, :cond_0

    .line 142
    .line 143
    sget v1, Lcom/narvii/mediaeditor/R$id;->operation_panel:I

    .line 144
    .line 145
    .line 146
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 147
    move-result-object v2

    .line 148
    .line 149
    move-object/from16 v18, v2

    .line 150
    .line 151
    check-cast v18, Landroid/widget/LinearLayout;

    .line 152
    .line 153
    if-eqz v18, :cond_0

    .line 154
    .line 155
    sget v1, Lcom/narvii/mediaeditor/R$id;->operation_panel_for_template:I

    .line 156
    .line 157
    .line 158
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 159
    move-result-object v2

    .line 160
    .line 161
    move-object/from16 v19, v2

    .line 162
    .line 163
    check-cast v19, Landroid/widget/LinearLayout;

    .line 164
    .line 165
    if-eqz v19, :cond_0

    .line 166
    .line 167
    sget v1, Lcom/narvii/mediaeditor/R$id;->option_add_video:I

    .line 168
    .line 169
    .line 170
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 171
    move-result-object v2

    .line 172
    .line 173
    move-object/from16 v20, v2

    .line 174
    .line 175
    check-cast v20, Landroid/widget/ImageView;

    .line 176
    .line 177
    if-eqz v20, :cond_0

    .line 178
    .line 179
    sget v1, Lcom/narvii/mediaeditor/R$id;->pause_shadow:I

    .line 180
    .line 181
    .line 182
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 183
    move-result-object v21

    .line 184
    .line 185
    if-eqz v21, :cond_0

    .line 186
    .line 187
    sget v1, Lcom/narvii/mediaeditor/R$id;->player_button:I

    .line 188
    .line 189
    .line 190
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 191
    move-result-object v2

    .line 192
    .line 193
    move-object/from16 v22, v2

    .line 194
    .line 195
    check-cast v22, Landroid/widget/ImageView;

    .line 196
    .line 197
    if-eqz v22, :cond_0

    .line 198
    .line 199
    sget v1, Lcom/narvii/mediaeditor/R$id;->scene_empty_view:I

    .line 200
    .line 201
    .line 202
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 203
    move-result-object v2

    .line 204
    .line 205
    move-object/from16 v23, v2

    .line 206
    .line 207
    check-cast v23, Landroid/widget/RelativeLayout;

    .line 208
    .line 209
    if-eqz v23, :cond_0

    .line 210
    .line 211
    sget v1, Lcom/narvii/mediaeditor/R$id;->scene_invalid_hint:I

    .line 212
    .line 213
    .line 214
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 215
    move-result-object v2

    .line 216
    .line 217
    move-object/from16 v24, v2

    .line 218
    .line 219
    check-cast v24, Landroid/widget/TextView;

    .line 220
    .line 221
    if-eqz v24, :cond_0

    .line 222
    .line 223
    sget v1, Lcom/narvii/mediaeditor/R$id;->top_bar_placeholder:I

    .line 224
    .line 225
    .line 226
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 227
    move-result-object v2

    .line 228
    .line 229
    move-object/from16 v25, v2

    .line 230
    .line 231
    check-cast v25, Lcom/narvii/list/overlay/OverlayListPlaceholder;

    .line 232
    .line 233
    if-eqz v25, :cond_0

    .line 234
    .line 235
    sget v1, Lcom/narvii/mediaeditor/R$id;->video_container:I

    .line 236
    .line 237
    .line 238
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 239
    move-result-object v2

    .line 240
    .line 241
    move-object/from16 v26, v2

    .line 242
    .line 243
    check-cast v26, Landroid/widget/FrameLayout;

    .line 244
    .line 245
    if-eqz v26, :cond_0

    .line 246
    .line 247
    sget v1, Lcom/narvii/mediaeditor/R$id;->video_duration:I

    .line 248
    .line 249
    .line 250
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 251
    move-result-object v2

    .line 252
    .line 253
    move-object/from16 v27, v2

    .line 254
    .line 255
    check-cast v27, Landroid/widget/TextView;

    .line 256
    .line 257
    if-eqz v27, :cond_0

    .line 258
    .line 259
    sget v1, Lcom/narvii/mediaeditor/R$id;->video_playback_time:I

    .line 260
    .line 261
    .line 262
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 263
    move-result-object v2

    .line 264
    .line 265
    move-object/from16 v28, v2

    .line 266
    .line 267
    check-cast v28, Landroid/widget/TextView;

    .line 268
    .line 269
    if-eqz v28, :cond_0

    .line 270
    .line 271
    sget v1, Lcom/narvii/mediaeditor/R$id;->video_time_line:I

    .line 272
    .line 273
    .line 274
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 275
    move-result-object v2

    .line 276
    .line 277
    move-object/from16 v29, v2

    .line 278
    .line 279
    check-cast v29, Lcom/narvii/widget/HorizontalRecyclerView;

    .line 280
    .line 281
    if-eqz v29, :cond_0

    .line 282
    .line 283
    sget v1, Lcom/narvii/mediaeditor/R$id;->video_time_line_component:I

    .line 284
    .line 285
    .line 286
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 287
    move-result-object v2

    .line 288
    .line 289
    move-object/from16 v30, v2

    .line 290
    .line 291
    check-cast v30, Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 292
    .line 293
    if-eqz v30, :cond_0

    .line 294
    .line 295
    sget v1, Lcom/narvii/mediaeditor/R$id;->video_view_player:I

    .line 296
    .line 297
    .line 298
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 299
    move-result-object v2

    .line 300
    .line 301
    move-object/from16 v31, v2

    .line 302
    .line 303
    check-cast v31, Lcom/narvii/video/widget/videoview/NVEditorPreviewVideoVIew;

    .line 304
    .line 305
    if-eqz v31, :cond_0

    .line 306
    .line 307
    new-instance v1, Lcom/narvii/mediaeditor/databinding/FragmentSceneEditorBinding;

    .line 308
    move-object v3, v1

    .line 309
    move-object v4, v0

    .line 310
    .line 311
    check-cast v4, Lcom/github/mmin18/widget/FlexLayout;

    .line 312
    .line 313
    .line 314
    invoke-direct/range {v3 .. v31}, Lcom/narvii/mediaeditor/databinding/FragmentSceneEditorBinding;-><init>(Lcom/github/mmin18/widget/FlexLayout;Lcom/narvii/video/widget/ClipFastSwitchingPanel;Landroid/view/View;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Lcom/narvii/list/overlay/OverlayListPlaceholder;Landroid/widget/FrameLayout;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/narvii/widget/HorizontalRecyclerView;Lcom/narvii/video/widget/MediaTimeLineComponent;Lcom/narvii/video/widget/videoview/NVEditorPreviewVideoVIew;)V

    .line 315
    return-object v1

    .line 316
    .line 317
    .line 318
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 319
    move-result-object v0

    .line 320
    .line 321
    .line 322
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 323
    move-result-object v0

    .line 324
    .line 325
    new-instance v1, Ljava/lang/NullPointerException;

    .line 326
    .line 327
    const-string v2, "Missing required view with ID: "

    .line 328
    .line 329
    .line 330
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 331
    move-result-object v0

    .line 332
    .line 333
    .line 334
    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 335
    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/narvii/mediaeditor/databinding/FragmentSceneEditorBinding;
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
    invoke-static {p0, v0, v1}, Lcom/narvii/mediaeditor/databinding/FragmentSceneEditorBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/mediaeditor/databinding/FragmentSceneEditorBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/mediaeditor/databinding/FragmentSceneEditorBinding;
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

    sget v0, Lcom/narvii/mediaeditor/R$layout;->fragment_scene_editor:I

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/narvii/mediaeditor/databinding/FragmentSceneEditorBinding;->bind(Landroid/view/View;)Lcom/narvii/mediaeditor/databinding/FragmentSceneEditorBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/narvii/mediaeditor/databinding/FragmentSceneEditorBinding;->getRoot()Lcom/github/mmin18/widget/FlexLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Lcom/github/mmin18/widget/FlexLayout;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/narvii/mediaeditor/databinding/FragmentSceneEditorBinding;->rootView:Lcom/github/mmin18/widget/FlexLayout;

    return-object v0
.end method
