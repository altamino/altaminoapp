.class public abstract Lcom/narvii/video/ScrollingTimeLineFragment;
.super Lcom/narvii/video/BaseMediaEditorFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nScrollingTimeLineFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ScrollingTimeLineFragment.kt\ncom/narvii/video/ScrollingTimeLineFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,373:1\n1864#2,3:374\n1#3:377\n*S KotlinDebug\n*F\n+ 1 ScrollingTimeLineFragment.kt\ncom/narvii/video/ScrollingTimeLineFragment\n*L\n142#1:374,3\n*E\n"
.end annotation


# instance fields
.field private final REQUEST_CODE_EDIT_ATTACHMENT:I

.field private final REQUEST_CODE_SCENE_EDITOR:I

.field protected frameRetrieverManager:Lcom/narvii/video/services/FrameRetrieverManager;

.field private hasVideoCompleted:Z

.field private mainTimeLineComponent:Lcom/narvii/video/widget/MediaTimeLineComponent;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private subVideoEditing:Z

.field private videoDurationText:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private videoPlaybackTimeDivider:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private videoPlaybackTimeText:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/video/BaseMediaEditorFragment;-><init>()V

    .line 4
    .line 5
    const/16 v0, 0x457

    .line 6
    .line 7
    iput v0, p0, Lcom/narvii/video/ScrollingTimeLineFragment;->REQUEST_CODE_SCENE_EDITOR:I

    .line 8
    .line 9
    const/16 v0, 0x8ae

    .line 10
    .line 11
    iput v0, p0, Lcom/narvii/video/ScrollingTimeLineFragment;->REQUEST_CODE_EDIT_ATTACHMENT:I

    .line 12
    .line 13
    new-instance v0, Ljava/util/ArrayList;

    .line 14
    .line 15
    .line 16
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    iput-object v0, p0, Lcom/narvii/video/ScrollingTimeLineFragment;->subEditingReturnClipList:Ljava/util/ArrayList;

    .line 19
    return-void
.end method

.method private final initVideoTimeLine()V
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v2, v2, v0, v1}, Lcom/narvii/video/ScrollingTimeLineFragment;->updateVideoTimeLineInfo$default(Lcom/narvii/video/ScrollingTimeLineFragment;ZIILjava/lang/Object;)V

    .line 7
    return-void
.end method

.method private static final onActivityResult$lambda$7(Lcom/narvii/video/ScrollingTimeLineFragment;Lkotlin/jvm/internal/n0;)V
    .locals 2

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
    const-string v0, "$newActiveClipIndex"

    .line 9
    .line 10
    .line 11
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    iget v0, p1, Lkotlin/jvm/internal/n0;->element:I

    .line 14
    const/4 v1, 0x1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v1, v0}, Lcom/narvii/video/ScrollingTimeLineFragment;->updateVideoTimeLineInfo(ZI)V

    .line 18
    .line 19
    iget p1, p1, Lkotlin/jvm/internal/n0;->element:I

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p1, v1}, Lcom/narvii/video/BaseMediaEditorFragment;->safeSeekTo(II)V

    .line 23
    return-void
.end method

.method private static final onReplayTriggered$lambda$8(Lcom/narvii/video/ScrollingTimeLineFragment;)V
    .locals 4

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
    iget-object v0, p0, Lcom/narvii/video/ScrollingTimeLineFragment;->videoPlaybackTimeText:Landroid/widget/TextView;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    goto :goto_0

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getTotalVisibleVideoDurationInMs()Lw7/u;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Lw7/u;->c()Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    check-cast v1, Ljava/lang/Number;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 25
    move-result v1

    .line 26
    .line 27
    .line 28
    invoke-static {v1}, Lcom/narvii/video/widget/MediaTimeLineComponentKt;->convertMillisToTime(I)Ljava/lang/String;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    :goto_0
    const/4 v0, 0x2

    .line 34
    const/4 v1, 0x0

    .line 35
    const/4 v2, 0x1

    .line 36
    const/4 v3, 0x0

    .line 37
    .line 38
    .line 39
    invoke-static {p0, v2, v3, v0, v1}, Lcom/narvii/video/BaseMediaEditorFragment;->changeVideoPlaybackStatus$default(Lcom/narvii/video/BaseMediaEditorFragment;ZZILjava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v3}, Lcom/narvii/video/BaseMediaEditorFragment;->changeSeekStatus(Z)V

    .line 43
    return-void
.end method

.method public static synthetic updateVideoTimeLineInfo$default(Lcom/narvii/video/ScrollingTimeLineFragment;ZIILjava/lang/Object;)V
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
    const/4 p1, 0x0

    .line 8
    .line 9
    :cond_0
    and-int/lit8 p3, p3, 0x2

    .line 10
    .line 11
    if-eqz p3, :cond_1

    .line 12
    const/4 p2, -0x1

    .line 13
    .line 14
    .line 15
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/narvii/video/ScrollingTimeLineFragment;->updateVideoTimeLineInfo(ZI)V

    .line 16
    return-void

    .line 17
    .line 18
    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 19
    .line 20
    const-string p1, "Super calls with default arguments not supported in this target, function: updateVideoTimeLineInfo"

    .line 21
    .line 22
    .line 23
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 24
    throw p0
.end method

.method public static synthetic x(Lcom/narvii/video/ScrollingTimeLineFragment;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->onReplayTriggered$lambda$8(Lcom/narvii/video/ScrollingTimeLineFragment;)V

    return-void
.end method

.method public static synthetic y(Lcom/narvii/video/ScrollingTimeLineFragment;Lkotlin/jvm/internal/n0;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/video/ScrollingTimeLineFragment;->onActivityResult$lambda$7(Lcom/narvii/video/ScrollingTimeLineFragment;Lkotlin/jvm/internal/n0;)V

    return-void
.end method


# virtual methods
.method protected changeVideoPlaybackStatus(ZZ)V
    .locals 12

    .line 1
    .line 2
    if-nez p1, :cond_1

    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/narvii/video/ScrollingTimeLineFragment;->hasVideoCompleted:Z

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    const/4 v0, 0x0

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/narvii/video/ScrollingTimeLineFragment;->hasVideoCompleted:Z

    .line 10
    const/4 v1, 0x1

    .line 11
    .line 12
    iput-boolean v1, p0, Lcom/narvii/video/ScrollingTimeLineFragment;->skipSeekForTimeLineScrolling:Z

    .line 13
    .line 14
    iget-object v2, p0, Lcom/narvii/video/ScrollingTimeLineFragment;->mainTimeLineComponent:Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 15
    .line 16
    if-eqz v2, :cond_0

    .line 17
    const/4 v3, 0x0

    .line 18
    const/4 v4, 0x1

    .line 19
    const/4 v5, 0x0

    .line 20
    const/4 v6, 0x0

    .line 21
    const/4 v7, 0x0

    .line 22
    const/4 v8, 0x0

    .line 23
    const/4 v9, 0x0

    .line 24
    .line 25
    const/16 v10, 0x7d

    .line 26
    const/4 v11, 0x0

    .line 27
    .line 28
    .line 29
    invoke-static/range {v2 .. v11}, Lcom/narvii/video/widget/MediaTimeLineComponent;->scrollTimeLine$default(Lcom/narvii/video/widget/MediaTimeLineComponent;IZZZZIZILjava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getSeekRequestQueue()Ljava/util/LinkedList;

    .line 33
    move-result-object v2

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 37
    const/4 v2, 0x0

    .line 38
    .line 39
    .line 40
    invoke-static {p0, v0, v0, v1, v2}, Lcom/narvii/video/BaseMediaEditorFragment;->safeSeekTo$default(Lcom/narvii/video/BaseMediaEditorFragment;IIILjava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/narvii/video/BaseMediaEditorFragment;->changeVideoPlaybackStatus(ZZ)V

    .line 44
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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "inputAudioClipList"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-class v1, Lcom/narvii/video/model/AVClipInfoPack;

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    return-object v0

    .line 18
    .line 19
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 23
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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "inputCaptionList"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-class v1, Lcom/narvii/video/model/Caption;

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    return-object v0

    .line 18
    .line 19
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 23
    return-object v0
.end method

.method protected final getFrameRetrieverManager()Lcom/narvii/video/services/FrameRetrieverManager;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/ScrollingTimeLineFragment;->frameRetrieverManager:Lcom/narvii/video/services/FrameRetrieverManager;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-object v0

    .line 6
    .line 7
    :cond_0
    const-string v0, "frameRetrieverManager"

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method protected final getHasVideoCompleted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/video/ScrollingTimeLineFragment;->hasVideoCompleted:Z

    return v0
.end method

.method protected final getMainTimeLineComponent()Lcom/narvii/video/widget/MediaTimeLineComponent;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/video/ScrollingTimeLineFragment;->mainTimeLineComponent:Lcom/narvii/video/widget/MediaTimeLineComponent;

    return-object v0
.end method

.method protected final getMainTrackPlaybackTime()I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getCurrentVideoPositionInTimeline()I

    .line 8
    move-result v0

    .line 9
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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "inputPipInfoPackList"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-class v1, Lcom/narvii/pip/PipInfoPack;

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    return-object v0

    .line 18
    .line 19
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 23
    return-object v0
.end method

.method protected final getREQUEST_CODE_EDIT_ATTACHMENT()I
    .locals 1

    iget v0, p0, Lcom/narvii/video/ScrollingTimeLineFragment;->REQUEST_CODE_EDIT_ATTACHMENT:I

    return v0
.end method

.method protected final getREQUEST_CODE_SCENE_EDITOR()I
    .locals 1

    iget v0, p0, Lcom/narvii/video/ScrollingTimeLineFragment;->REQUEST_CODE_SCENE_EDITOR:I

    return v0
.end method

.method protected final getSkipSeekForTimeLineScrolling()Z
    .locals 1

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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "inputStickerList"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-class v1, Lcom/narvii/video/model/StickerInfoPack;

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    return-object v0

    .line 18
    .line 19
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 23
    return-object v0
.end method

.method protected final getSubAudioEditing()Z
    .locals 1

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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/video/ScrollingTimeLineFragment;->subEditingReturnClipList:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected final getSubVideoEditing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/video/ScrollingTimeLineFragment;->subVideoEditing:Z

    return v0
.end method

.method protected final getVideoDurationText()Landroid/widget/TextView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "inputVideoClipList"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-class v1, Lcom/narvii/video/model/AVClipInfoPack;

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    return-object v0

    .line 18
    .line 19
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 23
    return-object v0
.end method

.method protected final getVideoPlaybackTimeDivider()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/video/ScrollingTimeLineFragment;->videoPlaybackTimeDivider:Landroid/view/View;

    return-object v0
.end method

.method protected final getVideoPlaybackTimeText()Landroid/widget/TextView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

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

    .line 1
    .line 2
    move-object/from16 v15, p0

    .line 3
    .line 4
    iget-object v0, v15, Lcom/narvii/video/ScrollingTimeLineFragment;->mainTimeLineComponent:Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/16 v1, 0x64

    .line 9
    .line 10
    const/16 v2, 0xca

    .line 11
    const/4 v3, 0x0

    .line 12
    .line 13
    .line 14
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 15
    move-result-object v4

    .line 16
    .line 17
    .line 18
    invoke-interface {v4}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getVideoClipInfoList()Ljava/util/ArrayList;

    .line 19
    move-result-object v4

    .line 20
    .line 21
    .line 22
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 23
    move-result-object v5

    .line 24
    .line 25
    .line 26
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->getFrameRetrieverManager()Lcom/narvii/video/services/FrameRetrieverManager;

    .line 27
    move-result-object v6

    .line 28
    .line 29
    const/16 v7, 0xbb8

    .line 30
    .line 31
    .line 32
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    move-result-object v8

    .line 34
    .line 35
    const/high16 v9, 0x447a0000    # 1000.0f

    .line 36
    const/4 v10, 0x1

    .line 37
    const/4 v11, 0x0

    .line 38
    const/4 v12, 0x1

    .line 39
    const/4 v13, 0x0

    .line 40
    const/4 v14, 0x0

    .line 41
    .line 42
    const/16 v17, 0x3400

    .line 43
    .line 44
    const/16 v18, 0x0

    .line 45
    .line 46
    move/from16 v7, p1

    .line 47
    .line 48
    move-object/from16 v15, p0

    .line 49
    .line 50
    move/from16 v16, p2

    .line 51
    .line 52
    .line 53
    invoke-static/range {v0 .. v18}, Lcom/narvii/video/widget/MediaTimeLineComponent;->initTimeLine$default(Lcom/narvii/video/widget/MediaTimeLineComponent;IIZLjava/util/List;Lcom/narvii/video/interfaces/IPreviewPlayer;Lcom/narvii/video/services/FrameRetrieverManager;ILjava/lang/Integer;FZIZZILcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;ZILjava/lang/Object;)I

    .line 54
    :cond_0
    return-void
.end method

.method protected innerOnVideoPrepared()V
    .locals 0

    return-void
.end method

.method protected final isAllVideoClipMute()Z
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getVideoClipInfoList()Ljava/util/ArrayList;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    move-result v1

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    move-result-object v1

    .line 23
    move-object v2, v1

    .line 24
    .line 25
    check-cast v2, Lcom/narvii/video/model/AVClipInfoPack;

    .line 26
    .line 27
    iget v2, v2, Lcom/narvii/video/model/AVClipInfoPack;->trackVolume:F

    .line 28
    const/4 v3, 0x0

    .line 29
    .line 30
    cmpl-float v2, v2, v3

    .line 31
    .line 32
    if-lez v2, :cond_0

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const/4 v1, 0x0

    .line 35
    .line 36
    :goto_0
    if-nez v1, :cond_2

    .line 37
    const/4 v0, 0x1

    .line 38
    goto :goto_1

    .line 39
    :cond_2
    const/4 v0, 0x0

    .line 40
    :goto_1
    return v0
.end method

.method protected final moveMainTrackTo(I)V
    .locals 13

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1
    invoke-static {p0, v2, p1, v0, v1}, Lcom/narvii/video/BaseMediaEditorFragment;->safeSeekTo$default(Lcom/narvii/video/BaseMediaEditorFragment;IIILjava/lang/Object;)V

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

    .line 2
    invoke-static/range {v3 .. v12}, Lcom/narvii/video/widget/MediaTimeLineComponent;->scrollTimeLine$default(Lcom/narvii/video/widget/MediaTimeLineComponent;IZZZZIZILjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/narvii/video/ScrollingTimeLineFragment;->videoPlaybackTimeText:Landroid/widget/TextView;

    if-nez v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {p1}, Lcom/narvii/video/widget/MediaTimeLineComponentKt;->convertMillisToTime(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method protected final moveMainTrackTo(II)V
    .locals 2

    if-ltz p1, :cond_4

    .line 4
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getVideoClipInfoList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_2

    .line 5
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

    .line 6
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/narvii/video/interfaces/IPreviewPlayer;->setActiveVideoClip(II)Lcom/narvii/video/model/AVClipInfoPack;

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_3

    .line 7
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

    .line 8
    :cond_3
    invoke-virtual {p0, p2}, Lcom/narvii/video/ScrollingTimeLineFragment;->moveMainTrackTo(I)V

    :cond_4
    :goto_2
    return-void
.end method

.method protected onAVClipsPrepared()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->onAVClipsPrepared()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getInitSuccess()Z

    .line 7
    move-result v0

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    return-void

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->initFrameRetrieverManager()V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->initVideoTimeLine()V

    .line 17
    return-void
.end method

.method protected onActiveVideoChanged(IZ)V
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/video/BaseMediaEditorFragment;->onActiveVideoChanged(IZ)V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/video/ScrollingTimeLineFragment;->mainTimeLineComponent:Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/narvii/video/widget/MediaTimeLineComponent;->setActiveClipInTrack(I)V

    .line 11
    .line 12
    :cond_0
    if-eqz p2, :cond_3

    .line 13
    .line 14
    iget-object v1, p0, Lcom/narvii/video/ScrollingTimeLineFragment;->mainTimeLineComponent:Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    const/4 v3, 0x0

    .line 18
    const/4 v4, 0x0

    .line 19
    const/4 v5, 0x6

    .line 20
    const/4 v6, 0x0

    .line 21
    move v2, p1

    .line 22
    .line 23
    .line 24
    invoke-static/range {v1 .. v6}, Lcom/narvii/video/widget/MediaTimeLineComponent;->scrollTimeLineToClip$default(Lcom/narvii/video/widget/MediaTimeLineComponent;IIZILjava/lang/Object;)I

    .line 25
    move-result p1

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 p1, -0x1

    .line 28
    .line 29
    :goto_0
    if-ltz p1, :cond_3

    .line 30
    .line 31
    iget-object p2, p0, Lcom/narvii/video/ScrollingTimeLineFragment;->videoPlaybackTimeText:Landroid/widget/TextView;

    .line 32
    .line 33
    if-nez p2, :cond_2

    .line 34
    goto :goto_1

    .line 35
    .line 36
    .line 37
    :cond_2
    invoke-static {p1}, Lcom/narvii/video/widget/MediaTimeLineComponentKt;->convertMillisToTime(I)Ljava/lang/String;

    .line 38
    move-result-object p1

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    :cond_3
    :goto_1
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 19
    .param p3    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move/from16 v1, p1

    .line 5
    .line 6
    move/from16 v2, p2

    .line 7
    .line 8
    move-object/from16 v3, p3

    .line 9
    .line 10
    .line 11
    invoke-super/range {p0 .. p3}, Lcom/narvii/app/NVFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 12
    .line 13
    iget v4, v0, Lcom/narvii/video/ScrollingTimeLineFragment;->REQUEST_CODE_SCENE_EDITOR:I

    .line 14
    const/4 v5, -0x1

    .line 15
    const/4 v6, 0x0

    .line 16
    .line 17
    if-ne v1, v4, :cond_d

    .line 18
    .line 19
    if-ne v2, v5, :cond_d

    .line 20
    .line 21
    if-eqz v3, :cond_0

    .line 22
    .line 23
    const-string v4, "clipInfoList"

    .line 24
    .line 25
    .line 26
    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    move-result-object v4

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move-object v4, v6

    .line 30
    :goto_0
    const/4 v7, 0x1

    .line 31
    .line 32
    if-eqz v3, :cond_1

    .line 33
    .line 34
    const-string v8, "isVideoTrimming"

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3, v8, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 38
    move-result v8

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    move v8, v7

    .line 41
    .line 42
    :goto_1
    if-eqz v3, :cond_2

    .line 43
    .line 44
    .line 45
    const-string/jumbo v9, "videoVolumeList"

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    move-result-object v9

    .line 50
    goto :goto_2

    .line 51
    :cond_2
    move-object v9, v6

    .line 52
    .line 53
    :goto_2
    sget-object v10, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    invoke-static {v9, v10}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 57
    move-result-object v9

    .line 58
    .line 59
    if-nez v9, :cond_3

    .line 60
    .line 61
    .line 62
    invoke-static {}, Lkotlin/collections/t;->m()Ljava/util/List;

    .line 63
    move-result-object v9

    .line 64
    .line 65
    :cond_3
    if-nez v8, :cond_4

    .line 66
    .line 67
    if-nez v4, :cond_4

    .line 68
    .line 69
    .line 70
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 71
    move-result-object v10

    .line 72
    .line 73
    .line 74
    invoke-interface {v10}, Lcom/narvii/video/interfaces/IPreviewPlayer;->removeAllAudios()V

    .line 75
    .line 76
    iget-object v10, v0, Lcom/narvii/video/ScrollingTimeLineFragment;->subEditingReturnClipList:Ljava/util/ArrayList;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 80
    .line 81
    :cond_4
    new-instance v10, Lkotlin/jvm/internal/n0;

    .line 82
    .line 83
    .line 84
    invoke-direct {v10}, Lkotlin/jvm/internal/n0;-><init>()V

    .line 85
    const/4 v11, 0x0

    .line 86
    .line 87
    if-eqz v4, :cond_9

    .line 88
    .line 89
    const-class v12, Lcom/narvii/video/model/AVClipInfoPack;

    .line 90
    .line 91
    .line 92
    invoke-static {v4, v12}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 93
    move-result-object v4

    .line 94
    .line 95
    if-eqz v4, :cond_8

    .line 96
    .line 97
    .line 98
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    .line 99
    move-result v12

    .line 100
    xor-int/2addr v12, v7

    .line 101
    .line 102
    if-eqz v12, :cond_8

    .line 103
    .line 104
    if-eqz v8, :cond_7

    .line 105
    .line 106
    .line 107
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 108
    move-result-object v8

    .line 109
    .line 110
    check-cast v8, Lcom/narvii/video/model/AVClipInfoPack;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v8}, Lcom/narvii/video/model/AVClipInfoPack;->trimmedDurationInMs()I

    .line 114
    move-result v12

    .line 115
    .line 116
    iput v12, v8, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    .line 117
    .line 118
    iget v12, v8, Lcom/narvii/video/model/BaseClipInfoPack;->indexInScene:I

    .line 119
    .line 120
    iput v12, v10, Lkotlin/jvm/internal/n0;->element:I

    .line 121
    .line 122
    .line 123
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 124
    move-result-object v12

    .line 125
    .line 126
    .line 127
    invoke-interface {v12}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getVideoClipInfoList()Ljava/util/ArrayList;

    .line 128
    move-result-object v14

    .line 129
    .line 130
    .line 131
    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    .line 132
    move-result v12

    .line 133
    .line 134
    if-eqz v12, :cond_5

    .line 135
    .line 136
    .line 137
    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    goto :goto_3

    .line 139
    .line 140
    :cond_5
    iget v12, v10, Lkotlin/jvm/internal/n0;->element:I

    .line 141
    .line 142
    .line 143
    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 144
    move-result-object v12

    .line 145
    .line 146
    const-string v13, "get(...)"

    .line 147
    .line 148
    .line 149
    invoke-static {v12, v13}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    .line 151
    check-cast v12, Lcom/narvii/video/model/AVClipInfoPack;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v12, v8}, Lcom/narvii/video/model/AVClipInfoPack;->merge(Lcom/narvii/video/model/AVClipInfoPack;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getTotalVisibleVideoDurationInMs()Lw7/u;

    .line 158
    move-result-object v8

    .line 159
    .line 160
    .line 161
    invoke-virtual {v8}, Lw7/u;->c()Ljava/lang/Object;

    .line 162
    move-result-object v8

    .line 163
    .line 164
    check-cast v8, Ljava/lang/Number;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    .line 168
    move-result v8

    .line 169
    .line 170
    .line 171
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 172
    move-result-object v12

    .line 173
    .line 174
    .line 175
    invoke-interface {v12, v8}, Lcom/narvii/video/interfaces/IPreviewPlayer;->adjustAllViceTrackRange(I)V

    .line 176
    .line 177
    .line 178
    :goto_3
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    .line 179
    move-result v8

    .line 180
    move v12, v11

    .line 181
    .line 182
    :goto_4
    if-ge v12, v8, :cond_6

    .line 183
    .line 184
    .line 185
    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 186
    move-result-object v13

    .line 187
    .line 188
    check-cast v13, Lcom/narvii/video/model/AVClipInfoPack;

    .line 189
    .line 190
    iput v12, v13, Lcom/narvii/video/model/BaseClipInfoPack;->indexInScene:I

    .line 191
    .line 192
    add-int/lit8 v12, v12, 0x1

    .line 193
    goto :goto_4

    .line 194
    .line 195
    .line 196
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 197
    move-result-object v13

    .line 198
    const/4 v15, 0x0

    .line 199
    .line 200
    const/16 v16, 0x0

    .line 201
    .line 202
    const/16 v17, 0x6

    .line 203
    .line 204
    const/16 v18, 0x0

    .line 205
    .line 206
    .line 207
    invoke-static/range {v13 .. v18}, Lcom/narvii/video/interfaces/IPreviewPlayer$DefaultImpls;->resetVideoClipList$default(Lcom/narvii/video/interfaces/IPreviewPlayer;Ljava/util/ArrayList;IIILjava/lang/Object;)Lcom/narvii/video/model/AVClipInfoPack;

    .line 208
    goto :goto_5

    .line 209
    .line 210
    .line 211
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 212
    move-result-object v8

    .line 213
    .line 214
    .line 215
    invoke-interface {v8, v4}, Lcom/narvii/video/interfaces/IPreviewPlayer;->resetAudioClipList(Ljava/util/List;)V

    .line 216
    .line 217
    .line 218
    :cond_8
    :goto_5
    invoke-static {v4}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 219
    .line 220
    iput-object v4, v0, Lcom/narvii/video/ScrollingTimeLineFragment;->subEditingReturnClipList:Ljava/util/ArrayList;

    .line 221
    :cond_9
    move-object v4, v9

    .line 222
    .line 223
    check-cast v4, Ljava/util/Collection;

    .line 224
    .line 225
    .line 226
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    .line 227
    move-result v4

    .line 228
    xor-int/2addr v4, v7

    .line 229
    .line 230
    if-eqz v4, :cond_c

    .line 231
    .line 232
    .line 233
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 234
    move-result-object v4

    .line 235
    .line 236
    .line 237
    invoke-interface {v4}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getVideoClipInfoList()Ljava/util/ArrayList;

    .line 238
    move-result-object v4

    .line 239
    .line 240
    .line 241
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 242
    move-result-object v4

    .line 243
    .line 244
    .line 245
    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 246
    move-result v8

    .line 247
    .line 248
    if-eqz v8, :cond_c

    .line 249
    .line 250
    .line 251
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 252
    move-result-object v8

    .line 253
    .line 254
    add-int/lit8 v12, v11, 0x1

    .line 255
    .line 256
    if-gez v11, :cond_a

    .line 257
    .line 258
    .line 259
    invoke-static {}, Lkotlin/collections/t;->w()V

    .line 260
    .line 261
    :cond_a
    check-cast v8, Lcom/narvii/video/model/AVClipInfoPack;

    .line 262
    .line 263
    .line 264
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 265
    move-result v13

    .line 266
    .line 267
    if-ge v11, v13, :cond_b

    .line 268
    .line 269
    .line 270
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 271
    move-result-object v11

    .line 272
    .line 273
    check-cast v11, Ljava/lang/Float;

    .line 274
    .line 275
    .line 276
    invoke-static {v11}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    .line 280
    move-result v11

    .line 281
    .line 282
    iput v11, v8, Lcom/narvii/video/model/AVClipInfoPack;->trackVolume:F

    .line 283
    .line 284
    .line 285
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 286
    move-result-object v11

    .line 287
    .line 288
    .line 289
    invoke-interface {v11, v8, v7}, Lcom/narvii/video/interfaces/IPreviewPlayer;->setVolume(Lcom/narvii/video/model/AVClipInfoPack;Z)V

    .line 290
    :cond_b
    move v11, v12

    .line 291
    goto :goto_6

    .line 292
    .line 293
    :cond_c
    new-instance v4, Lcom/narvii/video/v0;

    .line 294
    .line 295
    .line 296
    invoke-direct {v4, v0, v10}, Lcom/narvii/video/v0;-><init>(Lcom/narvii/video/ScrollingTimeLineFragment;Lkotlin/jvm/internal/n0;)V

    .line 297
    .line 298
    const-wide/16 v7, 0x2bc

    .line 299
    .line 300
    .line 301
    invoke-static {v4, v7, v8}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 302
    .line 303
    :cond_d
    iget v4, v0, Lcom/narvii/video/ScrollingTimeLineFragment;->REQUEST_CODE_EDIT_ATTACHMENT:I

    .line 304
    .line 305
    if-ne v1, v4, :cond_10

    .line 306
    .line 307
    if-eqz v3, :cond_10

    .line 308
    .line 309
    const-string v4, "captionList"

    .line 310
    .line 311
    .line 312
    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 313
    move-result-object v4

    .line 314
    .line 315
    const-class v7, Lcom/narvii/video/model/Caption;

    .line 316
    .line 317
    .line 318
    invoke-static {v4, v7}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 319
    move-result-object v4

    .line 320
    .line 321
    if-nez v4, :cond_e

    .line 322
    .line 323
    .line 324
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 325
    move-result-object v4

    .line 326
    .line 327
    new-instance v7, Ljava/util/ArrayList;

    .line 328
    .line 329
    .line 330
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 331
    .line 332
    .line 333
    invoke-interface {v4, v7}, Lcom/narvii/video/interfaces/IPreviewPlayer;->resetCaptionList(Ljava/util/List;)V

    .line 334
    goto :goto_7

    .line 335
    .line 336
    .line 337
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 338
    move-result-object v7

    .line 339
    .line 340
    .line 341
    invoke-interface {v7, v4}, Lcom/narvii/video/interfaces/IPreviewPlayer;->resetCaptionList(Ljava/util/List;)V

    .line 342
    .line 343
    :goto_7
    const-string v4, "stickerList"

    .line 344
    .line 345
    .line 346
    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 347
    move-result-object v4

    .line 348
    .line 349
    const-class v7, Lcom/narvii/video/model/StickerInfoPack;

    .line 350
    .line 351
    .line 352
    invoke-static {v4, v7}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 353
    move-result-object v4

    .line 354
    .line 355
    if-nez v4, :cond_f

    .line 356
    .line 357
    .line 358
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 359
    move-result-object v4

    .line 360
    .line 361
    new-instance v7, Ljava/util/ArrayList;

    .line 362
    .line 363
    .line 364
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 365
    .line 366
    .line 367
    invoke-interface {v4, v7}, Lcom/narvii/video/interfaces/IPreviewPlayer;->resetStickerList(Ljava/util/List;)V

    .line 368
    goto :goto_8

    .line 369
    .line 370
    .line 371
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 372
    move-result-object v7

    .line 373
    .line 374
    .line 375
    invoke-interface {v7, v4}, Lcom/narvii/video/interfaces/IPreviewPlayer;->resetStickerList(Ljava/util/List;)V

    .line 376
    .line 377
    .line 378
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 379
    move-result-object v4

    .line 380
    .line 381
    .line 382
    invoke-interface {v4}, Lcom/narvii/video/interfaces/IPreviewPlayer;->refreshCurrentPosition()V

    .line 383
    .line 384
    :cond_10
    const/16 v4, 0x303a

    .line 385
    .line 386
    if-ne v1, v4, :cond_13

    .line 387
    .line 388
    if-ne v2, v5, :cond_13

    .line 389
    .line 390
    if-eqz v3, :cond_11

    .line 391
    .line 392
    const-string v1, "pipList"

    .line 393
    .line 394
    .line 395
    invoke-virtual {v3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 396
    move-result-object v6

    .line 397
    .line 398
    :cond_11
    const-class v1, Lcom/narvii/pip/PipInfoPack;

    .line 399
    .line 400
    .line 401
    invoke-static {v6, v1}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 402
    move-result-object v1

    .line 403
    .line 404
    if-nez v1, :cond_12

    .line 405
    .line 406
    .line 407
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 408
    move-result-object v1

    .line 409
    .line 410
    new-instance v2, Ljava/util/ArrayList;

    .line 411
    .line 412
    .line 413
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 414
    .line 415
    .line 416
    invoke-interface {v1, v2}, Lcom/narvii/video/interfaces/IPreviewPlayer;->resetPipVideoList(Ljava/util/List;)V

    .line 417
    goto :goto_9

    .line 418
    .line 419
    .line 420
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 421
    move-result-object v2

    .line 422
    .line 423
    .line 424
    invoke-interface {v2, v1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->resetPipVideoList(Ljava/util/List;)V

    .line 425
    .line 426
    .line 427
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 428
    move-result-object v1

    .line 429
    .line 430
    .line 431
    invoke-interface {v1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->refreshCurrentPosition()V

    .line 432
    :cond_13
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lcom/narvii/video/BaseMediaEditorFragment;->setAutoPlaying(Z)V

    .line 5
    .line 6
    .line 7
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    .line 8
    .line 9
    new-instance p1, Lcom/narvii/video/services/FrameRetrieverManager;

    .line 10
    .line 11
    .line 12
    invoke-direct {p1, p0}, Lcom/narvii/video/services/FrameRetrieverManager;-><init>(Lcom/narvii/app/NVContext;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lcom/narvii/video/ScrollingTimeLineFragment;->setFrameRetrieverManager(Lcom/narvii/video/services/FrameRetrieverManager;)V

    .line 16
    return-void
.end method

.method public onFrameLocatedDuringMove(II)V
    .locals 2

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/video/ScrollingTimeLineFragment;->skipSeekForTimeLineScrolling:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    const/4 p1, 0x0

    .line 6
    .line 7
    iput-boolean p1, p0, Lcom/narvii/video/ScrollingTimeLineFragment;->skipSeekForTimeLineScrolling:Z

    .line 8
    return-void

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getTotalVisibleVideoDurationInMs()Lw7/u;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lw7/u;->c()Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    check-cast v0, Ljava/lang/Number;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 22
    move-result v0

    .line 23
    .line 24
    iget-object v1, p0, Lcom/narvii/video/ScrollingTimeLineFragment;->videoPlaybackTimeText:Landroid/widget/TextView;

    .line 25
    .line 26
    if-nez v1, :cond_1

    .line 27
    goto :goto_0

    .line 28
    .line 29
    .line 30
    :cond_1
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    .line 31
    move-result v0

    .line 32
    .line 33
    .line 34
    invoke-static {v0}, Lcom/narvii/video/widget/MediaTimeLineComponentKt;->convertMillisToTime(I)Ljava/lang/String;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    .line 40
    .line 41
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/narvii/video/BaseMediaEditorFragment;->onFrameLocatedDuringMove(II)V

    .line 42
    return-void
.end method

.method public onPlayerTick(JJ)V
    .locals 10

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3, p4}, Lcom/narvii/video/BaseMediaEditorFragment;->onPlayerTick(JJ)V

    .line 4
    .line 5
    iget-object p3, p0, Lcom/narvii/video/ScrollingTimeLineFragment;->videoPlaybackTimeText:Landroid/widget/TextView;

    .line 6
    .line 7
    if-nez p3, :cond_0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    long-to-int p4, p1

    .line 10
    .line 11
    .line 12
    invoke-static {p4}, Lcom/narvii/video/widget/MediaTimeLineComponentKt;->convertMillisToTime(I)Ljava/lang/String;

    .line 13
    move-result-object p4

    .line 14
    .line 15
    .line 16
    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    .line 18
    :goto_0
    iget-object v0, p0, Lcom/narvii/video/ScrollingTimeLineFragment;->mainTimeLineComponent:Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    long-to-int v1, p1

    .line 22
    const/4 v2, 0x0

    .line 23
    const/4 v3, 0x0

    .line 24
    const/4 v4, 0x0

    .line 25
    const/4 v5, 0x0

    .line 26
    const/4 v6, 0x0

    .line 27
    const/4 v7, 0x0

    .line 28
    .line 29
    const/16 v8, 0x7e

    .line 30
    const/4 v9, 0x0

    .line 31
    .line 32
    .line 33
    invoke-static/range {v0 .. v9}, Lcom/narvii/video/widget/MediaTimeLineComponent;->scrollTimeLine$default(Lcom/narvii/video/widget/MediaTimeLineComponent;IZZZZIZILjava/lang/Object;)V

    .line 34
    :cond_1
    return-void
.end method

.method public onReplayTriggered(III)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    .line 4
    if-ne p3, v1, :cond_0

    .line 5
    .line 6
    iput-boolean v1, p0, Lcom/narvii/video/ScrollingTimeLineFragment;->hasVideoCompleted:Z

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/narvii/video/BaseMediaEditorFragment;->setAutoPlaying(Z)V

    .line 10
    .line 11
    new-instance v0, Lcom/narvii/video/w0;

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, p0}, Lcom/narvii/video/w0;-><init>(Lcom/narvii/video/ScrollingTimeLineFragment;)V

    .line 15
    .line 16
    const-wide/16 v1, 0x32

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v1, v2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 20
    goto :goto_0

    .line 21
    .line 22
    :cond_0
    iput-boolean v0, p0, Lcom/narvii/video/ScrollingTimeLineFragment;->hasVideoCompleted:Z

    .line 23
    .line 24
    .line 25
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/video/BaseMediaEditorFragment;->onReplayTriggered(III)V

    .line 26
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/video/ScrollingTimeLineFragment;->subVideoEditing:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iput-boolean v1, p0, Lcom/narvii/video/ScrollingTimeLineFragment;->subVideoEditing:Z

    .line 8
    goto :goto_0

    .line 9
    .line 10
    :cond_0
    iget-boolean v0, p0, Lcom/narvii/video/ScrollingTimeLineFragment;->subAudioEditing:Z

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iput-boolean v1, p0, Lcom/narvii/video/ScrollingTimeLineFragment;->subAudioEditing:Z

    .line 15
    .line 16
    .line 17
    :cond_1
    :goto_0
    invoke-super {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->onResume()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getInitSuccess()Z

    .line 21
    move-result v0

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->getFrameRetrieverManager()Lcom/narvii/video/services/FrameRetrieverManager;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/narvii/video/services/FrameRetrieverManager;->onResume()V

    .line 31
    :cond_2
    return-void
.end method

.method protected onSeekingStatusChanged(Z)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/ScrollingTimeLineFragment;->mainTimeLineComponent:Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    goto :goto_0

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {v0, p1}, Lcom/narvii/video/widget/MediaTimeLineComponent;->setSeeking(Z)V

    .line 9
    :goto_0
    return-void
.end method

.method public onTimeLineLayout()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->onTimeLineLayout()V

    .line 4
    const/4 v0, 0x3

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    .line 8
    .line 9
    invoke-static {p0, v2, v2, v0, v1}, Lcom/narvii/video/ScrollingTimeLineFragment;->updateVideoTimeLineInfo$default(Lcom/narvii/video/ScrollingTimeLineFragment;ZIILjava/lang/Object;)V

    .line 10
    return-void
.end method

.method protected onVideoPlaybackStatusChanged(Z)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/ScrollingTimeLineFragment;->mainTimeLineComponent:Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/narvii/video/widget/MediaTimeLineComponent;->playbackStatusChanged(Z)V

    .line 8
    :cond_0
    return-void
.end method

.method protected final setFrameRetrieverManager(Lcom/narvii/video/services/FrameRetrieverManager;)V
    .locals 1
    .param p1    # Lcom/narvii/video/services/FrameRetrieverManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/video/ScrollingTimeLineFragment;->frameRetrieverManager:Lcom/narvii/video/services/FrameRetrieverManager;

    return-void
.end method

.method protected final setHasVideoCompleted(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/video/ScrollingTimeLineFragment;->hasVideoCompleted:Z

    return-void
.end method

.method protected final setMainTimeLineComponent(Lcom/narvii/video/widget/MediaTimeLineComponent;)V
    .locals 0
    .param p1    # Lcom/narvii/video/widget/MediaTimeLineComponent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/video/ScrollingTimeLineFragment;->mainTimeLineComponent:Lcom/narvii/video/widget/MediaTimeLineComponent;

    return-void
.end method

.method protected final setSkipSeekForTimeLineScrolling(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/video/ScrollingTimeLineFragment;->skipSeekForTimeLineScrolling:Z

    return-void
.end method

.method protected final setSubAudioEditing(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/video/ScrollingTimeLineFragment;->subAudioEditing:Z

    return-void
.end method

.method protected final setSubEditingReturnClipList(Ljava/util/ArrayList;)V
    .locals 1
    .param p1    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/video/ScrollingTimeLineFragment;->subEditingReturnClipList:Ljava/util/ArrayList;

    return-void
.end method

.method protected final setSubVideoEditing(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/video/ScrollingTimeLineFragment;->subVideoEditing:Z

    return-void
.end method

.method protected final setVideoDurationText(Landroid/widget/TextView;)V
    .locals 0
    .param p1    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/video/ScrollingTimeLineFragment;->videoDurationText:Landroid/widget/TextView;

    return-void
.end method

.method protected final setVideoPlaybackTimeDivider(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/video/ScrollingTimeLineFragment;->videoPlaybackTimeDivider:Landroid/view/View;

    return-void
.end method

.method protected final setVideoPlaybackTimeText(Landroid/widget/TextView;)V
    .locals 0
    .param p1    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/video/ScrollingTimeLineFragment;->videoPlaybackTimeText:Landroid/widget/TextView;

    return-void
.end method

.method protected final updateVideoTimeLineInfo(ZI)V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getVideoClipInfoList()Ljava/util/ArrayList;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-eqz v0, :cond_4

    .line 15
    .line 16
    iget-object p1, p0, Lcom/narvii/video/ScrollingTimeLineFragment;->mainTimeLineComponent:Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 17
    const/4 p2, 0x4

    .line 18
    .line 19
    if-nez p1, :cond_0

    .line 20
    goto :goto_0

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 24
    .line 25
    :goto_0
    iget-object p1, p0, Lcom/narvii/video/ScrollingTimeLineFragment;->videoDurationText:Landroid/widget/TextView;

    .line 26
    .line 27
    if-nez p1, :cond_1

    .line 28
    goto :goto_1

    .line 29
    .line 30
    .line 31
    :cond_1
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 32
    .line 33
    :goto_1
    iget-object p1, p0, Lcom/narvii/video/ScrollingTimeLineFragment;->videoPlaybackTimeText:Landroid/widget/TextView;

    .line 34
    .line 35
    if-nez p1, :cond_2

    .line 36
    goto :goto_2

    .line 37
    .line 38
    .line 39
    :cond_2
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 40
    .line 41
    :goto_2
    iget-object p1, p0, Lcom/narvii/video/ScrollingTimeLineFragment;->videoPlaybackTimeDivider:Landroid/view/View;

    .line 42
    .line 43
    if-nez p1, :cond_3

    .line 44
    goto :goto_3

    .line 45
    .line 46
    .line 47
    :cond_3
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 48
    :goto_3
    return-void

    .line 49
    .line 50
    :cond_4
    iget-object v0, p0, Lcom/narvii/video/ScrollingTimeLineFragment;->mainTimeLineComponent:Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 51
    const/4 v1, 0x0

    .line 52
    .line 53
    if-nez v0, :cond_5

    .line 54
    goto :goto_4

    .line 55
    .line 56
    .line 57
    :cond_5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 58
    .line 59
    :goto_4
    iget-object v0, p0, Lcom/narvii/video/ScrollingTimeLineFragment;->videoDurationText:Landroid/widget/TextView;

    .line 60
    .line 61
    if-nez v0, :cond_6

    .line 62
    goto :goto_5

    .line 63
    .line 64
    .line 65
    :cond_6
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 66
    .line 67
    :goto_5
    iget-object v0, p0, Lcom/narvii/video/ScrollingTimeLineFragment;->videoPlaybackTimeText:Landroid/widget/TextView;

    .line 68
    .line 69
    if-nez v0, :cond_7

    .line 70
    goto :goto_6

    .line 71
    .line 72
    .line 73
    :cond_7
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 74
    .line 75
    :goto_6
    iget-object v0, p0, Lcom/narvii/video/ScrollingTimeLineFragment;->videoPlaybackTimeDivider:Landroid/view/View;

    .line 76
    .line 77
    if-nez v0, :cond_8

    .line 78
    goto :goto_7

    .line 79
    .line 80
    .line 81
    :cond_8
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 82
    .line 83
    .line 84
    :goto_7
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 85
    move-result-object v0

    .line 86
    .line 87
    .line 88
    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getVideoClipInfoList()Ljava/util/ArrayList;

    .line 89
    move-result-object v0

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 93
    move-result-object v0

    .line 94
    move v2, v1

    .line 95
    .line 96
    .line 97
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 98
    move-result v3

    .line 99
    .line 100
    if-eqz v3, :cond_a

    .line 101
    .line 102
    .line 103
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 104
    move-result-object v3

    .line 105
    .line 106
    check-cast v3, Lcom/narvii/video/model/AVClipInfoPack;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v3}, Lcom/narvii/video/model/AVClipInfoPack;->isTrimSectionValid()Z

    .line 110
    move-result v4

    .line 111
    .line 112
    if-eqz v4, :cond_9

    .line 113
    .line 114
    .line 115
    invoke-virtual {v3}, Lcom/narvii/video/model/AVClipInfoPack;->trimmedDurationInMs()I

    .line 116
    move-result v4

    .line 117
    .line 118
    iput v4, v3, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    .line 119
    .line 120
    .line 121
    :cond_9
    invoke-virtual {v3}, Lcom/narvii/video/model/AVClipInfoPack;->clipLength()I

    .line 122
    move-result v4

    .line 123
    .line 124
    .line 125
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 126
    move-result-object v5

    .line 127
    .line 128
    .line 129
    invoke-static {v5}, Lkotlin/collections/t;->e(Ljava/lang/Object;)Ljava/util/List;

    .line 130
    move-result-object v5

    .line 131
    .line 132
    .line 133
    invoke-virtual {v3, v5}, Lcom/narvii/video/model/BaseClipInfoPack;->setClipLengthComposition(Ljava/util/List;)V

    .line 134
    .line 135
    .line 136
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 137
    move-result-object v5

    .line 138
    .line 139
    .line 140
    invoke-static {v5}, Lkotlin/collections/t;->e(Ljava/lang/Object;)Ljava/util/List;

    .line 141
    move-result-object v5

    .line 142
    .line 143
    .line 144
    invoke-virtual {v3, v5}, Lcom/narvii/video/model/BaseClipInfoPack;->setMainTrackClipComposition(Ljava/util/List;)V

    .line 145
    add-int/2addr v2, v4

    .line 146
    goto :goto_8

    .line 147
    .line 148
    :cond_a
    iget-object v0, p0, Lcom/narvii/video/ScrollingTimeLineFragment;->videoPlaybackTimeText:Landroid/widget/TextView;

    .line 149
    .line 150
    if-nez v0, :cond_b

    .line 151
    goto :goto_9

    .line 152
    .line 153
    .line 154
    :cond_b
    invoke-static {v1}, Lcom/narvii/video/widget/MediaTimeLineComponentKt;->convertMillisToTime(I)Ljava/lang/String;

    .line 155
    move-result-object v3

    .line 156
    .line 157
    .line 158
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    .line 160
    :goto_9
    iget-object v0, p0, Lcom/narvii/video/ScrollingTimeLineFragment;->videoDurationText:Landroid/widget/TextView;

    .line 161
    .line 162
    if-nez v0, :cond_c

    .line 163
    goto :goto_a

    .line 164
    .line 165
    .line 166
    :cond_c
    invoke-static {v2}, Lcom/narvii/video/widget/MediaTimeLineComponentKt;->convertMillisToTime(I)Ljava/lang/String;

    .line 167
    move-result-object v3

    .line 168
    .line 169
    .line 170
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    .line 172
    :goto_a
    iget-object v0, p0, Lcom/narvii/video/ScrollingTimeLineFragment;->mainTimeLineComponent:Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 173
    .line 174
    if-eqz v0, :cond_e

    .line 175
    .line 176
    .line 177
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 178
    move-result v0

    .line 179
    .line 180
    if-lez v0, :cond_e

    .line 181
    .line 182
    .line 183
    invoke-virtual {p0, v2, p1}, Lcom/narvii/video/ScrollingTimeLineFragment;->innerInitMainTimeLine(IZ)V

    .line 184
    const/4 p1, 0x0

    .line 185
    .line 186
    if-ltz p2, :cond_d

    .line 187
    .line 188
    .line 189
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 190
    move-result-object v0

    .line 191
    const/4 v2, 0x2

    .line 192
    .line 193
    .line 194
    invoke-static {v0, p2, v1, v2, p1}, Lcom/narvii/video/interfaces/IPreviewPlayer$DefaultImpls;->setActiveVideoClip$default(Lcom/narvii/video/interfaces/IPreviewPlayer;IIILjava/lang/Object;)Lcom/narvii/video/model/AVClipInfoPack;

    .line 195
    goto :goto_b

    .line 196
    :cond_d
    const/4 p2, 0x1

    .line 197
    .line 198
    .line 199
    invoke-static {p0, v1, v1, p2, p1}, Lcom/narvii/video/BaseMediaEditorFragment;->safeSeekTo$default(Lcom/narvii/video/BaseMediaEditorFragment;IIILjava/lang/Object;)V

    .line 200
    goto :goto_b

    .line 201
    .line 202
    :cond_e
    iget-object p1, p0, Lcom/narvii/video/ScrollingTimeLineFragment;->mainTimeLineComponent:Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 203
    .line 204
    if-eqz p1, :cond_f

    .line 205
    .line 206
    .line 207
    invoke-virtual {p1, p0}, Lcom/narvii/video/widget/MediaTimeLineComponent;->setTimeLineCallback(Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;)V

    .line 208
    :cond_f
    :goto_b
    return-void
.end method
