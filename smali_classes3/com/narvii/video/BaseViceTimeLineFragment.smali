.class public abstract Lcom/narvii/video/BaseViceTimeLineFragment;
.super Lcom/narvii/video/ScrollingTimeLineFragment;
.source "BaseViceTimeLineFragment.kt"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private final clipListForViceTracks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/BaseClipInfoPack;",
            ">;"
        }
    .end annotation
.end field

.field private inflater:Landroid/view/LayoutInflater;

.field private viceTimeLineInitialized:Z

.field protected viceTimeLinePanel:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/video/BaseViceTimeLineFragment;->clipListForViceTracks:Ljava/util/ArrayList;

    return-void
.end method

.method public static final synthetic access$getClipListForViceTracks$p(Lcom/narvii/video/BaseViceTimeLineFragment;)Ljava/util/ArrayList;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/narvii/video/BaseViceTimeLineFragment;->clipListForViceTracks:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static final synthetic access$innerInitViceTimeLine(Lcom/narvii/video/BaseViceTimeLineFragment;IIZII)V
    .locals 0

    .line 15
    invoke-direct/range {p0 .. p5}, Lcom/narvii/video/BaseViceTimeLineFragment;->innerInitViceTimeLine(IIZII)V

    return-void
.end method

.method private final innerInitViceTimeLine(IIZII)V
    .locals 27

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p5

    .line 239
    invoke-virtual/range {p0 .. p1}, Lcom/narvii/video/BaseViceTimeLineFragment;->getViewIndexOfTrackIndex(I)I

    move-result v3

    .line 240
    iget-object v4, v0, Lcom/narvii/video/BaseViceTimeLineFragment;->viceTimeLinePanel:Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    if-eqz v4, :cond_9

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v6, v4, Lcom/narvii/video/widget/MediaTimeLineComponent;

    if-nez v6, :cond_0

    move-object v4, v5

    :cond_0
    check-cast v4, Lcom/narvii/video/widget/MediaTimeLineComponent;

    if-eqz v4, :cond_8

    .line 242
    iget-object v6, v0, Lcom/narvii/video/BaseViceTimeLineFragment;->clipListForViceTracks:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    const-string v7, "clipListForViceTracks[trackIndex]"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v12, v6

    check-cast v12, Lcom/narvii/video/model/BaseClipInfoPack;

    .line 243
    sget v6, Lcom/narvii/mediaeditor/R$id;->vice_time_line_wrapper:I

    invoke-virtual {v4, v6}, Lcom/narvii/video/widget/MediaTimeLineComponent;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/narvii/video/widget/ViceTimeLineWrapperView;

    .line 244
    invoke-virtual/range {p0 .. p1}, Lcom/narvii/video/BaseViceTimeLineFragment;->getViceTrackDataType(I)I

    move-result v6

    const/16 v8, 0x68

    if-ne v6, v8, :cond_1

    .line 245
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->getFrameRetrieverManager()Lcom/narvii/video/services/FrameRetrieverManager;

    move-result-object v5

    :cond_1
    const/16 v8, 0xca

    const/4 v9, 0x0

    .line 246
    invoke-static {v12}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    const/4 v11, 0x0

    .line 247
    iget v13, v12, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    const/4 v14, 0x0

    const/high16 v15, 0x447a0000    # 1000.0f

    const/16 v16, 0x1

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v23, 0x3080

    const/16 v24, 0x0

    move/from16 v17, v6

    move-object v6, v4

    move-object/from16 v25, v7

    move/from16 v7, v17

    move-object/from16 v26, v12

    move-object v12, v5

    move/from16 v17, p2

    move/from16 v22, p3

    .line 246
    invoke-static/range {v6 .. v24}, Lcom/narvii/video/widget/MediaTimeLineComponent;->initTimeLine$default(Lcom/narvii/video/widget/MediaTimeLineComponent;IIZLjava/util/List;Lcom/narvii/video/interfaces/IPreviewPlayer;Lcom/narvii/video/services/FrameRetrieverManager;ILjava/lang/Integer;FZIZZILcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;ZILjava/lang/Object;)I

    .line 249
    new-instance v5, Lcom/narvii/video/BaseViceTimeLineFragment$innerInitViceTimeLine$1;

    invoke-direct {v5, v0, v1}, Lcom/narvii/video/BaseViceTimeLineFragment$innerInitViceTimeLine$1;-><init>(Lcom/narvii/video/BaseViceTimeLineFragment;I)V

    move-object/from16 v15, v25

    invoke-virtual {v15, v5}, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 252
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->getMainTimeLineComponent()Lcom/narvii/video/widget/MediaTimeLineComponent;

    move-result-object v5

    const/16 v16, 0x0

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/narvii/video/widget/MediaTimeLineComponent;->getTotalFrameCount()I

    move-result v5

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    .line 254
    :goto_0
    invoke-virtual {v4}, Lcom/narvii/video/widget/MediaTimeLineComponent;->getTotalFrameCount()I

    move-result v6

    if-le v5, v6, :cond_3

    invoke-virtual {v4}, Lcom/narvii/video/widget/MediaTimeLineComponent;->getTotalFrameCount()I

    move-result v6

    sub-int v6, v5, v6

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    .line 255
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->getMainTimeLineComponent()Lcom/narvii/video/widget/MediaTimeLineComponent;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-virtual {v7}, Lcom/narvii/video/widget/MediaTimeLineComponent;->getFrameCellWidth()I

    move-result v7

    goto :goto_2

    :cond_4
    const/4 v7, 0x0

    :goto_2
    mul-int v7, v7, v5

    invoke-virtual {v4, v5, v6, v7}, Lcom/narvii/video/widget/MediaTimeLineComponent;->updateAdditionalFrameOffset(III)V

    if-eqz p4, :cond_5

    move-object/from16 v5, v26

    .line 257
    iget v12, v5, Lcom/narvii/video/model/BaseClipInfoPack;->startOffsetToMainTrackInMs:I

    add-int v7, p4, v12

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v13, 0x0

    const/16 v14, 0x4e

    const/16 v17, 0x0

    move-object v6, v4

    move-object v0, v15

    move-object/from16 v15, v17

    invoke-static/range {v6 .. v15}, Lcom/narvii/video/widget/MediaTimeLineComponent;->scrollTimeLine$default(Lcom/narvii/video/widget/MediaTimeLineComponent;IZZZZIZILjava/lang/Object;)V

    goto :goto_3

    :cond_5
    move-object v0, v15

    move-object/from16 v5, v26

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x7d

    const/4 v15, 0x0

    move-object v6, v4

    .line 259
    invoke-static/range {v6 .. v15}, Lcom/narvii/video/widget/MediaTimeLineComponent;->scrollTimeLine$default(Lcom/narvii/video/widget/MediaTimeLineComponent;IZZZZIZILjava/lang/Object;)V

    .line 261
    :goto_3
    invoke-virtual/range {p0 .. p1}, Lcom/narvii/video/BaseViceTimeLineFragment;->getViceTrackDataType(I)I

    move-result v6

    invoke-virtual {v0, v4, v6, v5}, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->bindViceTimeLine(Lcom/narvii/video/widget/MediaTimeLineComponent;ILcom/narvii/video/model/BaseClipInfoPack;)V

    .line 262
    invoke-virtual {v5}, Lcom/narvii/video/model/BaseClipInfoPack;->getTrackContent()Ljava/lang/String;

    move-result-object v5

    const-string v6, "viceClip.trackContent"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->setTrackContent(Ljava/lang/String;)V

    .line 263
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->getMainTimeLineComponent()Lcom/narvii/video/widget/MediaTimeLineComponent;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Lcom/narvii/video/widget/MediaTimeLineComponent;->getTimelineVisibleSectionWidth()I

    move-result v5

    goto :goto_4

    :cond_6
    const/4 v5, 0x0

    .line 264
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->getMainTimeLineComponent()Lcom/narvii/video/widget/MediaTimeLineComponent;

    move-result-object v6

    if-eqz v6, :cond_7

    invoke-virtual {v6}, Lcom/narvii/video/widget/MediaTimeLineComponent;->getFrameCellWidth()I

    move-result v16

    :cond_7
    sub-int v5, v5, v16

    sub-int v5, v2, v5

    .line 265
    invoke-virtual {v0, v5, v2}, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->updateScrollingRange(II)V

    .line 266
    new-instance v2, Lcom/narvii/video/BaseViceTimeLineFragment$innerInitViceTimeLine$2;

    move-object v6, v0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v1, v4, v3}, Lcom/narvii/video/BaseViceTimeLineFragment$innerInitViceTimeLine$2;-><init>(Lcom/narvii/video/BaseViceTimeLineFragment;ILcom/narvii/video/widget/MediaTimeLineComponent;I)V

    invoke-virtual {v6, v2}, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->addTimeLineOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    :cond_8
    return-void

    :cond_9
    const-string v1, "viceTimeLinePanel"

    .line 240
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v5
.end method

.method public static synthetic onViceTrackScrolled$default(Lcom/narvii/video/BaseViceTimeLineFragment;IZILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_2

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, -0x1

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    .line 88
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/narvii/video/BaseViceTimeLineFragment;->onViceTrackScrolled(IZ)V

    return-void

    .line 0
    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: onViceTrackScrolled"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

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

    .line 168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 171
    iget v1, p1, Lcom/narvii/video/model/BaseClipInfoPack;->startOffsetToMainTrackInMs:I

    .line 172
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    const-string v7, "composition"

    .line 173
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/2addr v7, v4

    if-lt v1, v7, :cond_0

    .line 174
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v4, v6

    goto :goto_0

    :cond_0
    if-lez v1, :cond_1

    .line 178
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sub-int/2addr v1, v4

    sub-int/2addr v6, v1

    goto :goto_1

    .line 180
    :cond_1
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    :goto_1
    add-int v1, v5, v6

    .line 183
    iget v7, p1, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    if-gt v1, v7, :cond_3

    .line 184
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    iget v5, p1, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    if-ne v1, v5, :cond_2

    goto :goto_2

    :cond_2
    move v5, v1

    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    sub-int/2addr v7, v5

    .line 190
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    :cond_4
    :goto_2
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->sumOfInt(Ljava/lang/Iterable;)I

    move-result v1

    .line 195
    iget v2, p1, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    if-ge v1, v2, :cond_5

    sub-int/2addr v2, v1

    .line 196
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    :cond_5
    invoke-virtual {p1, v0}, Lcom/narvii/video/model/BaseClipInfoPack;->setClipLengthComposition(Ljava/util/List;)V

    .line 199
    invoke-virtual {p1, p2}, Lcom/narvii/video/model/BaseClipInfoPack;->setMainTrackClipComposition(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic updateViceTimeLine$default(Lcom/narvii/video/BaseViceTimeLineFragment;Lcom/narvii/video/model/BaseClipInfoPack;IZIZILjava/lang/Object;)V
    .locals 7

    if-nez p7, :cond_2

    and-int/lit8 p7, p6, 0x4

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    move v4, p3

    :goto_0
    and-int/lit8 p3, p6, 0x10

    if-eqz p3, :cond_1

    const/4 v6, 0x0

    goto :goto_1

    :cond_1
    move v6, p5

    :goto_1
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v5, p4

    .line 119
    invoke-virtual/range {v1 .. v6}, Lcom/narvii/video/BaseViceTimeLineFragment;->updateViceTimeLine(Lcom/narvii/video/model/BaseClipInfoPack;IZIZ)V

    return-void

    .line 0
    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: updateViceTimeLine"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic updateViceTimeLinePanel$default(Lcom/narvii/video/BaseViceTimeLineFragment;ZLjava/util/List;ZILjava/lang/Object;)V
    .locals 1

    if-nez p5, :cond_2

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 129
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/video/BaseViceTimeLineFragment;->updateViceTimeLinePanel(ZLjava/util/List;Z)V

    return-void

    .line 0
    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: updateViceTimeLinePanel"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final updateViceTimelineStyle(IZII)V
    .locals 9

    .line 203
    invoke-virtual {p0, p1}, Lcom/narvii/video/BaseViceTimeLineFragment;->getViewIndexOfTrackIndex(I)I

    move-result v0

    .line 204
    iget-object v1, p0, Lcom/narvii/video/BaseViceTimeLineFragment;->viceTimeLinePanel:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lcom/narvii/video/widget/MediaTimeLineComponent;

    if-nez v1, :cond_0

    move-object v0, v2

    :cond_0
    check-cast v0, Lcom/narvii/video/widget/MediaTimeLineComponent;

    if-eqz v0, :cond_4

    .line 206
    invoke-virtual {p0, p1}, Lcom/narvii/video/BaseViceTimeLineFragment;->getViceTrackDataType(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 221
    sget v1, Lcom/narvii/mediaeditor/R$color;->media_timeline_audio_frame_color:I

    goto :goto_0

    .line 218
    :pswitch_0
    sget v1, Lcom/narvii/mediaeditor/R$color;->media_timeline_sticker_frame_color:I

    goto :goto_0

    .line 215
    :pswitch_1
    sget v1, Lcom/narvii/mediaeditor/R$color;->media_timeline_caption_frame_color:I

    goto :goto_0

    .line 208
    :pswitch_2
    iget-object v1, p0, Lcom/narvii/video/BaseViceTimeLineFragment;->clipListForViceTracks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/narvii/video/model/AVClipInfoPack;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/narvii/video/BaseViceTimeLineFragment;->clipListForViceTracks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    check-cast v1, Lcom/narvii/video/model/AVClipInfoPack;

    iget-boolean v1, v1, Lcom/narvii/video/model/AVClipInfoPack;->isSfx:Z

    if-eqz v1, :cond_2

    .line 209
    sget v1, Lcom/narvii/mediaeditor/R$color;->media_timeline_sfx_frame_color:I

    goto :goto_0

    .line 208
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.narvii.video.model.AVClipInfoPack"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 211
    :cond_2
    sget v1, Lcom/narvii/mediaeditor/R$color;->media_timeline_audio_frame_color:I

    .line 224
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    .line 225
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    if-lez v1, :cond_3

    move-object v3, p0

    move v4, p1

    move v5, v6

    move v6, p2

    move v7, p3

    move v8, p4

    .line 226
    invoke-direct/range {v3 .. v8}, Lcom/narvii/video/BaseViceTimeLineFragment;->innerInitViceTimeLine(IIZII)V

    goto :goto_1

    .line 228
    :cond_3
    new-instance p2, Lcom/narvii/video/BaseViceTimeLineFragment$updateViceTimelineStyle$1;

    move-object v3, p2

    move-object v4, p0

    move v5, p1

    move v7, p3

    move v8, p4

    invoke-direct/range {v3 .. v8}, Lcom/narvii/video/BaseViceTimeLineFragment$updateViceTimelineStyle$1;-><init>(Lcom/narvii/video/BaseViceTimeLineFragment;IIII)V

    invoke-virtual {v0, p2}, Lcom/narvii/video/widget/MediaTimeLineComponent;->setTimeLineCallback(Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;)V

    :cond_4
    :goto_1
    return-void

    :cond_5
    const-string p1, "viceTimeLinePanel"

    .line 204
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/video/BaseViceTimeLineFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/video/BaseViceTimeLineFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/video/BaseViceTimeLineFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/video/BaseViceTimeLineFragment;->_$_findViewCache:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/narvii/video/BaseViceTimeLineFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public abstract getTargetClipListForViceTracks()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/video/model/BaseClipInfoPack;",
            ">;"
        }
    .end annotation
.end method

.method protected final getTrackIndexOfViewIndex(I)I
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/narvii/video/BaseViceTimeLineFragment;->clipListForViceTracks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method protected final getViceTimeLinePanel()Landroid/widget/LinearLayout;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/narvii/video/BaseViceTimeLineFragment;->viceTimeLinePanel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "viceTimeLinePanel"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public abstract getViceTrackDataType(I)I
.end method

.method protected final getViewIndexOfTrackIndex(I)I
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return v0

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/narvii/video/BaseViceTimeLineFragment;->clipListForViceTracks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public initComponent()V
    .locals 2

    .line 30
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "LayoutInflater.from(context)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/narvii/video/BaseViceTimeLineFragment;->inflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method protected final initViceTimeLine()V
    .locals 7

    const/4 v0, 0x1

    .line 78
    iput-boolean v0, p0, Lcom/narvii/video/BaseViceTimeLineFragment;->viceTimeLineInitialized:Z

    .line 79
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 80
    invoke-virtual {p0}, Lcom/narvii/video/BaseViceTimeLineFragment;->getTargetClipListForViceTracks()Ljava/util/List;

    move-result-object v0

    .line 81
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_1

    .line 82
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/narvii/video/model/BaseClipInfoPack;

    iget v5, v5, Lcom/narvii/video/model/BaseClipInfoPack;->startOffsetToMainTrackInMs:I

    if-lez v5, :cond_0

    neg-int v5, v5

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    .line 83
    :goto_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x5

    const/4 v6, 0x0

    move-object v1, p0

    .line 85
    invoke-static/range {v1 .. v6}, Lcom/narvii/video/BaseViceTimeLineFragment;->updateViceTimeLinePanel$default(Lcom/narvii/video/BaseViceTimeLineFragment;ZLjava/util/List;ZILjava/lang/Object;)V

    return-void
.end method

.method protected onAVClipsPrepared()V
    .locals 1

    .line 71
    invoke-super {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->onAVClipsPrepared()V

    .line 72
    iget-boolean v0, p0, Lcom/narvii/video/BaseViceTimeLineFragment;->viceTimeLineInitialized:Z

    if-nez v0, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/narvii/video/BaseViceTimeLineFragment;->initViceTimeLine()V

    :cond_0
    return-void
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/narvii/video/BaseViceTimeLineFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onFrameLocatedDuringMove(II)V
    .locals 18

    move-object/from16 v0, p0

    .line 34
    invoke-super/range {p0 .. p2}, Lcom/narvii/video/ScrollingTimeLineFragment;->onFrameLocatedDuringMove(II)V

    .line 35
    iget-object v1, v0, Lcom/narvii/video/BaseViceTimeLineFragment;->viceTimeLinePanel:Landroid/widget/LinearLayout;

    const-string v2, "viceTimeLinePanel"

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_2

    .line 36
    invoke-virtual {v0, v5}, Lcom/narvii/video/BaseViceTimeLineFragment;->getTrackIndexOfViewIndex(I)I

    move-result v6

    .line 37
    iget-object v7, v0, Lcom/narvii/video/BaseViceTimeLineFragment;->viceTimeLinePanel:Landroid/widget/LinearLayout;

    if-eqz v7, :cond_1

    invoke-virtual {v7, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_0

    move-object v8, v7

    check-cast v8, Lcom/narvii/video/widget/MediaTimeLineComponent;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    .line 38
    iget-object v7, v0, Lcom/narvii/video/BaseViceTimeLineFragment;->clipListForViceTracks:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/narvii/video/model/BaseClipInfoPack;

    iget v14, v6, Lcom/narvii/video/model/BaseClipInfoPack;->startOffsetToMainTrackInMs:I

    const/4 v15, 0x0

    const/16 v16, 0x4e

    const/16 v17, 0x0

    move/from16 v9, p1

    .line 37
    invoke-static/range {v8 .. v17}, Lcom/narvii/video/widget/MediaTimeLineComponent;->scrollTimeLine$default(Lcom/narvii/video/widget/MediaTimeLineComponent;IZZZZIZILjava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type com.narvii.video.widget.MediaTimeLineComponent"

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_2
    const/4 v1, 0x3

    .line 40
    invoke-static {v0, v4, v4, v1, v3}, Lcom/narvii/video/BaseViceTimeLineFragment;->onViceTrackScrolled$default(Lcom/narvii/video/BaseViceTimeLineFragment;IZILjava/lang/Object;)V

    return-void

    .line 35
    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v3

    :goto_2
    goto :goto_1
.end method

.method public onPlayerTick(JJ)V
    .locals 17

    move-object/from16 v0, p0

    .line 44
    invoke-super/range {p0 .. p4}, Lcom/narvii/video/ScrollingTimeLineFragment;->onPlayerTick(JJ)V

    .line 45
    iget-object v1, v0, Lcom/narvii/video/BaseViceTimeLineFragment;->viceTimeLinePanel:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    const-string v3, "viceTimeLinePanel"

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_2

    .line 46
    invoke-virtual {v0, v4}, Lcom/narvii/video/BaseViceTimeLineFragment;->getTrackIndexOfViewIndex(I)I

    move-result v5

    .line 47
    iget-object v6, v0, Lcom/narvii/video/BaseViceTimeLineFragment;->viceTimeLinePanel:Landroid/widget/LinearLayout;

    if-eqz v6, :cond_1

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_0

    move-object v7, v6

    check-cast v7, Lcom/narvii/video/widget/MediaTimeLineComponent;

    move-wide/from16 v14, p1

    long-to-int v8, v14

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    .line 48
    iget-object v6, v0, Lcom/narvii/video/BaseViceTimeLineFragment;->clipListForViceTracks:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/narvii/video/model/BaseClipInfoPack;

    iget v13, v5, Lcom/narvii/video/model/BaseClipInfoPack;->startOffsetToMainTrackInMs:I

    const/4 v5, 0x0

    const/16 v6, 0x4e

    const/16 v16, 0x0

    move v14, v5

    move v15, v6

    .line 47
    invoke-static/range {v7 .. v16}, Lcom/narvii/video/widget/MediaTimeLineComponent;->scrollTimeLine$default(Lcom/narvii/video/widget/MediaTimeLineComponent;IZZZZIZILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type com.narvii.video.widget.MediaTimeLineComponent"

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_2
    return-void

    .line 45
    :cond_3
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v2

    :goto_2
    goto :goto_1
.end method

.method public onTimeLineLayout()V
    .locals 1

    .line 64
    invoke-super {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->onTimeLineLayout()V

    .line 65
    iget-boolean v0, p0, Lcom/narvii/video/BaseViceTimeLineFragment;->viceTimeLineInitialized:Z

    if-nez v0, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/narvii/video/BaseViceTimeLineFragment;->initViceTimeLine()V

    :cond_0
    return-void
.end method

.method public onTimeLineScrolledOffsetChanged(I)V
    .locals 7

    .line 53
    invoke-super {p0, p1}, Lcom/narvii/video/BaseMediaEditorFragment;->onTimeLineScrolledOffsetChanged(I)V

    .line 54
    invoke-virtual {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->getMainTimeLineComponent()Lcom/narvii/video/widget/MediaTimeLineComponent;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/video/widget/MediaTimeLineComponent;->getTimelineVisibleSectionWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 55
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->getMainTimeLineComponent()Lcom/narvii/video/widget/MediaTimeLineComponent;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/narvii/video/widget/MediaTimeLineComponent;->getFrameCellWidth()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    sub-int/2addr v0, v2

    sub-int v0, p1, v0

    .line 57
    iget-object v2, p0, Lcom/narvii/video/BaseViceTimeLineFragment;->viceTimeLinePanel:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    const-string v4, "viceTimeLinePanel"

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    :goto_2
    if-ge v1, v2, :cond_4

    .line 58
    iget-object v5, p0, Lcom/narvii/video/BaseViceTimeLineFragment;->viceTimeLinePanel:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_3

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_2

    check-cast v5, Lcom/narvii/video/widget/MediaTimeLineComponent;

    sget v6, Lcom/narvii/mediaeditor/R$id;->vice_time_line_wrapper:I

    invoke-virtual {v5, v6}, Lcom/narvii/video/widget/MediaTimeLineComponent;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/narvii/video/widget/ViceTimeLineWrapperView;

    invoke-virtual {v5, v0, p1}, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->updateScrollingRange(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.narvii.video.widget.MediaTimeLineComponent"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 60
    :cond_4
    new-instance p1, Lcom/narvii/video/BaseViceTimeLineFragment$onTimeLineScrolledOffsetChanged$1;

    invoke-direct {p1, p0}, Lcom/narvii/video/BaseViceTimeLineFragment$onTimeLineScrolledOffsetChanged$1;-><init>(Lcom/narvii/video/BaseViceTimeLineFragment;)V

    const-wide/16 v0, 0x32

    invoke-static {p1, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    return-void

    .line 57
    :cond_5
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw v3

    :goto_4
    goto :goto_3
.end method

.method public abstract onViceTrackClicked(I)V
.end method

.method public abstract onViceTrackOffsetChanged(I)V
.end method

.method protected final onViceTrackScrolled(IZ)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 89
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->getMainTimeLineComponent()Lcom/narvii/video/widget/MediaTimeLineComponent;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/narvii/video/widget/MediaTimeLineComponent;->getFrameCellWidth()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 90
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->getMainTimeLineComponent()Lcom/narvii/video/widget/MediaTimeLineComponent;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/narvii/video/widget/MediaTimeLineComponent;->getRealFrameTimelineWidth()I

    move-result v4

    move v12, v4

    goto :goto_1

    :cond_1
    const/4 v12, 0x0

    .line 91
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->getMainTimeLineComponent()Lcom/narvii/video/widget/MediaTimeLineComponent;

    move-result-object v4

    const/4 v13, 0x0

    if-eqz v4, :cond_2

    const/4 v5, 0x1

    invoke-static {v4, v3, v5, v13}, Lcom/narvii/video/widget/MediaTimeLineComponent;->getFirstFrameStartDx$default(Lcom/narvii/video/widget/MediaTimeLineComponent;ZILjava/lang/Object;)I

    move-result v4

    move v14, v4

    goto :goto_2

    :cond_2
    const/4 v14, 0x0

    .line 92
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getRtl()Z

    move-result v4

    if-eqz v4, :cond_3

    sub-int v4, v14, v12

    goto :goto_3

    :cond_3
    add-int v4, v14, v12

    :goto_3
    move v15, v4

    const/4 v4, -0x1

    const-string v11, "null cannot be cast to non-null type com.narvii.video.widget.MediaTimeLineComponent"

    const-string v16, "viceTimeLinePanel"

    if-ne v1, v4, :cond_7

    .line 94
    iget-object v1, v0, Lcom/narvii/video/BaseViceTimeLineFragment;->viceTimeLinePanel:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    const/4 v10, 0x0

    :goto_4
    if-ge v10, v1, :cond_b

    .line 95
    iget-object v4, v0, Lcom/narvii/video/BaseViceTimeLineFragment;->viceTimeLinePanel:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_5

    invoke-virtual {v4, v10}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_4

    check-cast v4, Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 96
    sget v5, Lcom/narvii/mediaeditor/R$id;->vice_time_line_wrapper:I

    invoke-virtual {v4, v5}, Lcom/narvii/video/widget/MediaTimeLineComponent;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/narvii/video/widget/ViceTimeLineWrapperView;

    .line 97
    invoke-virtual {v4, v3}, Lcom/narvii/video/widget/MediaTimeLineComponent;->getFirstFrameStartDx(Z)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v4}, Lcom/narvii/video/widget/MediaTimeLineComponent;->getRealFrameTimelineWidth()I

    move-result v7

    int-to-float v9, v14

    int-to-float v8, v15

    move-object v4, v5

    move v5, v6

    move v6, v7

    move v7, v2

    move/from16 v17, v8

    move v8, v12

    move/from16 v18, v10

    move/from16 v10, v17

    move-object v3, v11

    move/from16 v11, p2

    invoke-virtual/range {v4 .. v11}, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->updateVisibleContentSection(FIIIFFZ)V

    add-int/lit8 v10, v18, 0x1

    move-object v11, v3

    const/4 v3, 0x0

    goto :goto_4

    :cond_4
    move-object v3, v11

    .line 95
    new-instance v1, Lkotlin/TypeCastException;

    invoke-direct {v1, v3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v13

    .line 94
    :cond_6
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v13

    :cond_7
    move-object v3, v11

    .line 100
    iget-object v4, v0, Lcom/narvii/video/BaseViceTimeLineFragment;->viceTimeLinePanel:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_c

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    if-gez v1, :cond_8

    goto :goto_5

    :cond_8
    if-le v4, v1, :cond_b

    .line 101
    iget-object v4, v0, Lcom/narvii/video/BaseViceTimeLineFragment;->viceTimeLinePanel:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_a

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_9

    check-cast v1, Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 102
    sget v3, Lcom/narvii/mediaeditor/R$id;->vice_time_line_wrapper:I

    invoke-virtual {v1, v3}, Lcom/narvii/video/widget/MediaTimeLineComponent;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/narvii/video/widget/ViceTimeLineWrapperView;

    const/4 v3, 0x0

    .line 103
    invoke-virtual {v1, v3}, Lcom/narvii/video/widget/MediaTimeLineComponent;->getFirstFrameStartDx(Z)I

    move-result v3

    int-to-float v5, v3

    invoke-virtual {v1}, Lcom/narvii/video/widget/MediaTimeLineComponent;->getRealFrameTimelineWidth()I

    move-result v6

    int-to-float v9, v14

    int-to-float v10, v15

    move v7, v2

    move v8, v12

    move/from16 v11, p2

    invoke-virtual/range {v4 .. v11}, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->updateVisibleContentSection(FIIIFFZ)V

    goto :goto_5

    .line 101
    :cond_9
    new-instance v1, Lkotlin/TypeCastException;

    invoke-direct {v1, v3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v13

    :cond_b
    :goto_5
    return-void

    .line 100
    :cond_c
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_7

    :goto_6
    throw v13

    :goto_7
    goto :goto_6
.end method

.method protected final setViceTimeLinePanel(Landroid/widget/LinearLayout;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    iput-object p1, p0, Lcom/narvii/video/BaseViceTimeLineFragment;->viceTimeLinePanel:Landroid/widget/LinearLayout;

    return-void
.end method

.method protected final updateViceTimeLine(Lcom/narvii/video/model/BaseClipInfoPack;IZIZ)V
    .locals 3

    const-string v0, "viceClip"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getTotalVisibleVideoDurationInMs()Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 121
    invoke-direct {p0, p1, v0}, Lcom/narvii/video/BaseViceTimeLineFragment;->updateViceClipComposition(Lcom/narvii/video/model/BaseClipInfoPack;Ljava/util/ArrayList;)V

    .line 122
    invoke-virtual {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->getMainTimeLineComponent()Lcom/narvii/video/widget/MediaTimeLineComponent;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/narvii/video/widget/MediaTimeLineComponent;->getTimeLineScrolledDx$default(Lcom/narvii/video/widget/MediaTimeLineComponent;ZILjava/lang/Object;)I

    move-result v0

    .line 123
    :cond_0
    invoke-direct {p0, p2, p3, p4, v0}, Lcom/narvii/video/BaseViceTimeLineFragment;->updateViceTimelineStyle(IZII)V

    .line 124
    new-instance p1, Lcom/narvii/video/BaseViceTimeLineFragment$updateViceTimeLine$1;

    invoke-direct {p1, p0, p2, p5}, Lcom/narvii/video/BaseViceTimeLineFragment$updateViceTimeLine$1;-><init>(Lcom/narvii/video/BaseViceTimeLineFragment;IZ)V

    const-wide/16 p2, 0x32

    invoke-static {p1, p2, p3}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method protected final updateViceTimeLinePanel(ZLjava/util/List;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "autoScrollToMsList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/narvii/video/BaseViceTimeLineFragment;->clipListForViceTracks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 131
    iget-object v0, p0, Lcom/narvii/video/BaseViceTimeLineFragment;->clipListForViceTracks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/narvii/video/BaseViceTimeLineFragment;->getTargetClipListForViceTracks()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 132
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getTotalVisibleVideoDurationInMs()Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 133
    iget-object v1, p0, Lcom/narvii/video/BaseViceTimeLineFragment;->clipListForViceTracks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/video/model/BaseClipInfoPack;

    const-string v3, "clip"

    .line 134
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v2, v0}, Lcom/narvii/video/BaseViceTimeLineFragment;->updateViceClipComposition(Lcom/narvii/video/model/BaseClipInfoPack;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/narvii/video/BaseViceTimeLineFragment;->clipListForViceTracks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const-string v1, "viceTimeLinePanel"

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 137
    iget-object p1, p0, Lcom/narvii/video/BaseViceTimeLineFragment;->viceTimeLinePanel:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 138
    iget-object p1, p0, Lcom/narvii/video/BaseViceTimeLineFragment;->viceTimeLinePanel:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_1

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    :cond_1
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 137
    :cond_2
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 141
    :cond_3
    iget-object v0, p0, Lcom/narvii/video/BaseViceTimeLineFragment;->viceTimeLinePanel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_d

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 142
    iget-object v0, p0, Lcom/narvii/video/BaseViceTimeLineFragment;->clipListForViceTracks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 143
    iget-object v4, p0, Lcom/narvii/video/BaseViceTimeLineFragment;->viceTimeLinePanel:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_c

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v0, :cond_5

    sub-int/2addr v4, v0

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v4, :cond_8

    .line 147
    iget-object v6, p0, Lcom/narvii/video/BaseViceTimeLineFragment;->viceTimeLinePanel:Landroid/widget/LinearLayout;

    if-eqz v6, :cond_4

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_5
    if-ge v4, v0, :cond_8

    sub-int/2addr v0, v4

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v0, :cond_8

    .line 153
    iget-object v6, p0, Lcom/narvii/video/BaseViceTimeLineFragment;->inflater:Landroid/view/LayoutInflater;

    if-eqz v6, :cond_7

    sget v7, Lcom/narvii/mediaeditor/R$layout;->component_vice_time_line:I

    iget-object v8, p0, Lcom/narvii/video/BaseViceTimeLineFragment;->viceTimeLinePanel:Landroid/widget/LinearLayout;

    if-eqz v8, :cond_6

    invoke-virtual {v6, v7, v8, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_7
    const-string p1, "inflater"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 157
    :cond_8
    invoke-virtual {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->getMainTimeLineComponent()Lcom/narvii/video/widget/MediaTimeLineComponent;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-static {v0, v3, v5, v2}, Lcom/narvii/video/widget/MediaTimeLineComponent;->getTimeLineScrolledDx$default(Lcom/narvii/video/widget/MediaTimeLineComponent;ZILjava/lang/Object;)I

    move-result v0

    goto :goto_3

    :cond_9
    const/4 v0, 0x0

    .line 158
    :goto_3
    iget-object v4, p0, Lcom/narvii/video/BaseViceTimeLineFragment;->viceTimeLinePanel:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_b

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    :goto_4
    if-ge v3, v1, :cond_a

    .line 159
    invoke-virtual {p0, v3}, Lcom/narvii/video/BaseViceTimeLineFragment;->getTrackIndexOfViewIndex(I)I

    move-result v2

    .line 160
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-direct {p0, v2, p1, v4, v0}, Lcom/narvii/video/BaseViceTimeLineFragment;->updateViceTimelineStyle(IZII)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 162
    :cond_a
    new-instance p1, Lcom/narvii/video/BaseViceTimeLineFragment$updateViceTimeLinePanel$1;

    invoke-direct {p1, p0, p3}, Lcom/narvii/video/BaseViceTimeLineFragment$updateViceTimeLinePanel$1;-><init>(Lcom/narvii/video/BaseViceTimeLineFragment;Z)V

    const-wide/16 p2, 0x32

    invoke-static {p1, p2, p3}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    return-void

    .line 158
    :cond_b
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 143
    :cond_c
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 141
    :cond_d
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_6

    :goto_5
    throw v2

    :goto_6
    goto :goto_5
.end method
