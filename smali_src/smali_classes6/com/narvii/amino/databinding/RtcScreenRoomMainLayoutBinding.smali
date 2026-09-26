.class public final Lcom/narvii/amino/databinding/RtcScreenRoomMainLayoutBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final activingContainer:Lcom/narvii/chat/video/layout/VVContentLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final channelOverlay:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final hostItemContainer:Lcom/narvii/widget/RoundFrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final liveUserContainer:Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final rtcScreenRoomLayout:Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final rtcScreenRoomScrollIntercept:Lcom/narvii/widget/ScrollInterceptFrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final srLoading:Lcom/narvii/widget/SpinningView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final videoPlayerView:Lcom/narvii/chat/screenroom/widgets/VideoPlayView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final videoWatchView:Lcom/narvii/chat/screenroom/widgets/VideoWatchView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final viewerOverlayLayout:Lcom/narvii/chat/screenroom/widgets/VideoWatchOverlayLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final viewerPlayStatus:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final viewerPlayStatusContainer:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final viewerThumbnail:Lcom/narvii/widget/NVImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final viewerVideoController:Lcom/narvii/chat/screenroom/widgets/SRVideoController;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final volumeController:Lcom/narvii/widget/VerticalSeekBar;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final volumeControllerWrapper:Lcom/narvii/widget/VerticalSeekBarWrapper;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final volumeSeekBarContainer:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;Lcom/narvii/chat/video/layout/VVContentLayout;Landroid/widget/FrameLayout;Lcom/narvii/widget/RoundFrameLayout;Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;Lcom/narvii/widget/ScrollInterceptFrameLayout;Lcom/narvii/widget/SpinningView;Lcom/narvii/chat/screenroom/widgets/VideoPlayView;Lcom/narvii/chat/screenroom/widgets/VideoWatchView;Lcom/narvii/chat/screenroom/widgets/VideoWatchOverlayLayout;Landroid/widget/TextView;Landroid/widget/LinearLayout;Lcom/narvii/widget/NVImageView;Lcom/narvii/chat/screenroom/widgets/SRVideoController;Lcom/narvii/widget/VerticalSeekBar;Lcom/narvii/widget/VerticalSeekBarWrapper;Landroid/widget/FrameLayout;)V
    .locals 2
    .param p1    # Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/chat/video/layout/VVContentLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/narvii/widget/RoundFrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Lcom/narvii/widget/ScrollInterceptFrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Lcom/narvii/widget/SpinningView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Lcom/narvii/chat/screenroom/widgets/VideoPlayView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p10    # Lcom/narvii/chat/screenroom/widgets/VideoWatchView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p11    # Lcom/narvii/chat/screenroom/widgets/VideoWatchOverlayLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p12    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p13    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p14    # Lcom/narvii/widget/NVImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p15    # Lcom/narvii/chat/screenroom/widgets/SRVideoController;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p16    # Lcom/narvii/widget/VerticalSeekBar;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p17    # Lcom/narvii/widget/VerticalSeekBarWrapper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p18    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    move-object v0, p0

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    move-object v1, p1

    .line 6
    .line 7
    iput-object v1, v0, Lcom/narvii/amino/databinding/RtcScreenRoomMainLayoutBinding;->rootView:Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;

    .line 8
    move-object v1, p2

    .line 9
    .line 10
    iput-object v1, v0, Lcom/narvii/amino/databinding/RtcScreenRoomMainLayoutBinding;->activingContainer:Lcom/narvii/chat/video/layout/VVContentLayout;

    .line 11
    move-object v1, p3

    .line 12
    .line 13
    iput-object v1, v0, Lcom/narvii/amino/databinding/RtcScreenRoomMainLayoutBinding;->channelOverlay:Landroid/widget/FrameLayout;

    .line 14
    move-object v1, p4

    .line 15
    .line 16
    iput-object v1, v0, Lcom/narvii/amino/databinding/RtcScreenRoomMainLayoutBinding;->hostItemContainer:Lcom/narvii/widget/RoundFrameLayout;

    .line 17
    move-object v1, p5

    .line 18
    .line 19
    iput-object v1, v0, Lcom/narvii/amino/databinding/RtcScreenRoomMainLayoutBinding;->liveUserContainer:Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;

    .line 20
    move-object v1, p6

    .line 21
    .line 22
    iput-object v1, v0, Lcom/narvii/amino/databinding/RtcScreenRoomMainLayoutBinding;->rtcScreenRoomLayout:Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;

    .line 23
    move-object v1, p7

    .line 24
    .line 25
    iput-object v1, v0, Lcom/narvii/amino/databinding/RtcScreenRoomMainLayoutBinding;->rtcScreenRoomScrollIntercept:Lcom/narvii/widget/ScrollInterceptFrameLayout;

    .line 26
    move-object v1, p8

    .line 27
    .line 28
    iput-object v1, v0, Lcom/narvii/amino/databinding/RtcScreenRoomMainLayoutBinding;->srLoading:Lcom/narvii/widget/SpinningView;

    .line 29
    move-object v1, p9

    .line 30
    .line 31
    iput-object v1, v0, Lcom/narvii/amino/databinding/RtcScreenRoomMainLayoutBinding;->videoPlayerView:Lcom/narvii/chat/screenroom/widgets/VideoPlayView;

    .line 32
    move-object v1, p10

    .line 33
    .line 34
    iput-object v1, v0, Lcom/narvii/amino/databinding/RtcScreenRoomMainLayoutBinding;->videoWatchView:Lcom/narvii/chat/screenroom/widgets/VideoWatchView;

    .line 35
    move-object v1, p11

    .line 36
    .line 37
    iput-object v1, v0, Lcom/narvii/amino/databinding/RtcScreenRoomMainLayoutBinding;->viewerOverlayLayout:Lcom/narvii/chat/screenroom/widgets/VideoWatchOverlayLayout;

    .line 38
    move-object v1, p12

    .line 39
    .line 40
    iput-object v1, v0, Lcom/narvii/amino/databinding/RtcScreenRoomMainLayoutBinding;->viewerPlayStatus:Landroid/widget/TextView;

    .line 41
    move-object v1, p13

    .line 42
    .line 43
    iput-object v1, v0, Lcom/narvii/amino/databinding/RtcScreenRoomMainLayoutBinding;->viewerPlayStatusContainer:Landroid/widget/LinearLayout;

    .line 44
    .line 45
    move-object/from16 v1, p14

    .line 46
    .line 47
    iput-object v1, v0, Lcom/narvii/amino/databinding/RtcScreenRoomMainLayoutBinding;->viewerThumbnail:Lcom/narvii/widget/NVImageView;

    .line 48
    .line 49
    move-object/from16 v1, p15

    .line 50
    .line 51
    iput-object v1, v0, Lcom/narvii/amino/databinding/RtcScreenRoomMainLayoutBinding;->viewerVideoController:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    .line 52
    .line 53
    move-object/from16 v1, p16

    .line 54
    .line 55
    iput-object v1, v0, Lcom/narvii/amino/databinding/RtcScreenRoomMainLayoutBinding;->volumeController:Lcom/narvii/widget/VerticalSeekBar;

    .line 56
    .line 57
    move-object/from16 v1, p17

    .line 58
    .line 59
    iput-object v1, v0, Lcom/narvii/amino/databinding/RtcScreenRoomMainLayoutBinding;->volumeControllerWrapper:Lcom/narvii/widget/VerticalSeekBarWrapper;

    .line 60
    .line 61
    move-object/from16 v1, p18

    .line 62
    .line 63
    iput-object v1, v0, Lcom/narvii/amino/databinding/RtcScreenRoomMainLayoutBinding;->volumeSeekBarContainer:Landroid/widget/FrameLayout;

    .line 64
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/narvii/amino/databinding/RtcScreenRoomMainLayoutBinding;
    .locals 22
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
    .line 5
    const v1, 0x7f0a008b

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 9
    move-result-object v2

    .line 10
    move-object v5, v2

    .line 11
    .line 12
    check-cast v5, Lcom/narvii/chat/video/layout/VVContentLayout;

    .line 13
    .line 14
    if-eqz v5, :cond_0

    .line 15
    .line 16
    .line 17
    const v1, 0x7f0a027e

    .line 18
    .line 19
    .line 20
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 21
    move-result-object v2

    .line 22
    move-object v6, v2

    .line 23
    .line 24
    check-cast v6, Landroid/widget/FrameLayout;

    .line 25
    .line 26
    if-eqz v6, :cond_0

    .line 27
    .line 28
    .line 29
    const v1, 0x7f0a0680

    .line 30
    .line 31
    .line 32
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 33
    move-result-object v2

    .line 34
    move-object v7, v2

    .line 35
    .line 36
    check-cast v7, Lcom/narvii/widget/RoundFrameLayout;

    .line 37
    .line 38
    if-eqz v7, :cond_0

    .line 39
    .line 40
    .line 41
    const v1, 0x7f0a0814

    .line 42
    .line 43
    .line 44
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 45
    move-result-object v2

    .line 46
    move-object v8, v2

    .line 47
    .line 48
    check-cast v8, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;

    .line 49
    .line 50
    if-eqz v8, :cond_0

    .line 51
    move-object v9, v0

    .line 52
    .line 53
    check-cast v9, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;

    .line 54
    .line 55
    .line 56
    const v1, 0x7f0a0c5f

    .line 57
    .line 58
    .line 59
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 60
    move-result-object v2

    .line 61
    move-object v10, v2

    .line 62
    .line 63
    check-cast v10, Lcom/narvii/widget/ScrollInterceptFrameLayout;

    .line 64
    .line 65
    if-eqz v10, :cond_0

    .line 66
    .line 67
    .line 68
    const v1, 0x7f0a0d79

    .line 69
    .line 70
    .line 71
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 72
    move-result-object v2

    .line 73
    move-object v11, v2

    .line 74
    .line 75
    check-cast v11, Lcom/narvii/widget/SpinningView;

    .line 76
    .line 77
    if-eqz v11, :cond_0

    .line 78
    .line 79
    .line 80
    const v1, 0x7f0a0f96

    .line 81
    .line 82
    .line 83
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 84
    move-result-object v2

    .line 85
    move-object v12, v2

    .line 86
    .line 87
    check-cast v12, Lcom/narvii/chat/screenroom/widgets/VideoPlayView;

    .line 88
    .line 89
    if-eqz v12, :cond_0

    .line 90
    .line 91
    .line 92
    const v1, 0x7f0a0fb9

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
    check-cast v13, Lcom/narvii/chat/screenroom/widgets/VideoWatchView;

    .line 100
    .line 101
    if-eqz v13, :cond_0

    .line 102
    .line 103
    .line 104
    const v1, 0x7f0a0fcd

    .line 105
    .line 106
    .line 107
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 108
    move-result-object v2

    .line 109
    move-object v14, v2

    .line 110
    .line 111
    check-cast v14, Lcom/narvii/chat/screenroom/widgets/VideoWatchOverlayLayout;

    .line 112
    .line 113
    if-eqz v14, :cond_0

    .line 114
    .line 115
    .line 116
    const v1, 0x7f0a0fce

    .line 117
    .line 118
    .line 119
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 120
    move-result-object v2

    .line 121
    move-object v15, v2

    .line 122
    .line 123
    check-cast v15, Landroid/widget/TextView;

    .line 124
    .line 125
    if-eqz v15, :cond_0

    .line 126
    .line 127
    .line 128
    const v1, 0x7f0a0fcf

    .line 129
    .line 130
    .line 131
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 132
    move-result-object v2

    .line 133
    .line 134
    move-object/from16 v16, v2

    .line 135
    .line 136
    check-cast v16, Landroid/widget/LinearLayout;

    .line 137
    .line 138
    if-eqz v16, :cond_0

    .line 139
    .line 140
    .line 141
    const v1, 0x7f0a0fd1

    .line 142
    .line 143
    .line 144
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 145
    move-result-object v2

    .line 146
    .line 147
    move-object/from16 v17, v2

    .line 148
    .line 149
    check-cast v17, Lcom/narvii/widget/NVImageView;

    .line 150
    .line 151
    if-eqz v17, :cond_0

    .line 152
    .line 153
    .line 154
    const v1, 0x7f0a0fd2

    .line 155
    .line 156
    .line 157
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 158
    move-result-object v2

    .line 159
    .line 160
    move-object/from16 v18, v2

    .line 161
    .line 162
    check-cast v18, Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    .line 163
    .line 164
    if-eqz v18, :cond_0

    .line 165
    .line 166
    .line 167
    const v1, 0x7f0a0fe7

    .line 168
    .line 169
    .line 170
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 171
    move-result-object v2

    .line 172
    .line 173
    move-object/from16 v19, v2

    .line 174
    .line 175
    check-cast v19, Lcom/narvii/widget/VerticalSeekBar;

    .line 176
    .line 177
    if-eqz v19, :cond_0

    .line 178
    .line 179
    .line 180
    const v1, 0x7f0a0fe9

    .line 181
    .line 182
    .line 183
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 184
    move-result-object v2

    .line 185
    .line 186
    move-object/from16 v20, v2

    .line 187
    .line 188
    check-cast v20, Lcom/narvii/widget/VerticalSeekBarWrapper;

    .line 189
    .line 190
    if-eqz v20, :cond_0

    .line 191
    .line 192
    .line 193
    const v1, 0x7f0a0ff2

    .line 194
    .line 195
    .line 196
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 197
    move-result-object v2

    .line 198
    .line 199
    move-object/from16 v21, v2

    .line 200
    .line 201
    check-cast v21, Landroid/widget/FrameLayout;

    .line 202
    .line 203
    if-eqz v21, :cond_0

    .line 204
    .line 205
    new-instance v0, Lcom/narvii/amino/databinding/RtcScreenRoomMainLayoutBinding;

    .line 206
    move-object v3, v0

    .line 207
    move-object v4, v9

    .line 208
    .line 209
    .line 210
    invoke-direct/range {v3 .. v21}, Lcom/narvii/amino/databinding/RtcScreenRoomMainLayoutBinding;-><init>(Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;Lcom/narvii/chat/video/layout/VVContentLayout;Landroid/widget/FrameLayout;Lcom/narvii/widget/RoundFrameLayout;Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;Lcom/narvii/widget/ScrollInterceptFrameLayout;Lcom/narvii/widget/SpinningView;Lcom/narvii/chat/screenroom/widgets/VideoPlayView;Lcom/narvii/chat/screenroom/widgets/VideoWatchView;Lcom/narvii/chat/screenroom/widgets/VideoWatchOverlayLayout;Landroid/widget/TextView;Landroid/widget/LinearLayout;Lcom/narvii/widget/NVImageView;Lcom/narvii/chat/screenroom/widgets/SRVideoController;Lcom/narvii/widget/VerticalSeekBar;Lcom/narvii/widget/VerticalSeekBarWrapper;Landroid/widget/FrameLayout;)V

    .line 211
    return-object v0

    .line 212
    .line 213
    .line 214
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 215
    move-result-object v0

    .line 216
    .line 217
    .line 218
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 219
    move-result-object v0

    .line 220
    .line 221
    new-instance v1, Ljava/lang/NullPointerException;

    .line 222
    .line 223
    const-string v2, "Missing required view with ID: "

    .line 224
    .line 225
    .line 226
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 227
    move-result-object v0

    .line 228
    .line 229
    .line 230
    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 231
    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/narvii/amino/databinding/RtcScreenRoomMainLayoutBinding;
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
    invoke-static {p0, v0, v1}, Lcom/narvii/amino/databinding/RtcScreenRoomMainLayoutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/amino/databinding/RtcScreenRoomMainLayoutBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/amino/databinding/RtcScreenRoomMainLayoutBinding;
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

    const v0, 0x7f0d06a9

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/narvii/amino/databinding/RtcScreenRoomMainLayoutBinding;->bind(Landroid/view/View;)Lcom/narvii/amino/databinding/RtcScreenRoomMainLayoutBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/narvii/amino/databinding/RtcScreenRoomMainLayoutBinding;->getRoot()Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/narvii/amino/databinding/RtcScreenRoomMainLayoutBinding;->rootView:Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;

    return-object v0
.end method
