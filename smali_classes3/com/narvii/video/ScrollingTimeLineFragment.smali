.class public abstract Lcom/narvii/video/ScrollingTimeLineFragment;
.super Lcom/narvii/video/BaseMediaEditorFragment;
.source "ScrollingTimeLineFragment.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nScrollingTimeLineFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ScrollingTimeLineFragment.kt\ncom/narvii/video/ScrollingTimeLineFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,373:1\n1596#2,3:374\n*E\n*S KotlinDebug\n*F\n+ 1 ScrollingTimeLineFragment.kt\ncom/narvii/video/ScrollingTimeLineFragment\n*L\n142#1,3:374\n*E\n"
.end annotation


# instance fields
.field private final REQUEST_CODE_EDIT_ATTACHMENT:I

.field private final REQUEST_CODE_SCENE_EDITOR:I

.field private _$_findViewCache:Ljava/util/HashMap;

.field protected frameRetrieverManager:Lcom/narvii/video/services/FrameRetrieverManager;

.field private hasVideoCompleted:Z

.field private mainTimeLineComponent:Lcom/narvii/video/widget/MediaTimeLineComponent;

.field private skipSeekForTimeLineScrolling:Z

.field private subAudioEditing:Z

.field private subEditingReturnClipList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            ">;"
        }
    .end annotation
.end field

.field private subVideoEditing:Z

.field private videoDurationText:Landroid/widget/TextView;

.field private videoPlaybackTimeDivider:Landroid/view/View;

.field private videoPlaybackTimeText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/narvii/video/BaseMediaEditorFragment;-><init>()V

    const/16 v0, 0x457

    .line 19
    iput v0, p0, Lcom/narvii/video/ScrollingTimeLineFragment;->REQUEST_CODE_SCENE_EDITOR:I

    const/16 v0, 0x8ae

    .line 20
    iput v0, p0, Lcom/narvii/video/ScrollingTimeLineFragment;->REQUEST_CODE_EDIT_ATTACHMENT:I

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/video/ScrollingTimeLineFragment;->subEditingReturnClipList:Ljava/util/ArrayList;

    return-void
.end method

.method private final initVideoTimeLine()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 290
    invoke-static {p0, v0, v0, v1, v2}, Lcom/narvii/video/ScrollingTimeLineFragment;->updateVideoTimeLineInfo$default(Lcom/narvii/video/ScrollingTimeLineFragment;ZIILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic updateVideoTimeLineInfo$default(Lcom/narvii/video/ScrollingTimeLineFragment;ZIILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_2

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, -0x1

    .line 320
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/narvii/video/ScrollingTimeLineFragment;->updateVideoTimeLineInfo(ZI)V

    return-void

    .line 0
    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: updateVideoTimeLineInfo"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/video/ScrollingTimeLineFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/video/ScrollingTimeLineFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/video/ScrollingTimeLineFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/video/ScrollingTimeLineFragment;->_$_findViewCache:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/narvii/video/ScrollingTimeLineFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method protected changeVideoPlaybackStatus(ZZ)V
    .locals 12

    if-nez p1, :cond_1

    .line 278
    iget-boolean v0, p0, Lcom/narvii/video/ScrollingTimeLineFragment;->hasVideoCompleted:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 280
    iput-boolean v0, p0, Lcom/narvii/video/ScrollingTimeLineFragment;->hasVideoCompleted:Z

    const/4 v1, 0x1

    .line 281
    iput-boolean v1, p0, Lcom/narvii/video/ScrollingTimeLineFragment;->skipSeekForTimeLineScrolling:Z

    .line 282
    iget-object v2, p0, Lcom/narvii/video/ScrollingTimeLineFragment;->mainTimeLineComponent:Lcom/narvii/video/widget/MediaTimeLineComponent;

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x7d

    const/4 v11, 0x0

    invoke-static/range {v2 .. v11}, Lcom/narvii/video/widget/MediaTimeLineComponent;->scrollTimeLine$default(Lcom/narvii/video/widget/MediaTimeLineComponent;IZZZZIZILjava/lang/Object;)V

    .line 283
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getSeekRequestQueue()Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    const/4 v2, 0x0

    .line 284
    invoke-static {p0, v0, v0, v1, v2}, Lcom/narvii/video/BaseMediaEditorFragment;->safeSeekTo$default(Lcom/narvii/video/BaseMediaEditorFragment;IIILjava/lang/Object;)V

    .line 286
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/narvii/video/BaseMediaEditorFragment;->changeVideoPlaybackStatus(ZZ)V

    return-void
.end method

.method protected getAudioInputClipList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            ">;"
        }
    .end annotation

    const-string v0, "inputAudioClipList"

    .line 53
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 55
    const-class v1, Lcom/narvii/video/model/AVClipInfoPack;

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 60
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method protected getCaptionList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/Caption;",
            ">;"
        }
    .end annotation

    const-string v0, "inputCaptionList"

    .line 64
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 66
    const-class v1, Lcom/narvii/video/model/Caption;

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 71
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method protected final getFrameRetrieverManager()Lcom/narvii/video/services/FrameRetrieverManager;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/narvii/video/ScrollingTimeLineFragment;->frameRetrieverManager:Lcom/narvii/video/services/FrameRetrieverManager;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "frameRetrieverManager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method protected final getHasVideoCompleted()Z
    .locals 1

    .line 27
    iget-boolean v0, p0, Lcom/narvii/video/ScrollingTimeLineFragment;->hasVideoCompleted:Z

    return v0
.end method

.method protected final getMainTimeLineComponent()Lcom/narvii/video/widget/MediaTimeLineComponent;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/narvii/video/ScrollingTimeLineFragment;->mainTimeLineComponent:Lcom/narvii/video/widget/MediaTimeLineComponent;

    return-object v0
.end method

.method protected final getMainTrackPlaybackTime()I
    .locals 1

    .line 314
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getCurrentVideoPositionInTimeline()I

    move-result v0

    return v0
.end method

.method protected getPipClipList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/pip/PipInfoPack;",
            ">;"
        }
    .end annotation

    const-string v0, "inputPipInfoPackList"

    .line 86
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 88
    const-class v1, Lcom/narvii/pip/PipInfoPack;

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 93
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method protected final getREQUEST_CODE_EDIT_ATTACHMENT()I
    .locals 1

    .line 20
    iget v0, p0, Lcom/narvii/video/ScrollingTimeLineFragment;->REQUEST_CODE_EDIT_ATTACHMENT:I

    return v0
.end method

.method protected final getREQUEST_CODE_SCENE_EDITOR()I
    .locals 1

    .line 19
    iget v0, p0, Lcom/narvii/video/ScrollingTimeLineFragment;->REQUEST_CODE_SCENE_EDITOR:I

    return v0
.end method

.method protected final getSkipSeekForTimeLineScrolling()Z
    .locals 1

    .line 28
    iget-boolean v0, p0, Lcom/narvii/video/ScrollingTimeLineFragment;->skipSeekForTimeLineScrolling:Z

    return v0
.end method

.method protected getStickerList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/StickerInfoPack;",
            ">;"
        }
    .end annotation

    const-string v0, "inputStickerList"

    .line 75
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 77
    const-class v1, Lcom/narvii/video/model/StickerInfoPack;

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 82
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method protected final getSubAudioEditing()Z
    .locals 1

    .line 30
    iget-boolean v0, p0, Lcom/narvii/video/ScrollingTimeLineFragment;->subAudioEditing:Z

    return v0
.end method

.method protected final getSubEditingReturnClipList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            ">;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/narvii/video/ScrollingTimeLineFragment;->subEditingReturnClipList:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected final getSubVideoEditing()Z
    .locals 1

    .line 29
    iget-boolean v0, p0, Lcom/narvii/video/ScrollingTimeLineFragment;->subVideoEditing:Z

    return v0
.end method

.method protected final getVideoDurationText()Landroid/widget/TextView;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/narvii/video/ScrollingTimeLineFragment;->videoDurationText:Landroid/widget/TextView;

    return-object v0
.end method

.method protected getVideoInputClipList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            ">;"
        }
    .end annotation

    const-string v0, "inputVideoClipList"

    .line 36
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 38
    const-class v1, Lcom/narvii/video/model/AVClipInfoPack;

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 43
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method protected final getVideoPlaybackTimeDivider()Landroid/view/View;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/narvii/video/ScrollingTimeLineFragment;->videoPlaybackTimeDivider:Landroid/view/View;

    return-object v0
.end method

.method protected final getVideoPlaybackTimeText()Landroid/widget/TextView;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/narvii/video/ScrollingTimeLineFragment;->videoPlaybackTimeText:Landroid/widget/TextView;

    return-object v0
.end method

.method protected ignoreMainTrackCompletionInBase()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public abstract initFrameRetrieverManager()V
.end method

.method protected innerInitMainTimeLine(IZ)V
    .locals 19

    move-object/from16 v15, p0

    .line 366
    iget-object v0, v15, Lcom/narvii/video/ScrollingTimeLineFragment;->mainTimeLineComponent:Lcom/narvii/video/widget/MediaTimeLineComponent;

    if-eqz v0, :cond_1

    const/16 v1, 0x64

    const/16 v2, 0xca

    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v4

    invoke-interface {v4}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getVideoClipInfoList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v5

    iget-object v6, v15, Lcom/narvii/video/ScrollingTimeLineFragment;->frameRetrieverManager:Lcom/narvii/video/services/FrameRetrieverManager;

    if-eqz v6, :cond_0

    const/16 v7, 0xbb8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/high16 v9, 0x447a0000    # 1000.0f

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v17, 0x3400

    const/16 v18, 0x0

    move/from16 v7, p1

    move-object/from16 v15, p0

    move/from16 v16, p2

    invoke-static/range {v0 .. v18}, Lcom/narvii/video/widget/MediaTimeLineComponent;->initTimeLine$default(Lcom/narvii/video/widget/MediaTimeLineComponent;IIZLjava/util/List;Lcom/narvii/video/interfaces/IPreviewPlayer;Lcom/narvii/video/services/FrameRetrieverManager;ILjava/lang/Integer;FZIZZILcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;ZILjava/lang/Object;)I

    goto :goto_0

    :cond_0
    const-string v0, "frameRetrieverManager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method protected innerOnVideoPrepared()V
    .locals 0

    return-void
.end method

.method protected final isAllVideoClipMute()Z
    .locals 6

    .line 371
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getVideoClipInfoList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/narvii/video/model/AVClipInfoPack;

    iget v4, v4, Lcom/narvii/video/model/AVClipInfoPack;->trackVolume:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_0

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    return v2
.end method

.method protected final moveMainTrackTo(I)V
    .locals 13

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 294
    invoke-static {p0, v0, p1, v1, v2}, Lcom/narvii/video/BaseMediaEditorFragment;->safeSeekTo$default(Lcom/narvii/video/BaseMediaEditorFragment;IIILjava/lang/Object;)V

    .line 295
    iget-object v3, p0, Lcom/narvii/video/ScrollingTimeLineFragment;->mainTimeLineComponent:Lcom/narvii/video/widget/MediaTimeLineComponent;

    if-eqz v3, :cond_0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x76

    const/4 v12, 0x0

    move v4, p1

    invoke-static/range {v3 .. v12}, Lcom/narvii/video/widget/MediaTimeLineComponent;->scrollTimeLine$default(Lcom/narvii/video/widget/MediaTimeLineComponent;IZZZZIZILjava/lang/Object;)V

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/narvii/video/ScrollingTimeLineFragment;->videoPlaybackTimeText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/narvii/video/widget/MediaTimeLineComponentKt;->convertMillisToTime(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method protected final moveMainTrackTo(II)V
    .locals 2

    if-ltz p1, :cond_4

    .line 300
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getVideoClipInfoList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_2

    .line 303
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getActiveVideoClip()Lcom/narvii/video/model/AVClipInfoPack;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v0, v0, Lcom/narvii/video/model/BaseClipInfoPack;->indexInScene:I

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    if-eq p1, v0, :cond_2

    .line 304
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/narvii/video/interfaces/IPreviewPlayer;->setActiveVideoClip(II)Lcom/narvii/video/model/AVClipInfoPack;

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_3

    .line 308
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v1

    invoke-interface {v1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getVideoClipInfoList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/video/model/AVClipInfoPack;

    invoke-virtual {v1}, Lcom/narvii/video/model/AVClipInfoPack;->trimmedDurationInMsWithSpeed()I

    move-result v1

    add-int/2addr p2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 310
    :cond_3
    invoke-virtual {p0, p2}, Lcom/narvii/video/ScrollingTimeLineFragment;->moveMainTrackTo(I)V

    :cond_4
    :goto_2
    return-void
.end method

.method protected onAVClipsPrepared()V
    .locals 1

    .line 187
    invoke-super {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->onAVClipsPrepared()V

    .line 188
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getInitSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 191
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->initFrameRetrieverManager()V

    .line 192
    invoke-direct {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->initVideoTimeLine()V

    return-void
.end method

.method protected onActiveVideoChanged(IZ)V
    .locals 7

    .line 229
    invoke-super {p0, p1, p2}, Lcom/narvii/video/BaseMediaEditorFragment;->onActiveVideoChanged(IZ)V

    .line 230
    iget-object v0, p0, Lcom/narvii/video/ScrollingTimeLineFragment;->mainTimeLineComponent:Lcom/narvii/video/widget/MediaTimeLineComponent;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/narvii/video/widget/MediaTimeLineComponent;->setActiveClipInTrack(I)V

    :cond_0
    if-eqz p2, :cond_2

    .line 232
    iget-object v1, p0, Lcom/narvii/video/ScrollingTimeLineFragment;->mainTimeLineComponent:Lcom/narvii/video/widget/MediaTimeLineComponent;

    if-eqz v1, :cond_1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move v2, p1

    invoke-static/range {v1 .. v6}, Lcom/narvii/video/widget/MediaTimeLineComponent;->scrollTimeLineToClip$default(Lcom/narvii/video/widget/MediaTimeLineComponent;IIZILjava/lang/Object;)I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    :goto_0
    if-ltz p1, :cond_2

    .line 235
    iget-object p2, p0, Lcom/narvii/video/ScrollingTimeLineFragment;->videoPlaybackTimeText:Landroid/widget/TextView;

    if-eqz p2, :cond_2

    invoke-static {p1}, Lcom/narvii/video/widget/MediaTimeLineComponentKt;->convertMillisToTime(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    .line 101
    invoke-super/range {p0 .. p3}, Lcom/narvii/app/NVFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 102
    iget v4, v0, Lcom/narvii/video/ScrollingTimeLineFragment;->REQUEST_CODE_SCENE_EDITOR:I

    const/4 v5, -0x1

    const/4 v6, 0x0

    if-ne v1, v4, :cond_d

    if-ne v2, v5, :cond_d

    if-eqz v3, :cond_0

    const-string v4, "clipInfoList"

    .line 104
    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v6

    :goto_0
    const/4 v7, 0x1

    if-eqz v3, :cond_1

    const-string v8, "isVideoTrimming"

    .line 105
    invoke-virtual {v3, v8, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    goto :goto_1

    :cond_1
    const/4 v8, 0x1

    :goto_1
    if-eqz v3, :cond_2

    const-string v9, "videoVolumeList"

    .line 106
    invoke-virtual {v3, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    :cond_2
    move-object v9, v6

    :goto_2
    sget-object v10, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v10}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v9

    if-eqz v9, :cond_3

    goto :goto_3

    :cond_3
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v9

    :goto_3
    if-nez v8, :cond_4

    if-nez v4, :cond_4

    .line 110
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v10

    invoke-interface {v10}, Lcom/narvii/video/interfaces/IPreviewPlayer;->removeAllAudios()V

    .line 111
    iget-object v10, v0, Lcom/narvii/video/ScrollingTimeLineFragment;->subEditingReturnClipList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 113
    :cond_4
    new-instance v10, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v10}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    const/4 v11, 0x0

    iput v11, v10, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-eqz v4, :cond_9

    .line 115
    const-class v12, Lcom/narvii/video/model/AVClipInfoPack;

    invoke-static {v4, v12}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 116
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v12

    xor-int/2addr v12, v7

    if-eqz v12, :cond_8

    if-eqz v8, :cond_7

    .line 118
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/narvii/video/model/AVClipInfoPack;

    .line 119
    invoke-virtual {v8}, Lcom/narvii/video/model/AVClipInfoPack;->trimmedDurationInMs()I

    move-result v12

    iput v12, v8, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    .line 120
    iget v12, v8, Lcom/narvii/video/model/BaseClipInfoPack;->indexInScene:I

    iput v12, v10, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 121
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v12

    invoke-interface {v12}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getVideoClipInfoList()Ljava/util/ArrayList;

    move-result-object v14

    .line 122
    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 123
    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 125
    :cond_5
    iget v12, v10, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    const-string v13, "clipList[newActiveClipIndex]"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v12, Lcom/narvii/video/model/AVClipInfoPack;

    .line 126
    invoke-virtual {v12, v8}, Lcom/narvii/video/model/AVClipInfoPack;->merge(Lcom/narvii/video/model/AVClipInfoPack;)V

    .line 127
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getTotalVisibleVideoDurationInMs()Lkotlin/Pair;

    move-result-object v8

    invoke-virtual {v8}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    .line 128
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v12

    invoke-interface {v12, v8}, Lcom/narvii/video/interfaces/IPreviewPlayer;->adjustAllViceTrackRange(I)V

    .line 130
    :goto_4
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v12, 0x0

    :goto_5
    if-ge v12, v8, :cond_6

    .line 131
    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/narvii/video/model/AVClipInfoPack;

    iput v12, v13, Lcom/narvii/video/model/BaseClipInfoPack;->indexInScene:I

    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 133
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v13

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x6

    const/16 v18, 0x0

    invoke-static/range {v13 .. v18}, Lcom/narvii/video/interfaces/IPreviewPlayer$DefaultImpls;->resetVideoClipList$default(Lcom/narvii/video/interfaces/IPreviewPlayer;Ljava/util/ArrayList;IIILjava/lang/Object;)Lcom/narvii/video/model/AVClipInfoPack;

    goto :goto_6

    .line 135
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v8

    invoke-interface {v8, v4}, Lcom/narvii/video/interfaces/IPreviewPlayer;->resetAudioClipList(Ljava/util/List;)V

    :cond_8
    :goto_6
    const-string v8, "newClipInfoList"

    .line 138
    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v4, v0, Lcom/narvii/video/ScrollingTimeLineFragment;->subEditingReturnClipList:Ljava/util/ArrayList;

    .line 141
    :cond_9
    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    xor-int/2addr v4, v7

    if-eqz v4, :cond_c

    .line 142
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v4

    invoke-interface {v4}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getVideoClipInfoList()Ljava/util/ArrayList;

    move-result-object v4

    .line 375
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v12, v11, 0x1

    if-ltz v11, :cond_b

    check-cast v8, Lcom/narvii/video/model/AVClipInfoPack;

    .line 143
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v13

    if-ge v11, v13, :cond_a

    .line 144
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    const-string v13, "volume"

    .line 145
    invoke-static {v11, v13}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    iput v11, v8, Lcom/narvii/video/model/AVClipInfoPack;->trackVolume:F

    .line 146
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v11

    invoke-interface {v11, v8, v7}, Lcom/narvii/video/interfaces/IPreviewPlayer;->setVolume(Lcom/narvii/video/model/AVClipInfoPack;Z)V

    :cond_a
    move v11, v12

    goto :goto_7

    .line 375
    :cond_b
    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    throw v6

    .line 154
    :cond_c
    new-instance v4, Lcom/narvii/video/ScrollingTimeLineFragment$onActivityResult$3;

    invoke-direct {v4, v0, v10}, Lcom/narvii/video/ScrollingTimeLineFragment$onActivityResult$3;-><init>(Lcom/narvii/video/ScrollingTimeLineFragment;Lkotlin/jvm/internal/Ref$IntRef;)V

    const-wide/16 v7, 0x2bc

    invoke-static {v4, v7, v8}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 160
    :cond_d
    iget v4, v0, Lcom/narvii/video/ScrollingTimeLineFragment;->REQUEST_CODE_EDIT_ATTACHMENT:I

    if-ne v1, v4, :cond_10

    if-eqz v3, :cond_10

    const-string v4, "captionList"

    .line 161
    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-class v7, Lcom/narvii/video/model/Caption;

    invoke-static {v4, v7}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v4

    if-nez v4, :cond_e

    .line 163
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v4

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4, v7}, Lcom/narvii/video/interfaces/IPreviewPlayer;->resetCaptionList(Ljava/util/List;)V

    goto :goto_8

    .line 165
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v7

    invoke-interface {v7, v4}, Lcom/narvii/video/interfaces/IPreviewPlayer;->resetCaptionList(Ljava/util/List;)V

    :goto_8
    const-string v4, "stickerList"

    .line 167
    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-class v7, Lcom/narvii/video/model/StickerInfoPack;

    invoke-static {v4, v7}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v4

    if-nez v4, :cond_f

    .line 169
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v4

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4, v7}, Lcom/narvii/video/interfaces/IPreviewPlayer;->resetStickerList(Ljava/util/List;)V

    goto :goto_9

    .line 171
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v7

    invoke-interface {v7, v4}, Lcom/narvii/video/interfaces/IPreviewPlayer;->resetStickerList(Ljava/util/List;)V

    .line 173
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v4

    invoke-interface {v4}, Lcom/narvii/video/interfaces/IPreviewPlayer;->refreshCurrentPosition()V

    :cond_10
    const/16 v4, 0x303a

    if-ne v1, v4, :cond_13

    if-ne v2, v5, :cond_13

    if-eqz v3, :cond_11

    const-string v1, "pipList"

    .line 176
    invoke-virtual {v3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_11
    const-class v1, Lcom/narvii/pip/PipInfoPack;

    invoke-static {v6, v1}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_12

    .line 178
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v2}, Lcom/narvii/video/interfaces/IPreviewPlayer;->resetPipVideoList(Ljava/util/List;)V

    goto :goto_a

    .line 180
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->resetPipVideoList(Ljava/util/List;)V

    .line 182
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v1

    invoke-interface {v1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->refreshCurrentPosition()V

    :cond_13
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x0

    .line 47
    invoke-virtual {p0, v0}, Lcom/narvii/video/BaseMediaEditorFragment;->setAutoPlaying(Z)V

    .line 48
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    .line 49
    new-instance p1, Lcom/narvii/video/services/FrameRetrieverManager;

    invoke-direct {p1, p0}, Lcom/narvii/video/services/FrameRetrieverManager;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/video/ScrollingTimeLineFragment;->frameRetrieverManager:Lcom/narvii/video/services/FrameRetrieverManager;

    return-void
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onFrameLocatedDuringMove(II)V
    .locals 2

    .line 245
    iget-boolean v0, p0, Lcom/narvii/video/ScrollingTimeLineFragment;->skipSeekForTimeLineScrolling:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 246
    iput-boolean p1, p0, Lcom/narvii/video/ScrollingTimeLineFragment;->skipSeekForTimeLineScrolling:Z

    return-void

    .line 250
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getTotalVisibleVideoDurationInMs()Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 251
    iget-object v1, p0, Lcom/narvii/video/ScrollingTimeLineFragment;->videoPlaybackTimeText:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v0}, Lcom/narvii/video/widget/MediaTimeLineComponentKt;->convertMillisToTime(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/narvii/video/BaseMediaEditorFragment;->onFrameLocatedDuringMove(II)V

    return-void
.end method

.method public onPlayerTick(JJ)V
    .locals 10

    .line 272
    invoke-super {p0, p1, p2, p3, p4}, Lcom/narvii/video/BaseMediaEditorFragment;->onPlayerTick(JJ)V

    .line 273
    iget-object p3, p0, Lcom/narvii/video/ScrollingTimeLineFragment;->videoPlaybackTimeText:Landroid/widget/TextView;

    if-eqz p3, :cond_0

    long-to-int p4, p1

    invoke-static {p4}, Lcom/narvii/video/widget/MediaTimeLineComponentKt;->convertMillisToTime(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/narvii/video/ScrollingTimeLineFragment;->mainTimeLineComponent:Lcom/narvii/video/widget/MediaTimeLineComponent;

    if-eqz v0, :cond_1

    long-to-int v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x7e

    const/4 v9, 0x0

    invoke-static/range {v0 .. v9}, Lcom/narvii/video/widget/MediaTimeLineComponent;->scrollTimeLine$default(Lcom/narvii/video/widget/MediaTimeLineComponent;IZZZZIZILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public onReplayTriggered(III)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p3, v1, :cond_0

    .line 257
    iput-boolean v1, p0, Lcom/narvii/video/ScrollingTimeLineFragment;->hasVideoCompleted:Z

    .line 258
    invoke-virtual {p0, v0}, Lcom/narvii/video/BaseMediaEditorFragment;->setAutoPlaying(Z)V

    .line 259
    new-instance v0, Lcom/narvii/video/ScrollingTimeLineFragment$onReplayTriggered$1;

    invoke-direct {v0, p0}, Lcom/narvii/video/ScrollingTimeLineFragment$onReplayTriggered$1;-><init>(Lcom/narvii/video/ScrollingTimeLineFragment;)V

    const-wide/16 v1, 0x32

    invoke-static {v0, v1, v2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 266
    :cond_0
    iput-boolean v0, p0, Lcom/narvii/video/ScrollingTimeLineFragment;->hasVideoCompleted:Z

    .line 268
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/video/BaseMediaEditorFragment;->onReplayTriggered(III)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 196
    iget-boolean v0, p0, Lcom/narvii/video/ScrollingTimeLineFragment;->subVideoEditing:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 197
    iput-boolean v1, p0, Lcom/narvii/video/ScrollingTimeLineFragment;->subVideoEditing:Z

    goto :goto_0

    .line 198
    :cond_0
    iget-boolean v0, p0, Lcom/narvii/video/ScrollingTimeLineFragment;->subAudioEditing:Z

    if-eqz v0, :cond_1

    .line 199
    iput-boolean v1, p0, Lcom/narvii/video/ScrollingTimeLineFragment;->subAudioEditing:Z

    .line 209
    :cond_1
    :goto_0
    invoke-super {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->onResume()V

    .line 210
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getInitSuccess()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 211
    iget-object v0, p0, Lcom/narvii/video/ScrollingTimeLineFragment;->frameRetrieverManager:Lcom/narvii/video/services/FrameRetrieverManager;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/narvii/video/services/FrameRetrieverManager;->onResume()V

    goto :goto_1

    :cond_2
    const-string v0, "frameRetrieverManager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_3
    :goto_1
    return-void
.end method

.method protected onSeekingStatusChanged(Z)V
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/narvii/video/ScrollingTimeLineFragment;->mainTimeLineComponent:Lcom/narvii/video/widget/MediaTimeLineComponent;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/narvii/video/widget/MediaTimeLineComponent;->setSeeking(Z)V

    :cond_0
    return-void
.end method

.method public onTimeLineLayout()V
    .locals 3

    .line 220
    invoke-super {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->onTimeLineLayout()V

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 221
    invoke-static {p0, v0, v0, v1, v2}, Lcom/narvii/video/ScrollingTimeLineFragment;->updateVideoTimeLineInfo$default(Lcom/narvii/video/ScrollingTimeLineFragment;ZIILjava/lang/Object;)V

    return-void
.end method

.method protected onVideoPlaybackStatusChanged(Z)V
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/narvii/video/ScrollingTimeLineFragment;->mainTimeLineComponent:Lcom/narvii/video/widget/MediaTimeLineComponent;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/narvii/video/widget/MediaTimeLineComponent;->playbackStatusChanged(Z)V

    :cond_0
    return-void
.end method

.method protected final setFrameRetrieverManager(Lcom/narvii/video/services/FrameRetrieverManager;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iput-object p1, p0, Lcom/narvii/video/ScrollingTimeLineFragment;->frameRetrieverManager:Lcom/narvii/video/services/FrameRetrieverManager;

    return-void
.end method

.method protected final setHasVideoCompleted(Z)V
    .locals 0

    .line 27
    iput-boolean p1, p0, Lcom/narvii/video/ScrollingTimeLineFragment;->hasVideoCompleted:Z

    return-void
.end method

.method protected final setMainTimeLineComponent(Lcom/narvii/video/widget/MediaTimeLineComponent;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/narvii/video/ScrollingTimeLineFragment;->mainTimeLineComponent:Lcom/narvii/video/widget/MediaTimeLineComponent;

    return-void
.end method

.method protected final setSkipSeekForTimeLineScrolling(Z)V
    .locals 0

    .line 28
    iput-boolean p1, p0, Lcom/narvii/video/ScrollingTimeLineFragment;->skipSeekForTimeLineScrolling:Z

    return-void
.end method

.method protected final setSubAudioEditing(Z)V
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcom/narvii/video/ScrollingTimeLineFragment;->subAudioEditing:Z

    return-void
.end method

.method protected final setSubEditingReturnClipList(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iput-object p1, p0, Lcom/narvii/video/ScrollingTimeLineFragment;->subEditingReturnClipList:Ljava/util/ArrayList;

    return-void
.end method

.method protected final setSubVideoEditing(Z)V
    .locals 0

    .line 29
    iput-boolean p1, p0, Lcom/narvii/video/ScrollingTimeLineFragment;->subVideoEditing:Z

    return-void
.end method

.method protected final setVideoDurationText(Landroid/widget/TextView;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/narvii/video/ScrollingTimeLineFragment;->videoDurationText:Landroid/widget/TextView;

    return-void
.end method

.method protected final setVideoPlaybackTimeDivider(Landroid/view/View;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/narvii/video/ScrollingTimeLineFragment;->videoPlaybackTimeDivider:Landroid/view/View;

    return-void
.end method

.method protected final setVideoPlaybackTimeText(Landroid/widget/TextView;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/narvii/video/ScrollingTimeLineFragment;->videoPlaybackTimeText:Landroid/widget/TextView;

    return-void
.end method

.method protected final updateVideoTimeLineInfo(ZI)V
    .locals 6

    .line 322
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getVideoClipInfoList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 323
    iget-object p1, p0, Lcom/narvii/video/ScrollingTimeLineFragment;->mainTimeLineComponent:Lcom/narvii/video/widget/MediaTimeLineComponent;

    const/4 p2, 0x4

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 324
    :cond_0
    iget-object p1, p0, Lcom/narvii/video/ScrollingTimeLineFragment;->videoDurationText:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 325
    :cond_1
    iget-object p1, p0, Lcom/narvii/video/ScrollingTimeLineFragment;->videoPlaybackTimeText:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 326
    :cond_2
    iget-object p1, p0, Lcom/narvii/video/ScrollingTimeLineFragment;->videoPlaybackTimeDivider:Landroid/view/View;

    if-eqz p1, :cond_3

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void

    .line 329
    :cond_4
    iget-object v0, p0, Lcom/narvii/video/ScrollingTimeLineFragment;->mainTimeLineComponent:Lcom/narvii/video/widget/MediaTimeLineComponent;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 330
    :cond_5
    iget-object v0, p0, Lcom/narvii/video/ScrollingTimeLineFragment;->videoDurationText:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 331
    :cond_6
    iget-object v0, p0, Lcom/narvii/video/ScrollingTimeLineFragment;->videoPlaybackTimeText:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 332
    :cond_7
    iget-object v0, p0, Lcom/narvii/video/ScrollingTimeLineFragment;->videoPlaybackTimeDivider:Landroid/view/View;

    if-eqz v0, :cond_8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 333
    :cond_8
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getVideoClipInfoList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/video/model/AVClipInfoPack;

    .line 334
    invoke-virtual {v3}, Lcom/narvii/video/model/AVClipInfoPack;->isTrimSectionValid()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 337
    invoke-virtual {v3}, Lcom/narvii/video/model/AVClipInfoPack;->trimmedDurationInMs()I

    move-result v4

    iput v4, v3, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    .line 339
    :cond_9
    invoke-virtual {v3}, Lcom/narvii/video/model/AVClipInfoPack;->clipLength()I

    move-result v4

    .line 340
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/narvii/video/model/BaseClipInfoPack;->setClipLengthComposition(Ljava/util/List;)V

    .line 341
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/narvii/video/model/BaseClipInfoPack;->setMainTrackClipComposition(Ljava/util/List;)V

    add-int/2addr v2, v4

    goto :goto_0

    .line 344
    :cond_a
    iget-object v0, p0, Lcom/narvii/video/ScrollingTimeLineFragment;->videoPlaybackTimeText:Landroid/widget/TextView;

    if-eqz v0, :cond_b

    invoke-static {v1}, Lcom/narvii/video/widget/MediaTimeLineComponentKt;->convertMillisToTime(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 345
    :cond_b
    iget-object v0, p0, Lcom/narvii/video/ScrollingTimeLineFragment;->videoDurationText:Landroid/widget/TextView;

    if-eqz v0, :cond_c

    invoke-static {v2}, Lcom/narvii/video/widget/MediaTimeLineComponentKt;->convertMillisToTime(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 353
    :cond_c
    iget-object v0, p0, Lcom/narvii/video/ScrollingTimeLineFragment;->mainTimeLineComponent:Lcom/narvii/video/widget/MediaTimeLineComponent;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    goto :goto_1

    :cond_d
    const/4 v0, 0x0

    :goto_1
    if-lez v0, :cond_f

    .line 354
    invoke-virtual {p0, v2, p1}, Lcom/narvii/video/ScrollingTimeLineFragment;->innerInitMainTimeLine(IZ)V

    const/4 p1, 0x0

    if-ltz p2, :cond_e

    .line 356
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v0

    const/4 v2, 0x2

    invoke-static {v0, p2, v1, v2, p1}, Lcom/narvii/video/interfaces/IPreviewPlayer$DefaultImpls;->setActiveVideoClip$default(Lcom/narvii/video/interfaces/IPreviewPlayer;IIILjava/lang/Object;)Lcom/narvii/video/model/AVClipInfoPack;

    goto :goto_2

    :cond_e
    const/4 p2, 0x1

    .line 358
    invoke-static {p0, v1, v1, p2, p1}, Lcom/narvii/video/BaseMediaEditorFragment;->safeSeekTo$default(Lcom/narvii/video/BaseMediaEditorFragment;IIILjava/lang/Object;)V

    goto :goto_2

    .line 361
    :cond_f
    iget-object p1, p0, Lcom/narvii/video/ScrollingTimeLineFragment;->mainTimeLineComponent:Lcom/narvii/video/widget/MediaTimeLineComponent;

    if-eqz p1, :cond_10

    invoke-virtual {p1, p0}, Lcom/narvii/video/widget/MediaTimeLineComponent;->setTimeLineCallback(Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;)V

    :cond_10
    :goto_2
    return-void
.end method
