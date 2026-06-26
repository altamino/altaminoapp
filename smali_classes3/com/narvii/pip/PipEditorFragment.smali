.class public final Lcom/narvii/pip/PipEditorFragment;
.super Lcom/narvii/video/BaseViceTimeLineFragment;
.source "PipEditorFragment.kt"

# interfaces
.implements Lcom/narvii/video/attachment/DrawRectView$OnDrawRectTouchListener;
.implements Lcom/narvii/video/attachment/DrawRectView$onPipVideoMuteListener;
.implements Lcom/narvii/media/MediaPickerFragment$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/pip/PipEditorFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPipEditorFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PipEditorFragment.kt\ncom/narvii/pip/PipEditorFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 MediaPreEditingActivity.kt\ncom/narvii/pre_editing/MediaPreEditingActivityKt\n*L\n1#1,594:1\n1596#2,3:595\n1596#2,3:598\n346#3,8:601\n346#3,8:609\n320#3,24:617\n*E\n*S KotlinDebug\n*F\n+ 1 PipEditorFragment.kt\ncom/narvii/pip/PipEditorFragment\n*L\n414#1,3:595\n420#1,3:598\n444#1,8:601\n477#1,8:609\n486#1,24:617\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;

.field public static final Companion:Lcom/narvii/pip/PipEditorFragment$Companion;

.field private static final PIP_VIDEO_MAX_SIZE:I = 0x1

.field private static final REQUEST_CODE_VIDEO_PIP:I = 0x303a

.field private static final TAG:Ljava/lang/String; = "PipEditorFragment"

.field private static final VOLUME_MIN_VALUE:F = 0.02f


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private currPipVideoIndex:I

.field private final fragmentRegister$delegate:Lkotlin/Lazy;

.field private intermediateFolder:Ljava/io/File;

.field private lastTouchDownTime:J

.field private lastViceTrackClickTime:J

.field private mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

.field private outputFolderPath:Ljava/lang/String;

.field private final photoManager$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/pip/PipEditorFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "fragmentRegister"

    const-string v4, "getFragmentRegister()Lcom/narvii/app/FragmentRegister;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/pip/PipEditorFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "photoManager"

    const-string v4, "getPhotoManager()Lcom/narvii/photos/PhotoManager;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/narvii/pip/PipEditorFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/narvii/pip/PipEditorFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/pip/PipEditorFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/narvii/pip/PipEditorFragment;->Companion:Lcom/narvii/pip/PipEditorFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 39
    invoke-direct {p0}, Lcom/narvii/video/BaseViceTimeLineFragment;-><init>()V

    .line 44
    new-instance v0, Lcom/narvii/pip/PipEditorFragment$fragmentRegister$2;

    invoke-direct {v0, p0}, Lcom/narvii/pip/PipEditorFragment$fragmentRegister$2;-><init>(Lcom/narvii/pip/PipEditorFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/pip/PipEditorFragment;->fragmentRegister$delegate:Lkotlin/Lazy;

    .line 47
    new-instance v0, Lcom/narvii/pip/PipEditorFragment$photoManager$2;

    invoke-direct {v0, p0}, Lcom/narvii/pip/PipEditorFragment$photoManager$2;-><init>(Lcom/narvii/pip/PipEditorFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/pip/PipEditorFragment;->photoManager$delegate:Lkotlin/Lazy;

    .line 119
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/narvii/pip/PipEditorFragment;->lastViceTrackClickTime:J

    .line 270
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/narvii/pip/PipEditorFragment;->lastTouchDownTime:J

    return-void
.end method

.method public static final synthetic access$addNewPipVideo(Lcom/narvii/pip/PipEditorFragment;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/narvii/pip/PipEditorFragment;->addNewPipVideo()V

    return-void
.end method

.method public static final synthetic access$addPipVideos(Lcom/narvii/pip/PipEditorFragment;Lcom/narvii/pip/PipInfoPack;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/narvii/pip/PipEditorFragment;->addPipVideos(Lcom/narvii/pip/PipInfoPack;)V

    return-void
.end method

.method public static final synthetic access$calculatePipVideoDefaultCoord(Lcom/narvii/pip/PipEditorFragment;Lcom/narvii/pip/PipInfoPack;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/narvii/pip/PipEditorFragment;->calculatePipVideoDefaultCoord(Lcom/narvii/pip/PipInfoPack;)V

    return-void
.end method

.method public static final synthetic access$calculatePipVideoRealTimeCoord(Lcom/narvii/pip/PipEditorFragment;Lcom/narvii/pip/PipInfoPack;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/narvii/pip/PipEditorFragment;->calculatePipVideoRealTimeCoord(Lcom/narvii/pip/PipInfoPack;)V

    return-void
.end method

.method public static final synthetic access$canAddPipVideo(Lcom/narvii/pip/PipEditorFragment;)Z
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/narvii/pip/PipEditorFragment;->canAddPipVideo()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$getCurrPipVideoIndex$p(Lcom/narvii/pip/PipEditorFragment;)I
    .locals 0

    .line 39
    iget p0, p0, Lcom/narvii/pip/PipEditorFragment;->currPipVideoIndex:I

    return p0
.end method

.method public static final synthetic access$getMainTrackPlaybackTime(Lcom/narvii/pip/PipEditorFragment;)I
    .locals 0

    .line 39
    invoke-virtual {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->getMainTrackPlaybackTime()I

    move-result p0

    return p0
.end method

.method public static final synthetic access$getPreviewPlayer$p(Lcom/narvii/pip/PipEditorFragment;)Lcom/narvii/video/interfaces/IPreviewPlayer;
    .locals 0

    .line 39
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getVideoInputClipList(Lcom/narvii/pip/PipEditorFragment;)Ljava/util/ArrayList;
    .locals 0

    .line 39
    invoke-virtual {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->getVideoInputClipList()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setCurrPipVideoIndex$p(Lcom/narvii/pip/PipEditorFragment;I)V
    .locals 0

    .line 39
    iput p1, p0, Lcom/narvii/pip/PipEditorFragment;->currPipVideoIndex:I

    return-void
.end method

.method public static final synthetic access$setPreviewPlayer$p(Lcom/narvii/pip/PipEditorFragment;Lcom/narvii/video/interfaces/IPreviewPlayer;)V
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lcom/narvii/video/BaseMediaEditorFragment;->setPreviewPlayer(Lcom/narvii/video/interfaces/IPreviewPlayer;)V

    return-void
.end method

.method public static final synthetic access$updateAddPipVideoBtn(Lcom/narvii/pip/PipEditorFragment;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/narvii/pip/PipEditorFragment;->updateAddPipVideoBtn()V

    return-void
.end method

.method public static final synthetic access$updatePipVideoTimeLine(Lcom/narvii/pip/PipEditorFragment;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/narvii/pip/PipEditorFragment;->updatePipVideoTimeLine()V

    return-void
.end method

.method private final addNewPipVideo()V
    .locals 5

    .line 427
    iget-object v0, p0, Lcom/narvii/pip/PipEditorFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const/16 v2, 0x303a

    const/4 v3, 0x0

    const-string v4, ""

    invoke-static {v0, v4, v1, v2, v3}, Lcom/narvii/pre_editing/MediaPreEditingActivityKt;->pickVideoFromGalleryAndYoutube(Lcom/narvii/media/MediaPickerFragment;Ljava/lang/String;IIZ)V

    return-void

    :cond_0
    const-string v0, "mediaPickerFragment"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method private final addPipVideos(Lcom/narvii/pip/PipInfoPack;)V
    .locals 1

    .line 186
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->addPipVideo(Lcom/narvii/pip/PipInfoPack;)Ljava/util/ArrayList;

    .line 187
    invoke-direct {p0, p1}, Lcom/narvii/pip/PipEditorFragment;->showEditView(Lcom/narvii/pip/PipInfoPack;)V

    return-void
.end method

.method private final calculatePipVideoDefaultCoord(Lcom/narvii/pip/PipInfoPack;)V
    .locals 9

    .line 362
    iget v0, p1, Lcom/narvii/pip/PipInfoPack;->videoWidth:I

    if-ltz v0, :cond_0

    iget v0, p1, Lcom/narvii/pip/PipInfoPack;->videoHeight:I

    if-gez v0, :cond_1

    .line 363
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v0

    iget-object v1, p1, Lcom/narvii/pip/PipInfoPack;->inputPath:Ljava/lang/String;

    const-string v2, "pipInfoPack.inputPath"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getVideoSize(Ljava/lang/String;)Landroid/graphics/Point;

    move-result-object v0

    .line 364
    iget v1, v0, Landroid/graphics/Point;->x:I

    iput v1, p1, Lcom/narvii/pip/PipInfoPack;->videoWidth:I

    .line 365
    iget v0, v0, Landroid/graphics/Point;->y:I

    iput v0, p1, Lcom/narvii/pip/PipInfoPack;->videoHeight:I

    .line 367
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getVideoView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 368
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v1

    invoke-interface {v1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getVideoView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v0, v0

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float v3, v0, v2

    int-to-float v1, v1

    div-float/2addr v3, v1

    .line 370
    iget v4, p1, Lcom/narvii/pip/PipInfoPack;->videoWidth:I

    int-to-float v4, v4

    mul-float v4, v4, v2

    iget v2, p1, Lcom/narvii/pip/PipInfoPack;->videoHeight:I

    int-to-float v2, v2

    div-float/2addr v4, v2

    cmpl-float v2, v4, v3

    if-lez v2, :cond_2

    .line 374
    iget v2, p1, Lcom/narvii/video/model/BaseAttachmentInfoPack;->scaleX:F

    mul-float v2, v2, v0

    div-float v3, v2, v4

    goto :goto_0

    .line 377
    :cond_2
    iget v2, p1, Lcom/narvii/video/model/BaseAttachmentInfoPack;->scaleX:F

    mul-float v3, v1, v2

    mul-float v2, v3, v4

    .line 380
    :goto_0
    iget-object v4, p1, Lcom/narvii/pip/PipInfoPack;->vertexCoord:Ljava/util/List;

    new-instance v5, Landroid/graphics/PointF;

    sub-float v6, v0, v2

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    sub-float v8, v1, v3

    div-float/2addr v8, v7

    invoke-direct {v5, v6, v8}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 381
    iget-object v4, p1, Lcom/narvii/pip/PipInfoPack;->vertexCoord:Ljava/util/List;

    new-instance v5, Landroid/graphics/PointF;

    add-float/2addr v0, v2

    div-float/2addr v0, v7

    invoke-direct {v5, v0, v8}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 382
    iget-object v2, p1, Lcom/narvii/pip/PipInfoPack;->vertexCoord:Ljava/util/List;

    new-instance v4, Landroid/graphics/PointF;

    add-float/2addr v1, v3

    div-float/2addr v1, v7

    invoke-direct {v4, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 383
    iget-object p1, p1, Lcom/narvii/pip/PipInfoPack;->vertexCoord:Ljava/util/List;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v6, v1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private final calculatePipVideoRealTimeCoord(Lcom/narvii/pip/PipInfoPack;)V
    .locals 19

    move-object/from16 v0, p1

    .line 387
    iget v1, v0, Lcom/narvii/video/model/BaseAttachmentInfoPack;->scaleX:F

    .line 388
    iget v2, v0, Lcom/narvii/video/model/BaseAttachmentInfoPack;->rotation:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    neg-double v2, v2

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double v2, v2, v4

    const/16 v4, 0xb4

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v4

    .line 389
    iget-object v4, v0, Lcom/narvii/video/model/BaseAttachmentInfoPack;->translation:Landroid/graphics/PointF;

    iget v5, v4, Landroid/graphics/PointF;->x:F

    .line 390
    iget v4, v4, Landroid/graphics/PointF;->y:F

    .line 392
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v6

    invoke-interface {v6}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getVideoView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    .line 393
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v7

    invoke-interface {v7}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getVideoView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v6, v6

    const/high16 v8, 0x3f800000    # 1.0f

    mul-float v9, v6, v8

    int-to-float v7, v7

    div-float/2addr v9, v7

    .line 395
    iget v10, v0, Lcom/narvii/pip/PipInfoPack;->videoWidth:I

    int-to-float v10, v10

    mul-float v10, v10, v8

    iget v8, v0, Lcom/narvii/pip/PipInfoPack;->videoHeight:I

    int-to-float v8, v8

    div-float/2addr v10, v8

    .line 396
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v8

    invoke-interface {v8}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getVideoView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v8, v8

    const/high16 v11, 0x44340000    # 720.0f

    div-float/2addr v11, v8

    cmpl-float v8, v10, v9

    if-lez v8, :cond_0

    mul-float v1, v1, v6

    div-float v8, v1, v10

    goto :goto_0

    :cond_0
    mul-float v8, v7, v1

    mul-float v1, v8, v10

    :goto_0
    const/high16 v9, 0x40000000    # 2.0f

    div-float v10, v6, v9

    div-float v12, v7, v9

    .line 409
    iget-object v13, v0, Lcom/narvii/pip/PipInfoPack;->vertexCoord:Ljava/util/List;

    new-instance v14, Landroid/graphics/PointF;

    sub-float v15, v6, v1

    div-float/2addr v15, v9

    sub-float v16, v7, v8

    move/from16 v17, v4

    div-float v4, v16, v9

    invoke-direct {v14, v15, v4}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v9, 0x0

    invoke-interface {v13, v9, v14}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 410
    iget-object v13, v0, Lcom/narvii/pip/PipInfoPack;->vertexCoord:Ljava/util/List;

    new-instance v14, Landroid/graphics/PointF;

    add-float/2addr v6, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v6, v1

    invoke-direct {v14, v6, v4}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v4, 0x1

    invoke-interface {v13, v4, v14}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 411
    iget-object v4, v0, Lcom/narvii/pip/PipInfoPack;->vertexCoord:Ljava/util/List;

    const/4 v13, 0x2

    new-instance v14, Landroid/graphics/PointF;

    add-float/2addr v7, v8

    div-float/2addr v7, v1

    invoke-direct {v14, v6, v7}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {v4, v13, v14}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 412
    iget-object v1, v0, Lcom/narvii/pip/PipInfoPack;->vertexCoord:Ljava/util/List;

    const/4 v4, 0x3

    new-instance v6, Landroid/graphics/PointF;

    invoke-direct {v6, v15, v7}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {v1, v4, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 414
    iget-object v1, v0, Lcom/narvii/pip/PipInfoPack;->vertexCoord:Ljava/util/List;

    const-string v4, "pipInfoPack.vertexCoord"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 596
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v6, 0x0

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v13, v6, 0x1

    if-ltz v6, :cond_1

    check-cast v7, Landroid/graphics/PointF;

    .line 415
    iget-object v8, v0, Lcom/narvii/pip/PipInfoPack;->vertexCoord:Ljava/util/List;

    .line 416
    iget v14, v7, Landroid/graphics/PointF;->x:F

    sub-float/2addr v14, v10

    move v15, v10

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    double-to-float v9, v9

    mul-float v14, v14, v9

    iget v9, v7, Landroid/graphics/PointF;->y:F

    sub-float/2addr v9, v12

    move/from16 v18, v11

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    double-to-float v10, v10

    mul-float v9, v9, v10

    sub-float/2addr v14, v9

    add-float/2addr v14, v15

    .line 417
    iget v9, v7, Landroid/graphics/PointF;->x:F

    sub-float/2addr v9, v15

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    double-to-float v10, v10

    mul-float v9, v9, v10

    iget v7, v7, Landroid/graphics/PointF;->y:F

    sub-float/2addr v7, v12

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    double-to-float v10, v10

    mul-float v7, v7, v10

    add-float/2addr v9, v7

    add-float/2addr v9, v12

    .line 415
    new-instance v7, Landroid/graphics/PointF;

    invoke-direct {v7, v14, v9}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {v8, v6, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move v6, v13

    move v10, v15

    move/from16 v11, v18

    const/4 v9, 0x0

    goto :goto_1

    .line 596
    :cond_1
    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    throw v8

    :cond_2
    move/from16 v18, v11

    .line 420
    iget-object v1, v0, Lcom/narvii/pip/PipInfoPack;->vertexCoord:Ljava/util/List;

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 599
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    if-ltz v2, :cond_3

    check-cast v3, Landroid/graphics/PointF;

    .line 421
    iget-object v6, v0, Lcom/narvii/pip/PipInfoPack;->vertexCoord:Ljava/util/List;

    new-instance v7, Landroid/graphics/PointF;

    iget v9, v3, Landroid/graphics/PointF;->x:F

    div-float v10, v5, v18

    add-float/2addr v9, v10

    iget v3, v3, Landroid/graphics/PointF;->y:F

    div-float v10, v17, v18

    sub-float/2addr v3, v10

    invoke-direct {v7, v9, v3}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {v6, v2, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move v2, v4

    goto :goto_2

    .line 599
    :cond_3
    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    throw v8

    .line 423
    :cond_4
    sget v1, Lcom/narvii/mediaeditor/R$id;->draw_rect:I

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Lcom/narvii/pip/PipEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/narvii/video/attachment/DrawRectView;

    iget-object v0, v0, Lcom/narvii/pip/PipInfoPack;->vertexCoord:Ljava/util/List;

    const/4 v3, 0x4

    invoke-virtual {v1, v0, v3}, Lcom/narvii/video/attachment/DrawRectView;->setDrawRect(Ljava/util/List;I)V

    return-void
.end method

.method private final canAddPipVideo()Z
    .locals 2

    .line 562
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getPipVideoList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private final checkScale(Lcom/narvii/pip/PipInfoPack;)V
    .locals 2

    .line 579
    iget v0, p1, Lcom/narvii/video/model/BaseAttachmentInfoPack;->scaleX:F

    const/high16 v1, 0x3fc00000    # 1.5f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 580
    iput v1, p1, Lcom/narvii/video/model/BaseAttachmentInfoPack;->scaleX:F

    .line 582
    :cond_0
    iget v0, p1, Lcom/narvii/video/model/BaseAttachmentInfoPack;->scaleY:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 583
    iput v1, p1, Lcom/narvii/video/model/BaseAttachmentInfoPack;->scaleY:F

    :cond_1
    return-void
.end method

.method private final getFragmentRegister()Lcom/narvii/app/FragmentRegister;
    .locals 3

    iget-object v0, p0, Lcom/narvii/pip/PipEditorFragment;->fragmentRegister$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/pip/PipEditorFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/app/FragmentRegister;

    return-object v0
.end method

.method private final getPhotoManager()Lcom/narvii/photos/PhotoManager;
    .locals 3

    iget-object v0, p0, Lcom/narvii/pip/PipEditorFragment;->photoManager$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/pip/PipEditorFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/photos/PhotoManager;

    return-object v0
.end method

.method private final onPickerResult(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/Media;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 495
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 498
    :cond_0
    new-instance v0, Lcom/narvii/video/model/AVClipInfoPack;

    invoke-direct {v0}, Lcom/narvii/video/model/AVClipInfoPack;-><init>()V

    .line 499
    invoke-direct {p0}, Lcom/narvii/pip/PipEditorFragment;->getPhotoManager()Lcom/narvii/photos/PhotoManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Media;

    invoke-virtual {p1}, Lcom/narvii/model/Media;->getMediaUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/narvii/photos/PhotoManager;->getPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    const-string v1, "photoManager.getPath(list[0].mediaUrl)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 500
    iput-object p1, v0, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    .line 501
    iput-object p1, v0, Lcom/narvii/video/model/AVClipInfoPack;->originalInputPath:Ljava/lang/String;

    const/4 p1, 0x1

    new-array p1, p1, [Lcom/narvii/video/model/AVClipInfoPack;

    aput-object v0, p1, v2

    .line 502
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    new-instance v1, Lcom/narvii/pip/PipEditorFragment$onPickerResult$1;

    invoke-direct {v1, p0, v0}, Lcom/narvii/pip/PipEditorFragment$onPickerResult$1;-><init>(Lcom/narvii/pip/PipEditorFragment;Lcom/narvii/video/model/AVClipInfoPack;)V

    invoke-virtual {p0, p1, v2, v1}, Lcom/narvii/video/BaseMediaEditorFragment;->prepareAVClipList(Ljava/util/ArrayList;ZLcom/narvii/util/Callback;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private final pauseVideoWhenTouch()V
    .locals 4

    .line 431
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getInPlay()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 432
    invoke-virtual {p0, v0}, Lcom/narvii/video/BaseMediaEditorFragment;->setAutoPlaying(Z)V

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 433
    invoke-static {p0, v1, v0, v2, v3}, Lcom/narvii/video/BaseMediaEditorFragment;->changeVideoPlaybackStatus$default(Lcom/narvii/video/BaseMediaEditorFragment;ZZILjava/lang/Object;)V

    .line 434
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->refreshCurrentPosition()V

    :cond_0
    return-void
.end method

.method private final pointInCurrPipVideo(Lcom/narvii/pip/PipInfoPack;Landroid/graphics/PointF;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 298
    :cond_0
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 299
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 300
    iget-object v3, p1, Lcom/narvii/pip/PipInfoPack;->vertexCoord:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v4, p1, Lcom/narvii/pip/PipInfoPack;->vertexCoord:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v3, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 301
    iget-object v0, p1, Lcom/narvii/pip/PipInfoPack;->vertexCoord:Ljava/util/List;

    const/4 v3, 0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v4, p1, Lcom/narvii/pip/PipInfoPack;->vertexCoord:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v0, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 302
    iget-object v0, p1, Lcom/narvii/pip/PipInfoPack;->vertexCoord:Ljava/util/List;

    const/4 v4, 0x2

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v5, p1, Lcom/narvii/pip/PipInfoPack;->vertexCoord:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v0, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 303
    iget-object v0, p1, Lcom/narvii/pip/PipInfoPack;->vertexCoord:Ljava/util/List;

    const/4 v4, 0x3

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object p1, p1, Lcom/narvii/pip/PipInfoPack;->vertexCoord:Ljava/util/List;

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v0, p1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 304
    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 305
    invoke-virtual {v2, v1, v3}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 306
    new-instance p1, Landroid/graphics/Region;

    invoke-direct {p1}, Landroid/graphics/Region;-><init>()V

    .line 307
    new-instance v0, Landroid/graphics/Region;

    iget v3, v1, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    iget v4, v1, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    iget v5, v1, Landroid/graphics/RectF;->right:F

    float-to-int v5, v5

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    float-to-int v1, v1

    invoke-direct {v0, v3, v4, v5, v1}, Landroid/graphics/Region;-><init>(IIII)V

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    .line 308
    iget v0, p2, Landroid/graphics/PointF;->x:F

    float-to-int v0, v0

    iget p2, p2, Landroid/graphics/PointF;->y:F

    float-to-int p2, p2

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Region;->contains(II)Z

    move-result p1

    return p1
.end method

.method private final showEditView(Lcom/narvii/pip/PipInfoPack;)V
    .locals 2

    .line 191
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewVideoView()Lcom/narvii/video/widget/videoview/NVEditorPreviewVideoVIew;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/narvii/pip/PipEditorFragment$showEditView$1;

    invoke-direct {v1, p0, p1}, Lcom/narvii/pip/PipEditorFragment$showEditView$1;-><init>(Lcom/narvii/pip/PipEditorFragment;Lcom/narvii/pip/PipInfoPack;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private final updateAddPipVideoBtn()V
    .locals 2

    .line 566
    sget v0, Lcom/narvii/mediaeditor/R$id;->option_add_pip_video:I

    invoke-virtual {p0, v0}, Lcom/narvii/pip/PipEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const-string v1, "option_add_pip_video"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/narvii/pip/PipEditorFragment;->canAddPipVideo()Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/high16 v1, 0x3f000000    # 0.5f

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method

.method private final updatePipVideoTimeLine()V
    .locals 6

    .line 570
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 571
    invoke-virtual {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->getMainTrackPlaybackTime()I

    move-result v0

    .line 572
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v1

    invoke-interface {v1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getPipVideoList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/pip/PipInfoPack;

    .line 573
    iget v3, v3, Lcom/narvii/video/model/BaseClipInfoPack;->startOffsetToMainTrackInMs:I

    sub-int v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    .line 575
    invoke-static/range {v0 .. v5}, Lcom/narvii/video/BaseViceTimeLineFragment;->updateViceTimeLinePanel$default(Lcom/narvii/video/BaseViceTimeLineFragment;ZLjava/util/List;ZILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/pip/PipEditorFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/pip/PipEditorFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/pip/PipEditorFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/pip/PipEditorFragment;->_$_findViewCache:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/narvii/pip/PipEditorFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method protected changeVideoPlaybackStatus(ZZ)V
    .locals 3

    .line 525
    invoke-super {p0, p1, p2}, Lcom/narvii/video/ScrollingTimeLineFragment;->changeVideoPlaybackStatus(ZZ)V

    const/4 p2, 0x4

    if-nez p1, :cond_0

    .line 527
    sget p1, Lcom/narvii/mediaeditor/R$id;->draw_rect:I

    invoke-virtual {p0, p1}, Lcom/narvii/pip/PipEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/video/attachment/DrawRectView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Lcom/narvii/video/attachment/DrawRectView;->setDrawRect(Ljava/util/List;I)V

    goto :goto_0

    .line 529
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object p1

    invoke-interface {p1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getPipVideoList()Ljava/util/ArrayList;

    move-result-object p1

    .line 530
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/narvii/pip/PipEditorFragment;->currPipVideoIndex:I

    if-gez v1, :cond_1

    goto :goto_0

    :cond_1
    if-le v0, v1, :cond_3

    .line 531
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "pipInfoPackList[currPipVideoIndex]"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/pip/PipInfoPack;

    .line 532
    iget v0, p1, Lcom/narvii/video/model/BaseClipInfoPack;->startOffsetToMainTrackInMs:I

    iget v1, p1, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    add-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->getMainTrackPlaybackTime()I

    move-result v2

    if-le v0, v2, :cond_2

    goto :goto_0

    :cond_2
    if-le v1, v2, :cond_3

    .line 533
    sget v0, Lcom/narvii/mediaeditor/R$id;->draw_rect:I

    invoke-virtual {p0, v0}, Lcom/narvii/pip/PipEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/video/attachment/DrawRectView;

    iget-object p1, p1, Lcom/narvii/pip/PipInfoPack;->vertexCoord:Ljava/util/List;

    invoke-virtual {v0, p1, p2}, Lcom/narvii/video/attachment/DrawRectView;->setDrawRect(Ljava/util/List;I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public getCustomTheme()I
    .locals 1

    .line 182
    invoke-static {}, Lcom/narvii/util/Utils;->isAndroidVersion8()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/narvii/mediaeditor/R$style;->AminoTheme_Overlay:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/narvii/mediaeditor/R$style;->AminoTheme_Translucent_NoActionBar:I

    :goto_0
    return v0
.end method

.method public getTargetClipListForViceTracks()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/video/model/BaseClipInfoPack;",
            ">;"
        }
    .end annotation

    .line 140
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getTotalVisibleVideoDurationInMs()Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 141
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v1

    invoke-interface {v1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getPipVideoList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/pip/PipInfoPack;

    .line 142
    invoke-virtual {v2}, Lcom/narvii/pip/PipInfoPack;->isTrimSectionValid()Z

    move-result v3

    if-nez v3, :cond_0

    .line 143
    iget v3, v2, Lcom/narvii/pip/PipInfoPack;->trimStartInMs:I

    invoke-virtual {v2}, Lcom/narvii/pip/PipInfoPack;->trimmedDurationInMs()I

    move-result v4

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v2, Lcom/narvii/pip/PipInfoPack;->trimEndInMs:I

    .line 144
    invoke-virtual {v2}, Lcom/narvii/pip/PipInfoPack;->trimmedDurationInMs()I

    move-result v3

    iput v3, v2, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    goto :goto_0

    .line 147
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getPipVideoList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getViceTrackDataType(I)I
    .locals 0

    const/16 p1, 0x68

    return p1
.end method

.method public initComponent()V
    .locals 2

    .line 69
    invoke-super {p0}, Lcom/narvii/video/BaseViceTimeLineFragment;->initComponent()V

    .line 70
    sget v0, Lcom/narvii/mediaeditor/R$id;->video_duration:I

    invoke-virtual {p0, v0}, Lcom/narvii/pip/PipEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/narvii/video/ScrollingTimeLineFragment;->setVideoDurationText(Landroid/widget/TextView;)V

    .line 71
    sget v0, Lcom/narvii/mediaeditor/R$id;->video_playback_time:I

    invoke-virtual {p0, v0}, Lcom/narvii/pip/PipEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/narvii/video/ScrollingTimeLineFragment;->setVideoPlaybackTimeText(Landroid/widget/TextView;)V

    .line 72
    sget v0, Lcom/narvii/mediaeditor/R$id;->divider:I

    invoke-virtual {p0, v0}, Lcom/narvii/pip/PipEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/narvii/video/ScrollingTimeLineFragment;->setVideoPlaybackTimeDivider(Landroid/view/View;)V

    .line 73
    sget v0, Lcom/narvii/mediaeditor/R$id;->video_view_player:I

    invoke-virtual {p0, v0}, Lcom/narvii/pip/PipEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/video/widget/videoview/NVEditorPreviewVideoVIew;

    invoke-virtual {p0, v0}, Lcom/narvii/video/BaseMediaEditorFragment;->setPreviewVideoView(Lcom/narvii/video/widget/videoview/NVEditorPreviewVideoVIew;)V

    .line 74
    sget v0, Lcom/narvii/mediaeditor/R$id;->player_button:I

    invoke-virtual {p0, v0}, Lcom/narvii/pip/PipEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/narvii/video/BaseMediaEditorFragment;->setPlayerButton(Landroid/widget/ImageView;)V

    .line 75
    sget v0, Lcom/narvii/mediaeditor/R$id;->video_time_line_component:I

    invoke-virtual {p0, v0}, Lcom/narvii/pip/PipEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-virtual {p0, v0}, Lcom/narvii/video/ScrollingTimeLineFragment;->setMainTimeLineComponent(Lcom/narvii/video/widget/MediaTimeLineComponent;)V

    .line 76
    sget v0, Lcom/narvii/mediaeditor/R$id;->vice_time_line_panel:I

    invoke-virtual {p0, v0}, Lcom/narvii/pip/PipEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const-string v1, "vice_time_line_panel"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/narvii/video/BaseViceTimeLineFragment;->setViceTimeLinePanel(Landroid/widget/LinearLayout;)V

    return-void
.end method

.method public initFrameRetrieverManager()V
    .locals 8

    const-string v0, "frameRetrieverOutputFolder"

    .line 173
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/pip/PipEditorFragment;->outputFolderPath:Ljava/lang/String;

    .line 174
    iget-object v0, p0, Lcom/narvii/pip/PipEditorFragment;->outputFolderPath:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 175
    invoke-virtual {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->getFrameRetrieverManager()Lcom/narvii/video/services/FrameRetrieverManager;

    move-result-object v1

    iget-object v2, p0, Lcom/narvii/pip/PipEditorFragment;->outputFolderPath:Ljava/lang/String;

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/narvii/video/services/FrameRetrieverManager;->initRetriever$default(Lcom/narvii/video/services/FrameRetrieverManager;Ljava/lang/String;ZZILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 v0, 0x0

    throw v0

    .line 177
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->getFrameRetrieverManager()Lcom/narvii/video/services/FrameRetrieverManager;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    const-string v2, "timeline_tmp"

    const-string v3, "video"

    invoke-static/range {v1 .. v7}, Lcom/narvii/video/services/FrameRetrieverManager;->initRetriever$default(Lcom/narvii/video/services/FrameRetrieverManager;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method protected onAVClipsPrepared()V
    .locals 3

    .line 159
    invoke-super {p0}, Lcom/narvii/video/BaseViceTimeLineFragment;->onAVClipsPrepared()V

    .line 160
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getPipVideoList()Ljava/util/ArrayList;

    move-result-object v0

    .line 161
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 162
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "pipClipList[pipClipList.size - 1]"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/narvii/pip/PipInfoPack;

    .line 163
    iget v1, v0, Lcom/narvii/video/model/BaseClipInfoPack;->startOffsetToMainTrackInMs:I

    invoke-virtual {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->getMainTrackPlaybackTime()I

    move-result v2

    if-gt v1, v2, :cond_0

    .line 164
    invoke-direct {p0, v0}, Lcom/narvii/pip/PipEditorFragment;->showEditView(Lcom/narvii/pip/PipInfoPack;)V

    .line 166
    :cond_0
    sget v1, Lcom/narvii/mediaeditor/R$id;->draw_rect:I

    invoke-virtual {p0, v1}, Lcom/narvii/pip/PipEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/narvii/video/attachment/DrawRectView;

    const-string v2, "draw_rect"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, v0, Lcom/narvii/pip/PipInfoPack;->mute:Z

    invoke-virtual {v1, v0}, Lcom/narvii/video/attachment/DrawRectView;->setPipVideoMute(Z)V

    .line 167
    sget v0, Lcom/narvii/mediaeditor/R$id;->draw_rect:I

    invoke-virtual {p0, v0}, Lcom/narvii/pip/PipEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/video/attachment/DrawRectView;

    invoke-virtual {v0, p0}, Lcom/narvii/video/attachment/DrawRectView;->setOnDrawRectTouchListener(Lcom/narvii/video/attachment/DrawRectView$OnDrawRectTouchListener;)V

    .line 168
    sget v0, Lcom/narvii/mediaeditor/R$id;->draw_rect:I

    invoke-virtual {p0, v0}, Lcom/narvii/pip/PipEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/video/attachment/DrawRectView;

    invoke-virtual {v0, p0}, Lcom/narvii/video/attachment/DrawRectView;->setPipVideoMuteListener(Lcom/narvii/video/attachment/DrawRectView$onPipVideoMuteListener;)V

    :cond_1
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .line 109
    invoke-super {p0, p1}, Lcom/narvii/video/BaseMediaEditorFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 110
    new-instance p1, Ljava/io/File;

    const-string v0, "outputFileDir"

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/narvii/video/BaseMediaEditorFragment;->setOutputFileDir(Ljava/io/File;)V

    .line 111
    new-instance p1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getOutputFileDir()Ljava/io/File;

    move-result-object v0

    const-string v1, "scene_intermediate_file"

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/pip/PipEditorFragment;->intermediateFolder:Ljava/io/File;

    .line 112
    iget-object p1, p0, Lcom/narvii/pip/PipEditorFragment;->intermediateFolder:Ljava/io/File;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    return-void

    :cond_0
    const-string p1, "intermediateFolder"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8

    .line 439
    const-class v0, Lcom/narvii/model/Media;

    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    return-void

    :cond_0
    const/16 v2, 0x303a

    const v3, 0xfd30

    const/4 v4, 0x1

    const-string v5, "bundle"

    const-string v6, "media"

    const/4 v7, 0x0

    if-ne p1, v2, :cond_1

    if-ne p2, v1, :cond_8

    if-ne p1, v3, :cond_8

    if-eqz p3, :cond_8

    .line 603
    invoke-virtual {p3, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Media;

    .line 604
    invoke-virtual {p3, v5}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    .line 605
    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-array p3, v4, [Lcom/narvii/model/Media;

    aput-object p1, p3, v7

    .line 445
    invoke-static {p3}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/narvii/pip/PipEditorFragment;->onPickMediaResult(Ljava/util/List;Landroid/os/Bundle;)V

    goto/16 :goto_3

    .line 448
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->getREQUEST_CODE_SCENE_EDITOR()I

    move-result v2

    if-ne p1, v2, :cond_7

    const-string p1, "clipInfoList"

    const/4 p2, 0x0

    if-eqz p3, :cond_2

    .line 449
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_8

    .line 451
    const-class v1, Lcom/narvii/video/model/AVClipInfoPack;

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    .line 452
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v4

    if-eqz p1, :cond_8

    .line 453
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/video/model/AVClipInfoPack;

    .line 454
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getPipVideoList()Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/narvii/pip/PipEditorFragment;->currPipVideoIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/pip/PipInfoPack;

    invoke-virtual {v0}, Lcom/narvii/pip/PipInfoPack;->copy()Lcom/narvii/pip/PipInfoPack;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 455
    iget v1, p1, Lcom/narvii/video/model/AVClipInfoPack;->trackVolume:F

    iput v1, v0, Lcom/narvii/pip/PipInfoPack;->volume:F

    .line 456
    iget v1, p1, Lcom/narvii/video/model/AVClipInfoPack;->trimStartInMs:I

    iput v1, v0, Lcom/narvii/pip/PipInfoPack;->trimStartInMs:I

    .line 457
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getTotalVisibleVideoDurationInMs()Lkotlin/Pair;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 458
    iget v2, p1, Lcom/narvii/video/model/AVClipInfoPack;->trimStartInMs:I

    invoke-virtual {p1}, Lcom/narvii/video/model/AVClipInfoPack;->trimmedDurationInMs()I

    move-result p1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    add-int/2addr v2, p1

    iput v2, v0, Lcom/narvii/pip/PipInfoPack;->trimEndInMs:I

    .line 459
    invoke-virtual {v0}, Lcom/narvii/pip/PipInfoPack;->trimmedDurationInMs()I

    move-result p1

    iput p1, v0, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    const-string p1, "mute"

    .line 460
    invoke-virtual {p3, p1, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, v0, Lcom/narvii/pip/PipInfoPack;->mute:Z

    const/4 p1, 0x4

    .line 461
    invoke-virtual {p0, p1}, Lcom/narvii/pip/PipEditorFragment;->onDel(I)V

    .line 462
    invoke-direct {p0, v0}, Lcom/narvii/pip/PipEditorFragment;->addPipVideos(Lcom/narvii/pip/PipInfoPack;)V

    .line 463
    iget-boolean p3, v0, Lcom/narvii/pip/PipInfoPack;->mute:Z

    if-nez p3, :cond_4

    iget p3, v0, Lcom/narvii/pip/PipInfoPack;->volume:F

    const v1, 0x3ca3d70a    # 0.02f

    cmpg-float p3, p3, v1

    if-gez p3, :cond_3

    goto :goto_1

    .line 466
    :cond_3
    sget p3, Lcom/narvii/mediaeditor/R$id;->draw_rect:I

    invoke-virtual {p0, p3}, Lcom/narvii/pip/PipEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/video/attachment/DrawRectView;

    const-string v1, "draw_rect"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3, v7}, Lcom/narvii/video/attachment/DrawRectView;->setPipVideoMute(Z)V

    goto :goto_2

    .line 464
    :cond_4
    :goto_1
    invoke-virtual {p0, v7}, Lcom/narvii/pip/PipEditorFragment;->onPipVideoMute(Z)V

    .line 468
    :goto_2
    invoke-direct {p0}, Lcom/narvii/pip/PipEditorFragment;->updatePipVideoTimeLine()V

    .line 469
    iget p3, v0, Lcom/narvii/video/model/BaseClipInfoPack;->startOffsetToMainTrackInMs:I

    iget v0, v0, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    add-int/2addr v0, p3

    invoke-virtual {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->getMainTrackPlaybackTime()I

    move-result v1

    if-gt p3, v1, :cond_5

    if-ge v0, v1, :cond_8

    .line 470
    :cond_5
    sget p3, Lcom/narvii/mediaeditor/R$id;->draw_rect:I

    invoke-virtual {p0, p3}, Lcom/narvii/pip/PipEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/video/attachment/DrawRectView;

    invoke-virtual {p3, p2, p1}, Lcom/narvii/video/attachment/DrawRectView;->setDrawRect(Ljava/util/List;I)V

    goto :goto_3

    .line 454
    :cond_6
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.narvii.pip.PipInfoPack"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    if-ne p2, v1, :cond_8

    if-ne p1, v3, :cond_8

    if-eqz p3, :cond_8

    .line 611
    invoke-virtual {p3, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Media;

    .line 612
    invoke-virtual {p3, v5}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    .line 613
    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-array p2, v4, [Lcom/narvii/model/Media;

    aput-object p1, p2, v7

    .line 478
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/narvii/pip/PipEditorFragment;->onPickerResult(Ljava/util/List;)V

    :cond_8
    :goto_3
    return-void
.end method

.method public onBeyondDrawRectClick(I)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 53
    invoke-super {p0, p1}, Lcom/narvii/video/ScrollingTimeLineFragment;->onCreate(Landroid/os/Bundle;)V

    .line 54
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    const-string v1, "playListMediaPicker"

    invoke-virtual {p1, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    .line 55
    instance-of v2, p1, Lcom/narvii/media/MediaPickerFragment;

    if-eqz v2, :cond_0

    .line 56
    check-cast p1, Lcom/narvii/media/MediaPickerFragment;

    iput-object p1, p0, Lcom/narvii/pip/PipEditorFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    goto :goto_0

    .line 58
    :cond_0
    new-instance p1, Lcom/narvii/media/MediaPickerFragment;

    invoke-direct {p1}, Lcom/narvii/media/MediaPickerFragment;-><init>()V

    iput-object p1, p0, Lcom/narvii/pip/PipEditorFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 59
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    iget-object v2, p0, Lcom/narvii/pip/PipEditorFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    const-string v3, "mediaPickerFragment"

    if-eqz v2, :cond_2

    invoke-virtual {p1, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 60
    iget-object p1, p0, Lcom/narvii/pip/PipEditorFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/narvii/media/MediaPickerFragment;->listenerEventDispatcher:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_1
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_2
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v0

    .line 54
    :cond_4
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    sget p3, Lcom/narvii/mediaeditor/R$layout;->fragment_pip_editor:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDel(I)V
    .locals 2

    .line 254
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object p1

    invoke-interface {p1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getPipVideoList()Ljava/util/ArrayList;

    move-result-object p1

    .line 255
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/narvii/pip/PipEditorFragment;->currPipVideoIndex:I

    if-ltz v1, :cond_2

    if-gt v0, v1, :cond_0

    goto :goto_0

    .line 258
    :cond_0
    invoke-direct {p0}, Lcom/narvii/pip/PipEditorFragment;->pauseVideoWhenTouch()V

    .line 260
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v0

    iget v1, p0, Lcom/narvii/pip/PipEditorFragment;->currPipVideoIndex:I

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "pipInfoPackList[currPipVideoIndex]"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/pip/PipInfoPack;

    iget v1, p0, Lcom/narvii/pip/PipEditorFragment;->currPipVideoIndex:I

    invoke-interface {v0, p1, v1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->removePipVideo(Lcom/narvii/pip/PipInfoPack;I)Ljava/util/ArrayList;

    .line 261
    sget p1, Lcom/narvii/mediaeditor/R$id;->draw_rect:I

    invoke-virtual {p0, p1}, Lcom/narvii/pip/PipEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/video/attachment/DrawRectView;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/narvii/video/attachment/DrawRectView;->setDrawRect(Ljava/util/List;I)V

    .line 262
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getInPlay()Z

    move-result p1

    if-nez p1, :cond_1

    .line 263
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object p1

    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getCurrentVideoPositionInTimeline()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->seekTimeLineTo(I)V

    .line 266
    :cond_1
    invoke-direct {p0}, Lcom/narvii/pip/PipEditorFragment;->updateAddPipVideoBtn()V

    .line 267
    invoke-direct {p0}, Lcom/narvii/pip/PipEditorFragment;->updatePipVideoTimeLine()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 540
    invoke-super {p0}, Lcom/narvii/video/BaseViceTimeLineFragment;->onDestroyView()V

    .line 541
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getInitSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 542
    invoke-virtual {p0}, Lcom/narvii/pip/PipEditorFragment;->_$_clearFindViewByIdCache()V

    return-void

    .line 544
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->getFrameRetrieverManager()Lcom/narvii/video/services/FrameRetrieverManager;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/pip/PipEditorFragment;->outputFolderPath:Ljava/lang/String;

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/narvii/video/services/FrameRetrieverManager;->doClean(Z)V

    .line 545
    invoke-virtual {p0}, Lcom/narvii/pip/PipEditorFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onDrag(Landroid/graphics/PointF;Landroid/graphics/PointF;I)V
    .locals 5

    .line 211
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object p3

    invoke-interface {p3}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getPipVideoList()Ljava/util/ArrayList;

    move-result-object p3

    .line 212
    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/narvii/pip/PipEditorFragment;->currPipVideoIndex:I

    if-ltz v1, :cond_3

    if-gt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    const/high16 v0, 0x44340000    # 720.0f

    .line 216
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v1

    invoke-interface {v1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getVideoView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 217
    iget v1, p0, Lcom/narvii/pip/PipEditorFragment;->currPipVideoIndex:I

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    const-string v1, "pipInfoPackList[currPipVideoIndex]"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Lcom/narvii/pip/PipInfoPack;

    .line 218
    iget v1, p3, Lcom/narvii/video/model/BaseClipInfoPack;->startOffsetToMainTrackInMs:I

    iget v2, p3, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    add-int/2addr v2, v1

    invoke-virtual {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->getMainTrackPlaybackTime()I

    move-result v3

    if-gt v1, v3, :cond_3

    if-gt v2, v3, :cond_1

    goto :goto_0

    .line 221
    :cond_1
    invoke-direct {p0}, Lcom/narvii/pip/PipEditorFragment;->pauseVideoWhenTouch()V

    .line 222
    new-instance v1, Landroid/graphics/PointF;

    iget v2, p2, Landroid/graphics/PointF;->x:F

    iget v3, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v3

    mul-float v2, v2, v0

    iget-object v3, p3, Lcom/narvii/video/model/BaseAttachmentInfoPack;->translation:Landroid/graphics/PointF;

    iget v4, v3, Landroid/graphics/PointF;->x:F

    add-float/2addr v2, v4

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iget p2, p2, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, p2

    mul-float p1, p1, v0

    iget p2, v3, Landroid/graphics/PointF;->y:F

    add-float/2addr p1, p2

    invoke-direct {v1, v2, p1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v1, p3, Lcom/narvii/video/model/BaseAttachmentInfoPack;->translation:Landroid/graphics/PointF;

    .line 223
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object p1

    invoke-interface {p1, p3}, Lcom/narvii/video/interfaces/IPreviewPlayer;->updatePipVideoTransform(Lcom/narvii/pip/PipInfoPack;)V

    .line 224
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getInPlay()Z

    move-result p1

    if-nez p1, :cond_2

    .line 225
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object p1

    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object p2

    invoke-interface {p2}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getCurrentVideoPositionInTimeline()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/narvii/video/interfaces/IPreviewPlayer;->seekTimeLineTo(I)V

    .line 227
    :cond_2
    invoke-direct {p0, p3}, Lcom/narvii/pip/PipEditorFragment;->calculatePipVideoRealTimeCoord(Lcom/narvii/pip/PipInfoPack;)V

    nop

    :cond_3
    :goto_0
    return-void
.end method

.method public onEdit(I)V
    .locals 8

    .line 312
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object p1

    invoke-interface {p1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getPipVideoList()Ljava/util/ArrayList;

    move-result-object p1

    .line 313
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/narvii/pip/PipEditorFragment;->currPipVideoIndex:I

    if-ltz v1, :cond_3

    if-gt v0, v1, :cond_0

    goto/16 :goto_1

    .line 316
    :cond_0
    invoke-direct {p0}, Lcom/narvii/pip/PipEditorFragment;->getFragmentRegister()Lcom/narvii/app/FragmentRegister;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "mediaEditor"

    .line 317
    invoke-virtual {v0, v1}, Lcom/narvii/app/FragmentRegister;->getFragmentDeepLinkUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 319
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 320
    new-instance v0, Lcom/narvii/video/model/AVClipInfoPack;

    invoke-direct {v0}, Lcom/narvii/video/model/AVClipInfoPack;-><init>()V

    .line 321
    iget v2, p0, Lcom/narvii/pip/PipEditorFragment;->currPipVideoIndex:I

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string v2, "pipInfoPackList[currPipVideoIndex]"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/pip/PipInfoPack;

    .line 323
    iget v2, p1, Lcom/narvii/pip/PipInfoPack;->trimStartInMs:I

    iput v2, v0, Lcom/narvii/video/model/AVClipInfoPack;->trimStartInMs:I

    .line 324
    iget v2, p1, Lcom/narvii/pip/PipInfoPack;->trimEndInMs:I

    iput v2, v0, Lcom/narvii/video/model/AVClipInfoPack;->trimEndInMs:I

    .line 325
    iget v2, p1, Lcom/narvii/pip/PipInfoPack;->volume:F

    iput v2, v0, Lcom/narvii/video/model/AVClipInfoPack;->trackVolume:F

    .line 326
    iget-object v2, p1, Lcom/narvii/pip/PipInfoPack;->inputPath:Ljava/lang/String;

    const-string v3, "pipInfoPack.inputPath"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    const-string v7, "file://"

    invoke-static {v2, v7, v4, v5, v6}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 327
    iget-object v2, p1, Lcom/narvii/pip/PipInfoPack;->inputPath:Ljava/lang/String;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x7

    iget-object v4, p1, Lcom/narvii/pip/PipInfoPack;->inputPath:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v2, :cond_1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    goto :goto_0

    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 329
    :cond_2
    iget-object v2, p1, Lcom/narvii/pip/PipInfoPack;->inputPath:Ljava/lang/String;

    iput-object v2, v0, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    .line 332
    :goto_0
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "clipInfoPack"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x1

    const-string v2, "isVideoTrimming"

    .line 333
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v2, 0x3e8

    const-string v3, "minOutputLength"

    .line 334
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "showVolume"

    .line 335
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 336
    iget-boolean p1, p1, Lcom/narvii/pip/PipInfoPack;->mute:Z

    const-string v0, "mute"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 337
    invoke-virtual {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->getREQUEST_CODE_SCENE_EDITOR()I

    move-result p1

    invoke-virtual {p0, v1, p1}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onHorizFlipClick(I)V
    .locals 0

    return-void
.end method

.method public onPickMediaResult(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/Media;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 485
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    .line 626
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Media;

    if-eqz v0, :cond_4

    .line 627
    iget-object v1, v0, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    invoke-static {v1}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    if-eqz p2, :cond_4

    .line 629
    iget v1, v0, Lcom/narvii/model/Media;->type:I

    const/16 v2, 0x67

    const/4 v3, 0x0

    const-string v4, "intermediateFolder"

    if-ne v1, v2, :cond_1

    .line 487
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/narvii/pip/PipEditorFragment;->intermediateFolder:Ljava/io/File;

    if-eqz v1, :cond_0

    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p2, p1}, Lcom/narvii/pre_editing/MediaPreEditingActivityKt;->startPreEditActivity(Lcom/narvii/app/NVFragment;Lcom/narvii/model/Media;Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_1
    const/16 v2, 0x7b

    if-ne v1, v2, :cond_3

    .line 631
    iget-wide v1, v0, Lcom/narvii/model/Media;->duration:J

    const v5, 0xee47

    int-to-long v5, v5

    cmp-long v7, v1, v5

    if-lez v7, :cond_3

    .line 487
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/narvii/pip/PipEditorFragment;->intermediateFolder:Ljava/io/File;

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 489
    :cond_3
    invoke-direct {p0, p1}, Lcom/narvii/pip/PipEditorFragment;->onPickerResult(Ljava/util/List;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public onPipVideoMute(Z)V
    .locals 5

    .line 349
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getPipVideoList()Ljava/util/ArrayList;

    move-result-object v0

    .line 350
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/narvii/pip/PipEditorFragment;->currPipVideoIndex:I

    if-ltz v2, :cond_2

    if-gt v1, v2, :cond_0

    goto :goto_1

    .line 353
    :cond_0
    sget v1, Lcom/narvii/mediaeditor/R$id;->draw_rect:I

    invoke-virtual {p0, v1}, Lcom/narvii/pip/PipEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/narvii/video/attachment/DrawRectView;

    const-string v2, "draw_rect"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    xor-int/lit8 v3, p1, 0x1

    invoke-virtual {v1, v3}, Lcom/narvii/video/attachment/DrawRectView;->setPipVideoMute(Z)V

    .line 355
    iget v1, p0, Lcom/narvii/pip/PipEditorFragment;->currPipVideoIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v3, "pipInfoPackList[currPipVideoIndex]"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/narvii/pip/PipInfoPack;

    xor-int/lit8 p1, p1, 0x1

    .line 356
    iput-boolean p1, v1, Lcom/narvii/pip/PipInfoPack;->mute:Z

    .line 357
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object p1

    iget v4, p0, Lcom/narvii/pip/PipEditorFragment;->currPipVideoIndex:I

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/narvii/pip/PipInfoPack;

    sget v3, Lcom/narvii/mediaeditor/R$id;->draw_rect:I

    invoke-virtual {p0, v3}, Lcom/narvii/pip/PipEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/narvii/video/attachment/DrawRectView;

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/narvii/video/attachment/DrawRectView;->isPipVideoMute()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    iget v1, v1, Lcom/narvii/pip/PipInfoPack;->volume:F

    :goto_0
    iget v2, p0, Lcom/narvii/pip/PipEditorFragment;->currPipVideoIndex:I

    invoke-interface {p1, v0, v1, v2}, Lcom/narvii/video/interfaces/IPreviewPlayer;->setPipVideoVolume(Lcom/narvii/pip/PipInfoPack;FI)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onScaleAndRotate(FLandroid/graphics/PointF;FI)V
    .locals 2

    .line 232
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object p2

    invoke-interface {p2}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getPipVideoList()Ljava/util/ArrayList;

    move-result-object p2

    .line 233
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_3

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p4

    iget v0, p0, Lcom/narvii/pip/PipEditorFragment;->currPipVideoIndex:I

    if-ltz v0, :cond_3

    if-gt p4, v0, :cond_0

    goto :goto_0

    .line 236
    :cond_0
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    const-string p4, "pipInfoPackList[currPipVideoIndex]"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/narvii/pip/PipInfoPack;

    .line 237
    iget p4, p2, Lcom/narvii/video/model/BaseClipInfoPack;->startOffsetToMainTrackInMs:I

    iget v0, p2, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    add-int/2addr v0, p4

    invoke-virtual {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->getMainTrackPlaybackTime()I

    move-result v1

    if-gt p4, v1, :cond_3

    if-gt v0, v1, :cond_1

    goto :goto_0

    .line 240
    :cond_1
    invoke-direct {p0}, Lcom/narvii/pip/PipEditorFragment;->pauseVideoWhenTouch()V

    .line 241
    iget p4, p2, Lcom/narvii/video/model/BaseAttachmentInfoPack;->scaleX:F

    mul-float p4, p4, p1

    iput p4, p2, Lcom/narvii/video/model/BaseAttachmentInfoPack;->scaleX:F

    .line 242
    iget p1, p2, Lcom/narvii/video/model/BaseAttachmentInfoPack;->scaleX:F

    iput p1, p2, Lcom/narvii/video/model/BaseAttachmentInfoPack;->scaleY:F

    .line 243
    invoke-direct {p0, p2}, Lcom/narvii/pip/PipEditorFragment;->checkScale(Lcom/narvii/pip/PipInfoPack;)V

    .line 244
    iget p1, p2, Lcom/narvii/video/model/BaseAttachmentInfoPack;->rotation:F

    add-float/2addr p1, p3

    iput p1, p2, Lcom/narvii/video/model/BaseAttachmentInfoPack;->rotation:F

    .line 245
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/narvii/video/interfaces/IPreviewPlayer;->updatePipVideoTransform(Lcom/narvii/pip/PipInfoPack;)V

    .line 246
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getInPlay()Z

    move-result p1

    if-nez p1, :cond_2

    .line 247
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object p1

    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object p3

    invoke-interface {p3}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getCurrentVideoPositionInTimeline()I

    move-result p3

    invoke-interface {p1, p3}, Lcom/narvii/video/interfaces/IPreviewPlayer;->seekTimeLineTo(I)V

    .line 249
    :cond_2
    invoke-direct {p0, p2}, Lcom/narvii/pip/PipEditorFragment;->calculatePipVideoRealTimeCoord(Lcom/narvii/pip/PipInfoPack;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onTouchDown(Landroid/graphics/PointF;I)V
    .locals 7

    .line 272
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object p2

    invoke-interface {p2}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getPipVideoList()Ljava/util/ArrayList;

    move-result-object p2

    .line 273
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/narvii/pip/PipEditorFragment;->currPipVideoIndex:I

    if-gez v1, :cond_0

    goto :goto_1

    :cond_0
    if-le v0, v1, :cond_5

    .line 274
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "pipInfoPackList[currPipVideoIndex]"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/narvii/pip/PipInfoPack;

    .line 275
    invoke-direct {p0, v0, p1}, Lcom/narvii/pip/PipEditorFragment;->pointInCurrPipVideo(Lcom/narvii/pip/PipInfoPack;Landroid/graphics/PointF;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 278
    :cond_1
    iget p1, v0, Lcom/narvii/video/model/BaseClipInfoPack;->startOffsetToMainTrackInMs:I

    iget v0, v0, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    add-int/2addr v0, p1

    invoke-virtual {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->getMainTrackPlaybackTime()I

    move-result v1

    if-gt p1, v1, :cond_4

    if-gt v0, v1, :cond_2

    goto :goto_0

    .line 281
    :cond_2
    sget p1, Lcom/narvii/mediaeditor/R$id;->draw_rect:I

    invoke-virtual {p0, p1}, Lcom/narvii/pip/PipEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/video/attachment/DrawRectView;

    iget v0, p0, Lcom/narvii/pip/PipEditorFragment;->currPipVideoIndex:I

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/pip/PipInfoPack;

    iget-object p2, p2, Lcom/narvii/pip/PipInfoPack;->vertexCoord:Ljava/util/List;

    const/4 v0, 0x4

    invoke-virtual {p1, p2, v0}, Lcom/narvii/video/attachment/DrawRectView;->setDrawRect(Ljava/util/List;I)V

    .line 282
    sget p1, Lcom/narvii/mediaeditor/R$id;->draw_rect:I

    invoke-virtual {p0, p1}, Lcom/narvii/pip/PipEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/video/attachment/DrawRectView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/narvii/video/attachment/DrawRectView;->setShowEdit(Z)V

    .line 283
    invoke-direct {p0}, Lcom/narvii/pip/PipEditorFragment;->pauseVideoWhenTouch()V

    .line 285
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    const/16 v1, 0x190

    int-to-long v1, v1

    const/16 v3, 0x1e

    int-to-long v3, v3

    .line 286
    iget-wide v5, p0, Lcom/narvii/pip/PipEditorFragment;->lastTouchDownTime:J

    sub-long/2addr p1, v5

    cmp-long v5, v3, p1

    if-lez v5, :cond_3

    goto :goto_1

    :cond_3
    cmp-long v3, v1, p1

    if-ltz v3, :cond_5

    .line 287
    invoke-virtual {p0, v0}, Lcom/narvii/pip/PipEditorFragment;->onEdit(I)V

    goto :goto_1

    :cond_4
    :goto_0
    return-void

    .line 290
    :cond_5
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/narvii/pip/PipEditorFragment;->lastTouchDownTime:J

    return-void
.end method

.method public onViceTrackClicked(I)V
    .locals 7

    .line 121
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 122
    iget-wide v2, p0, Lcom/narvii/pip/PipEditorFragment;->lastViceTrackClickTime:J

    sub-long v2, v0, v2

    const/16 v4, 0x3e8

    int-to-long v4, v4

    cmp-long v6, v2, v4

    if-gtz v6, :cond_0

    return-void

    .line 125
    :cond_0
    iput-wide v0, p0, Lcom/narvii/pip/PipEditorFragment;->lastViceTrackClickTime:J

    .line 126
    invoke-direct {p0}, Lcom/narvii/pip/PipEditorFragment;->pauseVideoWhenTouch()V

    .line 127
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getPipVideoList()Ljava/util/ArrayList;

    move-result-object v0

    .line 128
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    .line 129
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "pipClipList[pipClipList.size - 1]"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/narvii/pip/PipInfoPack;

    invoke-direct {p0, v1}, Lcom/narvii/pip/PipEditorFragment;->showEditView(Lcom/narvii/pip/PipInfoPack;)V

    .line 130
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "pipClipList[trackIndex]"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/pip/PipInfoPack;

    .line 131
    iget v0, p1, Lcom/narvii/video/model/BaseClipInfoPack;->startOffsetToMainTrackInMs:I

    iget v1, p1, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    add-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->getMainTrackPlaybackTime()I

    move-result v2

    if-gt v0, v2, :cond_1

    if-gt v1, v2, :cond_2

    .line 132
    :cond_1
    iget p1, p1, Lcom/narvii/video/model/BaseClipInfoPack;->startOffsetToMainTrackInMs:I

    invoke-virtual {p0, p1}, Lcom/narvii/video/ScrollingTimeLineFragment;->moveMainTrackTo(I)V

    .line 133
    invoke-direct {p0}, Lcom/narvii/pip/PipEditorFragment;->updatePipVideoTimeLine()V

    :cond_2
    const/4 p1, 0x4

    .line 135
    invoke-virtual {p0, p1}, Lcom/narvii/pip/PipEditorFragment;->onEdit(I)V

    :cond_3
    return-void
.end method

.method public onViceTrackOffsetChanged(I)V
    .locals 1

    .line 151
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->onPipVideoOffsetChanged(I)V

    return-void
.end method

.method protected onVideoSeekingPositionChanged(J)V
    .locals 5

    .line 548
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getPipVideoList()Ljava/util/ArrayList;

    move-result-object v0

    .line 549
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/narvii/pip/PipEditorFragment;->currPipVideoIndex:I

    if-ltz v2, :cond_2

    if-gt v1, v2, :cond_0

    goto :goto_0

    .line 552
    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/pip/PipInfoPack;

    .line 553
    iget v1, v0, Lcom/narvii/video/model/BaseClipInfoPack;->startOffsetToMainTrackInMs:I

    int-to-long v2, v1

    cmp-long v4, v2, p1

    if-gtz v4, :cond_1

    iget v0, v0, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    add-int/2addr v1, v0

    int-to-long v0, v1

    cmp-long v2, v0, p1

    if-gez v2, :cond_2

    .line 556
    :cond_1
    sget p1, Lcom/narvii/mediaeditor/R$id;->draw_rect:I

    invoke-virtual {p0, p1}, Lcom/narvii/pip/PipEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/video/attachment/DrawRectView;

    const/4 p2, 0x0

    const/4 v0, 0x4

    invoke-virtual {p1, p2, v0}, Lcom/narvii/video/attachment/DrawRectView;->setDrawRect(Ljava/util/List;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-super {p0, p1, p2}, Lcom/narvii/video/BaseMediaEditorFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 81
    sget p1, Lcom/narvii/mediaeditor/R$id;->option_cancel:I

    invoke-virtual {p0, p1}, Lcom/narvii/pip/PipEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    new-instance p2, Lcom/narvii/pip/PipEditorFragment$onViewCreated$1;

    invoke-direct {p2, p0}, Lcom/narvii/pip/PipEditorFragment$onViewCreated$1;-><init>(Lcom/narvii/pip/PipEditorFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    sget p1, Lcom/narvii/mediaeditor/R$id;->option_add_pip_video:I

    invoke-virtual {p0, p1}, Lcom/narvii/pip/PipEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    new-instance p2, Lcom/narvii/pip/PipEditorFragment$onViewCreated$2;

    invoke-direct {p2, p0}, Lcom/narvii/pip/PipEditorFragment$onViewCreated$2;-><init>(Lcom/narvii/pip/PipEditorFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    sget p1, Lcom/narvii/mediaeditor/R$id;->option_done:I

    invoke-virtual {p0, p1}, Lcom/narvii/pip/PipEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    new-instance p2, Lcom/narvii/pip/PipEditorFragment$onViewCreated$3;

    invoke-direct {p2, p0}, Lcom/narvii/pip/PipEditorFragment$onViewCreated$3;-><init>(Lcom/narvii/pip/PipEditorFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected showPauseButton()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
