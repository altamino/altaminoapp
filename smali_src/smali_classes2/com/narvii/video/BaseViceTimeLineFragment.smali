.class public abstract Lcom/narvii/video/BaseViceTimeLineFragment;
.super Lcom/narvii/video/ScrollingTimeLineFragment;
.source "SourceFile"


# instance fields
.field private final clipListForViceTracks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/BaseClipInfoPack;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private inflater:Landroid/view/LayoutInflater;

.field private viceTimeLineInitialized:Z

.field protected viceTimeLinePanel:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/video/BaseViceTimeLineFragment;->clipListForViceTracks:Ljava/util/ArrayList;

    .line 11
    return-void
.end method

.method public static synthetic A(Lcom/narvii/video/BaseViceTimeLineFragment;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/video/BaseViceTimeLineFragment;->updateViceTimeLinePanel$lambda$2(Lcom/narvii/video/BaseViceTimeLineFragment;Z)V

    return-void
.end method

.method public static synthetic B(Lcom/narvii/video/BaseViceTimeLineFragment;ILandroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/video/BaseViceTimeLineFragment;->innerInitViceTimeLine$lambda$3(Lcom/narvii/video/BaseViceTimeLineFragment;ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic C(Lcom/narvii/video/BaseViceTimeLineFragment;IZ)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/video/BaseViceTimeLineFragment;->updateViceTimeLine$lambda$1(Lcom/narvii/video/BaseViceTimeLineFragment;IZ)V

    return-void
.end method

.method public static final synthetic access$getClipListForViceTracks$p(Lcom/narvii/video/BaseViceTimeLineFragment;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/video/BaseViceTimeLineFragment;->clipListForViceTracks:Ljava/util/ArrayList;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$innerInitViceTimeLine(Lcom/narvii/video/BaseViceTimeLineFragment;IIZII)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct/range {p0 .. p5}, Lcom/narvii/video/BaseViceTimeLineFragment;->innerInitViceTimeLine(IIZII)V

    .line 4
    return-void
.end method

.method private final innerInitViceTimeLine(IIZII)V
    .locals 28

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move/from16 v1, p1

    .line 5
    .line 6
    move/from16 v2, p5

    .line 7
    .line 8
    .line 9
    invoke-virtual/range {p0 .. p1}, Lcom/narvii/video/BaseViceTimeLineFragment;->getViewIndexOfTrackIndex(I)I

    .line 10
    move-result v3

    .line 11
    .line 12
    .line 13
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/video/BaseViceTimeLineFragment;->getViceTimeLinePanel()Landroid/widget/LinearLayout;

    .line 14
    move-result-object v4

    .line 15
    .line 16
    .line 17
    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 18
    move-result-object v4

    .line 19
    .line 20
    instance-of v5, v4, Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 21
    const/4 v6, 0x0

    .line 22
    .line 23
    if-eqz v5, :cond_0

    .line 24
    .line 25
    check-cast v4, Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move-object v4, v6

    .line 28
    .line 29
    :goto_0
    if-nez v4, :cond_1

    .line 30
    return-void

    .line 31
    .line 32
    :cond_1
    iget-object v5, v0, Lcom/narvii/video/BaseViceTimeLineFragment;->clipListForViceTracks:Ljava/util/ArrayList;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 36
    move-result-object v5

    .line 37
    .line 38
    const-string v7, "get(...)"

    .line 39
    .line 40
    .line 41
    invoke-static {v5, v7}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    check-cast v5, Lcom/narvii/video/model/BaseClipInfoPack;

    .line 44
    .line 45
    sget v7, Lcom/narvii/mediaeditor/R$id;->vice_time_line_wrapper:I

    .line 46
    .line 47
    .line 48
    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 49
    move-result-object v7

    .line 50
    move-object v13, v7

    .line 51
    .line 52
    check-cast v13, Lcom/narvii/video/widget/ViceTimeLineWrapperView;

    .line 53
    .line 54
    .line 55
    invoke-virtual/range {p0 .. p1}, Lcom/narvii/video/BaseViceTimeLineFragment;->getViceTrackDataType(I)I

    .line 56
    move-result v8

    .line 57
    .line 58
    const/16 v7, 0x68

    .line 59
    .line 60
    if-ne v8, v7, :cond_2

    .line 61
    .line 62
    .line 63
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->getFrameRetrieverManager()Lcom/narvii/video/services/FrameRetrieverManager;

    .line 64
    move-result-object v6

    .line 65
    .line 66
    :cond_2
    const/16 v9, 0xca

    .line 67
    const/4 v10, 0x0

    .line 68
    .line 69
    .line 70
    invoke-static {v5}, Lkotlin/collections/t;->e(Ljava/lang/Object;)Ljava/util/List;

    .line 71
    move-result-object v11

    .line 72
    const/4 v12, 0x0

    .line 73
    .line 74
    iget v14, v5, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    .line 75
    const/4 v15, 0x0

    .line 76
    .line 77
    const/high16 v16, 0x447a0000    # 1000.0f

    .line 78
    .line 79
    const/16 v17, 0x1

    .line 80
    .line 81
    const/16 v19, 0x1

    .line 82
    .line 83
    const/16 v20, 0x0

    .line 84
    .line 85
    const/16 v21, 0x0

    .line 86
    .line 87
    const/16 v22, 0x0

    .line 88
    .line 89
    const/16 v24, 0x3080

    .line 90
    .line 91
    const/16 v25, 0x0

    .line 92
    move-object v7, v4

    .line 93
    .line 94
    move-object/from16 v26, v13

    .line 95
    move-object v13, v6

    .line 96
    .line 97
    move/from16 v18, p2

    .line 98
    .line 99
    move/from16 v23, p3

    .line 100
    .line 101
    .line 102
    invoke-static/range {v7 .. v25}, Lcom/narvii/video/widget/MediaTimeLineComponent;->initTimeLine$default(Lcom/narvii/video/widget/MediaTimeLineComponent;IIZLjava/util/List;Lcom/narvii/video/interfaces/IPreviewPlayer;Lcom/narvii/video/services/FrameRetrieverManager;ILjava/lang/Integer;FZIZZILcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;ZILjava/lang/Object;)I

    .line 103
    .line 104
    new-instance v6, Lcom/narvii/video/w;

    .line 105
    .line 106
    .line 107
    invoke-direct {v6, v0, v1}, Lcom/narvii/video/w;-><init>(Lcom/narvii/video/BaseViceTimeLineFragment;I)V

    .line 108
    .line 109
    move-object/from16 v15, v26

    .line 110
    .line 111
    .line 112
    invoke-virtual {v15, v6}, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->getMainTimeLineComponent()Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 116
    move-result-object v6

    .line 117
    .line 118
    const/16 v17, 0x0

    .line 119
    .line 120
    if-eqz v6, :cond_3

    .line 121
    .line 122
    .line 123
    invoke-virtual {v6}, Lcom/narvii/video/widget/MediaTimeLineComponent;->getTotalFrameCount()I

    .line 124
    move-result v6

    .line 125
    goto :goto_1

    .line 126
    .line 127
    :cond_3
    move/from16 v6, v17

    .line 128
    .line 129
    .line 130
    :goto_1
    invoke-virtual {v4}, Lcom/narvii/video/widget/MediaTimeLineComponent;->getTotalFrameCount()I

    .line 131
    move-result v7

    .line 132
    .line 133
    if-le v6, v7, :cond_4

    .line 134
    .line 135
    .line 136
    invoke-virtual {v4}, Lcom/narvii/video/widget/MediaTimeLineComponent;->getTotalFrameCount()I

    .line 137
    move-result v7

    .line 138
    .line 139
    sub-int v7, v6, v7

    .line 140
    goto :goto_2

    .line 141
    .line 142
    :cond_4
    move/from16 v7, v17

    .line 143
    .line 144
    .line 145
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->getMainTimeLineComponent()Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 146
    move-result-object v8

    .line 147
    .line 148
    if-eqz v8, :cond_5

    .line 149
    .line 150
    .line 151
    invoke-virtual {v8}, Lcom/narvii/video/widget/MediaTimeLineComponent;->getFrameCellWidth()I

    .line 152
    move-result v8

    .line 153
    goto :goto_3

    .line 154
    .line 155
    :cond_5
    move/from16 v8, v17

    .line 156
    :goto_3
    mul-int/2addr v8, v6

    .line 157
    .line 158
    .line 159
    invoke-virtual {v4, v6, v7, v8}, Lcom/narvii/video/widget/MediaTimeLineComponent;->updateAdditionalFrameOffset(III)V

    .line 160
    .line 161
    if-eqz p4, :cond_6

    .line 162
    .line 163
    iget v13, v5, Lcom/narvii/video/model/BaseClipInfoPack;->startOffsetToMainTrackInMs:I

    .line 164
    .line 165
    add-int v8, p4, v13

    .line 166
    const/4 v9, 0x0

    .line 167
    const/4 v10, 0x0

    .line 168
    const/4 v11, 0x0

    .line 169
    const/4 v12, 0x1

    .line 170
    const/4 v14, 0x0

    .line 171
    .line 172
    const/16 v6, 0x4e

    .line 173
    .line 174
    const/16 v16, 0x0

    .line 175
    move-object v7, v4

    .line 176
    .line 177
    move-object/from16 v27, v15

    .line 178
    move v15, v6

    .line 179
    .line 180
    .line 181
    invoke-static/range {v7 .. v16}, Lcom/narvii/video/widget/MediaTimeLineComponent;->scrollTimeLine$default(Lcom/narvii/video/widget/MediaTimeLineComponent;IZZZZIZILjava/lang/Object;)V

    .line 182
    goto :goto_4

    .line 183
    .line 184
    :cond_6
    move-object/from16 v27, v15

    .line 185
    const/4 v8, 0x0

    .line 186
    const/4 v9, 0x1

    .line 187
    const/4 v10, 0x0

    .line 188
    const/4 v11, 0x0

    .line 189
    const/4 v12, 0x0

    .line 190
    const/4 v13, 0x0

    .line 191
    const/4 v14, 0x0

    .line 192
    .line 193
    const/16 v15, 0x7d

    .line 194
    .line 195
    const/16 v16, 0x0

    .line 196
    move-object v7, v4

    .line 197
    .line 198
    .line 199
    invoke-static/range {v7 .. v16}, Lcom/narvii/video/widget/MediaTimeLineComponent;->scrollTimeLine$default(Lcom/narvii/video/widget/MediaTimeLineComponent;IZZZZIZILjava/lang/Object;)V

    .line 200
    .line 201
    .line 202
    :goto_4
    invoke-virtual/range {p0 .. p1}, Lcom/narvii/video/BaseViceTimeLineFragment;->getViceTrackDataType(I)I

    .line 203
    move-result v6

    .line 204
    .line 205
    move-object/from16 v7, v27

    .line 206
    .line 207
    .line 208
    invoke-virtual {v7, v4, v6, v5}, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->bindViceTimeLine(Lcom/narvii/video/widget/MediaTimeLineComponent;ILcom/narvii/video/model/BaseClipInfoPack;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v5}, Lcom/narvii/video/model/BaseClipInfoPack;->getTrackContent()Ljava/lang/String;

    .line 212
    move-result-object v5

    .line 213
    .line 214
    const-string v6, "getTrackContent(...)"

    .line 215
    .line 216
    .line 217
    invoke-static {v5, v6}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v7, v5}, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->setTrackContent(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->getMainTimeLineComponent()Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 224
    move-result-object v5

    .line 225
    .line 226
    if-eqz v5, :cond_7

    .line 227
    .line 228
    .line 229
    invoke-virtual {v5}, Lcom/narvii/video/widget/MediaTimeLineComponent;->getTimelineVisibleSectionWidth()I

    .line 230
    move-result v5

    .line 231
    goto :goto_5

    .line 232
    .line 233
    :cond_7
    move/from16 v5, v17

    .line 234
    .line 235
    .line 236
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->getMainTimeLineComponent()Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 237
    move-result-object v6

    .line 238
    .line 239
    if-eqz v6, :cond_8

    .line 240
    .line 241
    .line 242
    invoke-virtual {v6}, Lcom/narvii/video/widget/MediaTimeLineComponent;->getFrameCellWidth()I

    .line 243
    move-result v17

    .line 244
    .line 245
    :cond_8
    sub-int v5, v5, v17

    .line 246
    .line 247
    sub-int v5, v2, v5

    .line 248
    .line 249
    .line 250
    invoke-virtual {v7, v5, v2}, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->updateScrollingRange(II)V

    .line 251
    .line 252
    new-instance v2, Lcom/narvii/video/BaseViceTimeLineFragment$innerInitViceTimeLine$2;

    .line 253
    .line 254
    .line 255
    invoke-direct {v2, v1, v0, v4, v3}, Lcom/narvii/video/BaseViceTimeLineFragment$innerInitViceTimeLine$2;-><init>(ILcom/narvii/video/BaseViceTimeLineFragment;Lcom/narvii/video/widget/MediaTimeLineComponent;I)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v7, v2}, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->addTimeLineOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 259
    return-void
.end method

.method private static final innerInitViceTimeLine$lambda$3(Lcom/narvii/video/BaseViceTimeLineFragment;ILandroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    const-string/jumbo p2, "this$0"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/narvii/video/BaseViceTimeLineFragment;->onViceTrackClicked(I)V

    .line 10
    return-void
.end method

.method private static final onTimeLineScrolledOffsetChanged$lambda$0(Lcom/narvii/video/BaseViceTimeLineFragment;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "this$0"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    const/4 v0, 0x3

    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x0

    .line 10
    .line 11
    .line 12
    invoke-static {p0, v2, v2, v0, v1}, Lcom/narvii/video/BaseViceTimeLineFragment;->onViceTrackScrolled$default(Lcom/narvii/video/BaseViceTimeLineFragment;IZILjava/lang/Object;)V

    .line 13
    return-void
.end method

.method public static synthetic onViceTrackScrolled$default(Lcom/narvii/video/BaseViceTimeLineFragment;IZILjava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    if-nez p4, :cond_2

    .line 3
    .line 4
    and-int/lit8 p4, p3, 0x1

    .line 5
    .line 6
    if-eqz p4, :cond_0

    .line 7
    const/4 p1, -0x1

    .line 8
    .line 9
    :cond_0
    and-int/lit8 p3, p3, 0x2

    .line 10
    .line 11
    if-eqz p3, :cond_1

    .line 12
    const/4 p2, 0x0

    .line 13
    .line 14
    .line 15
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/narvii/video/BaseViceTimeLineFragment;->onViceTrackScrolled(IZ)V

    .line 16
    return-void

    .line 17
    .line 18
    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 19
    .line 20
    const-string p1, "Super calls with default arguments not supported in this target, function: onViceTrackScrolled"

    .line 21
    .line 22
    .line 23
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 24
    throw p0
.end method

.method private final updateViceClipComposition(Lcom/narvii/video/model/BaseClipInfoPack;Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/video/model/BaseClipInfoPack;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    iget v1, p1, Lcom/narvii/video/model/BaseClipInfoPack;->startOffsetToMainTrackInMs:I

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 11
    move-result-object v2

    .line 12
    const/4 v3, 0x0

    .line 13
    move v4, v3

    .line 14
    move v5, v4

    .line 15
    .line 16
    .line 17
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    move-result v6

    .line 19
    .line 20
    if-eqz v6, :cond_4

    .line 21
    .line 22
    .line 23
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    move-result-object v6

    .line 25
    .line 26
    check-cast v6, Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    invoke-static {v6}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 33
    move-result v7

    .line 34
    add-int/2addr v7, v4

    .line 35
    .line 36
    if-lt v1, v7, :cond_0

    .line 37
    .line 38
    .line 39
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 40
    move-result v6

    .line 41
    add-int/2addr v4, v6

    .line 42
    goto :goto_0

    .line 43
    .line 44
    :cond_0
    if-lez v1, :cond_1

    .line 45
    .line 46
    .line 47
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 48
    move-result v6

    .line 49
    sub-int/2addr v1, v4

    .line 50
    sub-int/2addr v6, v1

    .line 51
    goto :goto_1

    .line 52
    .line 53
    .line 54
    :cond_1
    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    .line 55
    move-result v6

    .line 56
    .line 57
    :goto_1
    add-int v1, v5, v6

    .line 58
    .line 59
    iget v7, p1, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    .line 60
    .line 61
    if-gt v1, v7, :cond_3

    .line 62
    .line 63
    .line 64
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    move-result-object v5

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    .line 70
    iget v5, p1, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    .line 71
    .line 72
    if-ne v1, v5, :cond_2

    .line 73
    goto :goto_2

    .line 74
    :cond_2
    move v5, v1

    .line 75
    move v1, v3

    .line 76
    goto :goto_0

    .line 77
    :cond_3
    sub-int/2addr v7, v5

    .line 78
    .line 79
    .line 80
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 81
    move-result-object v1

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    :cond_4
    :goto_2
    invoke-static {v0}, Lkotlin/collections/t;->M0(Ljava/lang/Iterable;)I

    .line 88
    move-result v1

    .line 89
    .line 90
    iget v2, p1, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    .line 91
    .line 92
    if-ge v1, v2, :cond_5

    .line 93
    sub-int/2addr v2, v1

    .line 94
    .line 95
    .line 96
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 97
    move-result-object v1

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    :cond_5
    invoke-virtual {p1, v0}, Lcom/narvii/video/model/BaseClipInfoPack;->setClipLengthComposition(Ljava/util/List;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1, p2}, Lcom/narvii/video/model/BaseClipInfoPack;->setMainTrackClipComposition(Ljava/util/List;)V

    .line 107
    return-void
.end method

.method public static synthetic updateViceTimeLine$default(Lcom/narvii/video/BaseViceTimeLineFragment;Lcom/narvii/video/model/BaseClipInfoPack;IZIZILjava/lang/Object;)V
    .locals 7

    .line 1
    .line 2
    if-nez p7, :cond_2

    .line 3
    .line 4
    and-int/lit8 p7, p6, 0x4

    .line 5
    const/4 v0, 0x0

    .line 6
    .line 7
    if-eqz p7, :cond_0

    .line 8
    move v4, v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move v4, p3

    .line 11
    .line 12
    :goto_0
    and-int/lit8 p3, p6, 0x10

    .line 13
    .line 14
    if-eqz p3, :cond_1

    .line 15
    move v6, v0

    .line 16
    goto :goto_1

    .line 17
    :cond_1
    move v6, p5

    .line 18
    :goto_1
    move-object v1, p0

    .line 19
    move-object v2, p1

    .line 20
    move v3, p2

    .line 21
    move v5, p4

    .line 22
    .line 23
    .line 24
    invoke-virtual/range {v1 .. v6}, Lcom/narvii/video/BaseViceTimeLineFragment;->updateViceTimeLine(Lcom/narvii/video/model/BaseClipInfoPack;IZIZ)V

    .line 25
    return-void

    .line 26
    .line 27
    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 28
    .line 29
    const-string p1, "Super calls with default arguments not supported in this target, function: updateViceTimeLine"

    .line 30
    .line 31
    .line 32
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 33
    throw p0
.end method

.method private static final updateViceTimeLine$lambda$1(Lcom/narvii/video/BaseViceTimeLineFragment;IZ)V
    .locals 1

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "this$0"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/narvii/video/BaseViceTimeLineFragment;->getViewIndexOfTrackIndex(I)I

    .line 10
    move-result p1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1, p2}, Lcom/narvii/video/BaseViceTimeLineFragment;->onViceTrackScrolled(IZ)V

    .line 14
    return-void
.end method

.method public static synthetic updateViceTimeLinePanel$default(Lcom/narvii/video/BaseViceTimeLineFragment;ZLjava/util/List;ZILjava/lang/Object;)V
    .locals 1

    .line 1
    .line 2
    if-nez p5, :cond_2

    .line 3
    .line 4
    and-int/lit8 p5, p4, 0x1

    .line 5
    const/4 v0, 0x0

    .line 6
    .line 7
    if-eqz p5, :cond_0

    .line 8
    move p1, v0

    .line 9
    .line 10
    :cond_0
    and-int/lit8 p4, p4, 0x4

    .line 11
    .line 12
    if-eqz p4, :cond_1

    .line 13
    move p3, v0

    .line 14
    .line 15
    .line 16
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/video/BaseViceTimeLineFragment;->updateViceTimeLinePanel(ZLjava/util/List;Z)V

    .line 17
    return-void

    .line 18
    .line 19
    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 20
    .line 21
    const-string p1, "Super calls with default arguments not supported in this target, function: updateViceTimeLinePanel"

    .line 22
    .line 23
    .line 24
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 25
    throw p0
.end method

.method private static final updateViceTimeLinePanel$lambda$2(Lcom/narvii/video/BaseViceTimeLineFragment;Z)V
    .locals 3

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "this$0"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    const/4 v0, 0x1

    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x0

    .line 10
    .line 11
    .line 12
    invoke-static {p0, v2, p1, v0, v1}, Lcom/narvii/video/BaseViceTimeLineFragment;->onViceTrackScrolled$default(Lcom/narvii/video/BaseViceTimeLineFragment;IZILjava/lang/Object;)V

    .line 13
    return-void
.end method

.method private final updateViceTimelineStyle(IZII)V
    .locals 9

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/video/BaseViceTimeLineFragment;->getViewIndexOfTrackIndex(I)I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/narvii/video/BaseViceTimeLineFragment;->getViceTimeLinePanel()Landroid/widget/LinearLayout;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    instance-of v1, v0, Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    check-cast v0, Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    .line 22
    :goto_0
    if-nez v0, :cond_1

    .line 23
    return-void

    .line 24
    .line 25
    .line 26
    :cond_1
    invoke-virtual {p0, p1}, Lcom/narvii/video/BaseViceTimeLineFragment;->getViceTrackDataType(I)I

    .line 27
    move-result v1

    .line 28
    .line 29
    .line 30
    packed-switch v1, :pswitch_data_0

    .line 31
    .line 32
    sget v1, Lcom/narvii/mediaeditor/R$color;->media_timeline_audio_frame_color:I

    .line 33
    goto :goto_1

    .line 34
    .line 35
    :pswitch_0
    sget v1, Lcom/narvii/mediaeditor/R$color;->media_timeline_sticker_frame_color:I

    .line 36
    goto :goto_1

    .line 37
    .line 38
    :pswitch_1
    sget v1, Lcom/narvii/mediaeditor/R$color;->media_timeline_caption_frame_color:I

    .line 39
    goto :goto_1

    .line 40
    .line 41
    :pswitch_2
    iget-object v1, p0, Lcom/narvii/video/BaseViceTimeLineFragment;->clipListForViceTracks:Ljava/util/ArrayList;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 45
    move-result-object v1

    .line 46
    .line 47
    instance-of v1, v1, Lcom/narvii/video/model/AVClipInfoPack;

    .line 48
    .line 49
    if-eqz v1, :cond_2

    .line 50
    .line 51
    iget-object v1, p0, Lcom/narvii/video/BaseViceTimeLineFragment;->clipListForViceTracks:Ljava/util/ArrayList;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 55
    move-result-object v1

    .line 56
    .line 57
    const-string v2, "null cannot be cast to non-null type com.narvii.video.model.AVClipInfoPack"

    .line 58
    .line 59
    .line 60
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    .line 62
    check-cast v1, Lcom/narvii/video/model/AVClipInfoPack;

    .line 63
    .line 64
    iget-boolean v1, v1, Lcom/narvii/video/model/AVClipInfoPack;->isSfx:Z

    .line 65
    .line 66
    if-eqz v1, :cond_2

    .line 67
    .line 68
    sget v1, Lcom/narvii/mediaeditor/R$color;->media_timeline_sfx_frame_color:I

    .line 69
    goto :goto_1

    .line 70
    .line 71
    :cond_2
    sget v1, Lcom/narvii/mediaeditor/R$color;->media_timeline_audio_frame_color:I

    .line 72
    .line 73
    .line 74
    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 75
    move-result-object v2

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 79
    move-result v6

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 83
    move-result v1

    .line 84
    .line 85
    if-lez v1, :cond_3

    .line 86
    move-object v3, p0

    .line 87
    move v4, p1

    .line 88
    move v5, v6

    .line 89
    move v6, p2

    .line 90
    move v7, p3

    .line 91
    move v8, p4

    .line 92
    .line 93
    .line 94
    invoke-direct/range {v3 .. v8}, Lcom/narvii/video/BaseViceTimeLineFragment;->innerInitViceTimeLine(IIZII)V

    .line 95
    goto :goto_2

    .line 96
    .line 97
    :cond_3
    new-instance p2, Lcom/narvii/video/BaseViceTimeLineFragment$updateViceTimelineStyle$1;

    .line 98
    move-object v3, p2

    .line 99
    move-object v4, p0

    .line 100
    move v5, p1

    .line 101
    move v7, p3

    .line 102
    move v8, p4

    .line 103
    .line 104
    .line 105
    invoke-direct/range {v3 .. v8}, Lcom/narvii/video/BaseViceTimeLineFragment$updateViceTimelineStyle$1;-><init>(Lcom/narvii/video/BaseViceTimeLineFragment;IIII)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, p2}, Lcom/narvii/video/widget/MediaTimeLineComponent;->setTimeLineCallback(Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;)V

    .line 109
    :goto_2
    return-void

    .line 110
    nop

    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic z(Lcom/narvii/video/BaseViceTimeLineFragment;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/narvii/video/BaseViceTimeLineFragment;->onTimeLineScrolledOffsetChanged$lambda$0(Lcom/narvii/video/BaseViceTimeLineFragment;)V

    return-void
.end method


# virtual methods
.method public abstract getTargetClipListForViceTracks()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/video/model/BaseClipInfoPack;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method protected final getTrackIndexOfViewIndex(I)I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/BaseViceTimeLineFragment;->clipListForViceTracks:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    sub-int/2addr v0, p1

    .line 8
    .line 9
    add-int/lit8 v0, v0, -0x1

    .line 10
    return v0
.end method

.method protected final getViceTimeLinePanel()Landroid/widget/LinearLayout;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/BaseViceTimeLineFragment;->viceTimeLinePanel:Landroid/widget/LinearLayout;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-object v0

    .line 6
    .line 7
    .line 8
    :cond_0
    const-string/jumbo v0, "viceTimeLinePanel"

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 12
    const/4 v0, 0x0

    .line 13
    return-object v0
.end method

.method public abstract getViceTrackDataType(I)I
.end method

.method protected final getViewIndexOfTrackIndex(I)I
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    return v0

    .line 5
    .line 6
    :cond_0
    iget-object v0, p0, Lcom/narvii/video/BaseViceTimeLineFragment;->clipListForViceTracks:Ljava/util/ArrayList;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 10
    move-result v0

    .line 11
    sub-int/2addr v0, p1

    .line 12
    .line 13
    add-int/lit8 v0, v0, -0x1

    .line 14
    return v0
.end method

.method public initComponent()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    const-string v1, "from(...)"

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    iput-object v0, p0, Lcom/narvii/video/BaseViceTimeLineFragment;->inflater:Landroid/view/LayoutInflater;

    .line 16
    return-void
.end method

.method protected final initViceTimeLine()V
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/narvii/video/BaseViceTimeLineFragment;->viceTimeLineInitialized:Z

    .line 4
    .line 5
    new-instance v3, Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/narvii/video/BaseViceTimeLineFragment;->getTargetClipListForViceTracks()Ljava/util/List;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 16
    move-result v1

    .line 17
    const/4 v2, 0x0

    .line 18
    move v4, v2

    .line 19
    .line 20
    :goto_0
    if-ge v4, v1, :cond_1

    .line 21
    .line 22
    .line 23
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 24
    move-result-object v5

    .line 25
    .line 26
    check-cast v5, Lcom/narvii/video/model/BaseClipInfoPack;

    .line 27
    .line 28
    iget v5, v5, Lcom/narvii/video/model/BaseClipInfoPack;->startOffsetToMainTrackInMs:I

    .line 29
    .line 30
    if-lez v5, :cond_0

    .line 31
    neg-int v5, v5

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    move v5, v2

    .line 34
    .line 35
    .line 36
    :goto_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    move-result-object v5

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    add-int/lit8 v4, v4, 0x1

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    const/4 v2, 0x0

    .line 45
    const/4 v4, 0x0

    .line 46
    const/4 v5, 0x5

    .line 47
    const/4 v6, 0x0

    .line 48
    move-object v1, p0

    .line 49
    .line 50
    .line 51
    invoke-static/range {v1 .. v6}, Lcom/narvii/video/BaseViceTimeLineFragment;->updateViceTimeLinePanel$default(Lcom/narvii/video/BaseViceTimeLineFragment;ZLjava/util/List;ZILjava/lang/Object;)V

    .line 52
    return-void
.end method

.method protected onAVClipsPrepared()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->onAVClipsPrepared()V

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/narvii/video/BaseViceTimeLineFragment;->viceTimeLineInitialized:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/narvii/video/BaseViceTimeLineFragment;->initViceTimeLine()V

    .line 11
    :cond_0
    return-void
.end method

.method public onFrameLocatedDuringMove(II)V
    .locals 17

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    .line 5
    invoke-super/range {p0 .. p2}, Lcom/narvii/video/ScrollingTimeLineFragment;->onFrameLocatedDuringMove(II)V

    .line 6
    .line 7
    .line 8
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/video/BaseViceTimeLineFragment;->getViceTimeLinePanel()Landroid/widget/LinearLayout;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x0

    .line 15
    move v3, v2

    .line 16
    .line 17
    :goto_0
    if-ge v3, v1, :cond_0

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v3}, Lcom/narvii/video/BaseViceTimeLineFragment;->getTrackIndexOfViewIndex(I)I

    .line 21
    move-result v4

    .line 22
    .line 23
    .line 24
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/video/BaseViceTimeLineFragment;->getViceTimeLinePanel()Landroid/widget/LinearLayout;

    .line 25
    move-result-object v5

    .line 26
    .line 27
    .line 28
    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 29
    move-result-object v5

    .line 30
    .line 31
    const-string v6, "null cannot be cast to non-null type com.narvii.video.widget.MediaTimeLineComponent"

    .line 32
    .line 33
    .line 34
    invoke-static {v5, v6}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    move-object v7, v5

    .line 36
    .line 37
    check-cast v7, Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 38
    const/4 v9, 0x0

    .line 39
    const/4 v10, 0x0

    .line 40
    const/4 v11, 0x0

    .line 41
    const/4 v12, 0x1

    .line 42
    .line 43
    iget-object v5, v0, Lcom/narvii/video/BaseViceTimeLineFragment;->clipListForViceTracks:Ljava/util/ArrayList;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 47
    move-result-object v4

    .line 48
    .line 49
    check-cast v4, Lcom/narvii/video/model/BaseClipInfoPack;

    .line 50
    .line 51
    iget v13, v4, Lcom/narvii/video/model/BaseClipInfoPack;->startOffsetToMainTrackInMs:I

    .line 52
    const/4 v14, 0x0

    .line 53
    .line 54
    const/16 v15, 0x4e

    .line 55
    .line 56
    const/16 v16, 0x0

    .line 57
    .line 58
    move/from16 v8, p1

    .line 59
    .line 60
    .line 61
    invoke-static/range {v7 .. v16}, Lcom/narvii/video/widget/MediaTimeLineComponent;->scrollTimeLine$default(Lcom/narvii/video/widget/MediaTimeLineComponent;IZZZZIZILjava/lang/Object;)V

    .line 62
    .line 63
    add-int/lit8 v3, v3, 0x1

    .line 64
    goto :goto_0

    .line 65
    :cond_0
    const/4 v1, 0x3

    .line 66
    const/4 v3, 0x0

    .line 67
    .line 68
    .line 69
    invoke-static {v0, v2, v2, v1, v3}, Lcom/narvii/video/BaseViceTimeLineFragment;->onViceTrackScrolled$default(Lcom/narvii/video/BaseViceTimeLineFragment;IZILjava/lang/Object;)V

    .line 70
    return-void
.end method

.method public onPlayerTick(JJ)V
    .locals 16

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    .line 5
    invoke-super/range {p0 .. p4}, Lcom/narvii/video/ScrollingTimeLineFragment;->onPlayerTick(JJ)V

    .line 6
    .line 7
    .line 8
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/video/BaseViceTimeLineFragment;->getViceTimeLinePanel()Landroid/widget/LinearLayout;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x0

    .line 15
    .line 16
    :goto_0
    if-ge v2, v1, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v2}, Lcom/narvii/video/BaseViceTimeLineFragment;->getTrackIndexOfViewIndex(I)I

    .line 20
    move-result v3

    .line 21
    .line 22
    .line 23
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/video/BaseViceTimeLineFragment;->getViceTimeLinePanel()Landroid/widget/LinearLayout;

    .line 24
    move-result-object v4

    .line 25
    .line 26
    .line 27
    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 28
    move-result-object v4

    .line 29
    .line 30
    const-string v5, "null cannot be cast to non-null type com.narvii.video.widget.MediaTimeLineComponent"

    .line 31
    .line 32
    .line 33
    invoke-static {v4, v5}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    move-object v6, v4

    .line 35
    .line 36
    check-cast v6, Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 37
    .line 38
    move-wide/from16 v4, p1

    .line 39
    long-to-int v7, v4

    .line 40
    const/4 v8, 0x0

    .line 41
    const/4 v9, 0x0

    .line 42
    const/4 v10, 0x0

    .line 43
    const/4 v11, 0x1

    .line 44
    .line 45
    iget-object v12, v0, Lcom/narvii/video/BaseViceTimeLineFragment;->clipListForViceTracks:Ljava/util/ArrayList;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 49
    move-result-object v3

    .line 50
    .line 51
    check-cast v3, Lcom/narvii/video/model/BaseClipInfoPack;

    .line 52
    .line 53
    iget v12, v3, Lcom/narvii/video/model/BaseClipInfoPack;->startOffsetToMainTrackInMs:I

    .line 54
    const/4 v13, 0x0

    .line 55
    .line 56
    const/16 v14, 0x4e

    .line 57
    const/4 v15, 0x0

    .line 58
    .line 59
    .line 60
    invoke-static/range {v6 .. v15}, Lcom/narvii/video/widget/MediaTimeLineComponent;->scrollTimeLine$default(Lcom/narvii/video/widget/MediaTimeLineComponent;IZZZZIZILjava/lang/Object;)V

    .line 61
    .line 62
    add-int/lit8 v2, v2, 0x1

    .line 63
    goto :goto_0

    .line 64
    :cond_0
    return-void
.end method

.method public onTimeLineLayout()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->onTimeLineLayout()V

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/narvii/video/BaseViceTimeLineFragment;->viceTimeLineInitialized:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/narvii/video/BaseViceTimeLineFragment;->initViceTimeLine()V

    .line 11
    :cond_0
    return-void
.end method

.method public onTimeLineScrolledOffsetChanged(I)V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/video/BaseMediaEditorFragment;->onTimeLineScrolledOffsetChanged(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->getMainTimeLineComponent()Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/video/widget/MediaTimeLineComponent;->getTimelineVisibleSectionWidth()I

    .line 14
    move-result v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v0, v1

    .line 17
    .line 18
    .line 19
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->getMainTimeLineComponent()Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 20
    move-result-object v2

    .line 21
    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Lcom/narvii/video/widget/MediaTimeLineComponent;->getFrameCellWidth()I

    .line 26
    move-result v2

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    move v2, v1

    .line 29
    :goto_1
    sub-int/2addr v0, v2

    .line 30
    .line 31
    sub-int v0, p1, v0

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/narvii/video/BaseViceTimeLineFragment;->getViceTimeLinePanel()Landroid/widget/LinearLayout;

    .line 35
    move-result-object v2

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 39
    move-result v2

    .line 40
    .line 41
    :goto_2
    if-ge v1, v2, :cond_2

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/narvii/video/BaseViceTimeLineFragment;->getViceTimeLinePanel()Landroid/widget/LinearLayout;

    .line 45
    move-result-object v3

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 49
    move-result-object v3

    .line 50
    .line 51
    const-string v4, "null cannot be cast to non-null type com.narvii.video.widget.MediaTimeLineComponent"

    .line 52
    .line 53
    .line 54
    invoke-static {v3, v4}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    .line 56
    check-cast v3, Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 57
    .line 58
    sget v4, Lcom/narvii/mediaeditor/R$id;->vice_time_line_wrapper:I

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 62
    move-result-object v3

    .line 63
    .line 64
    check-cast v3, Lcom/narvii/video/widget/ViceTimeLineWrapperView;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v3, v0, p1}, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->updateScrollingRange(II)V

    .line 68
    .line 69
    add-int/lit8 v1, v1, 0x1

    .line 70
    goto :goto_2

    .line 71
    .line 72
    :cond_2
    new-instance p1, Lcom/narvii/video/y;

    .line 73
    .line 74
    .line 75
    invoke-direct {p1, p0}, Lcom/narvii/video/y;-><init>(Lcom/narvii/video/BaseViceTimeLineFragment;)V

    .line 76
    .line 77
    const-wide/16 v0, 0x32

    .line 78
    .line 79
    .line 80
    invoke-static {p1, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 81
    return-void
.end method

.method public abstract onViceTrackClicked(I)V
.end method

.method public abstract onViceTrackOffsetChanged(I)V
.end method

.method protected final onViceTrackScrolled(IZ)V
    .locals 16

    .line 1
    .line 2
    move/from16 v0, p1

    .line 3
    .line 4
    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->getMainTimeLineComponent()Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x0

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/narvii/video/widget/MediaTimeLineComponent;->getFrameCellWidth()I

    .line 13
    move-result v1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v1, v2

    .line 16
    .line 17
    .line 18
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->getMainTimeLineComponent()Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 19
    move-result-object v3

    .line 20
    .line 21
    if-eqz v3, :cond_1

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3}, Lcom/narvii/video/widget/MediaTimeLineComponent;->getRealFrameTimelineWidth()I

    .line 25
    move-result v3

    .line 26
    move v11, v3

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    move v11, v2

    .line 29
    .line 30
    .line 31
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->getMainTimeLineComponent()Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 32
    move-result-object v3

    .line 33
    .line 34
    if-eqz v3, :cond_2

    .line 35
    const/4 v4, 0x0

    .line 36
    const/4 v5, 0x1

    .line 37
    .line 38
    .line 39
    invoke-static {v3, v2, v5, v4}, Lcom/narvii/video/widget/MediaTimeLineComponent;->getFirstFrameStartDx$default(Lcom/narvii/video/widget/MediaTimeLineComponent;ZILjava/lang/Object;)I

    .line 40
    move-result v3

    .line 41
    move v12, v3

    .line 42
    goto :goto_2

    .line 43
    :cond_2
    move v12, v2

    .line 44
    .line 45
    .line 46
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getRtl()Z

    .line 47
    move-result v3

    .line 48
    .line 49
    if-eqz v3, :cond_3

    .line 50
    .line 51
    sub-int v3, v12, v11

    .line 52
    :goto_3
    move v13, v3

    .line 53
    goto :goto_4

    .line 54
    .line 55
    :cond_3
    add-int v3, v12, v11

    .line 56
    goto :goto_3

    .line 57
    :goto_4
    const/4 v3, -0x1

    .line 58
    .line 59
    const-string v14, "null cannot be cast to non-null type com.narvii.video.widget.MediaTimeLineComponent"

    .line 60
    .line 61
    if-ne v0, v3, :cond_4

    .line 62
    .line 63
    .line 64
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/video/BaseViceTimeLineFragment;->getViceTimeLinePanel()Landroid/widget/LinearLayout;

    .line 65
    move-result-object v0

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 69
    move-result v0

    .line 70
    move v15, v2

    .line 71
    .line 72
    :goto_5
    if-ge v15, v0, :cond_5

    .line 73
    .line 74
    .line 75
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/video/BaseViceTimeLineFragment;->getViceTimeLinePanel()Landroid/widget/LinearLayout;

    .line 76
    move-result-object v3

    .line 77
    .line 78
    .line 79
    invoke-virtual {v3, v15}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 80
    move-result-object v3

    .line 81
    .line 82
    .line 83
    invoke-static {v3, v14}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    .line 85
    check-cast v3, Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 86
    .line 87
    sget v4, Lcom/narvii/mediaeditor/R$id;->vice_time_line_wrapper:I

    .line 88
    .line 89
    .line 90
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 91
    move-result-object v4

    .line 92
    .line 93
    check-cast v4, Lcom/narvii/video/widget/ViceTimeLineWrapperView;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v3, v2}, Lcom/narvii/video/widget/MediaTimeLineComponent;->getFirstFrameStartDx(Z)I

    .line 97
    move-result v5

    .line 98
    int-to-float v5, v5

    .line 99
    .line 100
    .line 101
    invoke-virtual {v3}, Lcom/narvii/video/widget/MediaTimeLineComponent;->getRealFrameTimelineWidth()I

    .line 102
    move-result v6

    .line 103
    int-to-float v8, v12

    .line 104
    int-to-float v9, v13

    .line 105
    move-object v3, v4

    .line 106
    move v4, v5

    .line 107
    move v5, v6

    .line 108
    move v6, v1

    .line 109
    move v7, v11

    .line 110
    .line 111
    move/from16 v10, p2

    .line 112
    .line 113
    .line 114
    invoke-virtual/range {v3 .. v10}, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->updateVisibleContentSection(FIIIFFZ)V

    .line 115
    .line 116
    add-int/lit8 v15, v15, 0x1

    .line 117
    goto :goto_5

    .line 118
    .line 119
    :cond_4
    if-ltz v0, :cond_5

    .line 120
    .line 121
    .line 122
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/video/BaseViceTimeLineFragment;->getViceTimeLinePanel()Landroid/widget/LinearLayout;

    .line 123
    move-result-object v3

    .line 124
    .line 125
    .line 126
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    .line 127
    move-result v3

    .line 128
    .line 129
    if-ge v0, v3, :cond_5

    .line 130
    .line 131
    .line 132
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/video/BaseViceTimeLineFragment;->getViceTimeLinePanel()Landroid/widget/LinearLayout;

    .line 133
    move-result-object v3

    .line 134
    .line 135
    .line 136
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 137
    move-result-object v0

    .line 138
    .line 139
    .line 140
    invoke-static {v0, v14}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    .line 142
    check-cast v0, Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 143
    .line 144
    sget v3, Lcom/narvii/mediaeditor/R$id;->vice_time_line_wrapper:I

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 148
    move-result-object v3

    .line 149
    .line 150
    check-cast v3, Lcom/narvii/video/widget/ViceTimeLineWrapperView;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0, v2}, Lcom/narvii/video/widget/MediaTimeLineComponent;->getFirstFrameStartDx(Z)I

    .line 154
    move-result v2

    .line 155
    int-to-float v4, v2

    .line 156
    .line 157
    .line 158
    invoke-virtual {v0}, Lcom/narvii/video/widget/MediaTimeLineComponent;->getRealFrameTimelineWidth()I

    .line 159
    move-result v5

    .line 160
    int-to-float v8, v12

    .line 161
    int-to-float v9, v13

    .line 162
    move v6, v1

    .line 163
    move v7, v11

    .line 164
    .line 165
    move/from16 v10, p2

    .line 166
    .line 167
    .line 168
    invoke-virtual/range {v3 .. v10}, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->updateVisibleContentSection(FIIIFFZ)V

    .line 169
    :cond_5
    return-void
.end method

.method protected final setViceTimeLinePanel(Landroid/widget/LinearLayout;)V
    .locals 1
    .param p1    # Landroid/widget/LinearLayout;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/video/BaseViceTimeLineFragment;->viceTimeLinePanel:Landroid/widget/LinearLayout;

    return-void
.end method

.method protected final updateViceTimeLine(Lcom/narvii/video/model/BaseClipInfoPack;IZIZ)V
    .locals 3
    .param p1    # Lcom/narvii/video/model/BaseClipInfoPack;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "viceClip"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getTotalVisibleVideoDurationInMs()Lw7/u;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lw7/u;->d()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    check-cast v0, Ljava/util/ArrayList;

    .line 17
    .line 18
    .line 19
    invoke-direct {p0, p1, v0}, Lcom/narvii/video/BaseViceTimeLineFragment;->updateViceClipComposition(Lcom/narvii/video/model/BaseClipInfoPack;Ljava/util/ArrayList;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->getMainTimeLineComponent()Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 23
    move-result-object p1

    .line 24
    const/4 v0, 0x0

    .line 25
    .line 26
    if-eqz p1, :cond_0

    .line 27
    const/4 v1, 0x1

    .line 28
    const/4 v2, 0x0

    .line 29
    .line 30
    .line 31
    invoke-static {p1, v0, v1, v2}, Lcom/narvii/video/widget/MediaTimeLineComponent;->getTimeLineScrolledDx$default(Lcom/narvii/video/widget/MediaTimeLineComponent;ZILjava/lang/Object;)I

    .line 32
    move-result v0

    .line 33
    .line 34
    .line 35
    :cond_0
    invoke-direct {p0, p2, p3, p4, v0}, Lcom/narvii/video/BaseViceTimeLineFragment;->updateViceTimelineStyle(IZII)V

    .line 36
    .line 37
    new-instance p1, Lcom/narvii/video/z;

    .line 38
    .line 39
    .line 40
    invoke-direct {p1, p0, p2, p5}, Lcom/narvii/video/z;-><init>(Lcom/narvii/video/BaseViceTimeLineFragment;IZ)V

    .line 41
    .line 42
    const-wide/16 p2, 0x32

    .line 43
    .line 44
    .line 45
    invoke-static {p1, p2, p3}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 46
    return-void
.end method

.method protected final updateViceTimeLinePanel(ZLjava/util/List;Z)V
    .locals 8
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "autoScrollToMsList"

    .line 3
    .line 4
    .line 5
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/video/BaseViceTimeLineFragment;->clipListForViceTracks:Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/video/BaseViceTimeLineFragment;->clipListForViceTracks:Ljava/util/ArrayList;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/narvii/video/BaseViceTimeLineFragment;->getTargetClipListForViceTracks()Ljava/util/List;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    check-cast v1, Ljava/util/Collection;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getTotalVisibleVideoDurationInMs()Lw7/u;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Lw7/u;->d()Ljava/lang/Object;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    check-cast v0, Ljava/util/ArrayList;

    .line 32
    .line 33
    iget-object v1, p0, Lcom/narvii/video/BaseViceTimeLineFragment;->clipListForViceTracks:Ljava/util/ArrayList;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 37
    move-result-object v1

    .line 38
    .line 39
    .line 40
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    move-result v2

    .line 42
    .line 43
    if-eqz v2, :cond_0

    .line 44
    .line 45
    .line 46
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    move-result-object v2

    .line 48
    .line 49
    check-cast v2, Lcom/narvii/video/model/BaseClipInfoPack;

    .line 50
    .line 51
    .line 52
    invoke-static {v2}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    invoke-direct {p0, v2, v0}, Lcom/narvii/video/BaseViceTimeLineFragment;->updateViceClipComposition(Lcom/narvii/video/model/BaseClipInfoPack;Ljava/util/ArrayList;)V

    .line 56
    goto :goto_0

    .line 57
    .line 58
    :cond_0
    iget-object v0, p0, Lcom/narvii/video/BaseViceTimeLineFragment;->clipListForViceTracks:Ljava/util/ArrayList;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 62
    move-result v0

    .line 63
    .line 64
    if-eqz v0, :cond_1

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/narvii/video/BaseViceTimeLineFragment;->getViceTimeLinePanel()Landroid/widget/LinearLayout;

    .line 68
    move-result-object p1

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Lcom/narvii/video/BaseViceTimeLineFragment;->getViceTimeLinePanel()Landroid/widget/LinearLayout;

    .line 75
    move-result-object p1

    .line 76
    const/4 p2, 0x4

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 80
    return-void

    .line 81
    .line 82
    .line 83
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/video/BaseViceTimeLineFragment;->getViceTimeLinePanel()Landroid/widget/LinearLayout;

    .line 84
    move-result-object v0

    .line 85
    const/4 v1, 0x0

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 89
    .line 90
    iget-object v0, p0, Lcom/narvii/video/BaseViceTimeLineFragment;->clipListForViceTracks:Ljava/util/ArrayList;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 94
    move-result v0

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0}, Lcom/narvii/video/BaseViceTimeLineFragment;->getViceTimeLinePanel()Landroid/widget/LinearLayout;

    .line 98
    move-result-object v2

    .line 99
    .line 100
    .line 101
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 102
    move-result v2

    .line 103
    const/4 v3, 0x0

    .line 104
    const/4 v4, 0x1

    .line 105
    .line 106
    if-le v2, v0, :cond_2

    .line 107
    sub-int/2addr v2, v0

    .line 108
    move v0, v1

    .line 109
    .line 110
    :goto_1
    if-ge v0, v2, :cond_4

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0}, Lcom/narvii/video/BaseViceTimeLineFragment;->getViceTimeLinePanel()Landroid/widget/LinearLayout;

    .line 114
    move-result-object v5

    .line 115
    .line 116
    .line 117
    invoke-virtual {v5, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 118
    .line 119
    add-int/lit8 v0, v0, 0x1

    .line 120
    goto :goto_1

    .line 121
    .line 122
    :cond_2
    if-ge v2, v0, :cond_4

    .line 123
    sub-int/2addr v0, v2

    .line 124
    move v2, v1

    .line 125
    .line 126
    :goto_2
    if-ge v2, v0, :cond_4

    .line 127
    .line 128
    iget-object v5, p0, Lcom/narvii/video/BaseViceTimeLineFragment;->inflater:Landroid/view/LayoutInflater;

    .line 129
    .line 130
    if-nez v5, :cond_3

    .line 131
    .line 132
    const-string v5, "inflater"

    .line 133
    .line 134
    .line 135
    invoke-static {v5}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 136
    move-object v5, v3

    .line 137
    .line 138
    :cond_3
    sget v6, Lcom/narvii/mediaeditor/R$layout;->component_vice_time_line:I

    .line 139
    .line 140
    .line 141
    invoke-virtual {p0}, Lcom/narvii/video/BaseViceTimeLineFragment;->getViceTimeLinePanel()Landroid/widget/LinearLayout;

    .line 142
    move-result-object v7

    .line 143
    .line 144
    .line 145
    invoke-virtual {v5, v6, v7, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 146
    .line 147
    add-int/lit8 v2, v2, 0x1

    .line 148
    goto :goto_2

    .line 149
    .line 150
    .line 151
    :cond_4
    invoke-virtual {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->getMainTimeLineComponent()Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 152
    move-result-object v0

    .line 153
    .line 154
    if-eqz v0, :cond_5

    .line 155
    .line 156
    .line 157
    invoke-static {v0, v1, v4, v3}, Lcom/narvii/video/widget/MediaTimeLineComponent;->getTimeLineScrolledDx$default(Lcom/narvii/video/widget/MediaTimeLineComponent;ZILjava/lang/Object;)I

    .line 158
    move-result v0

    .line 159
    goto :goto_3

    .line 160
    :cond_5
    move v0, v1

    .line 161
    .line 162
    .line 163
    :goto_3
    invoke-virtual {p0}, Lcom/narvii/video/BaseViceTimeLineFragment;->getViceTimeLinePanel()Landroid/widget/LinearLayout;

    .line 164
    move-result-object v2

    .line 165
    .line 166
    .line 167
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 168
    move-result v2

    .line 169
    .line 170
    :goto_4
    if-ge v1, v2, :cond_6

    .line 171
    .line 172
    .line 173
    invoke-virtual {p0, v1}, Lcom/narvii/video/BaseViceTimeLineFragment;->getTrackIndexOfViewIndex(I)I

    .line 174
    move-result v3

    .line 175
    .line 176
    .line 177
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 178
    move-result-object v4

    .line 179
    .line 180
    check-cast v4, Ljava/lang/Number;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    .line 184
    move-result v4

    .line 185
    .line 186
    .line 187
    invoke-direct {p0, v3, p1, v4, v0}, Lcom/narvii/video/BaseViceTimeLineFragment;->updateViceTimelineStyle(IZII)V

    .line 188
    .line 189
    add-int/lit8 v1, v1, 0x1

    .line 190
    goto :goto_4

    .line 191
    .line 192
    :cond_6
    new-instance p1, Lcom/narvii/video/x;

    .line 193
    .line 194
    .line 195
    invoke-direct {p1, p0, p3}, Lcom/narvii/video/x;-><init>(Lcom/narvii/video/BaseViceTimeLineFragment;Z)V

    .line 196
    .line 197
    const-wide/16 p2, 0x32

    .line 198
    .line 199
    .line 200
    invoke-static {p1, p2, p3}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 201
    return-void
.end method
