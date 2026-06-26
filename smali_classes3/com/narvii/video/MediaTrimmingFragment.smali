.class public final Lcom/narvii/video/MediaTrimmingFragment;
.super Lcom/narvii/video/BaseMediaEditorFragment;
.source "MediaTrimmingFragment.kt"

# interfaces
.implements Lcom/narvii/video/widget/VolumeProgressView$OnVolumeChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/video/MediaTrimmingFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMediaTrimmingFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MediaTrimmingFragment.kt\ncom/narvii/video/MediaTrimmingFragment\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,459:1\n8918#2:460\n9251#2,3:461\n*E\n*S KotlinDebug\n*F\n+ 1 MediaTrimmingFragment.kt\ncom/narvii/video/MediaTrimmingFragment\n*L\n388#1:460\n388#1,3:461\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;

.field public static final Companion:Lcom/narvii/video/MediaTrimmingFragment$Companion;

.field public static final TAG_SCREENSHOT_TASK:Ljava/lang/String; = "screenshot"

.field public static final TAG_VIDEO_TASK:Ljava/lang/String; = "video"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private activeMedia:Lcom/narvii/video/model/AVClipInfoPack;

.field private cancelled:Z

.field private frameRetrieverManager:Lcom/narvii/video/services/FrameRetrieverManager;

.field private volatile hasFailedTaskInThisShot:Z

.field private inProcessCoverImageTask:Lffmpeg/base/MediaEditingConfig;

.field private inProcessTrimTask:Lffmpeg/base/MediaEditingConfig;

.field private volatile inProgressTaskCount:I

.field private inputStreamInfo:Lcom/narvii/video/model/StreamInfo;

.field private isVideoTrimming:Z

.field private maxOutputLength:I

.field private minOutputLength:I

.field private originalMedia:Lcom/narvii/video/model/AVClipInfoPack;

.field private outputDuration:I

.field private outputFileName:Ljava/lang/String;

.field private outputHeight:I

.field private outputWidth:I

.field private photoManager:Lcom/narvii/photos/PhotoManager;

.field private final progress$delegate:Lkotlin/Lazy;

.field private tasksTouchDown:Z

.field private volume:F

.field private volumeChanged:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/video/MediaTrimmingFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "progress"

    const-string v4, "getProgress()Lcom/narvii/util/dialog/ProgressDialog;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/narvii/video/MediaTrimmingFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/narvii/video/MediaTrimmingFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/video/MediaTrimmingFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/narvii/video/MediaTrimmingFragment;->Companion:Lcom/narvii/video/MediaTrimmingFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Lcom/narvii/video/BaseMediaEditorFragment;-><init>()V

    const/4 v0, 0x1

    .line 203
    iput-boolean v0, p0, Lcom/narvii/video/MediaTrimmingFragment;->isVideoTrimming:Z

    .line 215
    new-instance v0, Lcom/narvii/video/MediaTrimmingFragment$progress$2;

    invoke-direct {v0, p0}, Lcom/narvii/video/MediaTrimmingFragment$progress$2;-><init>(Lcom/narvii/video/MediaTrimmingFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/video/MediaTrimmingFragment;->progress$delegate:Lkotlin/Lazy;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 228
    iput v0, p0, Lcom/narvii/video/MediaTrimmingFragment;->volume:F

    return-void
.end method

.method public static final synthetic access$getCancelled$p(Lcom/narvii/video/MediaTrimmingFragment;)Z
    .locals 0

    .line 47
    iget-boolean p0, p0, Lcom/narvii/video/MediaTrimmingFragment;->cancelled:Z

    return p0
.end method

.method public static final synthetic access$getInProcessCoverImageTask$p(Lcom/narvii/video/MediaTrimmingFragment;)Lffmpeg/base/MediaEditingConfig;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/narvii/video/MediaTrimmingFragment;->inProcessCoverImageTask:Lffmpeg/base/MediaEditingConfig;

    return-object p0
.end method

.method public static final synthetic access$getInProcessTrimTask$p(Lcom/narvii/video/MediaTrimmingFragment;)Lffmpeg/base/MediaEditingConfig;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/narvii/video/MediaTrimmingFragment;->inProcessTrimTask:Lffmpeg/base/MediaEditingConfig;

    return-object p0
.end method

.method public static final synthetic access$getOutputDuration$p(Lcom/narvii/video/MediaTrimmingFragment;)I
    .locals 0

    .line 47
    iget p0, p0, Lcom/narvii/video/MediaTrimmingFragment;->outputDuration:I

    return p0
.end method

.method public static final synthetic access$getOutputFileName$p(Lcom/narvii/video/MediaTrimmingFragment;)Ljava/lang/String;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/narvii/video/MediaTrimmingFragment;->outputFileName:Ljava/lang/String;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "outputFileName"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$getOutputHeight$p(Lcom/narvii/video/MediaTrimmingFragment;)I
    .locals 0

    .line 47
    iget p0, p0, Lcom/narvii/video/MediaTrimmingFragment;->outputHeight:I

    return p0
.end method

.method public static final synthetic access$getOutputWidth$p(Lcom/narvii/video/MediaTrimmingFragment;)I
    .locals 0

    .line 47
    iget p0, p0, Lcom/narvii/video/MediaTrimmingFragment;->outputWidth:I

    return p0
.end method

.method public static final synthetic access$processMedia(Lcom/narvii/video/MediaTrimmingFragment;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/narvii/video/MediaTrimmingFragment;->processMedia()V

    return-void
.end method

.method public static final synthetic access$setCancelled$p(Lcom/narvii/video/MediaTrimmingFragment;Z)V
    .locals 0

    .line 47
    iput-boolean p1, p0, Lcom/narvii/video/MediaTrimmingFragment;->cancelled:Z

    return-void
.end method

.method public static final synthetic access$setInProcessCoverImageTask$p(Lcom/narvii/video/MediaTrimmingFragment;Lffmpeg/base/MediaEditingConfig;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/narvii/video/MediaTrimmingFragment;->inProcessCoverImageTask:Lffmpeg/base/MediaEditingConfig;

    return-void
.end method

.method public static final synthetic access$setInProcessTrimTask$p(Lcom/narvii/video/MediaTrimmingFragment;Lffmpeg/base/MediaEditingConfig;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/narvii/video/MediaTrimmingFragment;->inProcessTrimTask:Lffmpeg/base/MediaEditingConfig;

    return-void
.end method

.method public static final synthetic access$setOutputDuration$p(Lcom/narvii/video/MediaTrimmingFragment;I)V
    .locals 0

    .line 47
    iput p1, p0, Lcom/narvii/video/MediaTrimmingFragment;->outputDuration:I

    return-void
.end method

.method public static final synthetic access$setOutputFileName$p(Lcom/narvii/video/MediaTrimmingFragment;Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/narvii/video/MediaTrimmingFragment;->outputFileName:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setOutputHeight$p(Lcom/narvii/video/MediaTrimmingFragment;I)V
    .locals 0

    .line 47
    iput p1, p0, Lcom/narvii/video/MediaTrimmingFragment;->outputHeight:I

    return-void
.end method

.method public static final synthetic access$setOutputWidth$p(Lcom/narvii/video/MediaTrimmingFragment;I)V
    .locals 0

    .line 47
    iput p1, p0, Lcom/narvii/video/MediaTrimmingFragment;->outputWidth:I

    return-void
.end method

.method private final formatCropInterval(I)Ljava/lang/String;
    .locals 7

    .line 440
    rem-int/lit16 v0, p1, 0x3e8

    div-int/lit8 v0, v0, 0x64

    .line 441
    div-int/lit16 p1, p1, 0x3e8

    .line 443
    sget v1, Lcom/narvii/mediaeditor/R$string;->trim_selected_time:I

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    sget-object v4, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "Locale.US"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v2

    array-length p1, v5

    invoke-static {v5, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string v0, "%01d.%1d"

    invoke-static {v4, v0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "java.lang.String.format(locale, format, *args)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object p1, v3, v6

    invoke-virtual {p0, v1, v3}, Landroid/support/v4/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getString(R.string.trim_\u2026d.%1d\", seconds, millis))"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final initMediaTimeLine(Z)V
    .locals 25

    move-object/from16 v15, p0

    .line 342
    iget-object v0, v15, Lcom/narvii/video/MediaTrimmingFragment;->activeMedia:Lcom/narvii/video/model/AVClipInfoPack;

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/video/model/AVClipInfoPack;->getInputFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 343
    invoke-static {v15, v5, v6, v4}, Lcom/narvii/video/BaseMediaEditorFragment;->showInvalidDialog$default(Lcom/narvii/video/BaseMediaEditorFragment;ZILjava/lang/Object;)V

    return-void

    .line 346
    :cond_0
    iget-object v0, v15, Lcom/narvii/video/MediaTrimmingFragment;->activeMedia:Lcom/narvii/video/model/AVClipInfoPack;

    if-eqz v0, :cond_2

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    const-string v1, "activeMedia!!.inputPath"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v15, v0}, Lcom/narvii/video/BaseMediaEditorFragment;->isImageInput(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x1388

    goto :goto_1

    :cond_1
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v4

    .line 349
    :cond_2
    iget-object v0, v15, Lcom/narvii/video/MediaTrimmingFragment;->activeMedia:Lcom/narvii/video/model/AVClipInfoPack;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/narvii/video/model/AVClipInfoPack;->streamInfo:Lcom/narvii/video/model/StreamInfo;

    goto :goto_0

    :cond_3
    move-object v0, v4

    :goto_0
    iput-object v0, v15, Lcom/narvii/video/MediaTrimmingFragment;->inputStreamInfo:Lcom/narvii/video/model/StreamInfo;

    .line 350
    iget-object v0, v15, Lcom/narvii/video/MediaTrimmingFragment;->inputStreamInfo:Lcom/narvii/video/model/StreamInfo;

    if-eqz v0, :cond_10

    if-eqz v0, :cond_f

    iget-boolean v1, v0, Lcom/narvii/video/model/StreamInfo;->hasError:Z

    if-nez v1, :cond_10

    if-eqz v0, :cond_e

    invoke-virtual {v15, v0}, Lcom/narvii/video/BaseMediaEditorFragment;->isInputCodecSupported(Lcom/narvii/video/model/StreamInfo;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_6

    .line 354
    :cond_4
    iget-object v0, v15, Lcom/narvii/video/MediaTrimmingFragment;->inputStreamInfo:Lcom/narvii/video/model/StreamInfo;

    if-eqz v0, :cond_d

    iget v0, v0, Lcom/narvii/video/model/StreamInfo;->durationInMs:I

    .line 356
    :goto_1
    iget-object v3, v15, Lcom/narvii/video/MediaTrimmingFragment;->activeMedia:Lcom/narvii/video/model/AVClipInfoPack;

    if-eqz v3, :cond_8

    .line 357
    iput v0, v3, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    .line 358
    iput v0, v3, Lcom/narvii/video/model/BaseClipInfoPack;->orgDurationInMs:I

    .line 359
    invoke-virtual {v3}, Lcom/narvii/video/model/AVClipInfoPack;->clipLength()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/narvii/video/model/BaseClipInfoPack;->setClipLengthComposition(Ljava/util/List;)V

    .line 362
    invoke-virtual {v3}, Lcom/narvii/video/model/AVClipInfoPack;->trimmedDurationInMsWithSpeed()I

    move-result v0

    .line 363
    iget v1, v15, Lcom/narvii/video/MediaTrimmingFragment;->maxOutputLength:I

    if-le v0, v1, :cond_5

    .line 364
    iget v0, v3, Lcom/narvii/video/model/AVClipInfoPack;->trimStartInMs:I

    int-to-double v7, v0

    int-to-double v0, v1

    iget-wide v9, v3, Lcom/narvii/video/model/AVClipInfoPack;->speed:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v9

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v7, v0

    double-to-int v0, v7

    iput v0, v3, Lcom/narvii/video/model/AVClipInfoPack;->trimEndInMs:I

    goto :goto_2

    .line 365
    :cond_5
    iget v1, v15, Lcom/narvii/video/MediaTrimmingFragment;->minOutputLength:I

    if-ge v0, v1, :cond_6

    .line 366
    iget v0, v3, Lcom/narvii/video/model/AVClipInfoPack;->trimStartInMs:I

    int-to-double v7, v0

    int-to-double v0, v1

    iget-wide v9, v3, Lcom/narvii/video/model/AVClipInfoPack;->speed:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v9

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v7, v0

    double-to-int v0, v7

    iput v0, v3, Lcom/narvii/video/model/AVClipInfoPack;->trimEndInMs:I

    .line 369
    :cond_6
    :goto_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 370
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 371
    sget v0, Lcom/narvii/mediaeditor/R$id;->video_time_line_component:I

    invoke-virtual {v15, v0}, Lcom/narvii/video/MediaTrimmingFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/video/widget/MediaTimeLineComponent;

    const/16 v1, 0x64

    const/16 v19, 0xc9

    const/16 v20, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v21

    iget-object v14, v15, Lcom/narvii/video/MediaTrimmingFragment;->frameRetrieverManager:Lcom/narvii/video/services/FrameRetrieverManager;

    if-eqz v14, :cond_7

    .line 372
    iget v7, v15, Lcom/narvii/video/MediaTrimmingFragment;->maxOutputLength:I

    iget v8, v15, Lcom/narvii/video/MediaTrimmingFragment;->minOutputLength:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v3}, Lcom/narvii/video/model/AVClipInfoPack;->trimmedDurationInMsWithSpeed()I

    move-result v16

    move-object/from16 v22, v14

    move/from16 v14, v16

    const/16 v16, 0x0

    const v17, 0x9f00

    const/16 v18, 0x0

    move-object/from16 v23, v2

    move/from16 v2, v19

    move-object/from16 v24, v3

    move/from16 v3, v20

    move-object/from16 v4, v23

    move-object/from16 v5, v21

    move-object/from16 v6, v22

    move-object/from16 v15, p0

    .line 371
    invoke-static/range {v0 .. v18}, Lcom/narvii/video/widget/MediaTimeLineComponent;->initTimeLine$default(Lcom/narvii/video/widget/MediaTimeLineComponent;IIZLjava/util/List;Lcom/narvii/video/interfaces/IPreviewPlayer;Lcom/narvii/video/services/FrameRetrieverManager;ILjava/lang/Integer;FZIZZILcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;ZILjava/lang/Object;)I

    move-result v0

    .line 373
    sget v1, Lcom/narvii/mediaeditor/R$id;->time_line_controller_length:I

    move-object/from16 v6, p0

    invoke-virtual {v6, v1}, Lcom/narvii/video/MediaTrimmingFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "time_line_controller_length"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v6, v0}, Lcom/narvii/video/MediaTrimmingFragment;->formatCropInterval(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_9

    .line 375
    sget v0, Lcom/narvii/mediaeditor/R$id;->video_time_line_component:I

    invoke-virtual {v6, v0}, Lcom/narvii/video/MediaTrimmingFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/narvii/video/widget/MediaTimeLineComponent;

    move-object/from16 v0, v24

    iget v8, v0, Lcom/narvii/video/model/AVClipInfoPack;->trimStartInMs:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0x76

    const/16 v16, 0x0

    invoke-static/range {v7 .. v16}, Lcom/narvii/video/widget/MediaTimeLineComponent;->scrollTimeLine$default(Lcom/narvii/video/widget/MediaTimeLineComponent;IZZZZIZILjava/lang/Object;)V

    .line 376
    iget v0, v0, Lcom/narvii/video/model/AVClipInfoPack;->trimStartInMs:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v6, v2, v0, v1, v3}, Lcom/narvii/video/BaseMediaEditorFragment;->safeSeekTo$default(Lcom/narvii/video/BaseMediaEditorFragment;IIILjava/lang/Object;)V

    goto :goto_3

    :cond_7
    move-object v3, v4

    move-object v6, v15

    const-string v0, "frameRetrieverManager"

    .line 371
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_8
    move-object v6, v15

    :cond_9
    const/4 v2, 0x0

    .line 379
    :goto_3
    iget-object v0, v6, Lcom/narvii/video/MediaTrimmingFragment;->activeMedia:Lcom/narvii/video/model/AVClipInfoPack;

    if-eqz v0, :cond_a

    iget v0, v0, Lcom/narvii/video/model/AVClipInfoPack;->trackVolume:F

    goto :goto_4

    :cond_a
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_4
    iput v0, v6, Lcom/narvii/video/MediaTrimmingFragment;->volume:F

    const-string v0, "showVolume"

    .line 380
    invoke-virtual {v6, v0, v2}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 381
    sget v0, Lcom/narvii/mediaeditor/R$id;->volume_progress_view:I

    invoke-virtual {v6, v0}, Lcom/narvii/video/MediaTrimmingFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/video/widget/VolumeProgressView;

    const-string v1, "volume_progress_view"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const-string v0, "mute"

    .line 382
    invoke-virtual {v6, v0, v2}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;Z)Z

    move-result v0

    .line 383
    sget v1, Lcom/narvii/mediaeditor/R$id;->volume_progress_view:I

    invoke-virtual {v6, v1}, Lcom/narvii/video/MediaTrimmingFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/narvii/video/widget/VolumeProgressView;

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    goto :goto_5

    :cond_b
    iget v0, v6, Lcom/narvii/video/MediaTrimmingFragment;->volume:F

    const/16 v2, 0x64

    int-to-float v2, v2

    mul-float v0, v0, v2

    :goto_5
    float-to-int v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, v1

    move v1, v2

    move-object/from16 v2, p0

    invoke-static/range {v0 .. v5}, Lcom/narvii/video/widget/VolumeProgressView;->init$default(Lcom/narvii/video/widget/VolumeProgressView;ILcom/narvii/video/widget/VolumeProgressView$OnVolumeChangedListener;ZILjava/lang/Object;)V

    :cond_c
    return-void

    :cond_d
    move-object v3, v4

    move-object v6, v15

    .line 354
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v3

    :cond_e
    move-object v3, v4

    move-object v6, v15

    .line 350
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v3

    :cond_f
    move-object v3, v4

    move-object v6, v15

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v3

    :cond_10
    :goto_6
    move-object v3, v4

    move-object v6, v15

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 351
    invoke-static {v6, v2, v1, v3}, Lcom/narvii/video/BaseMediaEditorFragment;->showInvalidDialog$default(Lcom/narvii/video/BaseMediaEditorFragment;ZILjava/lang/Object;)V

    return-void
.end method

.method static synthetic initMediaTimeLine$default(Lcom/narvii/video/MediaTrimmingFragment;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 341
    :cond_0
    invoke-direct {p0, p1}, Lcom/narvii/video/MediaTrimmingFragment;->initMediaTimeLine(Z)V

    return-void
.end method

.method private final initOperationPanel()V
    .locals 4

    .line 323
    iget-boolean v0, p0, Lcom/narvii/video/MediaTrimmingFragment;->isVideoTrimming:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 324
    :goto_0
    sget v1, Lcom/narvii/mediaeditor/R$id;->options_panel:I

    invoke-virtual {p0, v1}, Lcom/narvii/video/MediaTrimmingFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/narvii/video/widget/MediaOptionPanel;

    sget v2, Lcom/narvii/mediaeditor/R$string;->trim:I

    invoke-virtual {p0, v2}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getString(R.string.trim)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lcom/narvii/video/MediaTrimmingFragment$initOperationPanel$1;

    invoke-direct {v3, p0}, Lcom/narvii/video/MediaTrimmingFragment$initOperationPanel$1;-><init>(Lcom/narvii/video/MediaTrimmingFragment;)V

    invoke-virtual {v1, v0, v2, v3}, Lcom/narvii/video/widget/MediaOptionPanel;->initComponent(ILjava/lang/String;Lcom/narvii/video/widget/MediaOptionPanel$OptionSelectedListener;)V

    return-void
.end method

.method private final processMedia()V
    .locals 22

    move-object/from16 v0, p0

    .line 388
    sget v1, Lcom/narvii/mediaeditor/R$id;->video_time_line_component:I

    invoke-virtual {v0, v1}, Lcom/narvii/video/MediaTrimmingFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-virtual {v1}, Lcom/narvii/video/widget/MediaTimeLineComponent;->getCurCutPosition()[I

    move-result-object v1

    .line 460
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, v1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 461
    array-length v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_1

    aget v6, v1, v5

    int-to-double v6, v6

    .line 389
    iget-object v8, v0, Lcom/narvii/video/MediaTrimmingFragment;->originalMedia:Lcom/narvii/video/model/AVClipInfoPack;

    if-eqz v8, :cond_0

    iget-wide v8, v8, Lcom/narvii/video/model/AVClipInfoPack;->speed:D

    goto :goto_1

    :cond_0
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    :goto_1
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v8

    double-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 391
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getNeedRealOutput()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_10

    .line 392
    iget-object v1, v0, Lcom/narvii/video/MediaTrimmingFragment;->activeMedia:Lcom/narvii/video/model/AVClipInfoPack;

    const/4 v5, 0x0

    if-nez v1, :cond_3

    .line 393
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v2, :cond_2

    sget v3, Lcom/narvii/mediaeditor/R$string;->try_again:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    :cond_2
    invoke-static {v1, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return-void

    .line 396
    :cond_3
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v10

    .line 397
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/narvii/video/MediaTrimmingFragment;->outputDuration:I

    int-to-double v1, v10

    .line 398
    iget v3, v0, Lcom/narvii/video/MediaTrimmingFragment;->outputDuration:I

    int-to-double v3, v3

    const-wide v6, 0x3fd3333333333333L    # 0.3

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v6

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v1, v3

    double-to-int v14, v1

    .line 399
    new-instance v8, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getOutputFileDir()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/narvii/video/MediaTrimmingFragment;->outputFileName:Ljava/lang/String;

    const-string v4, "outputFileName"

    if-eqz v3, :cond_f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".mp4"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v8, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 400
    new-instance v13, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getOutputFileDir()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/narvii/video/MediaTrimmingFragment;->outputFileName:Ljava/lang/String;

    if-eqz v3, :cond_e

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v13, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 401
    iget-object v1, v0, Lcom/narvii/video/MediaTrimmingFragment;->inProcessTrimTask:Lffmpeg/base/MediaEditingConfig;

    if-eqz v1, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getVideoManager()Lcom/narvii/video/services/VideoManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/narvii/video/services/VideoManager;->abort(Lffmpeg/base/MediaEditingConfig;)V

    .line 402
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getVideoManager()Lcom/narvii/video/services/VideoManager;

    move-result-object v6

    iget-object v7, v0, Lcom/narvii/video/MediaTrimmingFragment;->activeMedia:Lcom/narvii/video/model/AVClipInfoPack;

    if-eqz v7, :cond_d

    iget v9, v0, Lcom/narvii/video/MediaTrimmingFragment;->outputDuration:I

    new-instance v11, Lcom/narvii/video/MediaTrimmingFragment$Companion$DefaultVideoServiceCallback;

    invoke-direct {v11, v0}, Lcom/narvii/video/MediaTrimmingFragment$Companion$DefaultVideoServiceCallback;-><init>(Lcom/narvii/video/MediaTrimmingFragment;)V

    const-string v12, "video"

    invoke-virtual/range {v6 .. v12}, Lcom/narvii/video/services/VideoManager;->cropVideo(Lcom/narvii/video/model/AVClipInfoPack;Ljava/io/File;IILcom/narvii/video/interfaces/IVideoServiceCallback;Ljava/lang/String;)Lffmpeg/base/MediaEditingConfig;

    move-result-object v1

    iput-object v1, v0, Lcom/narvii/video/MediaTrimmingFragment;->inProcessTrimTask:Lffmpeg/base/MediaEditingConfig;

    .line 404
    iget-object v1, v0, Lcom/narvii/video/MediaTrimmingFragment;->inputStreamInfo:Lcom/narvii/video/model/StreamInfo;

    const/16 v2, 0x2d0

    if-eqz v1, :cond_5

    iget v1, v1, Lcom/narvii/video/model/StreamInfo;->width:I

    goto :goto_2

    :cond_5
    const/16 v1, 0x2d0

    .line 405
    :goto_2
    iget-object v3, v0, Lcom/narvii/video/MediaTrimmingFragment;->inputStreamInfo:Lcom/narvii/video/model/StreamInfo;

    const/16 v4, 0x500

    if-eqz v3, :cond_6

    iget v3, v3, Lcom/narvii/video/model/StreamInfo;->height:I

    goto :goto_3

    :cond_6
    const/16 v3, 0x500

    .line 406
    :goto_3
    iget-object v6, v0, Lcom/narvii/video/MediaTrimmingFragment;->inProcessCoverImageTask:Lffmpeg/base/MediaEditingConfig;

    if-eqz v6, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getVideoManager()Lcom/narvii/video/services/VideoManager;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/narvii/video/services/VideoManager;->abort(Lffmpeg/base/MediaEditingConfig;)V

    :cond_7
    const/high16 v6, 0x44340000    # 720.0f

    if-le v3, v1, :cond_a

    .line 408
    iput v2, v0, Lcom/narvii/video/MediaTrimmingFragment;->outputWidth:I

    if-gtz v1, :cond_8

    goto :goto_4

    :cond_8
    int-to-float v2, v3

    int-to-float v1, v1

    div-float/2addr v6, v1

    mul-float v2, v2, v6

    float-to-int v4, v2

    .line 409
    :goto_4
    iput v4, v0, Lcom/narvii/video/MediaTrimmingFragment;->outputHeight:I

    .line 414
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getVideoManager()Lcom/narvii/video/services/VideoManager;

    move-result-object v11

    iget-object v12, v0, Lcom/narvii/video/MediaTrimmingFragment;->activeMedia:Lcom/narvii/video/model/AVClipInfoPack;

    if-eqz v12, :cond_9

    const/16 v15, 0x2d0

    const/16 v16, 0x0

    new-instance v1, Lcom/narvii/video/MediaTrimmingFragment$Companion$DefaultVideoServiceCallback;

    invoke-direct {v1, v0}, Lcom/narvii/video/MediaTrimmingFragment$Companion$DefaultVideoServiceCallback;-><init>(Lcom/narvii/video/MediaTrimmingFragment;)V

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0xd0

    const/16 v21, 0x0

    move-object/from16 v17, v1

    invoke-static/range {v11 .. v21}, Lcom/narvii/video/services/VideoManager;->getCoverImage$default(Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/model/AVClipInfoPack;Ljava/io/File;IIILcom/narvii/video/interfaces/IVideoServiceCallback;Ljava/lang/String;ZILjava/lang/Object;)Lffmpeg/base/MediaEditingConfig;

    move-result-object v1

    iput-object v1, v0, Lcom/narvii/video/MediaTrimmingFragment;->inProcessCoverImageTask:Lffmpeg/base/MediaEditingConfig;

    goto/16 :goto_7

    :cond_9
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v5

    .line 416
    :cond_a
    iput v2, v0, Lcom/narvii/video/MediaTrimmingFragment;->outputHeight:I

    if-gtz v3, :cond_b

    goto :goto_5

    :cond_b
    int-to-float v1, v1

    int-to-float v2, v3

    div-float/2addr v6, v2

    mul-float v1, v1, v6

    float-to-int v4, v1

    .line 417
    :goto_5
    iput v4, v0, Lcom/narvii/video/MediaTrimmingFragment;->outputWidth:I

    .line 422
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getVideoManager()Lcom/narvii/video/services/VideoManager;

    move-result-object v11

    iget-object v12, v0, Lcom/narvii/video/MediaTrimmingFragment;->activeMedia:Lcom/narvii/video/model/AVClipInfoPack;

    if-eqz v12, :cond_c

    const/4 v15, 0x0

    const/16 v16, 0x2d0

    new-instance v1, Lcom/narvii/video/MediaTrimmingFragment$Companion$DefaultVideoServiceCallback;

    invoke-direct {v1, v0}, Lcom/narvii/video/MediaTrimmingFragment$Companion$DefaultVideoServiceCallback;-><init>(Lcom/narvii/video/MediaTrimmingFragment;)V

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0xc8

    const/16 v21, 0x0

    move-object/from16 v17, v1

    invoke-static/range {v11 .. v21}, Lcom/narvii/video/services/VideoManager;->getCoverImage$default(Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/model/AVClipInfoPack;Ljava/io/File;IIILcom/narvii/video/interfaces/IVideoServiceCallback;Ljava/lang/String;ZILjava/lang/Object;)Lffmpeg/base/MediaEditingConfig;

    move-result-object v1

    iput-object v1, v0, Lcom/narvii/video/MediaTrimmingFragment;->inProcessCoverImageTask:Lffmpeg/base/MediaEditingConfig;

    goto :goto_7

    :cond_c
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v5

    .line 402
    :cond_d
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v5

    .line 400
    :cond_e
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v5

    .line 399
    :cond_f
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v5

    .line 425
    :cond_10
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 426
    iget-object v5, v0, Lcom/narvii/video/MediaTrimmingFragment;->originalMedia:Lcom/narvii/video/model/AVClipInfoPack;

    if-eqz v5, :cond_13

    .line 427
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    iput v6, v5, Lcom/narvii/video/model/AVClipInfoPack;->trimStartInMs:I

    .line 428
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    iput v2, v5, Lcom/narvii/video/model/AVClipInfoPack;->trimEndInMs:I

    .line 429
    iget v2, v0, Lcom/narvii/video/MediaTrimmingFragment;->volume:F

    iput v2, v5, Lcom/narvii/video/model/AVClipInfoPack;->trackVolume:F

    new-array v2, v3, [Lcom/narvii/video/model/AVClipInfoPack;

    aput-object v5, v2, v4

    .line 430
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "clipInfoList"

    .line 431
    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 432
    iget-boolean v2, v0, Lcom/narvii/video/MediaTrimmingFragment;->volumeChanged:Z

    const-string v5, "mute"

    if-eqz v2, :cond_11

    iget v2, v0, Lcom/narvii/video/MediaTrimmingFragment;->volume:F

    const v6, 0x3ca3d70a    # 0.02f

    cmpg-float v2, v2, v6

    if-gez v2, :cond_12

    const/4 v4, 0x1

    goto :goto_6

    :cond_11
    invoke-virtual {v0, v5, v4}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;Z)Z

    move-result v4

    :cond_12
    :goto_6
    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_13
    const/4 v2, -0x1

    .line 434
    invoke-virtual {v0, v2, v1}, Lcom/narvii/app/NVFragment;->setResult(ILandroid/content/Intent;)V

    .line 435
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/app/NVFragment;->finish()V

    :goto_7
    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/video/MediaTrimmingFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/video/MediaTrimmingFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/video/MediaTrimmingFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/video/MediaTrimmingFragment;->_$_findViewCache:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/narvii/video/MediaTrimmingFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
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

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 64
    iget-boolean v1, p0, Lcom/narvii/video/MediaTrimmingFragment;->isVideoTrimming:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/narvii/video/MediaTrimmingFragment;->activeMedia:Lcom/narvii/video/model/AVClipInfoPack;

    if-eqz v1, :cond_1

    if-eqz v1, :cond_0

    .line 65
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 v0, 0x0

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method protected getCaptionList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/Caption;",
            ">;"
        }
    .end annotation

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getCustomTheme()I
    .locals 1

    .line 231
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

.method public final getHasFailedTaskInThisShot()Z
    .locals 1

    .line 213
    iget-boolean v0, p0, Lcom/narvii/video/MediaTrimmingFragment;->hasFailedTaskInThisShot:Z

    return v0
.end method

.method public final getInProgressTaskCount()I
    .locals 1

    .line 211
    iget v0, p0, Lcom/narvii/video/MediaTrimmingFragment;->inProgressTaskCount:I

    return v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "MediaTrim"

    return-object v0
.end method

.method protected getPipClipList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/pip/PipInfoPack;",
            ">;"
        }
    .end annotation

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public final getProgress()Lcom/narvii/util/dialog/ProgressDialog;
    .locals 3

    iget-object v0, p0, Lcom/narvii/video/MediaTrimmingFragment;->progress$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/video/MediaTrimmingFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/dialog/ProgressDialog;

    return-object v0
.end method

.method protected getStickerList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/StickerInfoPack;",
            ">;"
        }
    .end annotation

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public final getTasksTouchDown()Z
    .locals 1

    .line 214
    iget-boolean v0, p0, Lcom/narvii/video/MediaTrimmingFragment;->tasksTouchDown:Z

    return v0
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

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 56
    iget-boolean v1, p0, Lcom/narvii/video/MediaTrimmingFragment;->isVideoTrimming:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/narvii/video/MediaTrimmingFragment;->activeMedia:Lcom/narvii/video/model/AVClipInfoPack;

    if-eqz v1, :cond_1

    if-eqz v1, :cond_0

    .line 57
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 v0, 0x0

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public initComponent()V
    .locals 1

    .line 49
    sget v0, Lcom/narvii/mediaeditor/R$id;->video_view_player:I

    invoke-virtual {p0, v0}, Lcom/narvii/video/MediaTrimmingFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/video/widget/videoview/NVEditorPreviewVideoVIew;

    invoke-virtual {p0, v0}, Lcom/narvii/video/BaseMediaEditorFragment;->setPreviewVideoView(Lcom/narvii/video/widget/videoview/NVEditorPreviewVideoVIew;)V

    .line 50
    sget v0, Lcom/narvii/mediaeditor/R$id;->player_button:I

    invoke-virtual {p0, v0}, Lcom/narvii/video/MediaTrimmingFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/narvii/video/BaseMediaEditorFragment;->setPlayerButton(Landroid/widget/ImageView;)V

    .line 51
    sget v0, Lcom/narvii/mediaeditor/R$id;->pause_shadow:I

    invoke-virtual {p0, v0}, Lcom/narvii/video/MediaTrimmingFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/narvii/video/BaseMediaEditorFragment;->setPauseShadow(Landroid/view/View;)V

    return-void
.end method

.method protected innerOnVideoPrepared()V
    .locals 0

    return-void
.end method

.method protected onAVClipsPrepared()V
    .locals 9

    .line 268
    invoke-super {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->onAVClipsPrepared()V

    .line 269
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getInitSuccess()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/narvii/video/MediaTrimmingFragment;->activeMedia:Lcom/narvii/video/model/AVClipInfoPack;

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    const-string v0, "videoManager"

    .line 272
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getService<VideoManager>(\"videoManager\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/narvii/video/services/VideoManager;

    invoke-virtual {p0, v0}, Lcom/narvii/video/BaseMediaEditorFragment;->setVideoManager(Lcom/narvii/video/services/VideoManager;)V

    const-string v0, "minOutputLength"

    .line 273
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/narvii/video/MediaTrimmingFragment;->minOutputLength:I

    const-string v0, "maxOutputLength"

    .line 274
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/narvii/video/MediaTrimmingFragment;->maxOutputLength:I

    .line 275
    iget v0, p0, Lcom/narvii/video/MediaTrimmingFragment;->minOutputLength:I

    if-gtz v0, :cond_1

    const/16 v0, 0xbb8

    .line 276
    iput v0, p0, Lcom/narvii/video/MediaTrimmingFragment;->minOutputLength:I

    .line 278
    :cond_1
    iget v0, p0, Lcom/narvii/video/MediaTrimmingFragment;->maxOutputLength:I

    if-gtz v0, :cond_2

    const/16 v0, 0x3a98

    .line 279
    iput v0, p0, Lcom/narvii/video/MediaTrimmingFragment;->maxOutputLength:I

    .line 281
    :cond_2
    iget-object v0, p0, Lcom/narvii/video/MediaTrimmingFragment;->activeMedia:Lcom/narvii/video/model/AVClipInfoPack;

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/narvii/video/model/AVClipInfoPack;->isTrimSectionValid()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/narvii/video/MediaTrimmingFragment;->activeMedia:Lcom/narvii/video/model/AVClipInfoPack;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/narvii/video/model/AVClipInfoPack;->trimmedDurationInMsWithSpeed()I

    move-result v0

    iget v2, p0, Lcom/narvii/video/MediaTrimmingFragment;->maxOutputLength:I

    if-le v0, v2, :cond_7

    .line 282
    iget-object v0, p0, Lcom/narvii/video/MediaTrimmingFragment;->activeMedia:Lcom/narvii/video/model/AVClipInfoPack;

    if-eqz v0, :cond_5

    if-eqz v0, :cond_4

    iget v3, v0, Lcom/narvii/video/model/AVClipInfoPack;->trimStartInMs:I

    int-to-double v3, v3

    int-to-double v5, v2

    if-eqz v0, :cond_3

    iget-wide v7, v0, Lcom/narvii/video/model/AVClipInfoPack;->speed:D

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v7

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v3, v5

    double-to-int v2, v3

    iput v2, v0, Lcom/narvii/video/model/AVClipInfoPack;->trimEndInMs:I

    goto :goto_0

    :cond_3
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1

    :cond_4
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1

    :cond_5
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1

    .line 281
    :cond_6
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1

    .line 284
    :cond_7
    :goto_0
    new-instance v0, Lcom/narvii/photos/PhotoManager;

    invoke-direct {v0, p0}, Lcom/narvii/photos/PhotoManager;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/video/MediaTrimmingFragment;->photoManager:Lcom/narvii/photos/PhotoManager;

    .line 285
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getNeedRealOutput()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 286
    iget-object v0, p0, Lcom/narvii/video/MediaTrimmingFragment;->photoManager:Lcom/narvii/photos/PhotoManager;

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getOutputFileDir()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {v0, v2}, Lcom/narvii/photos/PhotoManager;->getNewVideoName(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "photoManager.getNewVideoName(outputFileDir!!)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/narvii/video/MediaTrimmingFragment;->outputFileName:Ljava/lang/String;

    goto :goto_1

    :cond_8
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1

    :cond_9
    const-string v0, "photoManager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 288
    :cond_a
    :goto_1
    iget-object v2, p0, Lcom/narvii/video/MediaTrimmingFragment;->frameRetrieverManager:Lcom/narvii/video/services/FrameRetrieverManager;

    if-eqz v2, :cond_d

    iget-object v0, p0, Lcom/narvii/video/MediaTrimmingFragment;->activeMedia:Lcom/narvii/video/model/AVClipInfoPack;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/narvii/video/model/AVClipInfoPack;->getInputFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-static {v0}, Lkotlin/io/FilesKt;->getNameWithoutExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    goto :goto_2

    :cond_b
    const-string v0, "default"

    :goto_2
    move-object v3, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xc

    const/4 v8, 0x0

    const-string v4, "trim"

    invoke-static/range {v2 .. v8}, Lcom/narvii/video/services/FrameRetrieverManager;->initRetriever$default(Lcom/narvii/video/services/FrameRetrieverManager;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/Object;)V

    .line 290
    invoke-direct {p0}, Lcom/narvii/video/MediaTrimmingFragment;->initOperationPanel()V

    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 291
    invoke-static {p0, v0, v2, v1}, Lcom/narvii/video/MediaTrimmingFragment;->initMediaTimeLine$default(Lcom/narvii/video/MediaTrimmingFragment;ZILjava/lang/Object;)V

    return-void

    .line 288
    :cond_c
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1

    :cond_d
    const-string v0, "frameRetrieverManager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 281
    :cond_e
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1

    :cond_f
    :goto_3
    return-void
.end method

.method protected onActiveVideoChanged(IZ)V
    .locals 0

    .line 91
    invoke-super {p0, p1, p2}, Lcom/narvii/video/BaseMediaEditorFragment;->onActiveVideoChanged(IZ)V

    .line 92
    sget p2, Lcom/narvii/mediaeditor/R$id;->video_time_line_component:I

    invoke-virtual {p0, p2}, Lcom/narvii/video/MediaTrimmingFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/video/widget/MediaTimeLineComponent;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Lcom/narvii/video/widget/MediaTimeLineComponent;->setActiveClipInTrack(I)V

    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    .line 243
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    .line 244
    :cond_0
    new-instance v0, Lcom/narvii/video/services/FrameRetrieverManager;

    invoke-direct {v0, p0}, Lcom/narvii/video/services/FrameRetrieverManager;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/video/MediaTrimmingFragment;->frameRetrieverManager:Lcom/narvii/video/services/FrameRetrieverManager;

    const-string v0, "isVideoTrimming"

    .line 245
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/narvii/video/MediaTrimmingFragment;->isVideoTrimming:Z

    const-string v0, "clipInfoPack"

    .line 246
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 249
    sget-object v2, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    const-class v3, Lcom/narvii/video/model/AVClipInfoPack;

    invoke-virtual {v2, v0, v3}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/video/model/AVClipInfoPack;

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_4

    const-string v0, "inputFile"

    .line 252
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 253
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    .line 258
    :cond_2
    new-instance v3, Lcom/narvii/video/model/AVClipInfoPack;

    invoke-direct {v3}, Lcom/narvii/video/model/AVClipInfoPack;-><init>()V

    .line 259
    iput-object v0, v3, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    .line 260
    iput v2, v3, Lcom/narvii/video/model/BaseClipInfoPack;->indexInScene:I

    move-object v0, v3

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v0, 0x1

    .line 254
    invoke-static {p0, v2, v0, v1}, Lcom/narvii/video/BaseMediaEditorFragment;->showInvalidDialog$default(Lcom/narvii/video/BaseMediaEditorFragment;ZILjava/lang/Object;)V

    .line 255
    invoke-super {p0, p1}, Lcom/narvii/video/BaseMediaEditorFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void

    :cond_4
    :goto_2
    if-eqz v0, :cond_6

    .line 262
    iput-object v0, p0, Lcom/narvii/video/MediaTrimmingFragment;->originalMedia:Lcom/narvii/video/model/AVClipInfoPack;

    .line 263
    iget-object v0, p0, Lcom/narvii/video/MediaTrimmingFragment;->originalMedia:Lcom/narvii/video/model/AVClipInfoPack;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/narvii/video/model/AVClipInfoPack;->copy()Lcom/narvii/video/model/AVClipInfoPack;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/video/MediaTrimmingFragment;->activeMedia:Lcom/narvii/video/model/AVClipInfoPack;

    .line 264
    invoke-super {p0, p1}, Lcom/narvii/video/BaseMediaEditorFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void

    .line 263
    :cond_5
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1

    .line 262
    :cond_6
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 239
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 235
    sget p3, Lcom/narvii/mediaeditor/R$layout;->fragment_media_trimming:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 309
    invoke-super {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->onDestroyView()V

    .line 310
    iget-object v0, p0, Lcom/narvii/video/MediaTrimmingFragment;->inProcessTrimTask:Lffmpeg/base/MediaEditingConfig;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getVideoManager()Lcom/narvii/video/services/VideoManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/narvii/video/services/VideoManager;->abort(Lffmpeg/base/MediaEditingConfig;)V

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/narvii/video/MediaTrimmingFragment;->inProcessCoverImageTask:Lffmpeg/base/MediaEditingConfig;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getVideoManager()Lcom/narvii/video/services/VideoManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/narvii/video/services/VideoManager;->abort(Lffmpeg/base/MediaEditingConfig;)V

    .line 312
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getInitSuccess()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 313
    iget-object v0, p0, Lcom/narvii/video/MediaTrimmingFragment;->frameRetrieverManager:Lcom/narvii/video/services/FrameRetrieverManager;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getNeedRealOutput()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/narvii/video/services/FrameRetrieverManager;->doClean(Z)V

    goto :goto_0

    :cond_2
    const-string v0, "frameRetrieverManager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    .line 315
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/video/MediaTrimmingFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onFrameLocatedDuringMove(II)V
    .locals 2

    if-ltz p2, :cond_0

    .line 101
    sget v0, Lcom/narvii/mediaeditor/R$id;->time_line_controller_length:I

    invoke-virtual {p0, v0}, Lcom/narvii/video/MediaTrimmingFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "time_line_controller_length"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/narvii/video/MediaTrimmingFragment;->formatCropInterval(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/narvii/video/BaseMediaEditorFragment;->onFrameLocatedDuringMove(II)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 302
    invoke-super {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->onPause()V

    .line 303
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getInitSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 304
    iget-object v0, p0, Lcom/narvii/video/MediaTrimmingFragment;->frameRetrieverManager:Lcom/narvii/video/services/FrameRetrieverManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/video/services/FrameRetrieverManager;->abortFlyingFrameRetrievers()V

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

.method public onReplayTriggered(III)V
    .locals 4

    .line 107
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/video/BaseMediaEditorFragment;->onReplayTriggered(III)V

    const/4 v0, 0x3

    if-eq p3, v0, :cond_0

    const/4 v0, 0x2

    if-ne p3, v0, :cond_1

    .line 110
    :cond_0
    iget-object p3, p0, Lcom/narvii/video/MediaTrimmingFragment;->activeMedia:Lcom/narvii/video/model/AVClipInfoPack;

    if-eqz p3, :cond_1

    int-to-double v0, p1

    .line 111
    iget-wide v2, p3, Lcom/narvii/video/model/AVClipInfoPack;->speed:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-int p1, v0

    iput p1, p3, Lcom/narvii/video/model/AVClipInfoPack;->trimStartInMs:I

    int-to-double p1, p2

    .line 112
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p1, p1, v2

    double-to-int p1, p1

    iput p1, p3, Lcom/narvii/video/model/AVClipInfoPack;->trimEndInMs:I

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 295
    invoke-super {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->onResume()V

    .line 296
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getInitSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    sget v0, Lcom/narvii/mediaeditor/R$id;->video_time_line_component:I

    invoke-virtual {p0, v0}, Lcom/narvii/video/MediaTrimmingFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-virtual {v0}, Lcom/narvii/video/widget/MediaTimeLineComponent;->refreshTimeLine()V

    :cond_0
    return-void
.end method

.method protected onSeekingStatusChanged(Z)V
    .locals 1

    .line 96
    sget v0, Lcom/narvii/mediaeditor/R$id;->video_time_line_component:I

    invoke-virtual {p0, v0}, Lcom/narvii/video/MediaTrimmingFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/video/widget/MediaTimeLineComponent;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/narvii/video/widget/MediaTimeLineComponent;->setSeeking(Z)V

    :cond_0
    return-void
.end method

.method protected onVideoPlaybackStatusChanged(Z)V
    .locals 1

    .line 83
    sget v0, Lcom/narvii/mediaeditor/R$id;->video_time_line_component:I

    invoke-virtual {p0, v0}, Lcom/narvii/video/MediaTrimmingFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/video/widget/MediaTimeLineComponent;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/narvii/video/widget/MediaTimeLineComponent;->playbackStatusChanged(Z)V

    :cond_0
    return-void
.end method

.method public onVolumeChanged(I)V
    .locals 2

    const/4 v0, 0x1

    .line 452
    iput-boolean v0, p0, Lcom/narvii/video/MediaTrimmingFragment;->volumeChanged:Z

    int-to-float p1, p1

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float p1, p1, v1

    const/16 v1, 0x64

    int-to-float v1, v1

    div-float/2addr p1, v1

    .line 453
    iput p1, p0, Lcom/narvii/video/MediaTrimmingFragment;->volume:F

    .line 454
    iget-object p1, p0, Lcom/narvii/video/MediaTrimmingFragment;->activeMedia:Lcom/narvii/video/model/AVClipInfoPack;

    if-eqz p1, :cond_0

    .line 455
    iget v1, p0, Lcom/narvii/video/MediaTrimmingFragment;->volume:F

    iput v1, p1, Lcom/narvii/video/model/AVClipInfoPack;->trackVolume:F

    .line 456
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->setVolume(Lcom/narvii/video/model/AVClipInfoPack;Z)V

    :cond_0
    return-void
.end method

.method public final setHasFailedTaskInThisShot(Z)V
    .locals 0

    .line 213
    iput-boolean p1, p0, Lcom/narvii/video/MediaTrimmingFragment;->hasFailedTaskInThisShot:Z

    return-void
.end method

.method public final setInProgressTaskCount(I)V
    .locals 0

    .line 211
    iput p1, p0, Lcom/narvii/video/MediaTrimmingFragment;->inProgressTaskCount:I

    return-void
.end method

.method public final setTasksTouchDown(Z)V
    .locals 0

    .line 214
    iput-boolean p1, p0, Lcom/narvii/video/MediaTrimmingFragment;->tasksTouchDown:Z

    return-void
.end method

.method protected updateAVClipDurations(Lcom/narvii/video/model/AVClipInfoPack;I)V
    .locals 1

    const-string v0, "clip"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 318
    iput p2, p1, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    .line 319
    iput p2, p1, Lcom/narvii/video/model/BaseClipInfoPack;->orgDurationInMs:I

    return-void
.end method
