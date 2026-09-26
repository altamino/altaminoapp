.class public final Lcom/narvii/amino/databinding/SharedPhotoDetailLayoutBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final addComment:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final albumList:Lcom/narvii/widget/NVListView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final commentBtn:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final commentList:Lcom/narvii/widget/NVListView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final datetime:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final detailLayout:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final disabledBar:Lcom/narvii/amino/databinding/DetailDisabledBarBinding;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final image:Lcom/narvii/sharedfolder/SharedPhotoTouchImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final imageLayout:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final imageLoading:Landroid/widget/ProgressBar;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final nickname:Lcom/narvii/widget/NicknameView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final overlayPlaceholder:Lcom/narvii/list/overlay/OverlayListPlaceholder;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final root:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final title:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final touchArea:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final userLayout:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final videoView:Lcom/narvii/nvplayerview/NVVideoView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final voteBtn:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final voteCount:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final voteIcon:Lcom/narvii/widget/VoteIcon;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final voteProgress:Lcom/narvii/widget/SpinningView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/TextView;Lcom/narvii/widget/NVListView;Landroid/widget/LinearLayout;Lcom/narvii/widget/NVListView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Lcom/narvii/amino/databinding/DetailDisabledBarBinding;Lcom/narvii/sharedfolder/SharedPhotoTouchImageView;Landroid/widget/FrameLayout;Landroid/widget/ProgressBar;Lcom/narvii/widget/NicknameView;Lcom/narvii/list/overlay/OverlayListPlaceholder;Landroid/widget/FrameLayout;Landroid/widget/TextView;Landroid/widget/FrameLayout;Landroid/widget/LinearLayout;Lcom/narvii/nvplayerview/NVVideoView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Lcom/narvii/widget/VoteIcon;Lcom/narvii/widget/SpinningView;)V
    .locals 2
    .param p1    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/narvii/widget/NVListView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/narvii/widget/NVListView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Lcom/narvii/amino/databinding/DetailDisabledBarBinding;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Lcom/narvii/sharedfolder/SharedPhotoTouchImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p10    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p11    # Landroid/widget/ProgressBar;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p12    # Lcom/narvii/widget/NicknameView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p13    # Lcom/narvii/list/overlay/OverlayListPlaceholder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p14    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p15    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p16    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p17    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p18    # Lcom/narvii/nvplayerview/NVVideoView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p19    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p20    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p21    # Lcom/narvii/widget/VoteIcon;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p22    # Lcom/narvii/widget/SpinningView;
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
    iput-object v1, v0, Lcom/narvii/amino/databinding/SharedPhotoDetailLayoutBinding;->rootView:Landroid/widget/LinearLayout;

    .line 8
    move-object v1, p2

    .line 9
    .line 10
    iput-object v1, v0, Lcom/narvii/amino/databinding/SharedPhotoDetailLayoutBinding;->addComment:Landroid/widget/TextView;

    .line 11
    move-object v1, p3

    .line 12
    .line 13
    iput-object v1, v0, Lcom/narvii/amino/databinding/SharedPhotoDetailLayoutBinding;->albumList:Lcom/narvii/widget/NVListView;

    .line 14
    move-object v1, p4

    .line 15
    .line 16
    iput-object v1, v0, Lcom/narvii/amino/databinding/SharedPhotoDetailLayoutBinding;->commentBtn:Landroid/widget/LinearLayout;

    .line 17
    move-object v1, p5

    .line 18
    .line 19
    iput-object v1, v0, Lcom/narvii/amino/databinding/SharedPhotoDetailLayoutBinding;->commentList:Lcom/narvii/widget/NVListView;

    .line 20
    move-object v1, p6

    .line 21
    .line 22
    iput-object v1, v0, Lcom/narvii/amino/databinding/SharedPhotoDetailLayoutBinding;->datetime:Landroid/widget/TextView;

    .line 23
    move-object v1, p7

    .line 24
    .line 25
    iput-object v1, v0, Lcom/narvii/amino/databinding/SharedPhotoDetailLayoutBinding;->detailLayout:Landroid/widget/LinearLayout;

    .line 26
    move-object v1, p8

    .line 27
    .line 28
    iput-object v1, v0, Lcom/narvii/amino/databinding/SharedPhotoDetailLayoutBinding;->disabledBar:Lcom/narvii/amino/databinding/DetailDisabledBarBinding;

    .line 29
    move-object v1, p9

    .line 30
    .line 31
    iput-object v1, v0, Lcom/narvii/amino/databinding/SharedPhotoDetailLayoutBinding;->image:Lcom/narvii/sharedfolder/SharedPhotoTouchImageView;

    .line 32
    move-object v1, p10

    .line 33
    .line 34
    iput-object v1, v0, Lcom/narvii/amino/databinding/SharedPhotoDetailLayoutBinding;->imageLayout:Landroid/widget/FrameLayout;

    .line 35
    move-object v1, p11

    .line 36
    .line 37
    iput-object v1, v0, Lcom/narvii/amino/databinding/SharedPhotoDetailLayoutBinding;->imageLoading:Landroid/widget/ProgressBar;

    .line 38
    move-object v1, p12

    .line 39
    .line 40
    iput-object v1, v0, Lcom/narvii/amino/databinding/SharedPhotoDetailLayoutBinding;->nickname:Lcom/narvii/widget/NicknameView;

    .line 41
    move-object v1, p13

    .line 42
    .line 43
    iput-object v1, v0, Lcom/narvii/amino/databinding/SharedPhotoDetailLayoutBinding;->overlayPlaceholder:Lcom/narvii/list/overlay/OverlayListPlaceholder;

    .line 44
    .line 45
    move-object/from16 v1, p14

    .line 46
    .line 47
    iput-object v1, v0, Lcom/narvii/amino/databinding/SharedPhotoDetailLayoutBinding;->root:Landroid/widget/FrameLayout;

    .line 48
    .line 49
    move-object/from16 v1, p15

    .line 50
    .line 51
    iput-object v1, v0, Lcom/narvii/amino/databinding/SharedPhotoDetailLayoutBinding;->title:Landroid/widget/TextView;

    .line 52
    .line 53
    move-object/from16 v1, p16

    .line 54
    .line 55
    iput-object v1, v0, Lcom/narvii/amino/databinding/SharedPhotoDetailLayoutBinding;->touchArea:Landroid/widget/FrameLayout;

    .line 56
    .line 57
    move-object/from16 v1, p17

    .line 58
    .line 59
    iput-object v1, v0, Lcom/narvii/amino/databinding/SharedPhotoDetailLayoutBinding;->userLayout:Landroid/widget/LinearLayout;

    .line 60
    .line 61
    move-object/from16 v1, p18

    .line 62
    .line 63
    iput-object v1, v0, Lcom/narvii/amino/databinding/SharedPhotoDetailLayoutBinding;->videoView:Lcom/narvii/nvplayerview/NVVideoView;

    .line 64
    .line 65
    move-object/from16 v1, p19

    .line 66
    .line 67
    iput-object v1, v0, Lcom/narvii/amino/databinding/SharedPhotoDetailLayoutBinding;->voteBtn:Landroid/widget/LinearLayout;

    .line 68
    .line 69
    move-object/from16 v1, p20

    .line 70
    .line 71
    iput-object v1, v0, Lcom/narvii/amino/databinding/SharedPhotoDetailLayoutBinding;->voteCount:Landroid/widget/TextView;

    .line 72
    .line 73
    move-object/from16 v1, p21

    .line 74
    .line 75
    iput-object v1, v0, Lcom/narvii/amino/databinding/SharedPhotoDetailLayoutBinding;->voteIcon:Lcom/narvii/widget/VoteIcon;

    .line 76
    .line 77
    move-object/from16 v1, p22

    .line 78
    .line 79
    iput-object v1, v0, Lcom/narvii/amino/databinding/SharedPhotoDetailLayoutBinding;->voteProgress:Lcom/narvii/widget/SpinningView;

    .line 80
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/narvii/amino/databinding/SharedPhotoDetailLayoutBinding;
    .locals 26
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
    const v1, 0x7f0a0099

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
    check-cast v5, Landroid/widget/TextView;

    .line 13
    .line 14
    if-eqz v5, :cond_0

    .line 15
    .line 16
    .line 17
    const v1, 0x7f0a00f2

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
    check-cast v6, Lcom/narvii/widget/NVListView;

    .line 25
    .line 26
    if-eqz v6, :cond_0

    .line 27
    .line 28
    .line 29
    const v1, 0x7f0a0355

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
    check-cast v7, Landroid/widget/LinearLayout;

    .line 37
    .line 38
    if-eqz v7, :cond_0

    .line 39
    .line 40
    .line 41
    const v1, 0x7f0a035e

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
    check-cast v8, Lcom/narvii/widget/NVListView;

    .line 49
    .line 50
    if-eqz v8, :cond_0

    .line 51
    .line 52
    .line 53
    const v1, 0x7f0a0408

    .line 54
    .line 55
    .line 56
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 57
    move-result-object v2

    .line 58
    move-object v9, v2

    .line 59
    .line 60
    check-cast v9, Landroid/widget/TextView;

    .line 61
    .line 62
    if-eqz v9, :cond_0

    .line 63
    .line 64
    .line 65
    const v1, 0x7f0a0430

    .line 66
    .line 67
    .line 68
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 69
    move-result-object v2

    .line 70
    move-object v10, v2

    .line 71
    .line 72
    check-cast v10, Landroid/widget/LinearLayout;

    .line 73
    .line 74
    if-eqz v10, :cond_0

    .line 75
    .line 76
    .line 77
    const v1, 0x7f0a0443

    .line 78
    .line 79
    .line 80
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 81
    move-result-object v2

    .line 82
    .line 83
    if-eqz v2, :cond_0

    .line 84
    .line 85
    .line 86
    invoke-static {v2}, Lcom/narvii/amino/databinding/DetailDisabledBarBinding;->bind(Landroid/view/View;)Lcom/narvii/amino/databinding/DetailDisabledBarBinding;

    .line 87
    move-result-object v11

    .line 88
    .line 89
    .line 90
    const v1, 0x7f0a06eb

    .line 91
    .line 92
    .line 93
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 94
    move-result-object v2

    .line 95
    move-object v12, v2

    .line 96
    .line 97
    check-cast v12, Lcom/narvii/sharedfolder/SharedPhotoTouchImageView;

    .line 98
    .line 99
    if-eqz v12, :cond_0

    .line 100
    .line 101
    .line 102
    const v1, 0x7f0a0700

    .line 103
    .line 104
    .line 105
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 106
    move-result-object v2

    .line 107
    move-object v13, v2

    .line 108
    .line 109
    check-cast v13, Landroid/widget/FrameLayout;

    .line 110
    .line 111
    if-eqz v13, :cond_0

    .line 112
    .line 113
    .line 114
    const v1, 0x7f0a0705

    .line 115
    .line 116
    .line 117
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 118
    move-result-object v2

    .line 119
    move-object v14, v2

    .line 120
    .line 121
    check-cast v14, Landroid/widget/ProgressBar;

    .line 122
    .line 123
    if-eqz v14, :cond_0

    .line 124
    .line 125
    .line 126
    const v1, 0x7f0a09f9

    .line 127
    .line 128
    .line 129
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 130
    move-result-object v2

    .line 131
    move-object v15, v2

    .line 132
    .line 133
    check-cast v15, Lcom/narvii/widget/NicknameView;

    .line 134
    .line 135
    if-eqz v15, :cond_0

    .line 136
    .line 137
    .line 138
    const v1, 0x7f0a0ab4

    .line 139
    .line 140
    .line 141
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 142
    move-result-object v2

    .line 143
    .line 144
    move-object/from16 v16, v2

    .line 145
    .line 146
    check-cast v16, Lcom/narvii/list/overlay/OverlayListPlaceholder;

    .line 147
    .line 148
    if-eqz v16, :cond_0

    .line 149
    .line 150
    .line 151
    const v1, 0x7f0a0c4c

    .line 152
    .line 153
    .line 154
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 155
    move-result-object v2

    .line 156
    .line 157
    move-object/from16 v17, v2

    .line 158
    .line 159
    check-cast v17, Landroid/widget/FrameLayout;

    .line 160
    .line 161
    if-eqz v17, :cond_0

    .line 162
    .line 163
    .line 164
    const v1, 0x7f0a0e9e

    .line 165
    .line 166
    .line 167
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 168
    move-result-object v2

    .line 169
    .line 170
    move-object/from16 v18, v2

    .line 171
    .line 172
    check-cast v18, Landroid/widget/TextView;

    .line 173
    .line 174
    if-eqz v18, :cond_0

    .line 175
    .line 176
    .line 177
    const v1, 0x7f0a0ef3

    .line 178
    .line 179
    .line 180
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 181
    move-result-object v2

    .line 182
    .line 183
    move-object/from16 v19, v2

    .line 184
    .line 185
    check-cast v19, Landroid/widget/FrameLayout;

    .line 186
    .line 187
    if-eqz v19, :cond_0

    .line 188
    .line 189
    .line 190
    const v1, 0x7f0a0f4b

    .line 191
    .line 192
    .line 193
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 194
    move-result-object v2

    .line 195
    .line 196
    move-object/from16 v20, v2

    .line 197
    .line 198
    check-cast v20, Landroid/widget/LinearLayout;

    .line 199
    .line 200
    if-eqz v20, :cond_0

    .line 201
    .line 202
    .line 203
    const v1, 0x7f0a0fb4

    .line 204
    .line 205
    .line 206
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 207
    move-result-object v2

    .line 208
    .line 209
    move-object/from16 v21, v2

    .line 210
    .line 211
    check-cast v21, Lcom/narvii/nvplayerview/NVVideoView;

    .line 212
    .line 213
    if-eqz v21, :cond_0

    .line 214
    .line 215
    .line 216
    const v1, 0x7f0a0ffb

    .line 217
    .line 218
    .line 219
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 220
    move-result-object v2

    .line 221
    .line 222
    move-object/from16 v22, v2

    .line 223
    .line 224
    check-cast v22, Landroid/widget/LinearLayout;

    .line 225
    .line 226
    if-eqz v22, :cond_0

    .line 227
    .line 228
    .line 229
    const v1, 0x7f0a0ffd

    .line 230
    .line 231
    .line 232
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 233
    move-result-object v2

    .line 234
    .line 235
    move-object/from16 v23, v2

    .line 236
    .line 237
    check-cast v23, Landroid/widget/TextView;

    .line 238
    .line 239
    if-eqz v23, :cond_0

    .line 240
    .line 241
    .line 242
    const v1, 0x7f0a1002

    .line 243
    .line 244
    .line 245
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 246
    move-result-object v2

    .line 247
    .line 248
    move-object/from16 v24, v2

    .line 249
    .line 250
    check-cast v24, Lcom/narvii/widget/VoteIcon;

    .line 251
    .line 252
    if-eqz v24, :cond_0

    .line 253
    .line 254
    .line 255
    const v1, 0x7f0a1006

    .line 256
    .line 257
    .line 258
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 259
    move-result-object v2

    .line 260
    .line 261
    move-object/from16 v25, v2

    .line 262
    .line 263
    check-cast v25, Lcom/narvii/widget/SpinningView;

    .line 264
    .line 265
    if-eqz v25, :cond_0

    .line 266
    .line 267
    new-instance v1, Lcom/narvii/amino/databinding/SharedPhotoDetailLayoutBinding;

    .line 268
    move-object v3, v1

    .line 269
    move-object v4, v0

    .line 270
    .line 271
    check-cast v4, Landroid/widget/LinearLayout;

    .line 272
    .line 273
    .line 274
    invoke-direct/range {v3 .. v25}, Lcom/narvii/amino/databinding/SharedPhotoDetailLayoutBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/TextView;Lcom/narvii/widget/NVListView;Landroid/widget/LinearLayout;Lcom/narvii/widget/NVListView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Lcom/narvii/amino/databinding/DetailDisabledBarBinding;Lcom/narvii/sharedfolder/SharedPhotoTouchImageView;Landroid/widget/FrameLayout;Landroid/widget/ProgressBar;Lcom/narvii/widget/NicknameView;Lcom/narvii/list/overlay/OverlayListPlaceholder;Landroid/widget/FrameLayout;Landroid/widget/TextView;Landroid/widget/FrameLayout;Landroid/widget/LinearLayout;Lcom/narvii/nvplayerview/NVVideoView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Lcom/narvii/widget/VoteIcon;Lcom/narvii/widget/SpinningView;)V

    .line 275
    return-object v1

    .line 276
    .line 277
    .line 278
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 279
    move-result-object v0

    .line 280
    .line 281
    .line 282
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 283
    move-result-object v0

    .line 284
    .line 285
    new-instance v1, Ljava/lang/NullPointerException;

    .line 286
    .line 287
    const-string v2, "Missing required view with ID: "

    .line 288
    .line 289
    .line 290
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 291
    move-result-object v0

    .line 292
    .line 293
    .line 294
    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 295
    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/narvii/amino/databinding/SharedPhotoDetailLayoutBinding;
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
    invoke-static {p0, v0, v1}, Lcom/narvii/amino/databinding/SharedPhotoDetailLayoutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/amino/databinding/SharedPhotoDetailLayoutBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/amino/databinding/SharedPhotoDetailLayoutBinding;
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

    const v0, 0x7f0d06d4

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/narvii/amino/databinding/SharedPhotoDetailLayoutBinding;->bind(Landroid/view/View;)Lcom/narvii/amino/databinding/SharedPhotoDetailLayoutBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/narvii/amino/databinding/SharedPhotoDetailLayoutBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/narvii/amino/databinding/SharedPhotoDetailLayoutBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
