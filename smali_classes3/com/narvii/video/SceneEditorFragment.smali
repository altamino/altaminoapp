.class public final Lcom/narvii/video/SceneEditorFragment;
.super Lcom/narvii/video/ScrollingTimeLineFragment;
.source "SceneEditorFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/narvii/media/MediaPickerFragment$OnResultListener;
.implements Lcom/narvii/video/widget/ClipFastSwitchingPanel$ClipFastSwitchingEventCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/video/SceneEditorFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSceneEditorFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SceneEditorFragment.kt\ncom/narvii/video/SceneEditorFragment\n+ 2 MediaPreEditingActivity.kt\ncom/narvii/pre_editing/MediaPreEditingActivityKt\n*L\n1#1,1192:1\n323#2,21:1193\n346#2,8:1214\n*E\n*S KotlinDebug\n*F\n+ 1 SceneEditorFragment.kt\ncom/narvii/video/SceneEditorFragment\n*L\n714#1,21:1193\n1110#1,8:1214\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;

.field public static final Companion:Lcom/narvii/video/SceneEditorFragment$Companion;

.field public static final MAX_CLIP_COUNT_PER_TRACK:I = 0x1e

.field public static final REQUEST_CODE_BASIC_CROPPING:I = 0x3039

.field public static final REQUEST_CODE_EDIT_SPEED:I = 0x115c

.field public static final REQUEST_CODE_SPLIT:I = 0xd05

.field public static final REQUEST_CODE_VIDEO_PIP:I = 0x303a

.field public static final REQUEST_SELECT_PIP_VIDEO:I = 0x303b


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private addClipButton:Landroid/widget/ImageView;

.field private flyingTaskCount:I

.field private final fragmentRegister$delegate:Lkotlin/Lazy;

.field private hasFailedTask:Z

.field private intermediateFolder:Ljava/io/File;

.field private mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

.field private final orgAudioClipList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            ">;"
        }
    .end annotation
.end field

.field private final orgCaptionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/Caption;",
            ">;"
        }
    .end annotation
.end field

.field private final orgPipList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/pip/PipInfoPack;",
            ">;"
        }
    .end annotation
.end field

.field private final orgStickerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/StickerInfoPack;",
            ">;"
        }
    .end annotation
.end field

.field private final orgVideoClipList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            ">;"
        }
    .end annotation
.end field

.field private outputCoverImagePath:Ljava/lang/String;

.field private outputFolder:Ljava/io/File;

.field private outputPath:Ljava/lang/String;

.field private outputPreviewVideoPath:Ljava/lang/String;

.field private photoManager:Lcom/narvii/photos/PhotoManager;

.field private previewTasksOnGoing:Z

.field private previewVideoGeneratingTask:Lffmpeg/base/MediaEditingConfig;

.field private final progress$delegate:Lkotlin/Lazy;

.field private scene:Lcom/narvii/scene/model/SceneInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/video/SceneEditorFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "progress"

    const-string v4, "getProgress()Lcom/narvii/util/dialog/ProgressDialog;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/video/SceneEditorFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "fragmentRegister"

    const-string v4, "getFragmentRegister()Lcom/narvii/app/FragmentRegister;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/narvii/video/SceneEditorFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/narvii/video/SceneEditorFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/video/SceneEditorFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/narvii/video/SceneEditorFragment;->Companion:Lcom/narvii/video/SceneEditorFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;-><init>()V

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/video/SceneEditorFragment;->orgVideoClipList:Ljava/util/ArrayList;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/video/SceneEditorFragment;->orgAudioClipList:Ljava/util/ArrayList;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/video/SceneEditorFragment;->orgCaptionList:Ljava/util/ArrayList;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/video/SceneEditorFragment;->orgStickerList:Ljava/util/ArrayList;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/video/SceneEditorFragment;->orgPipList:Ljava/util/ArrayList;

    .line 81
    new-instance v0, Lcom/narvii/video/SceneEditorFragment$progress$2;

    invoke-direct {v0, p0}, Lcom/narvii/video/SceneEditorFragment$progress$2;-><init>(Lcom/narvii/video/SceneEditorFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/video/SceneEditorFragment;->progress$delegate:Lkotlin/Lazy;

    .line 88
    new-instance v0, Lcom/narvii/video/SceneEditorFragment$fragmentRegister$2;

    invoke-direct {v0, p0}, Lcom/narvii/video/SceneEditorFragment$fragmentRegister$2;-><init>(Lcom/narvii/video/SceneEditorFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/video/SceneEditorFragment;->fragmentRegister$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$checkSceneDuration(Lcom/narvii/video/SceneEditorFragment;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/narvii/video/SceneEditorFragment;->checkSceneDuration()V

    return-void
.end method

.method public static final synthetic access$getAddClipButton$p(Lcom/narvii/video/SceneEditorFragment;)Landroid/widget/ImageView;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/narvii/video/SceneEditorFragment;->addClipButton:Landroid/widget/ImageView;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "addClipButton"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$getFlyingTaskCount$p(Lcom/narvii/video/SceneEditorFragment;)I
    .locals 0

    .line 60
    iget p0, p0, Lcom/narvii/video/SceneEditorFragment;->flyingTaskCount:I

    return p0
.end method

.method public static final synthetic access$getOutputCoverImagePath$p(Lcom/narvii/video/SceneEditorFragment;)Ljava/lang/String;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/narvii/video/SceneEditorFragment;->outputCoverImagePath:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getOutputFolder$p(Lcom/narvii/video/SceneEditorFragment;)Ljava/io/File;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/narvii/video/SceneEditorFragment;->outputFolder:Ljava/io/File;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "outputFolder"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$getOutputPath$p(Lcom/narvii/video/SceneEditorFragment;)Ljava/lang/String;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/narvii/video/SceneEditorFragment;->outputPath:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getOutputPreviewVideoPath$p(Lcom/narvii/video/SceneEditorFragment;)Ljava/lang/String;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/narvii/video/SceneEditorFragment;->outputPreviewVideoPath:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getPhotoManager$p(Lcom/narvii/video/SceneEditorFragment;)Lcom/narvii/photos/PhotoManager;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/narvii/video/SceneEditorFragment;->photoManager:Lcom/narvii/photos/PhotoManager;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "photoManager"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$getPreviewVideoGeneratingTask$p(Lcom/narvii/video/SceneEditorFragment;)Lffmpeg/base/MediaEditingConfig;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/narvii/video/SceneEditorFragment;->previewVideoGeneratingTask:Lffmpeg/base/MediaEditingConfig;

    return-object p0
.end method

.method public static final synthetic access$getProgress$p(Lcom/narvii/video/SceneEditorFragment;)Lcom/narvii/util/dialog/ProgressDialog;
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/narvii/video/SceneEditorFragment;->getProgress()Lcom/narvii/util/dialog/ProgressDialog;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getScene$p(Lcom/narvii/video/SceneEditorFragment;)Lcom/narvii/scene/model/SceneInfo;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/narvii/video/SceneEditorFragment;->scene:Lcom/narvii/scene/model/SceneInfo;

    return-object p0
.end method

.method public static final synthetic access$initOperations(Lcom/narvii/video/SceneEditorFragment;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/narvii/video/SceneEditorFragment;->initOperations()V

    return-void
.end method

.method public static final synthetic access$onEmptyStatusChanged(Lcom/narvii/video/SceneEditorFragment;Z)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/narvii/video/SceneEditorFragment;->onEmptyStatusChanged(Z)V

    return-void
.end method

.method public static final synthetic access$onMediaProcessTouchDown(Lcom/narvii/video/SceneEditorFragment;Z)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/narvii/video/SceneEditorFragment;->onMediaProcessTouchDown(Z)V

    return-void
.end method

.method public static final synthetic access$setAddClipButton$p(Lcom/narvii/video/SceneEditorFragment;Landroid/widget/ImageView;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/narvii/video/SceneEditorFragment;->addClipButton:Landroid/widget/ImageView;

    return-void
.end method

.method public static final synthetic access$setFlyingTaskCount$p(Lcom/narvii/video/SceneEditorFragment;I)V
    .locals 0

    .line 60
    iput p1, p0, Lcom/narvii/video/SceneEditorFragment;->flyingTaskCount:I

    return-void
.end method

.method public static final synthetic access$setOutputCoverImagePath$p(Lcom/narvii/video/SceneEditorFragment;Ljava/lang/String;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/narvii/video/SceneEditorFragment;->outputCoverImagePath:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setOutputFolder$p(Lcom/narvii/video/SceneEditorFragment;Ljava/io/File;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/narvii/video/SceneEditorFragment;->outputFolder:Ljava/io/File;

    return-void
.end method

.method public static final synthetic access$setOutputPath$p(Lcom/narvii/video/SceneEditorFragment;Ljava/lang/String;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/narvii/video/SceneEditorFragment;->outputPath:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setOutputPreviewVideoPath$p(Lcom/narvii/video/SceneEditorFragment;Ljava/lang/String;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/narvii/video/SceneEditorFragment;->outputPreviewVideoPath:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setPhotoManager$p(Lcom/narvii/video/SceneEditorFragment;Lcom/narvii/photos/PhotoManager;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/narvii/video/SceneEditorFragment;->photoManager:Lcom/narvii/photos/PhotoManager;

    return-void
.end method

.method public static final synthetic access$setPreviewVideoGeneratingTask$p(Lcom/narvii/video/SceneEditorFragment;Lffmpeg/base/MediaEditingConfig;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/narvii/video/SceneEditorFragment;->previewVideoGeneratingTask:Lffmpeg/base/MediaEditingConfig;

    return-void
.end method

.method public static final synthetic access$setScene$p(Lcom/narvii/video/SceneEditorFragment;Lcom/narvii/scene/model/SceneInfo;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/narvii/video/SceneEditorFragment;->scene:Lcom/narvii/scene/model/SceneInfo;

    return-void
.end method

.method public static final synthetic access$updateAddClipButtonVisibility(Lcom/narvii/video/SceneEditorFragment;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/narvii/video/SceneEditorFragment;->updateAddClipButtonVisibility()V

    return-void
.end method

.method private final checkSceneDuration()V
    .locals 4

    .line 1125
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getTotalVisibleVideoDurationInMs()Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 1127
    sget v1, Lcom/narvii/mediaeditor/R$id;->scene_invalid_hint:I

    invoke-virtual {p0, v1}, Lcom/narvii/video/SceneEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "scene_invalid_hint"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1126
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v2

    invoke-interface {v2}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getVideoClipInfoList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    const/16 v2, 0xbb8

    .line 1127
    invoke-static {}, Lcom/narvii/scene/SceneConstant;->getMaxSceneLengthMs()I

    move-result v3

    if-le v2, v0, :cond_0

    goto :goto_0

    :cond_0
    if-lt v3, v0, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/16 v0, 0x8

    .line 1126
    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private final convertImageToVideo(Ljava/util/List;Lcom/narvii/util/Callback;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            ">;",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v9, p2

    .line 808
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    if-eqz v0, :cond_0

    .line 809
    invoke-interface {v9, v11}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    return-void

    .line 812
    :cond_0
    new-instance v12, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v12}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    const/4 v0, 0x0

    iput v0, v12, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 813
    new-instance v13, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v13}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    iput-boolean v0, v13, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 814
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 815
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/narvii/video/model/AVClipInfoPack;

    .line 816
    iget-object v0, v7, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/narvii/util/Utils;->isGifInData(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 817
    new-instance v6, Ljava/io/File;

    iget-object v0, v8, Lcom/narvii/video/SceneEditorFragment;->intermediateFolder:Ljava/io/File;

    if-eqz v0, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v10}, Lcom/narvii/video/model/AVClipInfoPack;->getClipInputName(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".mp4"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 818
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 819
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    move-object/from16 v16, v13

    move-object/from16 p1, v15

    :cond_1
    const/4 v2, 0x1

    goto :goto_1

    .line 822
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getVideoManager()Lcom/narvii/video/services/VideoManager;

    move-result-object v5

    new-instance v4, Lcom/narvii/video/SceneEditorFragment$convertImageToVideo$task$1;

    move-object v0, v4

    move-object/from16 v1, p0

    move-object v2, v12

    move-object v3, v6

    move-object v10, v4

    move-object v4, v13

    move-object/from16 v16, v13

    move-object v13, v5

    move-object v5, v14

    move-object/from16 p1, v15

    move-object v15, v6

    move-object/from16 v6, p2

    move-object/from16 v17, v7

    invoke-direct/range {v0 .. v7}, Lcom/narvii/video/SceneEditorFragment$convertImageToVideo$task$1;-><init>(Lcom/narvii/video/SceneEditorFragment;Lkotlin/jvm/internal/Ref$IntRef;Ljava/io/File;Lkotlin/jvm/internal/Ref$BooleanRef;Ljava/util/ArrayList;Lcom/narvii/util/Callback;Lcom/narvii/video/model/AVClipInfoPack;)V

    move-object/from16 v0, v17

    invoke-virtual {v13, v0, v15, v10}, Lcom/narvii/video/services/VideoManager;->convertImg2Video(Lcom/narvii/video/model/AVClipInfoPack;Ljava/io/File;Lcom/narvii/video/interfaces/IVideoServiceCallback;)Lffmpeg/base/MediaEditingConfig;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 872
    iget v1, v12, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v12, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 873
    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    const-string v0, "intermediateFolder"

    .line 817
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_4
    move-object v0, v7

    move-object/from16 v16, v13

    move-object/from16 p1, v15

    const/4 v2, 0x1

    .line 875
    iget-object v1, v0, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    const-string v3, "clip.inputPath"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Lcom/narvii/video/BaseMediaEditorFragment;->isImageInput(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v1, 0x1388

    .line 876
    iput v1, v0, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    .line 877
    iput v1, v0, Lcom/narvii/video/model/BaseClipInfoPack;->orgDurationInMs:I

    :cond_5
    :goto_1
    move-object/from16 v15, p1

    move-object/from16 v13, v16

    const/4 v10, 0x1

    goto/16 :goto_0

    .line 880
    :cond_6
    iget v0, v12, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-nez v0, :cond_7

    .line 881
    invoke-interface {v9, v11}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    goto :goto_2

    .line 883
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/narvii/video/SceneEditorFragment;->getProgress()Lcom/narvii/util/dialog/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    :goto_2
    return-void
.end method

.method private final doExit()V
    .locals 10

    .line 307
    iget-object v0, p0, Lcom/narvii/video/SceneEditorFragment;->scene:Lcom/narvii/scene/model/SceneInfo;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_10

    .line 313
    iget-object v0, p0, Lcom/narvii/video/SceneEditorFragment;->orgVideoClipList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v3

    invoke-interface {v3}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getVideoClipInfoList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v0, v3, :cond_2

    .line 314
    iget-object v0, p0, Lcom/narvii/video/SceneEditorFragment;->orgVideoClipList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    .line 315
    iget-object v4, p0, Lcom/narvii/video/SceneEditorFragment;->orgVideoClipList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/video/model/AVClipInfoPack;

    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v5

    invoke-interface {v5}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getVideoClipInfoList()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/narvii/video/model/AVClipInfoPack;

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    xor-int/2addr v4, v2

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x0

    .line 323
    :goto_2
    iget-object v3, p0, Lcom/narvii/video/SceneEditorFragment;->orgAudioClipList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v4

    invoke-interface {v4}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getAudioClipInfoList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v3, v4, :cond_5

    .line 324
    iget-object v3, p0, Lcom/narvii/video/SceneEditorFragment;->orgAudioClipList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v3, :cond_4

    .line 325
    iget-object v5, p0, Lcom/narvii/video/SceneEditorFragment;->orgAudioClipList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/narvii/video/model/AVClipInfoPack;

    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v6

    invoke-interface {v6}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getAudioClipInfoList()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/narvii/video/model/AVClipInfoPack;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    xor-int/2addr v5, v2

    if-eqz v5, :cond_3

    goto :goto_4

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_4
    const/4 v3, 0x1

    goto :goto_5

    :cond_5
    :goto_4
    const/4 v3, 0x0

    .line 333
    :goto_5
    iget-object v4, p0, Lcom/narvii/video/SceneEditorFragment;->orgCaptionList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v5

    invoke-interface {v5}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getCaptionList()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v4, v5, :cond_8

    .line 334
    iget-object v4, p0, Lcom/narvii/video/SceneEditorFragment;->orgCaptionList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_6
    if-ge v5, v4, :cond_7

    .line 335
    iget-object v6, p0, Lcom/narvii/video/SceneEditorFragment;->orgCaptionList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/narvii/video/model/Caption;

    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v7

    invoke-interface {v7}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getCaptionList()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/narvii/video/model/Caption;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    xor-int/2addr v6, v2

    if-eqz v6, :cond_6

    goto :goto_7

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_7
    const/4 v4, 0x1

    goto :goto_8

    :cond_8
    :goto_7
    const/4 v4, 0x0

    .line 343
    :goto_8
    iget-object v5, p0, Lcom/narvii/video/SceneEditorFragment;->orgStickerList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v6

    invoke-interface {v6}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getStickerList()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v5, v6, :cond_b

    .line 344
    iget-object v5, p0, Lcom/narvii/video/SceneEditorFragment;->orgStickerList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_9
    if-ge v6, v5, :cond_a

    .line 345
    iget-object v7, p0, Lcom/narvii/video/SceneEditorFragment;->orgStickerList:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/narvii/video/model/StickerInfoPack;

    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v8

    invoke-interface {v8}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getStickerList()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/narvii/video/model/StickerInfoPack;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    xor-int/2addr v7, v2

    if-eqz v7, :cond_9

    goto :goto_a

    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    :cond_a
    const/4 v5, 0x1

    goto :goto_b

    :cond_b
    :goto_a
    const/4 v5, 0x0

    .line 353
    :goto_b
    iget-object v6, p0, Lcom/narvii/video/SceneEditorFragment;->orgPipList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v7

    invoke-interface {v7}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getPipVideoList()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ne v6, v7, :cond_e

    .line 354
    iget-object v6, p0, Lcom/narvii/video/SceneEditorFragment;->orgPipList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_c
    if-ge v7, v6, :cond_d

    .line 355
    iget-object v8, p0, Lcom/narvii/video/SceneEditorFragment;->orgPipList:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/narvii/pip/PipInfoPack;

    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v9

    invoke-interface {v9}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getPipVideoList()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/narvii/pip/PipInfoPack;

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    xor-int/2addr v8, v2

    if-eqz v8, :cond_c

    goto :goto_d

    :cond_c
    add-int/lit8 v7, v7, 0x1

    goto :goto_c

    :cond_d
    const/4 v6, 0x1

    goto :goto_e

    :cond_e
    :goto_d
    const/4 v6, 0x0

    :goto_e
    if-eqz v0, :cond_f

    if-eqz v3, :cond_f

    if-eqz v4, :cond_f

    if-eqz v5, :cond_f

    if-eqz v6, :cond_f

    goto :goto_f

    :cond_f
    const/4 v0, 0x0

    goto :goto_10

    :cond_10
    :goto_f
    const/4 v0, 0x1

    :goto_10
    if-eqz v0, :cond_11

    .line 366
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->setResult(I)V

    .line 367
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    goto :goto_11

    .line 369
    :cond_11
    new-instance v0, Lcom/narvii/util/dialog/ActionSheetDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    .line 370
    sget v1, Lcom/narvii/mediaeditor/R$string;->discard_changes:I

    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    .line 371
    new-instance v1, Lcom/narvii/video/SceneEditorFragment$doExit$2;

    invoke-direct {v1, p0}, Lcom/narvii/video/SceneEditorFragment$doExit$2;-><init>(Lcom/narvii/video/SceneEditorFragment;)V

    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 379
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    :goto_11
    return-void
.end method

.method private final getFragmentRegister()Lcom/narvii/app/FragmentRegister;
    .locals 3

    iget-object v0, p0, Lcom/narvii/video/SceneEditorFragment;->fragmentRegister$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/video/SceneEditorFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/app/FragmentRegister;

    return-object v0
.end method

.method private final getProgress()Lcom/narvii/util/dialog/ProgressDialog;
    .locals 3

    iget-object v0, p0, Lcom/narvii/video/SceneEditorFragment;->progress$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/video/SceneEditorFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/dialog/ProgressDialog;

    return-object v0
.end method

.method private final initOperationPanel(Z)V
    .locals 3

    .line 506
    sget-object v0, Lcom/narvii/video/SceneEditorFragment$initOperationPanel$1;->INSTANCE:Lcom/narvii/video/SceneEditorFragment$initOperationPanel$1;

    if-eqz p1, :cond_0

    .line 518
    sget p1, Lcom/narvii/mediaeditor/R$id;->operation_panel:I

    invoke-virtual {p0, p1}, Lcom/narvii/video/SceneEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/HorizontalScrollView;

    const-string v0, "operation_panel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 519
    sget p1, Lcom/narvii/mediaeditor/R$id;->operation_panel_for_template:I

    invoke-virtual {p0, p1}, Lcom/narvii/video/SceneEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const-string v0, "it"

    .line 520
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 521
    sget-object v0, Lcom/narvii/video/SceneEditorFragment$initOperationPanel$1;->INSTANCE:Lcom/narvii/video/SceneEditorFragment$initOperationPanel$1;

    sget v1, Lcom/narvii/mediaeditor/R$id;->op_text:I

    invoke-virtual {p0, v1}, Lcom/narvii/video/SceneEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const-string v2, "op_text"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p1}, Lcom/narvii/video/SceneEditorFragment$initOperationPanel$1;->invoke(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 522
    sget-object v0, Lcom/narvii/video/SceneEditorFragment$initOperationPanel$1;->INSTANCE:Lcom/narvii/video/SceneEditorFragment$initOperationPanel$1;

    sget v1, Lcom/narvii/mediaeditor/R$id;->op_sticker:I

    invoke-virtual {p0, v1}, Lcom/narvii/video/SceneEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const-string v2, "op_sticker"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p1}, Lcom/narvii/video/SceneEditorFragment$initOperationPanel$1;->invoke(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 523
    sget-object v0, Lcom/narvii/video/SceneEditorFragment$initOperationPanel$1;->INSTANCE:Lcom/narvii/video/SceneEditorFragment$initOperationPanel$1;

    sget v1, Lcom/narvii/mediaeditor/R$id;->op_music:I

    invoke-virtual {p0, v1}, Lcom/narvii/video/SceneEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const-string v2, "op_music"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p1}, Lcom/narvii/video/SceneEditorFragment$initOperationPanel$1;->invoke(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 524
    sget-object v0, Lcom/narvii/video/SceneEditorFragment$initOperationPanel$1;->INSTANCE:Lcom/narvii/video/SceneEditorFragment$initOperationPanel$1;

    sget v1, Lcom/narvii/mediaeditor/R$id;->op_pip:I

    invoke-virtual {p0, v1}, Lcom/narvii/video/SceneEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const-string v2, "op_pip"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p1}, Lcom/narvii/video/SceneEditorFragment$initOperationPanel$1;->invoke(Landroid/view/View;Landroid/view/ViewGroup;)V

    :cond_0
    return-void
.end method

.method private final initOperations()V
    .locals 1

    .line 1131
    sget v0, Lcom/narvii/mediaeditor/R$id;->op_trim:I

    invoke-virtual {p0, v0}, Lcom/narvii/video/SceneEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1132
    sget v0, Lcom/narvii/mediaeditor/R$id;->op_split:I

    invoke-virtual {p0, v0}, Lcom/narvii/video/SceneEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1133
    sget v0, Lcom/narvii/mediaeditor/R$id;->op_speed:I

    invoke-virtual {p0, v0}, Lcom/narvii/video/SceneEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1134
    sget v0, Lcom/narvii/mediaeditor/R$id;->op_music:I

    invoke-virtual {p0, v0}, Lcom/narvii/video/SceneEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1135
    sget v0, Lcom/narvii/mediaeditor/R$id;->op_text:I

    invoke-virtual {p0, v0}, Lcom/narvii/video/SceneEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1136
    sget v0, Lcom/narvii/mediaeditor/R$id;->op_sticker:I

    invoke-virtual {p0, v0}, Lcom/narvii/video/SceneEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1137
    sget v0, Lcom/narvii/mediaeditor/R$id;->op_crop:I

    invoke-virtual {p0, v0}, Lcom/narvii/video/SceneEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1139
    sget v0, Lcom/narvii/mediaeditor/R$id;->cover_layer:I

    invoke-virtual {p0, v0}, Lcom/narvii/video/SceneEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1140
    sget v0, Lcom/narvii/mediaeditor/R$id;->empty_view_option_add_video:I

    invoke-virtual {p0, v0}, Lcom/narvii/video/SceneEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1141
    sget v0, Lcom/narvii/mediaeditor/R$id;->op_pip:I

    invoke-virtual {p0, v0}, Lcom/narvii/video/SceneEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private final onEmptyStatusChanged(Z)V
    .locals 3

    if-eqz p1, :cond_0

    const/high16 v0, 0x3f000000    # 0.5f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 701
    :goto_0
    sget v1, Lcom/narvii/mediaeditor/R$id;->scene_empty_view:I

    invoke-virtual {p0, v1}, Lcom/narvii/video/SceneEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    const-string v2, "scene_empty_view"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    const/16 p1, 0x8

    :goto_1
    invoke-virtual {v1, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 702
    sget p1, Lcom/narvii/mediaeditor/R$id;->op_trim:I

    invoke-virtual {p0, p1}, Lcom/narvii/video/SceneEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const-string v1, "op_trim"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 703
    sget p1, Lcom/narvii/mediaeditor/R$id;->op_split:I

    invoke-virtual {p0, p1}, Lcom/narvii/video/SceneEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const-string v1, "op_split"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 704
    sget p1, Lcom/narvii/mediaeditor/R$id;->op_speed:I

    invoke-virtual {p0, p1}, Lcom/narvii/video/SceneEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const-string v1, "op_speed"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 705
    sget p1, Lcom/narvii/mediaeditor/R$id;->op_music:I

    invoke-virtual {p0, p1}, Lcom/narvii/video/SceneEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const-string v1, "op_music"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 706
    sget p1, Lcom/narvii/mediaeditor/R$id;->op_text:I

    invoke-virtual {p0, p1}, Lcom/narvii/video/SceneEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const-string v1, "op_text"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 707
    sget p1, Lcom/narvii/mediaeditor/R$id;->op_crop:I

    invoke-virtual {p0, p1}, Lcom/narvii/video/SceneEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const-string v1, "op_crop"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 709
    sget p1, Lcom/narvii/mediaeditor/R$id;->op_sticker:I

    invoke-virtual {p0, p1}, Lcom/narvii/video/SceneEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const-string v1, "op_sticker"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 710
    sget p1, Lcom/narvii/mediaeditor/R$id;->op_pip:I

    invoke-virtual {p0, p1}, Lcom/narvii/video/SceneEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const-string v1, "op_pip"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    return-void
.end method

.method private final onMediaProcessTouchDown(Z)V
    .locals 4

    .line 660
    iget-boolean v0, p0, Lcom/narvii/video/SceneEditorFragment;->hasFailedTask:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 664
    invoke-direct {p0}, Lcom/narvii/video/SceneEditorFragment;->getProgress()Lcom/narvii/util/dialog/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->hide()V

    .line 665
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/narvii/mediaeditor/R$string;->try_again:I

    invoke-virtual {p0, v2}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->showShortToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 666
    iput-boolean p1, p0, Lcom/narvii/video/SceneEditorFragment;->hasFailedTask:Z

    .line 667
    iput-boolean v0, p0, Lcom/narvii/video/SceneEditorFragment;->previewTasksOnGoing:Z

    return-void

    .line 670
    :cond_1
    iget p1, p0, Lcom/narvii/video/SceneEditorFragment;->flyingTaskCount:I

    if-gtz p1, :cond_a

    .line 671
    invoke-direct {p0}, Lcom/narvii/video/SceneEditorFragment;->getProgress()Lcom/narvii/util/dialog/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->hide()V

    .line 672
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 673
    iget-object v1, p0, Lcom/narvii/video/SceneEditorFragment;->scene:Lcom/narvii/scene/model/SceneInfo;

    if-eqz v1, :cond_5

    .line 674
    iget-object v2, p0, Lcom/narvii/video/SceneEditorFragment;->outputPreviewVideoPath:Ljava/lang/String;

    if-eqz v2, :cond_4

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getActiveVideoClip()Lcom/narvii/video/model/AVClipInfoPack;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, v2, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    if-eqz v2, :cond_3

    goto :goto_1

    .line 675
    :cond_3
    iget-object v2, p0, Lcom/narvii/video/SceneEditorFragment;->outputPreviewVideoPath:Ljava/lang/String;

    goto :goto_1

    .line 674
    :cond_4
    :goto_0
    iget-object v2, p0, Lcom/narvii/video/SceneEditorFragment;->outputPreviewVideoPath:Ljava/lang/String;

    .line 676
    :goto_1
    iput-object v2, v1, Lcom/narvii/scene/model/SceneInfo;->previewFilePath:Ljava/lang/String;

    .line 677
    iget-object v2, p0, Lcom/narvii/video/SceneEditorFragment;->outputCoverImagePath:Ljava/lang/String;

    iput-object v2, v1, Lcom/narvii/scene/model/SceneInfo;->coverImage:Ljava/lang/String;

    .line 678
    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sceneInfo"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 680
    :cond_5
    iput-boolean v0, p0, Lcom/narvii/video/SceneEditorFragment;->previewTasksOnGoing:Z

    const-string v1, "from"

    .line 682
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v1, v2, :cond_8

    const/4 v2, 0x2

    if-eq v1, v2, :cond_7

    const/4 v2, 0x3

    if-eq v1, v2, :cond_6

    .line 693
    invoke-virtual {p0, v3, p1}, Lcom/narvii/app/NVFragment;->setResult(ILandroid/content/Intent;)V

    goto :goto_2

    .line 686
    :cond_6
    iget-object p1, p0, Lcom/narvii/video/SceneEditorFragment;->scene:Lcom/narvii/scene/model/SceneInfo;

    if-eqz p1, :cond_9

    .line 687
    new-instance v1, Lcom/narvii/scene/notification/SceneInfoObject;

    invoke-direct {v1}, Lcom/narvii/scene/notification/SceneInfoObject;-><init>()V

    .line 688
    iput-object p1, v1, Lcom/narvii/scene/notification/SceneInfoObject;->sceneInfo:Lcom/narvii/scene/model/SceneInfo;

    .line 689
    new-instance p1, Lcom/narvii/notification/Notification;

    const-string v2, "new"

    invoke-direct {p1, v2, v1}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 690
    invoke-static {p0, p1, v0}, Lcom/narvii/util/NotificationUtils;->sendNotification(Lcom/narvii/app/NVContext;Lcom/narvii/notification/Notification;Z)V

    goto :goto_2

    .line 683
    :cond_7
    iget-object p1, p0, Lcom/narvii/video/SceneEditorFragment;->scene:Lcom/narvii/scene/model/SceneInfo;

    if-eqz p1, :cond_9

    const-string v0, "storyPost"

    .line 684
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/scene/StoryPostService;

    const-string v1, "outputFileDir"

    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getStringParam(\"outputFileDir\")"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "extra"

    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getStringParam(\"extra\")"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p1, v1, v2}, Lcom/narvii/scene/StoryPostService;->launchStoryPost(Lcom/narvii/scene/model/SceneInfo;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 692
    :cond_8
    invoke-virtual {p0, v3, p1}, Lcom/narvii/app/NVFragment;->setResult(ILandroid/content/Intent;)V

    .line 695
    :cond_9
    :goto_2
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    :cond_a
    return-void
.end method

.method private final onPickResult(Ljava/util/List;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/Media;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    if-eqz v1, :cond_16

    .line 723
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_16

    invoke-static/range {p2 .. p2}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_c

    :cond_0
    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    const-string v6, "caller"

    .line 726
    invoke-virtual {v3, v6, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    const/16 v7, 0x303b

    if-ne v6, v7, :cond_2

    .line 727
    new-instance v2, Lcom/narvii/pip/PipInfoPack;

    invoke-direct {v2}, Lcom/narvii/pip/PipInfoPack;-><init>()V

    .line 728
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/model/Media;

    .line 729
    iget v3, v3, Lcom/narvii/model/Media;->type:I

    const/16 v6, 0x7b

    if-eq v3, v6, :cond_1

    .line 730
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/narvii/mediaeditor/R$string;->invalid_input:I

    invoke-static {v1, v2, v5}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/NVToast;->show()V

    return-void

    .line 733
    :cond_1
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/Media;

    invoke-virtual {v1}, Lcom/narvii/model/Media;->getMediaUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v3, "Uri.parse(list[0].mediaUrl)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/narvii/pip/PipInfoPack;->inputPath:Ljava/lang/String;

    new-array v1, v4, [Lcom/narvii/pip/PipInfoPack;

    aput-object v2, v1, v5

    .line 734
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    .line 735
    invoke-direct {v0, v1}, Lcom/narvii/video/SceneEditorFragment;->startPipEditFragment(Ljava/util/List;)V

    return-void

    :cond_2
    const/4 v6, 0x2

    if-eqz v3, :cond_3

    const-string v7, "pickFrom"

    .line 738
    invoke-virtual {v3, v7, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    goto :goto_0

    :cond_3
    const/4 v7, 0x2

    :goto_0
    const/4 v8, 0x0

    if-eqz v3, :cond_4

    const-string v9, "soundDataList"

    .line 740
    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    :cond_4
    move-object v9, v8

    .line 741
    :goto_1
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5

    const-class v10, Lcom/narvii/media/online/audio/model/Sound;

    invoke-static {v9, v10}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v9

    goto :goto_2

    :cond_5
    move-object v9, v8

    :goto_2
    if-eqz v3, :cond_6

    const-string v10, "category"

    .line 742
    invoke-virtual {v3, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto :goto_3

    :cond_6
    move-object v10, v8

    .line 743
    :goto_3
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_7

    const-class v11, Lcom/narvii/media/online/audio/model/AssetCategory;

    invoke-static {v10, v11}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/narvii/media/online/audio/model/AssetCategory;

    goto :goto_4

    :cond_7
    move-object v10, v8

    :goto_4
    if-eqz v3, :cond_8

    const-string v11, "soundTypeList"

    .line 744
    invoke-virtual {v3, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    :cond_8
    move-object v3, v8

    .line 745
    :goto_5
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_9

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v8}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v8

    .line 746
    :cond_9
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 747
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x0

    :goto_6
    const-string v13, "video"

    const-string v14, "audio"

    if-ge v12, v11, :cond_12

    .line 748
    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/narvii/model/Media;

    .line 749
    iget-object v4, v15, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string v5, "Uri.parse(media.url)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 750
    invoke-virtual {v15}, Lcom/narvii/model/Media;->isImage()Z

    move-result v5

    const-string v6, "mediaPath"

    if-eqz v5, :cond_a

    .line 751
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/narvii/video/BaseMediaEditorFragment;->isImageInput(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_a

    invoke-static {v4}, Lcom/narvii/util/Utils;->isGifInData(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_a

    const/4 v1, 0x0

    const/4 v14, 0x2

    goto/16 :goto_b

    .line 755
    :cond_a
    new-instance v5, Lcom/narvii/video/model/AVClipInfoPack;

    invoke-direct {v5}, Lcom/narvii/video/model/AVClipInfoPack;-><init>()V

    .line 756
    iput v12, v5, Lcom/narvii/video/model/BaseClipInfoPack;->indexInScene:I

    .line 757
    iput-object v4, v5, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    .line 758
    iput-object v4, v5, Lcom/narvii/video/model/AVClipInfoPack;->originalInputPath:Ljava/lang/String;

    .line 759
    iget-object v1, v15, Lcom/narvii/model/Media;->author:Ljava/lang/String;

    iput-object v1, v5, Lcom/narvii/video/model/AVClipInfoPack;->author:Ljava/lang/String;

    .line 760
    iget-object v1, v15, Lcom/narvii/model/Media;->fileName:Ljava/lang/String;

    iput-object v1, v5, Lcom/narvii/video/model/AVClipInfoPack;->fileName:Ljava/lang/String;

    .line 761
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->isAllVideoClipMute()Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v1, 0x0

    goto :goto_7

    :cond_b
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_7
    iput v1, v5, Lcom/narvii/video/model/AVClipInfoPack;->trackVolume:F

    .line 762
    invoke-static {v2, v14}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    if-eqz v9, :cond_c

    .line 763
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    if-ne v1, v4, :cond_c

    if-eqz v10, :cond_c

    .line 764
    sget-object v1, Lcom/narvii/video/services/SceneMediaProcessor;->INSTANCE:Lcom/narvii/video/services/SceneMediaProcessor;

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/media/online/audio/model/Sound;

    invoke-virtual {v1, v5, v4, v10}, Lcom/narvii/video/services/SceneMediaProcessor;->fillAudioClipMetadata(Lcom/narvii/video/model/AVClipInfoPack;Lcom/narvii/media/online/audio/model/Sound;Lcom/narvii/media/online/audio/model/AssetCategory;)Lcom/narvii/video/model/AVClipInfoPack;

    :cond_c
    if-eqz v8, :cond_f

    .line 766
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    if-ne v1, v4, :cond_f

    .line 767
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_d

    const/4 v14, 0x2

    goto :goto_8

    :cond_d
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v14, 0x2

    if-ne v1, v14, :cond_e

    const/4 v1, 0x1

    goto :goto_9

    :cond_e
    :goto_8
    const/4 v1, 0x0

    :goto_9
    iput-boolean v1, v5, Lcom/narvii/video/model/AVClipInfoPack;->isSfx:Z

    const/4 v1, 0x0

    goto :goto_a

    :cond_f
    const/4 v14, 0x2

    const/4 v1, 0x0

    .line 769
    iput-boolean v1, v5, Lcom/narvii/video/model/AVClipInfoPack;->isSfx:Z

    goto :goto_a

    :cond_10
    const/4 v1, 0x0

    const/4 v14, 0x2

    .line 771
    invoke-static {v2, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_11

    .line 772
    sget-object v13, Lcom/narvii/video/services/SceneMediaProcessor;->INSTANCE:Lcom/narvii/video/services/SceneMediaProcessor;

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget v6, v15, Lcom/narvii/model/Media;->type:I

    invoke-virtual {v13, v4, v6, v7}, Lcom/narvii/video/services/SceneMediaProcessor;->getVideoSource(Ljava/lang/String;II)I

    move-result v4

    iput v4, v5, Lcom/narvii/video/model/AVClipInfoPack;->videoSource:I

    .line 774
    :cond_11
    :goto_a
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_b
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v1, p1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    goto/16 :goto_6

    .line 776
    :cond_12
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_13

    return-void

    .line 779
    :cond_13
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v4, 0x58d9bd6

    if-eq v1, v4, :cond_15

    const v4, 0x6b0147b

    if-eq v1, v4, :cond_14

    goto :goto_c

    :cond_14
    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 781
    new-instance v1, Lcom/narvii/video/SceneEditorFragment$onPickResult$1;

    invoke-direct {v1, v0, v3}, Lcom/narvii/video/SceneEditorFragment$onPickResult$1;-><init>(Lcom/narvii/video/SceneEditorFragment;Ljava/util/ArrayList;)V

    invoke-direct {v0, v3, v1}, Lcom/narvii/video/SceneEditorFragment;->convertImageToVideo(Ljava/util/List;Lcom/narvii/util/Callback;)V

    goto :goto_c

    .line 779
    :cond_15
    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 802
    invoke-direct {v0, v3}, Lcom/narvii/video/SceneEditorFragment;->opMusic(Ljava/util/List;)V

    :cond_16
    :goto_c
    return-void
.end method

.method private final opAddVideo()V
    .locals 7

    .line 301
    iget-object v0, p0, Lcom/narvii/video/SceneEditorFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 302
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/narvii/video/SceneEditorFragment;->intermediateFolder:Ljava/io/File;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 303
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v2

    invoke-interface {v2}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getVideoClipInfoList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    rsub-int/lit8 v2, v2, 0x1e

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x18

    const/4 v6, 0x0

    .line 301
    invoke-static/range {v0 .. v6}, Lcom/narvii/pre_editing/MediaPreEditingActivityKt;->pickVideoFromGalleryAndYoutube$default(Lcom/narvii/media/MediaPickerFragment;Ljava/lang/String;IIZILjava/lang/Object;)V

    return-void

    :cond_0
    const-string v0, "intermediateFolder"

    .line 302
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string v0, "mediaPickerFragment"

    .line 301
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method private final opAttachment(I)V
    .locals 3

    .line 283
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getVideoClipInfoList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 286
    :cond_0
    invoke-direct {p0}, Lcom/narvii/video/SceneEditorFragment;->getFragmentRegister()Lcom/narvii/app/FragmentRegister;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "attachmentEditor"

    .line 287
    invoke-virtual {v0, v1}, Lcom/narvii/app/FragmentRegister;->getFragmentDeepLinkUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 289
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 290
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getVideoClipInfoList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "inputVideoClipList"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 291
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getAudioClipInfoList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "inputAudioClipList"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 292
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getCaptionList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "inputCaptionList"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 293
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getStickerList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "inputStickerList"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 294
    invoke-virtual {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->getFrameRetrieverManager()Lcom/narvii/video/services/FrameRetrieverManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/video/services/FrameRetrieverManager;->getOutputFolderPath()Ljava/lang/String;

    move-result-object v0

    const-string v2, "frameRetrieverOutputFolder"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "attachmentEntranceType"

    .line 295
    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 296
    invoke-virtual {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->getREQUEST_CODE_EDIT_ATTACHMENT()I

    move-result p1

    invoke-virtual {p0, v1, p1}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_1
    return-void
.end method

.method private final opCrop()V
    .locals 7

    .line 211
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getActiveVideoClip()Lcom/narvii/video/model/AVClipInfoPack;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 212
    invoke-direct {p0}, Lcom/narvii/video/SceneEditorFragment;->getFragmentRegister()Lcom/narvii/app/FragmentRegister;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v2, "cropEditor"

    .line 213
    invoke-virtual {v1, v2}, Lcom/narvii/app/FragmentRegister;->getFragmentDeepLinkUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 215
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 216
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "active_video_clip"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 217
    iget v1, v0, Lcom/narvii/video/model/AVClipInfoPack;->trimStartInMs:I

    const-string v3, "trim_tart"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 218
    iget v1, v0, Lcom/narvii/video/model/AVClipInfoPack;->trimEndInMs:I

    const-string v3, "trim_end"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 219
    iget-object v1, v0, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    const-string v3, "source_path"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 220
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/narvii/video/SceneEditorFragment;->intermediateFolder:Ljava/io/File;

    if-eqz v3, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "crop_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/narvii/video/SceneEditorFragment;->scene:Lcom/narvii/scene/model/SceneInfo;

    if-eqz v5, :cond_0

    iget-object v5, v5, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    const-string v5, "default"

    .line 221
    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".mp4"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 220
    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v3, "dest_path"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 222
    iget-object v1, v0, Lcom/narvii/video/model/AVClipInfoPack;->croppingData:Lcom/narvii/cropping/CroppingData;

    if-eqz v1, :cond_2

    .line 223
    iget-object v1, v1, Lcom/narvii/cropping/CroppingData;->orgVideoPath:Ljava/lang/String;

    invoke-static {v1}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 224
    iget-object v1, v0, Lcom/narvii/video/model/AVClipInfoPack;->croppingData:Lcom/narvii/cropping/CroppingData;

    iget-object v3, v0, Lcom/narvii/video/model/AVClipInfoPack;->originalInputPath:Ljava/lang/String;

    iput-object v3, v1, Lcom/narvii/cropping/CroppingData;->orgVideoPath:Ljava/lang/String;

    .line 226
    :cond_1
    iget-object v0, v0, Lcom/narvii/video/model/AVClipInfoPack;->croppingData:Lcom/narvii/cropping/CroppingData;

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "croppingData"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    const/16 v0, 0x3039

    .line 228
    invoke-virtual {p0, v2, v0}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    :cond_3
    const-string v0, "intermediateFolder"

    .line 220
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_4
    :goto_1
    return-void
.end method

.method private final opMusic(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            ">;)V"
        }
    .end annotation

    .line 235
    invoke-direct {p0}, Lcom/narvii/video/SceneEditorFragment;->getFragmentRegister()Lcom/narvii/app/FragmentRegister;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "audioEditor"

    .line 236
    invoke-virtual {v0, v1}, Lcom/narvii/app/FragmentRegister;->getFragmentDeepLinkUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 238
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 239
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getVideoClipInfoList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "inputVideoClipList"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 240
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "inputAudioClipList"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 241
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getCaptionList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "inputCaptionList"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 242
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getStickerList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "inputStickerList"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 243
    invoke-virtual {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->getFrameRetrieverManager()Lcom/narvii/video/services/FrameRetrieverManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/video/services/FrameRetrieverManager;->getOutputFolderPath()Ljava/lang/String;

    move-result-object v0

    const-string v2, "frameRetrieverOutputFolder"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 244
    invoke-virtual {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->getREQUEST_CODE_SCENE_EDITOR()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 245
    new-instance v0, Lcom/narvii/video/SceneEditorFragment$opMusic$$inlined$let$lambda$1;

    invoke-direct {v0, p0, p1}, Lcom/narvii/video/SceneEditorFragment$opMusic$$inlined$let$lambda$1;-><init>(Lcom/narvii/video/SceneEditorFragment;Ljava/util/List;)V

    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private final opPIP()V
    .locals 5

    .line 1168
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getPipVideoList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 1169
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getPipVideoList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/narvii/video/SceneEditorFragment;->startPipEditFragment(Ljava/util/List;)V

    goto :goto_0

    .line 1171
    :cond_0
    iget-object v0, p0, Lcom/narvii/video/SceneEditorFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    if-eqz v0, :cond_1

    const/16 v2, 0x303b

    const/4 v3, 0x0

    const-string v4, ""

    invoke-static {v0, v4, v1, v2, v3}, Lcom/narvii/pre_editing/MediaPreEditingActivityKt;->pickVideoFromGalleryAndYoutube(Lcom/narvii/media/MediaPickerFragment;Ljava/lang/String;IIZ)V

    :goto_0
    return-void

    :cond_1
    const-string v0, "mediaPickerFragment"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method private final opSpeed()V
    .locals 4

    .line 251
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getActiveVideoClip()Lcom/narvii/video/model/AVClipInfoPack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 252
    invoke-direct {p0}, Lcom/narvii/video/SceneEditorFragment;->getFragmentRegister()Lcom/narvii/app/FragmentRegister;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "mediaSpeed"

    .line 253
    invoke-virtual {v1, v2}, Lcom/narvii/app/FragmentRegister;->getFragmentDeepLinkUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 255
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 256
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "clipInfoPack"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 257
    iget v0, v0, Lcom/narvii/video/model/BaseClipInfoPack;->indexInScene:I

    const-string v1, "currentActiveIndex"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v0, 0x3e8

    const-string v1, "minOutputLength"

    .line 258
    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v0, 0x115c

    .line 259
    invoke-virtual {p0, v2, v0}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method

.method private final opSplit()V
    .locals 3

    .line 266
    invoke-direct {p0}, Lcom/narvii/video/SceneEditorFragment;->getFragmentRegister()Lcom/narvii/app/FragmentRegister;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "splitEditor"

    .line 267
    invoke-virtual {v0, v1}, Lcom/narvii/app/FragmentRegister;->getFragmentDeepLinkUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 269
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 270
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getVideoClipInfoList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "inputVideoClipList"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 271
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getAudioClipInfoList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "inputAudioClipList"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 272
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getCaptionList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "inputCaptionList"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 273
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getStickerList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "inputStickerList"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 274
    invoke-virtual {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->getFrameRetrieverManager()Lcom/narvii/video/services/FrameRetrieverManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/video/services/FrameRetrieverManager;->getOutputFolderPath()Ljava/lang/String;

    move-result-object v0

    const-string v2, "frameRetrieverOutputFolder"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 275
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getActiveVideoClip()Lcom/narvii/video/model/AVClipInfoPack;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/narvii/video/model/BaseClipInfoPack;->indexInScene:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v2, "activeClipIndex"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 276
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getCurrentVideoPositionInClip()I

    move-result v0

    const-string v2, "inClipPlaybackTime"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v0, 0xd05

    .line 277
    invoke-virtual {p0, v1, v0}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_1
    return-void
.end method

.method private final opTrim()V
    .locals 5

    .line 195
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getActiveVideoClip()Lcom/narvii/video/model/AVClipInfoPack;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 196
    invoke-virtual {p0, v1}, Lcom/narvii/video/ScrollingTimeLineFragment;->setSubVideoEditing(Z)V

    .line 197
    invoke-direct {p0}, Lcom/narvii/video/SceneEditorFragment;->getFragmentRegister()Lcom/narvii/app/FragmentRegister;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "mediaEditor"

    .line 198
    invoke-virtual {v2, v3}, Lcom/narvii/app/FragmentRegister;->getFragmentDeepLinkUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 200
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v3, v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 201
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "clipInfoPack"

    invoke-virtual {v3, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "isVideoTrimming"

    .line 202
    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v0, 0x3e8

    const-string v1, "minOutputLength"

    .line 203
    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 204
    invoke-virtual {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->getREQUEST_CODE_SCENE_EDITOR()I

    move-result v0

    invoke-virtual {p0, v3, v0}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method

.method private final sendEditActionLog(Ljava/lang/String;)V
    .locals 1

    .line 190
    sget-object v0, Lcom/narvii/logging/ActSemantic;->edit:Lcom/narvii/logging/ActSemantic;

    invoke-static {p0, v0}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    return-void
.end method

.method private final startPipEditFragment(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/narvii/pip/PipInfoPack;",
            ">;)V"
        }
    .end annotation

    .line 1176
    invoke-direct {p0}, Lcom/narvii/video/SceneEditorFragment;->getFragmentRegister()Lcom/narvii/app/FragmentRegister;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "pipEditor"

    .line 1177
    invoke-virtual {v0, v1}, Lcom/narvii/app/FragmentRegister;->getFragmentDeepLinkUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1179
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1180
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getVideoClipInfoList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "inputVideoClipList"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1181
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getAudioClipInfoList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "inputAudioClipList"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1182
    invoke-virtual {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->getFrameRetrieverManager()Lcom/narvii/video/services/FrameRetrieverManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/video/services/FrameRetrieverManager;->getOutputFolderPath()Ljava/lang/String;

    move-result-object v0

    const-string v2, "frameRetrieverOutputFolder"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1183
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "inputPipInfoPackList"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1184
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object p1

    invoke-interface {p1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getCaptionList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "inputCaptionList"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1185
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object p1

    invoke-interface {p1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getStickerList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "inputStickerList"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1186
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getOutputFileDir()Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string v0, "outputFileDir"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p1, 0x303a

    .line 1187
    invoke-virtual {p0, v1, p1}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_1
    return-void
.end method

.method private final updateAddClipButtonVisibility()V
    .locals 3

    .line 964
    iget-object v0, p0, Lcom/narvii/video/SceneEditorFragment;->addClipButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/narvii/video/SceneEditorFragment;->scene:Lcom/narvii/scene/model/SceneInfo;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/narvii/scene/model/SceneInfo;->isGeneratedFromTemplate()Z

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v1

    invoke-interface {v1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getVideoClipInfoList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_2

    :cond_1
    const/16 v1, 0x8

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :cond_3
    const-string v0, "addClipButton"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/video/SceneEditorFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/video/SceneEditorFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/video/SceneEditorFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/video/SceneEditorFragment;->_$_findViewCache:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/narvii/video/SceneEditorFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method protected changeVideoPlaybackStatus(ZZ)V
    .locals 1

    .line 974
    invoke-super {p0, p1, p2}, Lcom/narvii/video/ScrollingTimeLineFragment;->changeVideoPlaybackStatus(ZZ)V

    if-nez p1, :cond_0

    .line 975
    sget p1, Lcom/narvii/mediaeditor/R$id;->clip_fast_switching_panel:I

    invoke-virtual {p0, p1}, Lcom/narvii/video/SceneEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/video/widget/ClipFastSwitchingPanel;

    const-string p2, "clip_fast_switching_panel"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 976
    sget p1, Lcom/narvii/mediaeditor/R$id;->clip_fast_switching_panel:I

    invoke-virtual {p0, p1}, Lcom/narvii/video/SceneEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/video/widget/ClipFastSwitchingPanel;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 977
    sget p1, Lcom/narvii/mediaeditor/R$id;->cover_layer:I

    invoke-virtual {p0, p1}, Lcom/narvii/video/SceneEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "cover_layer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected getAudioInputClipList()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            ">;"
        }
    .end annotation

    .line 418
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 419
    iget-object v1, p0, Lcom/narvii/video/SceneEditorFragment;->scene:Lcom/narvii/scene/model/SceneInfo;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 422
    iget-object v1, v1, Lcom/narvii/scene/model/SceneInfo;->audioClips:Ljava/util/ArrayList;

    const-string v3, "scene!!.audioClips"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    .line 423
    iget-object v1, p0, Lcom/narvii/video/SceneEditorFragment;->scene:Lcom/narvii/scene/model/SceneInfo;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/narvii/scene/model/SceneInfo;->audioClips:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v2

    :cond_2
    :goto_0
    return-object v0

    .line 422
    :cond_3
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v2
.end method

.method protected getCaptionList()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/Caption;",
            ">;"
        }
    .end annotation

    .line 429
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 430
    iget-object v1, p0, Lcom/narvii/video/SceneEditorFragment;->scene:Lcom/narvii/scene/model/SceneInfo;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 433
    iget-object v1, v1, Lcom/narvii/scene/model/SceneInfo;->captions:Ljava/util/ArrayList;

    const-string v3, "scene!!.captions"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    .line 434
    iget-object v1, p0, Lcom/narvii/video/SceneEditorFragment;->scene:Lcom/narvii/scene/model/SceneInfo;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/narvii/scene/model/SceneInfo;->captions:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v2

    :cond_2
    :goto_0
    return-object v0

    .line 433
    :cond_3
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v2
.end method

.method public getCustomTheme()I
    .locals 1

    .line 530
    sget v0, Lcom/narvii/mediaeditor/R$style;->AminoTheme_Overlay:I

    return v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    .line 1145
    iget-object v0, p0, Lcom/narvii/video/SceneEditorFragment;->scene:Lcom/narvii/scene/model/SceneInfo;

    if-eqz v0, :cond_0

    .line 1146
    invoke-virtual {v0}, Lcom/narvii/scene/model/SceneInfo;->isGeneratedFromTemplate()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "VideoTemplateSceneEdit"

    return-object v0

    :cond_0
    const-string v0, "SceneEdit"

    return-object v0
.end method

.method protected getPipClipList()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/pip/PipInfoPack;",
            ">;"
        }
    .end annotation

    .line 451
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 452
    iget-object v1, p0, Lcom/narvii/video/SceneEditorFragment;->scene:Lcom/narvii/scene/model/SceneInfo;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 455
    iget-object v1, v1, Lcom/narvii/scene/model/SceneInfo;->pipClips:Ljava/util/ArrayList;

    const-string v3, "scene!!.pipClips"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    .line 456
    iget-object v1, p0, Lcom/narvii/video/SceneEditorFragment;->scene:Lcom/narvii/scene/model/SceneInfo;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/narvii/scene/model/SceneInfo;->pipClips:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v2

    :cond_2
    :goto_0
    return-object v0

    .line 455
    :cond_3
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v2
.end method

.method protected getStickerList()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/StickerInfoPack;",
            ">;"
        }
    .end annotation

    .line 440
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 441
    iget-object v1, p0, Lcom/narvii/video/SceneEditorFragment;->scene:Lcom/narvii/scene/model/SceneInfo;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 444
    iget-object v1, v1, Lcom/narvii/scene/model/SceneInfo;->stickers:Ljava/util/ArrayList;

    const-string v3, "scene!!.stickers"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    .line 445
    iget-object v1, p0, Lcom/narvii/video/SceneEditorFragment;->scene:Lcom/narvii/scene/model/SceneInfo;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/narvii/scene/model/SceneInfo;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v2

    :cond_2
    :goto_0
    return-object v0

    .line 444
    :cond_3
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v2
.end method

.method protected getVideoInputClipList()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            ">;"
        }
    .end annotation

    .line 394
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 395
    iget-object v1, p0, Lcom/narvii/video/SceneEditorFragment;->scene:Lcom/narvii/scene/model/SceneInfo;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const/4 v2, 0x0

    if-eqz v1, :cond_b

    .line 398
    iget-object v1, v1, Lcom/narvii/scene/model/SceneInfo;->videoClips:Ljava/util/ArrayList;

    const-string v3, "scene!!.videoClips"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    .line 399
    iget-object v1, p0, Lcom/narvii/video/SceneEditorFragment;->scene:Lcom/narvii/scene/model/SceneInfo;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/narvii/scene/model/SceneInfo;->videoClips:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_2

    :cond_1
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v2

    :cond_2
    const/4 v1, 0x0

    .line 401
    iget-object v3, p0, Lcom/narvii/video/SceneEditorFragment;->scene:Lcom/narvii/scene/model/SceneInfo;

    if-eqz v3, :cond_a

    iget-object v3, v3, Lcom/narvii/scene/model/SceneInfo;->inputFilePathList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    :goto_0
    if-ge v1, v3, :cond_9

    .line 402
    new-instance v4, Lcom/narvii/video/model/AVClipInfoPack;

    invoke-direct {v4}, Lcom/narvii/video/model/AVClipInfoPack;-><init>()V

    .line 403
    iput v1, v4, Lcom/narvii/video/model/BaseClipInfoPack;->indexInScene:I

    .line 404
    iget-object v5, p0, Lcom/narvii/video/SceneEditorFragment;->scene:Lcom/narvii/scene/model/SceneInfo;

    if-eqz v5, :cond_8

    iget-object v5, v5, Lcom/narvii/scene/model/SceneInfo;->inputFilePathList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, v4, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    .line 405
    iget-object v5, p0, Lcom/narvii/video/SceneEditorFragment;->scene:Lcom/narvii/scene/model/SceneInfo;

    if-eqz v5, :cond_7

    iget-object v5, v5, Lcom/narvii/scene/model/SceneInfo;->inputFilePathList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, v4, Lcom/narvii/video/model/AVClipInfoPack;->originalInputPath:Ljava/lang/String;

    .line 407
    iget-object v5, p0, Lcom/narvii/video/SceneEditorFragment;->scene:Lcom/narvii/scene/model/SceneInfo;

    if-eqz v5, :cond_6

    iget-object v6, v5, Lcom/narvii/scene/model/SceneInfo;->inputFileFrom:Ljava/util/List;

    if-eqz v6, :cond_5

    if-eqz v5, :cond_4

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v1, :cond_5

    .line 408
    iget-object v5, p0, Lcom/narvii/video/SceneEditorFragment;->scene:Lcom/narvii/scene/model/SceneInfo;

    if-eqz v5, :cond_3

    iget-object v5, v5, Lcom/narvii/scene/model/SceneInfo;->inputFileFrom:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "scene!!.inputFileFrom[index]"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    iput v5, v4, Lcom/narvii/video/model/AVClipInfoPack;->videoSource:I

    goto :goto_1

    :cond_3
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v2

    .line 407
    :cond_4
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v2

    .line 411
    :cond_5
    :goto_1
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 407
    :cond_6
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v2

    .line 405
    :cond_7
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v2

    .line 404
    :cond_8
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v2

    :cond_9
    :goto_2
    return-object v0

    .line 401
    :cond_a
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v2

    .line 398
    :cond_b
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    goto :goto_4

    :goto_3
    throw v2

    :goto_4
    goto :goto_3
.end method

.method public initComponent()V
    .locals 3

    .line 102
    sget v0, Lcom/narvii/mediaeditor/R$id;->video_duration:I

    invoke-virtual {p0, v0}, Lcom/narvii/video/SceneEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/narvii/video/ScrollingTimeLineFragment;->setVideoDurationText(Landroid/widget/TextView;)V

    .line 103
    sget v0, Lcom/narvii/mediaeditor/R$id;->video_playback_time:I

    invoke-virtual {p0, v0}, Lcom/narvii/video/SceneEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/narvii/video/ScrollingTimeLineFragment;->setVideoPlaybackTimeText(Landroid/widget/TextView;)V

    .line 104
    sget v0, Lcom/narvii/mediaeditor/R$id;->divider:I

    invoke-virtual {p0, v0}, Lcom/narvii/video/SceneEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/narvii/video/ScrollingTimeLineFragment;->setVideoPlaybackTimeDivider(Landroid/view/View;)V

    .line 105
    sget v0, Lcom/narvii/mediaeditor/R$id;->video_view_player:I

    invoke-virtual {p0, v0}, Lcom/narvii/video/SceneEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/video/widget/videoview/NVEditorPreviewVideoVIew;

    invoke-virtual {p0, v0}, Lcom/narvii/video/BaseMediaEditorFragment;->setPreviewVideoView(Lcom/narvii/video/widget/videoview/NVEditorPreviewVideoVIew;)V

    .line 106
    sget v0, Lcom/narvii/mediaeditor/R$id;->player_button:I

    invoke-virtual {p0, v0}, Lcom/narvii/video/SceneEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/narvii/video/BaseMediaEditorFragment;->setPlayerButton(Landroid/widget/ImageView;)V

    .line 107
    sget v0, Lcom/narvii/mediaeditor/R$id;->pause_shadow:I

    invoke-virtual {p0, v0}, Lcom/narvii/video/SceneEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/narvii/video/BaseMediaEditorFragment;->setPauseShadow(Landroid/view/View;)V

    .line 108
    sget v0, Lcom/narvii/mediaeditor/R$id;->video_time_line_component:I

    invoke-virtual {p0, v0}, Lcom/narvii/video/SceneEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-virtual {p0, v0}, Lcom/narvii/video/ScrollingTimeLineFragment;->setMainTimeLineComponent(Lcom/narvii/video/widget/MediaTimeLineComponent;)V

    .line 109
    sget v0, Lcom/narvii/mediaeditor/R$id;->option_add_video:I

    invoke-virtual {p0, v0}, Lcom/narvii/video/SceneEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const-string v1, "option_add_video"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/narvii/video/SceneEditorFragment;->addClipButton:Landroid/widget/ImageView;

    .line 110
    invoke-static {}, Lcom/narvii/app/NVApplication;->isStoryEditorApp()Z

    move-result v0

    if-nez v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/narvii/video/SceneEditorFragment;->addClipButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/narvii/mediaeditor/R$drawable;->ic_add_clip_shadow_purple:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 112
    sget v0, Lcom/narvii/mediaeditor/R$id;->empty_view_option_add_video:I

    invoke-virtual {p0, v0}, Lcom/narvii/video/SceneEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/narvii/mediaeditor/R$drawable;->ic_add_clip_purple:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    const-string v0, "addClipButton"

    .line 111
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public initFrameRetrieverManager()V
    .locals 7

    .line 117
    invoke-virtual {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->getFrameRetrieverManager()Lcom/narvii/video/services/FrameRetrieverManager;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/video/SceneEditorFragment;->scene:Lcom/narvii/scene/model/SceneInfo;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    :goto_0
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    const-string v2, "scene"

    invoke-static/range {v0 .. v6}, Lcom/narvii/video/services/FrameRetrieverManager;->initRetriever$default(Lcom/narvii/video/services/FrameRetrieverManager;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/Object;)V

    return-void
.end method

.method protected initInputClips()Z
    .locals 5

    .line 462
    new-instance v0, Lcom/narvii/photos/PhotoManager;

    invoke-direct {v0, p0}, Lcom/narvii/photos/PhotoManager;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/video/SceneEditorFragment;->photoManager:Lcom/narvii/photos/PhotoManager;

    const-string v0, "sceneInfo"

    .line 463
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 465
    sget-object v1, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    const-class v2, Lcom/narvii/scene/model/SceneInfo;

    invoke-virtual {v1, v0, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/scene/model/SceneInfo;

    iput-object v0, p0, Lcom/narvii/video/SceneEditorFragment;->scene:Lcom/narvii/scene/model/SceneInfo;

    .line 467
    :cond_0
    iget-object v0, p0, Lcom/narvii/video/SceneEditorFragment;->scene:Lcom/narvii/scene/model/SceneInfo;

    if-eqz v0, :cond_6

    .line 468
    iget-object v1, v0, Lcom/narvii/scene/model/SceneInfo;->videoClips:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/video/model/AVClipInfoPack;

    .line 469
    iget-object v3, v2, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    iput-object v3, v2, Lcom/narvii/video/model/AVClipInfoPack;->originalInputPath:Ljava/lang/String;

    .line 470
    iget-object v3, p0, Lcom/narvii/video/SceneEditorFragment;->orgVideoClipList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/narvii/video/model/AVClipInfoPack;->copy()Lcom/narvii/video/model/AVClipInfoPack;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 472
    :cond_1
    iget-object v1, v0, Lcom/narvii/scene/model/SceneInfo;->audioClips:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/video/model/AVClipInfoPack;

    .line 473
    iget-object v3, p0, Lcom/narvii/video/SceneEditorFragment;->orgAudioClipList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/narvii/video/model/AVClipInfoPack;->copy()Lcom/narvii/video/model/AVClipInfoPack;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 475
    :cond_2
    iget-object v1, v0, Lcom/narvii/scene/model/SceneInfo;->captions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/video/model/Caption;

    .line 476
    iget-object v3, p0, Lcom/narvii/video/SceneEditorFragment;->orgCaptionList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/narvii/video/model/Caption;->copy()Lcom/narvii/video/model/Caption;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 478
    :cond_3
    iget-object v1, v0, Lcom/narvii/scene/model/SceneInfo;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/video/model/StickerInfoPack;

    .line 479
    iget-object v3, p0, Lcom/narvii/video/SceneEditorFragment;->orgStickerList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/narvii/video/model/StickerInfoPack;->copy()Lcom/narvii/video/model/StickerInfoPack;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 481
    :cond_4
    iget-object v1, v0, Lcom/narvii/scene/model/SceneInfo;->pipClips:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/pip/PipInfoPack;

    .line 482
    iget-object v3, p0, Lcom/narvii/video/SceneEditorFragment;->orgPipList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/narvii/pip/PipInfoPack;->copy()Lcom/narvii/pip/PipInfoPack;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 484
    :cond_5
    invoke-virtual {v0}, Lcom/narvii/scene/model/SceneInfo;->isGeneratedFromTemplate()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/narvii/video/SceneEditorFragment;->initOperationPanel(Z)V

    :cond_6
    const-string v0, "outputFileDir"

    .line 487
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 488
    invoke-static {v0}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_7

    const/4 v0, 0x0

    .line 489
    invoke-static {p0, v0, v2, v3}, Lcom/narvii/video/BaseMediaEditorFragment;->showInvalidDialog$default(Lcom/narvii/video/BaseMediaEditorFragment;ZILjava/lang/Object;)V

    return v0

    .line 492
    :cond_7
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/narvii/video/BaseMediaEditorFragment;->setOutputFileDir(Ljava/io/File;)V

    .line 493
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getOutputFileDir()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_9

    .line 494
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getOutputFileDir()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    goto :goto_5

    :cond_8
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v3

    .line 496
    :cond_9
    :goto_5
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getOutputFileDir()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_d

    iget-object v4, p0, Lcom/narvii/video/SceneEditorFragment;->scene:Lcom/narvii/scene/model/SceneInfo;

    if-eqz v4, :cond_a

    iget-object v4, v4, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    if-eqz v4, :cond_a

    goto :goto_6

    :cond_a
    const-string v4, "default"

    :goto_6
    invoke-direct {v0, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/narvii/video/SceneEditorFragment;->outputFolder:Ljava/io/File;

    .line 497
    iget-object v0, p0, Lcom/narvii/video/SceneEditorFragment;->outputFolder:Ljava/io/File;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 498
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getOutputFileDir()Ljava/io/File;

    move-result-object v1

    const-string v4, "scene_intermediate_file"

    invoke-direct {v0, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/narvii/video/SceneEditorFragment;->intermediateFolder:Ljava/io/File;

    .line 499
    iget-object v0, p0, Lcom/narvii/video/SceneEditorFragment;->intermediateFolder:Ljava/io/File;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 500
    invoke-virtual {p0}, Lcom/narvii/video/SceneEditorFragment;->onAVClipsPrepared()V

    return v2

    :cond_b
    const-string v0, "intermediateFolder"

    .line 499
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_c
    const-string v0, "outputFolder"

    .line 497
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 496
    :cond_d
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v3

    .line 493
    :cond_e
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    goto :goto_8

    :goto_7
    throw v3

    :goto_8
    goto :goto_7
.end method

.method protected onAVClipsPrepared()V
    .locals 9

    .line 982
    invoke-super {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->onAVClipsPrepared()V

    .line 983
    invoke-virtual {p0}, Lcom/narvii/video/SceneEditorFragment;->getVideoInputClipList()Ljava/util/ArrayList;

    move-result-object v7

    .line 984
    invoke-virtual {p0}, Lcom/narvii/video/SceneEditorFragment;->getAudioInputClipList()Ljava/util/ArrayList;

    move-result-object v3

    .line 985
    invoke-virtual {p0}, Lcom/narvii/video/SceneEditorFragment;->getCaptionList()Ljava/util/ArrayList;

    move-result-object v4

    .line 986
    invoke-virtual {p0}, Lcom/narvii/video/SceneEditorFragment;->getStickerList()Ljava/util/ArrayList;

    move-result-object v5

    .line 987
    invoke-virtual {p0}, Lcom/narvii/video/SceneEditorFragment;->getPipClipList()Ljava/util/ArrayList;

    move-result-object v6

    .line 988
    invoke-virtual {p0}, Lcom/narvii/video/SceneEditorFragment;->initFrameRetrieverManager()V

    .line 989
    new-instance v8, Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1;

    move-object v0, v8

    move-object v1, p0

    move-object v2, v7

    invoke-direct/range {v0 .. v6}, Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1;-><init>(Lcom/narvii/video/SceneEditorFragment;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-direct {p0, v7, v8}, Lcom/narvii/video/SceneEditorFragment;->convertImageToVideo(Ljava/util/List;Lcom/narvii/util/Callback;)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 1034
    invoke-super {p0, p1}, Lcom/narvii/video/BaseMediaEditorFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 1035
    iget-object p1, p0, Lcom/narvii/video/SceneEditorFragment;->scene:Lcom/narvii/scene/model/SceneInfo;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/narvii/scene/model/SceneInfo;->isGeneratedFromTemplate()Z

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/narvii/video/SceneEditorFragment;->scene:Lcom/narvii/scene/model/SceneInfo;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/narvii/scene/model/SceneInfo;->title:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, ""

    .line 1036
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1038
    :cond_1
    iget-object p1, p0, Lcom/narvii/video/SceneEditorFragment;->scene:Lcom/narvii/scene/model/SceneInfo;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/narvii/scene/model/SceneInfo;->title:Ljava/lang/String;

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/narvii/mediaeditor/R$string;->scene:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    :goto_2
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    .line 1043
    const-class v4, Lcom/narvii/video/model/AVClipInfoPack;

    invoke-super/range {p0 .. p3}, Lcom/narvii/video/ScrollingTimeLineFragment;->onActivityResult(IILandroid/content/Intent;)V

    const-wide/16 v5, 0x2bc

    const/4 v7, 0x1

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xd05

    if-ne v1, v11, :cond_3

    if-ne v2, v8, :cond_3

    if-eqz v3, :cond_0

    const-string v1, "videoClipList"

    .line 1045
    invoke-virtual {v3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    :cond_0
    if-eqz v3, :cond_1

    const-string v1, "activeClipIndex"

    .line 1046
    invoke-virtual {v3, v1, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v3, :cond_2

    const-string v2, "inClipPlaybackTime"

    .line 1047
    invoke-virtual {v3, v2, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    :cond_2
    if-eqz v10, :cond_17

    .line 1049
    invoke-static {v10, v4}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v12

    if-eqz v12, :cond_17

    .line 1050
    invoke-interface {v12}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v7

    if-eqz v2, :cond_17

    .line 1051
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v11

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x6

    const/16 v16, 0x0

    invoke-static/range {v11 .. v16}, Lcom/narvii/video/interfaces/IPreviewPlayer$DefaultImpls;->resetVideoClipList$default(Lcom/narvii/video/interfaces/IPreviewPlayer;Ljava/util/ArrayList;IIILjava/lang/Object;)Lcom/narvii/video/model/AVClipInfoPack;

    .line 1052
    new-instance v2, Lcom/narvii/video/SceneEditorFragment$onActivityResult$$inlined$let$lambda$1;

    invoke-direct {v2, v0, v1, v9}, Lcom/narvii/video/SceneEditorFragment$onActivityResult$$inlined$let$lambda$1;-><init>(Lcom/narvii/video/SceneEditorFragment;II)V

    invoke-static {v2, v5, v6}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    goto/16 :goto_5

    .line 1058
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->getREQUEST_CODE_SCENE_EDITOR()I

    move-result v11

    if-ne v1, v11, :cond_6

    if-ne v2, v8, :cond_6

    .line 1059
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getTotalVisibleVideoDurationInMs()Lkotlin/Pair;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 1060
    sget v2, Lcom/narvii/mediaeditor/R$id;->scene_invalid_hint:I

    invoke-virtual {v0, v2}, Lcom/narvii/video/SceneEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-string v3, "scene_invalid_hint"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v3, 0xbb8

    invoke-static {}, Lcom/narvii/scene/SceneConstant;->getMaxSceneLengthMs()I

    move-result v4

    if-le v3, v1, :cond_4

    goto :goto_1

    :cond_4
    if-lt v4, v1, :cond_5

    const/16 v9, 0x8

    :cond_5
    :goto_1
    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_5

    :cond_6
    const/16 v11, 0x3039

    if-ne v1, v11, :cond_12

    if-ne v2, v8, :cond_12

    const-string v1, "BasicCropping success"

    .line 1062
    invoke-static {v1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;)V

    if-eqz v3, :cond_7

    const-string v1, "croppingData"

    .line 1063
    invoke-virtual {v3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_7
    move-object v1, v10

    :goto_2
    if-eqz v3, :cond_8

    const-string v2, "success"

    .line 1064
    invoke-virtual {v3, v2, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_3

    :cond_8
    move-object v2, v10

    .line 1065
    :goto_3
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    if-eqz v1, :cond_17

    .line 1066
    const-class v2, Lcom/narvii/cropping/CroppingData;

    invoke-static {v1, v2}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/cropping/CroppingData;

    .line 1067
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getActiveVideoClip()Lcom/narvii/video/model/AVClipInfoPack;

    move-result-object v2

    if-eqz v2, :cond_17

    if-eqz v1, :cond_17

    .line 1068
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v2

    invoke-interface {v2}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getVideoClipInfoList()Ljava/util/ArrayList;

    move-result-object v2

    .line 1069
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getActiveVideoClip()Lcom/narvii/video/model/AVClipInfoPack;

    move-result-object v3

    if-eqz v3, :cond_11

    iput-object v1, v3, Lcom/narvii/video/model/AVClipInfoPack;->croppingData:Lcom/narvii/cropping/CroppingData;

    .line 1070
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getActiveVideoClip()Lcom/narvii/video/model/AVClipInfoPack;

    move-result-object v3

    if-eqz v3, :cond_10

    iget v3, v3, Lcom/narvii/video/model/BaseClipInfoPack;->indexInScene:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/video/model/AVClipInfoPack;

    iput-object v1, v3, Lcom/narvii/video/model/AVClipInfoPack;->croppingData:Lcom/narvii/cropping/CroppingData;

    .line 1071
    invoke-virtual {v1}, Lcom/narvii/cropping/CroppingData;->isDynamic()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1072
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getActiveVideoClip()Lcom/narvii/video/model/AVClipInfoPack;

    move-result-object v3

    if-eqz v3, :cond_a

    iget v3, v3, Lcom/narvii/video/model/BaseClipInfoPack;->indexInScene:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/video/model/AVClipInfoPack;

    iget-object v1, v1, Lcom/narvii/cropping/CroppingData;->dynamicPath:Ljava/lang/String;

    iput-object v1, v3, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    .line 1073
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getActiveVideoClip()Lcom/narvii/video/model/AVClipInfoPack;

    move-result-object v1

    if-eqz v1, :cond_9

    iget v5, v1, Lcom/narvii/video/model/BaseClipInfoPack;->indexInScene:I

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object v4, v2

    invoke-static/range {v3 .. v8}, Lcom/narvii/video/interfaces/IPreviewPlayer$DefaultImpls;->resetVideoClipList$default(Lcom/narvii/video/interfaces/IPreviewPlayer;Ljava/util/ArrayList;IIILjava/lang/Object;)Lcom/narvii/video/model/AVClipInfoPack;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/video/BaseMediaEditorFragment;->setActiveVideoClip(Lcom/narvii/video/model/AVClipInfoPack;)V

    goto/16 :goto_5

    :cond_9
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v10

    .line 1072
    :cond_a
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v10

    .line 1075
    :cond_b
    iget-object v3, v1, Lcom/narvii/cropping/CroppingData;->orgVideoPath:Ljava/lang/String;

    if-eqz v3, :cond_e

    .line 1076
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getActiveVideoClip()Lcom/narvii/video/model/AVClipInfoPack;

    move-result-object v3

    if-eqz v3, :cond_d

    iget v3, v3, Lcom/narvii/video/model/BaseClipInfoPack;->indexInScene:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/video/model/AVClipInfoPack;

    iget-object v1, v1, Lcom/narvii/cropping/CroppingData;->orgVideoPath:Ljava/lang/String;

    iput-object v1, v3, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    .line 1077
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getActiveVideoClip()Lcom/narvii/video/model/AVClipInfoPack;

    move-result-object v1

    if-eqz v1, :cond_c

    iget v5, v1, Lcom/narvii/video/model/BaseClipInfoPack;->indexInScene:I

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object v4, v2

    invoke-static/range {v3 .. v8}, Lcom/narvii/video/interfaces/IPreviewPlayer$DefaultImpls;->resetVideoClipList$default(Lcom/narvii/video/interfaces/IPreviewPlayer;Ljava/util/ArrayList;IIILjava/lang/Object;)Lcom/narvii/video/model/AVClipInfoPack;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/video/BaseMediaEditorFragment;->setActiveVideoClip(Lcom/narvii/video/model/AVClipInfoPack;)V

    goto :goto_4

    :cond_c
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v10

    .line 1076
    :cond_d
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v10

    .line 1079
    :cond_e
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getActiveVideoClip()Lcom/narvii/video/model/AVClipInfoPack;

    move-result-object v3

    if-eqz v3, :cond_f

    iget v3, v3, Lcom/narvii/video/model/BaseClipInfoPack;->indexInScene:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "videoClipList[activeVideoClip!!.indexInScene]"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/narvii/video/model/AVClipInfoPack;

    invoke-interface {v1, v2}, Lcom/narvii/video/interfaces/IPreviewPlayer;->updateClipTransform(Lcom/narvii/video/model/AVClipInfoPack;)V

    .line 1080
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v1

    invoke-interface {v1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->refreshBackgroundTrack()V

    .line 1081
    new-instance v1, Lcom/narvii/video/SceneEditorFragment$onActivityResult$2;

    invoke-direct {v1, v0}, Lcom/narvii/video/SceneEditorFragment$onActivityResult$2;-><init>(Lcom/narvii/video/SceneEditorFragment;)V

    invoke-static {v1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    goto/16 :goto_5

    .line 1079
    :cond_f
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v10

    .line 1070
    :cond_10
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v10

    .line 1069
    :cond_11
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v10

    :cond_12
    const/16 v11, 0x115c

    if-ne v1, v11, :cond_16

    if-ne v2, v8, :cond_16

    if-eqz v3, :cond_13

    const-string v1, "clipInfoPack"

    .line 1094
    invoke-virtual {v3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    :cond_13
    invoke-static {v10, v4}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/video/model/AVClipInfoPack;

    if-eqz v1, :cond_15

    if-eqz v3, :cond_15

    const-string v2, "currentActiveIndex"

    .line 1096
    invoke-virtual {v3, v2, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1097
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v3

    invoke-interface {v3}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getVideoClipInfoList()Ljava/util/ArrayList;

    move-result-object v8

    .line 1098
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gez v2, :cond_14

    goto :goto_5

    :cond_14
    if-le v3, v2, :cond_17

    .line 1099
    invoke-virtual {v8, v2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1100
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x6

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Lcom/narvii/video/interfaces/IPreviewPlayer$DefaultImpls;->resetVideoClipList$default(Lcom/narvii/video/interfaces/IPreviewPlayer;Ljava/util/ArrayList;IIILjava/lang/Object;)Lcom/narvii/video/model/AVClipInfoPack;

    .line 1101
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getTotalVisibleVideoDurationInMs()Lkotlin/Pair;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 1102
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->adjustAllViceTrackRange(I)V

    .line 1103
    invoke-direct/range {p0 .. p0}, Lcom/narvii/video/SceneEditorFragment;->checkSceneDuration()V

    .line 1104
    new-instance v1, Lcom/narvii/video/SceneEditorFragment$onActivityResult$3;

    invoke-direct {v1, v0, v2}, Lcom/narvii/video/SceneEditorFragment$onActivityResult$3;-><init>(Lcom/narvii/video/SceneEditorFragment;I)V

    invoke-static {v1, v5, v6}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    goto :goto_5

    :cond_15
    return-void

    :cond_16
    if-ne v2, v8, :cond_17

    const v2, 0xfd30

    if-ne v1, v2, :cond_17

    if-eqz v3, :cond_17

    const-string v1, "media"

    .line 1216
    invoke-virtual {v3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v4, Lcom/narvii/model/Media;

    invoke-static {v2, v4}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/model/Media;

    const-string v4, "bundle"

    .line 1217
    invoke-virtual {v3, v4}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 1218
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v1, v7, [Lcom/narvii/model/Media;

    aput-object v2, v1, v9

    .line 1111
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "video"

    invoke-direct {v0, v1, v2, v3}, Lcom/narvii/video/SceneEditorFragment;->onPickResult(Ljava/util/List;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_17
    :goto_5
    return-void
.end method

.method public onBackPressed(Lcom/narvii/app/NVActivity;)Z
    .locals 2

    .line 384
    sget p1, Lcom/narvii/mediaeditor/R$id;->clip_fast_switching_panel:I

    invoke-virtual {p0, p1}, Lcom/narvii/video/SceneEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/video/widget/ClipFastSwitchingPanel;

    const-string v0, "clip_fast_switching_panel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 385
    sget p1, Lcom/narvii/mediaeditor/R$id;->clip_fast_switching_panel:I

    invoke-virtual {p0, p1}, Lcom/narvii/video/SceneEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/video/widget/ClipFastSwitchingPanel;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 386
    sget p1, Lcom/narvii/mediaeditor/R$id;->cover_layer:I

    invoke-virtual {p0, p1}, Lcom/narvii/video/SceneEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v1, "cover_layer"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 388
    :cond_0
    invoke-direct {p0}, Lcom/narvii/video/SceneEditorFragment;->doExit()V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x0

    .line 121
    invoke-virtual {p0, v0}, Lcom/narvii/video/BaseMediaEditorFragment;->setAutoPlaying(Z)V

    if-eqz p1, :cond_0

    .line 122
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 123
    :goto_0
    sget v1, Lcom/narvii/mediaeditor/R$id;->cover_layer:I

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_2

    .line 124
    sget p1, Lcom/narvii/mediaeditor/R$id;->cover_layer:I

    invoke-virtual {p0, p1}, Lcom/narvii/video/SceneEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "cover_layer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 125
    sget p1, Lcom/narvii/mediaeditor/R$id;->clip_fast_switching_panel:I

    invoke-virtual {p0, p1}, Lcom/narvii/video/SceneEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/video/widget/ClipFastSwitchingPanel;

    const-string v1, "clip_fast_switching_panel"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_d

    .line 128
    :cond_2
    :goto_1
    sget v1, Lcom/narvii/mediaeditor/R$id;->op_trim:I

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_4

    const-string p1, "Trim"

    .line 129
    invoke-direct {p0, p1}, Lcom/narvii/video/SceneEditorFragment;->sendEditActionLog(Ljava/lang/String;)V

    .line 130
    invoke-direct {p0}, Lcom/narvii/video/SceneEditorFragment;->opTrim()V

    goto/16 :goto_d

    .line 133
    :cond_4
    :goto_2
    sget v1, Lcom/narvii/mediaeditor/R$id;->op_split:I

    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_6

    const-string p1, "Split"

    .line 134
    invoke-direct {p0, p1}, Lcom/narvii/video/SceneEditorFragment;->sendEditActionLog(Ljava/lang/String;)V

    .line 135
    invoke-direct {p0}, Lcom/narvii/video/SceneEditorFragment;->opSplit()V

    goto/16 :goto_d

    .line 138
    :cond_6
    :goto_3
    sget v1, Lcom/narvii/mediaeditor/R$id;->op_speed:I

    if-nez v0, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_8

    const-string p1, "Speed"

    .line 139
    invoke-direct {p0, p1}, Lcom/narvii/video/SceneEditorFragment;->sendEditActionLog(Ljava/lang/String;)V

    .line 140
    invoke-direct {p0}, Lcom/narvii/video/SceneEditorFragment;->opSpeed()V

    goto/16 :goto_d

    .line 143
    :cond_8
    :goto_4
    sget v1, Lcom/narvii/mediaeditor/R$id;->op_music:I

    if-nez v0, :cond_9

    goto :goto_5

    :cond_9
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_a

    goto :goto_6

    :cond_a
    :goto_5
    sget v1, Lcom/narvii/mediaeditor/R$id;->op_sfx:I

    if-nez v0, :cond_b

    goto :goto_7

    :cond_b
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_d

    .line 144
    :goto_6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/narvii/mediaeditor/R$id;->op_music:I

    if-ne p1, v0, :cond_c

    const-string p1, "Music"

    .line 145
    invoke-direct {p0, p1}, Lcom/narvii/video/SceneEditorFragment;->sendEditActionLog(Ljava/lang/String;)V

    .line 155
    :cond_c
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object p1

    invoke-interface {p1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getAudioClipInfoList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/narvii/video/SceneEditorFragment;->opMusic(Ljava/util/List;)V

    goto/16 :goto_d

    .line 159
    :cond_d
    :goto_7
    sget p1, Lcom/narvii/mediaeditor/R$id;->op_text:I

    if-nez v0, :cond_e

    goto :goto_8

    :cond_e
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_f

    const-string p1, "Text"

    .line 160
    invoke-direct {p0, p1}, Lcom/narvii/video/SceneEditorFragment;->sendEditActionLog(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 161
    invoke-direct {p0, p1}, Lcom/narvii/video/SceneEditorFragment;->opAttachment(I)V

    goto :goto_d

    .line 164
    :cond_f
    :goto_8
    sget p1, Lcom/narvii/mediaeditor/R$id;->op_sticker:I

    if-nez v0, :cond_10

    goto :goto_9

    :cond_10
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_11

    const-string p1, "Sticker"

    .line 165
    invoke-direct {p0, p1}, Lcom/narvii/video/SceneEditorFragment;->sendEditActionLog(Ljava/lang/String;)V

    const/4 p1, 0x2

    .line 166
    invoke-direct {p0, p1}, Lcom/narvii/video/SceneEditorFragment;->opAttachment(I)V

    goto :goto_d

    .line 169
    :cond_11
    :goto_9
    sget p1, Lcom/narvii/mediaeditor/R$id;->op_crop:I

    if-nez v0, :cond_12

    goto :goto_a

    :cond_12
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_13

    const-string p1, "Crop"

    .line 170
    invoke-direct {p0, p1}, Lcom/narvii/video/SceneEditorFragment;->sendEditActionLog(Ljava/lang/String;)V

    .line 171
    invoke-direct {p0}, Lcom/narvii/video/SceneEditorFragment;->opCrop()V

    goto :goto_d

    .line 174
    :cond_13
    :goto_a
    sget p1, Lcom/narvii/mediaeditor/R$id;->option_add_video:I

    if-nez v0, :cond_14

    goto :goto_b

    :cond_14
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_15

    .line 175
    invoke-direct {p0}, Lcom/narvii/video/SceneEditorFragment;->opAddVideo()V

    goto :goto_d

    .line 178
    :cond_15
    :goto_b
    sget p1, Lcom/narvii/mediaeditor/R$id;->empty_view_option_add_video:I

    if-nez v0, :cond_16

    goto :goto_c

    :cond_16
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_17

    .line 179
    invoke-direct {p0}, Lcom/narvii/video/SceneEditorFragment;->opAddVideo()V

    goto :goto_d

    .line 182
    :cond_17
    :goto_c
    sget p1, Lcom/narvii/mediaeditor/R$id;->op_pip:I

    if-nez v0, :cond_18

    goto :goto_d

    :cond_18
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_19

    const-string p1, "Video"

    .line 183
    invoke-direct {p0, p1}, Lcom/narvii/video/SceneEditorFragment;->sendEditActionLog(Ljava/lang/String;)V

    .line 184
    invoke-direct {p0}, Lcom/narvii/video/SceneEditorFragment;->opPIP()V

    :cond_19
    :goto_d
    return-void
.end method

.method public onClipDeleted()V
    .locals 8

    .line 923
    sget v0, Lcom/narvii/mediaeditor/R$id;->cover_layer:I

    invoke-virtual {p0, v0}, Lcom/narvii/video/SceneEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "cover_layer"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 924
    sget v0, Lcom/narvii/mediaeditor/R$id;->clip_fast_switching_panel:I

    invoke-virtual {p0, v0}, Lcom/narvii/video/SceneEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/video/widget/ClipFastSwitchingPanel;

    const-string v2, "clip_fast_switching_panel"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 925
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getActiveVideoClip()Lcom/narvii/video/model/AVClipInfoPack;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 926
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v1

    invoke-interface {v1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getVideoClipInfoList()Ljava/util/ArrayList;

    move-result-object v1

    .line 927
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v0, v0, Lcom/narvii/video/model/BaseClipInfoPack;->indexInScene:I

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    if-le v2, v0, :cond_2

    .line 928
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 929
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    move-object v3, v1

    invoke-static/range {v2 .. v7}, Lcom/narvii/video/interfaces/IPreviewPlayer$DefaultImpls;->resetVideoClipList$default(Lcom/narvii/video/interfaces/IPreviewPlayer;Ljava/util/ArrayList;IIILjava/lang/Object;)Lcom/narvii/video/model/AVClipInfoPack;

    const/4 v0, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 930
    invoke-static {p0, v4, v0, v2, v3}, Lcom/narvii/video/ScrollingTimeLineFragment;->updateVideoTimeLineInfo$default(Lcom/narvii/video/ScrollingTimeLineFragment;ZIILjava/lang/Object;)V

    .line 931
    invoke-direct {p0}, Lcom/narvii/video/SceneEditorFragment;->checkSceneDuration()V

    .line 932
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 933
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->stop()V

    .line 934
    invoke-direct {p0, v4}, Lcom/narvii/video/SceneEditorFragment;->onEmptyStatusChanged(Z)V

    .line 936
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getTotalVisibleVideoDurationInMs()Lkotlin/Pair;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->adjustAllViceTrackRange(I)V

    .line 960
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/narvii/video/SceneEditorFragment;->updateAddClipButtonVisibility()V

    return-void
.end method

.method public onClipListReordered(Ljava/util/ArrayList;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "clipList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 968
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/narvii/video/interfaces/IPreviewPlayer$DefaultImpls;->resetVideoClipList$default(Lcom/narvii/video/interfaces/IPreviewPlayer;Ljava/util/ArrayList;IIILjava/lang/Object;)Lcom/narvii/video/model/AVClipInfoPack;

    .line 969
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->seekTimeLineTo(II)V

    const/4 p1, 0x1

    .line 970
    invoke-virtual {p0, p1, p2}, Lcom/narvii/video/ScrollingTimeLineFragment;->updateVideoTimeLineInfo(ZI)V

    return-void
.end method

.method public onClipSwitched(Lcom/narvii/video/model/AVClipInfoPack;)V
    .locals 4

    const-string v0, "newClip"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 888
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v0

    iget p1, p1, Lcom/narvii/video/model/BaseClipInfoPack;->indexInScene:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, p1, v1, v2, v3}, Lcom/narvii/video/interfaces/IPreviewPlayer$DefaultImpls;->setActiveVideoClip$default(Lcom/narvii/video/interfaces/IPreviewPlayer;IIILjava/lang/Object;)Lcom/narvii/video/model/AVClipInfoPack;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 534
    invoke-super {p0, p1}, Lcom/narvii/video/ScrollingTimeLineFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 535
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    .line 536
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    const-string v1, "playListMediaPicker"

    invoke-virtual {p1, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    .line 537
    instance-of v2, p1, Lcom/narvii/media/MediaPickerFragment;

    const-string v3, "mediaPickerFragment"

    if-eqz v2, :cond_0

    .line 538
    check-cast p1, Lcom/narvii/media/MediaPickerFragment;

    iput-object p1, p0, Lcom/narvii/video/SceneEditorFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    goto :goto_0

    .line 540
    :cond_0
    new-instance p1, Lcom/narvii/media/MediaPickerFragment;

    invoke-direct {p1}, Lcom/narvii/media/MediaPickerFragment;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/SceneEditorFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 541
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    iget-object v2, p0, Lcom/narvii/video/SceneEditorFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    if-eqz v2, :cond_3

    invoke-virtual {p1, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 543
    :goto_0
    iget-object p1, p0, Lcom/narvii/video/SceneEditorFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    if-eqz p1, :cond_2

    invoke-virtual {p1, p0}, Lcom/narvii/media/MediaPickerFragment;->addOnResultListener(Lcom/narvii/media/MediaPickerFragment$OnResultListener;)V

    .line 545
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    check-cast p1, Lcom/narvii/app/NVActivity;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/narvii/mediaeditor/R$drawable;->ic_actionbar_close:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/narvii/app/NVActivity;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.narvii.app.NVActivity"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 543
    :cond_2
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 541
    :cond_3
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v0

    .line 536
    :cond_5
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 553
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const p2, 0x104000a

    const/4 v0, 0x0

    .line 555
    invoke-interface {p1, v0, p2, v0, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    .line 556
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/narvii/mediaeditor/R$drawable;->ic_white_check:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object p1

    const/4 p2, 0x2

    .line 557
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 549
    sget p3, Lcom/narvii/mediaeditor/R$layout;->fragment_scene_editor:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 576
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroy()V

    .line 577
    iget-object v0, p0, Lcom/narvii/video/SceneEditorFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/narvii/media/MediaPickerFragment;->removeOnResultListener(Lcom/narvii/media/MediaPickerFragment$OnResultListener;)V

    :cond_0
    return-void

    :cond_1
    const-string v0, "mediaPickerFragment"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public onDestroyView()V
    .locals 4

    .line 1117
    invoke-super {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->onDestroyView()V

    .line 1118
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getInitSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1119
    invoke-virtual {p0}, Lcom/narvii/video/SceneEditorFragment;->_$_clearFindViewByIdCache()V

    return-void

    .line 1121
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->getFrameRetrieverManager()Lcom/narvii/video/services/FrameRetrieverManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/narvii/video/services/FrameRetrieverManager;->release$default(Lcom/narvii/video/services/FrameRetrieverManager;ZILjava/lang/Object;)V

    .line 1122
    invoke-virtual {p0}, Lcom/narvii/video/SceneEditorFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onOptionCropSelected()V
    .locals 3

    .line 905
    sget v0, Lcom/narvii/mediaeditor/R$id;->cover_layer:I

    invoke-virtual {p0, v0}, Lcom/narvii/video/SceneEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "cover_layer"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 906
    sget v0, Lcom/narvii/mediaeditor/R$id;->clip_fast_switching_panel:I

    invoke-virtual {p0, v0}, Lcom/narvii/video/SceneEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/video/widget/ClipFastSwitchingPanel;

    const-string v2, "clip_fast_switching_panel"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 907
    invoke-direct {p0}, Lcom/narvii/video/SceneEditorFragment;->opCrop()V

    return-void
.end method

.method public onOptionMusicSelected()V
    .locals 3

    .line 917
    sget v0, Lcom/narvii/mediaeditor/R$id;->cover_layer:I

    invoke-virtual {p0, v0}, Lcom/narvii/video/SceneEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "cover_layer"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 918
    sget v0, Lcom/narvii/mediaeditor/R$id;->clip_fast_switching_panel:I

    invoke-virtual {p0, v0}, Lcom/narvii/video/SceneEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/video/widget/ClipFastSwitchingPanel;

    const-string v2, "clip_fast_switching_panel"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 919
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getAudioClipInfoList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/narvii/video/SceneEditorFragment;->opMusic(Ljava/util/List;)V

    return-void
.end method

.method public onOptionSpeedSelected()V
    .locals 3

    .line 911
    sget v0, Lcom/narvii/mediaeditor/R$id;->cover_layer:I

    invoke-virtual {p0, v0}, Lcom/narvii/video/SceneEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "cover_layer"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 912
    sget v0, Lcom/narvii/mediaeditor/R$id;->clip_fast_switching_panel:I

    invoke-virtual {p0, v0}, Lcom/narvii/video/SceneEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/video/widget/ClipFastSwitchingPanel;

    const-string v2, "clip_fast_switching_panel"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 913
    invoke-direct {p0}, Lcom/narvii/video/SceneEditorFragment;->opSpeed()V

    return-void
.end method

.method public onOptionTrimSelected()V
    .locals 3

    .line 899
    sget v0, Lcom/narvii/mediaeditor/R$id;->cover_layer:I

    invoke-virtual {p0, v0}, Lcom/narvii/video/SceneEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "cover_layer"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 900
    sget v0, Lcom/narvii/mediaeditor/R$id;->clip_fast_switching_panel:I

    invoke-virtual {p0, v0}, Lcom/narvii/video/SceneEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/video/widget/ClipFastSwitchingPanel;

    const-string v2, "clip_fast_switching_panel"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 901
    invoke-direct {p0}, Lcom/narvii/video/SceneEditorFragment;->opTrim()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 12

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 581
    invoke-virtual {p0, v0, v1}, Lcom/narvii/video/SceneEditorFragment;->changeVideoPlaybackStatus(ZZ)V

    .line 582
    invoke-virtual {p0, v1}, Lcom/narvii/video/BaseMediaEditorFragment;->setAutoPlaying(Z)V

    .line 583
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x104000a

    if-eq v2, v3, :cond_0

    .line 656
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 585
    :cond_0
    iput-boolean v1, p0, Lcom/narvii/video/SceneEditorFragment;->hasFailedTask:Z

    .line 586
    iget-boolean p1, p0, Lcom/narvii/video/SceneEditorFragment;->previewTasksOnGoing:Z

    if-eqz p1, :cond_1

    return v0

    .line 590
    :cond_1
    sget-object p1, Lcom/narvii/logging/ActSemantic;->save:Lcom/narvii/logging/ActSemantic;

    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const-string v2, "SaveIcon"

    invoke-virtual {p1, v2}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 591
    iput-boolean v0, p0, Lcom/narvii/video/SceneEditorFragment;->previewTasksOnGoing:Z

    const/4 p1, 0x2

    const/4 v2, 0x0

    .line 592
    invoke-static {p0, v0, v1, p1, v2}, Lcom/narvii/video/BaseMediaEditorFragment;->changeVideoPlaybackStatus$default(Lcom/narvii/video/BaseMediaEditorFragment;ZZILjava/lang/Object;)V

    .line 593
    invoke-virtual {p0, v1}, Lcom/narvii/video/BaseMediaEditorFragment;->setAutoPlaying(Z)V

    .line 594
    invoke-direct {p0}, Lcom/narvii/video/SceneEditorFragment;->getProgress()Lcom/narvii/util/dialog/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 595
    iget-object v5, p0, Lcom/narvii/video/SceneEditorFragment;->scene:Lcom/narvii/scene/model/SceneInfo;

    const-string p1, "editorPackFactory"

    if-eqz v5, :cond_5

    .line 596
    iget-object v3, v5, Lcom/narvii/scene/model/SceneInfo;->inputFilePathList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 597
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v3

    invoke-interface {v3}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getVideoClipInfoList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/video/model/AVClipInfoPack;

    .line 598
    iget-object v6, v5, Lcom/narvii/scene/model/SceneInfo;->inputFilePathList:Ljava/util/List;

    iget-object v7, v4, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 599
    sget-object v6, Lcom/narvii/video/services/SceneMediaProcessor;->INSTANCE:Lcom/narvii/video/services/SceneMediaProcessor;

    const-string v7, "clip"

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v7, v4, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    const-string v8, "clip.inputPath"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Lcom/narvii/video/BaseMediaEditorFragment;->isImageInput(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {v6, v4, v7, v2}, Lcom/narvii/video/services/SceneMediaProcessor;->fillVideoMetadata(Lcom/narvii/video/model/AVClipInfoPack;ZLcom/narvii/video/model/StreamInfo;)V

    goto :goto_0

    .line 601
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v3

    invoke-interface {v3}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getVideoClipInfoList()Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, v5, Lcom/narvii/scene/model/SceneInfo;->videoClips:Ljava/util/ArrayList;

    .line 602
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v3

    invoke-interface {v3}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getAudioClipInfoList()Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, v5, Lcom/narvii/scene/model/SceneInfo;->audioClips:Ljava/util/ArrayList;

    .line 603
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v3

    invoke-interface {v3}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getCaptionList()Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, v5, Lcom/narvii/scene/model/SceneInfo;->captions:Ljava/util/ArrayList;

    .line 604
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v3

    invoke-interface {v3}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getStickerList()Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, v5, Lcom/narvii/scene/model/SceneInfo;->stickers:Ljava/util/ArrayList;

    .line 605
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v3

    invoke-interface {v3}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getPipVideoList()Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, v5, Lcom/narvii/scene/model/SceneInfo;->pipClips:Ljava/util/ArrayList;

    .line 606
    iget-object v3, p0, Lcom/narvii/video/SceneEditorFragment;->outputFolder:Ljava/io/File;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 608
    array-length v4, v3

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v4, :cond_3

    aget-object v7, v3, v6

    .line 609
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    const/high16 v3, -0x40800000    # -1.0f

    .line 612
    iput v3, v5, Lcom/narvii/scene/model/SceneInfo;->currentSceneVideoProgress:F

    .line 613
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v3

    invoke-interface {v3}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getVideoClipInfoList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v0

    if-eqz v3, :cond_5

    .line 614
    invoke-static {}, Lcom/narvii/app/NVApplication;->isBasedOnMeishe()Z

    move-result v3

    if-nez v3, :cond_5

    .line 615
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/video/services/IEditorPackFactory;

    .line 616
    sget-object v4, Lcom/narvii/video/services/SceneMediaProcessor;->INSTANCE:Lcom/narvii/video/services/SceneMediaProcessor;

    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getVideoManager()Lcom/narvii/video/services/VideoManager;

    move-result-object v6

    invoke-interface {v3}, Lcom/narvii/video/services/IEditorPackFactory;->getVideoGenerator()Lcom/narvii/video/interfaces/ISceneVideoGenerator;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/16 v10, 0x10

    const/4 v11, 0x0

    move-object v3, v4

    move-object v4, p0

    invoke-static/range {v3 .. v11}, Lcom/narvii/video/services/SceneMediaProcessor;->processScene$default(Lcom/narvii/video/services/SceneMediaProcessor;Lcom/narvii/app/NVContext;Lcom/narvii/scene/model/SceneInfo;Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/interfaces/ISceneVideoGenerator;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;ZILjava/lang/Object;)V

    goto :goto_2

    :cond_4
    const-string p1, "outputFolder"

    .line 606
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 620
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v3

    invoke-interface {v3}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getVideoClipInfoList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 621
    iput v1, p0, Lcom/narvii/video/SceneEditorFragment;->flyingTaskCount:I

    .line 622
    invoke-direct {p0, v1}, Lcom/narvii/video/SceneEditorFragment;->onMediaProcessTouchDown(Z)V

    goto :goto_3

    .line 624
    :cond_6
    iput v0, p0, Lcom/narvii/video/SceneEditorFragment;->flyingTaskCount:I

    .line 625
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/video/services/IEditorPackFactory;

    .line 627
    invoke-static {}, Lcom/narvii/app/NVApplication;->isBasedOnMeishe()Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/narvii/video/SceneEditorFragment;->scene:Lcom/narvii/scene/model/SceneInfo;

    if-eqz v3, :cond_8

    .line 628
    sget-object v1, Lcom/narvii/video/services/SceneMediaProcessor;->INSTANCE:Lcom/narvii/video/services/SceneMediaProcessor;

    if-eqz v3, :cond_7

    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lcom/narvii/video/SceneEditorFragment;->outputCoverImagePath:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/narvii/video/services/IEditorPackFactory;->getVideoGenerator()Lcom/narvii/video/interfaces/ISceneVideoGenerator;

    move-result-object p1

    new-instance v4, Lcom/narvii/video/SceneEditorFragment$onOptionsItemSelected$2;

    invoke-direct {v4, p0}, Lcom/narvii/video/SceneEditorFragment$onOptionsItemSelected$2;-><init>(Lcom/narvii/video/SceneEditorFragment;)V

    invoke-virtual {v1, v3, v2, p1, v4}, Lcom/narvii/video/services/SceneMediaProcessor;->getSceneCoverImage(Lcom/narvii/scene/model/SceneInfo;Ljava/io/File;Lcom/narvii/video/interfaces/ISceneVideoGenerator;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;)V

    goto :goto_3

    :cond_7
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v2

    .line 640
    :cond_8
    sget-object v5, Lcom/narvii/video/services/SceneMediaProcessor;->INSTANCE:Lcom/narvii/video/services/SceneMediaProcessor;

    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v2

    invoke-interface {v2}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getVideoClipInfoList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "previewPlayer.getVideoClipInfoList()[0]"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v6, v1

    check-cast v6, Lcom/narvii/video/model/AVClipInfoPack;

    new-instance v7, Ljava/io/File;

    iget-object v1, p0, Lcom/narvii/video/SceneEditorFragment;->outputCoverImagePath:Ljava/lang/String;

    invoke-direct {v7, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getVideoManager()Lcom/narvii/video/services/VideoManager;

    move-result-object v8

    invoke-interface {p1}, Lcom/narvii/video/services/IEditorPackFactory;->getVideoGenerator()Lcom/narvii/video/interfaces/ISceneVideoGenerator;

    move-result-object v9

    new-instance v10, Lcom/narvii/video/SceneEditorFragment$onOptionsItemSelected$3;

    invoke-direct {v10, p0}, Lcom/narvii/video/SceneEditorFragment$onOptionsItemSelected$3;-><init>(Lcom/narvii/video/SceneEditorFragment;)V

    invoke-virtual/range {v5 .. v10}, Lcom/narvii/video/services/SceneMediaProcessor;->getSceneCoverImage(Lcom/narvii/video/model/AVClipInfoPack;Ljava/io/File;Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/interfaces/ISceneVideoGenerator;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;)Lffmpeg/base/MediaEditingConfig;

    :goto_3
    return v0
.end method

.method public onPause()V
    .locals 1

    .line 568
    invoke-super {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->onPause()V

    .line 569
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getInitSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 572
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->getFrameRetrieverManager()Lcom/narvii/video/services/FrameRetrieverManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/video/services/FrameRetrieverManager;->abortFlyingFrameRetrievers()V

    return-void
.end method

.method public onPickMediaResult(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 10
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

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 1194
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/narvii/model/Media;

    invoke-virtual {v3}, Lcom/narvii/model/Media;->isVideo()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    move-object v2, v0

    :goto_0
    move-object v1, v2

    check-cast v1, Lcom/narvii/model/Media;

    goto :goto_1

    :cond_2
    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_3

    .line 1196
    new-instance v2, Lcom/narvii/scene/helper/SceneSpHelper;

    invoke-direct {v2, p0}, Lcom/narvii/scene/helper/SceneSpHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iget-object v3, v1, Lcom/narvii/model/Media;->fileName:Ljava/lang/String;

    const-string v4, "it.fileName"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v1, v3}, Lcom/narvii/scene/helper/SceneSpHelper;->saveRecentVideo(Lcom/narvii/model/Media;Ljava/lang/String;)V

    :cond_3
    if-eqz p1, :cond_4

    .line 1199
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/Media;

    goto :goto_2

    :cond_4
    move-object v1, v0

    :goto_2
    if-eqz v1, :cond_b

    .line 1200
    iget-object v2, v1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    invoke-static {v2}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    if-eqz p2, :cond_b

    .line 1202
    iget v2, v1, Lcom/narvii/model/Media;->type:I

    const/16 v3, 0x67

    const-string v4, "intermediateFolder"

    if-ne v2, v3, :cond_6

    .line 715
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/narvii/video/SceneEditorFragment;->intermediateFolder:Ljava/io/File;

    if-eqz v2, :cond_5

    :goto_3
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v1, p2, p1}, Lcom/narvii/pre_editing/MediaPreEditingActivityKt;->startPreEditActivity(Lcom/narvii/app/NVFragment;Lcom/narvii/model/Media;Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_5

    :cond_5
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_6
    const/16 v3, 0x7b

    const-string v5, ""

    const-string v6, "type"

    if-ne v2, v3, :cond_9

    .line 1204
    iget-wide v2, v1, Lcom/narvii/model/Media;->duration:J

    const v7, 0xee47

    int-to-long v7, v7

    cmp-long v9, v2, v7

    if-lez v9, :cond_8

    .line 715
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/narvii/video/SceneEditorFragment;->intermediateFolder:Ljava/io/File;

    if-eqz v2, :cond_7

    goto :goto_3

    :cond_7
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 717
    :cond_8
    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    goto :goto_4

    :cond_9
    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    goto :goto_4

    :cond_a
    move-object v0, v5

    .line 718
    :goto_4
    invoke-direct {p0, p1, v0, p2}, Lcom/narvii/video/SceneEditorFragment;->onPickResult(Ljava/util/List;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_b
    :goto_5
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 561
    invoke-super {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->onResume()V

    .line 562
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getInitSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 563
    invoke-virtual {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->getMainTimeLineComponent()Lcom/narvii/video/widget/MediaTimeLineComponent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/video/widget/MediaTimeLineComponent;->refreshTimeLine()V

    :cond_0
    return-void
.end method

.method public onTimeLineClicked(Lcom/narvii/video/interfaces/ITimelineClip;)V
    .locals 5

    const-string v0, "clipInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1154
    invoke-super {p0, p1}, Lcom/narvii/video/BaseMediaEditorFragment;->onTimeLineClicked(Lcom/narvii/video/interfaces/ITimelineClip;)V

    .line 1155
    instance-of v0, p1, Lcom/narvii/video/model/AVClipInfoPack;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/narvii/video/SceneEditorFragment;->scene:Lcom/narvii/scene/model/SceneInfo;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/scene/model/SceneInfo;->isGeneratedFromTemplate()Z

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1158
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v0

    check-cast p1, Lcom/narvii/video/model/AVClipInfoPack;

    iget p1, p1, Lcom/narvii/video/model/BaseClipInfoPack;->indexInScene:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, p1, v4, v3, v2}, Lcom/narvii/video/interfaces/IPreviewPlayer$DefaultImpls;->setActiveVideoClip$default(Lcom/narvii/video/interfaces/IPreviewPlayer;IIILjava/lang/Object;)Lcom/narvii/video/model/AVClipInfoPack;

    .line 1159
    invoke-static {p0, v1, v4, v3, v2}, Lcom/narvii/video/BaseMediaEditorFragment;->changeVideoPlaybackStatus$default(Lcom/narvii/video/BaseMediaEditorFragment;ZZILjava/lang/Object;)V

    .line 1160
    invoke-virtual {p0, v4}, Lcom/narvii/video/BaseMediaEditorFragment;->setAutoPlaying(Z)V

    .line 1161
    sget p1, Lcom/narvii/mediaeditor/R$id;->cover_layer:I

    invoke-virtual {p0, p1}, Lcom/narvii/video/SceneEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "cover_layer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1162
    sget p1, Lcom/narvii/mediaeditor/R$id;->clip_fast_switching_panel:I

    invoke-virtual {p0, p1}, Lcom/narvii/video/SceneEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/video/widget/ClipFastSwitchingPanel;

    const-string v0, "clip_fast_switching_panel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1163
    sget p1, Lcom/narvii/mediaeditor/R$id;->clip_fast_switching_panel:I

    invoke-virtual {p0, p1}, Lcom/narvii/video/SceneEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/video/widget/ClipFastSwitchingPanel;

    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getVideoClipInfoList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getActiveVideoClip()Lcom/narvii/video/model/AVClipInfoPack;

    move-result-object v1

    if-eqz v1, :cond_1

    iget v4, v1, Lcom/narvii/video/model/BaseClipInfoPack;->indexInScene:I

    .line 1164
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->getFrameRetrieverManager()Lcom/narvii/video/services/FrameRetrieverManager;

    move-result-object v1

    .line 1163
    invoke-virtual {p1, v0, v4, v1}, Lcom/narvii/video/widget/ClipFastSwitchingPanel;->setClipSet(Ljava/util/ArrayList;ILcom/narvii/video/services/FrameRetrieverManager;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onVolumeChanged(F)V
    .locals 2

    .line 892
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getActiveVideoClip()Lcom/narvii/video/model/AVClipInfoPack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 893
    iput p1, v0, Lcom/narvii/video/model/AVClipInfoPack;->trackVolume:F

    .line 894
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object p1

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->setVolume(Lcom/narvii/video/model/AVClipInfoPack;Z)V

    :cond_0
    return-void
.end method
