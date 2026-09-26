.class public final Lcom/narvii/video/SceneEditorFragment;
.super Lcom/narvii/video/ScrollingTimeLineFragment;
.source "SourceFile"

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
    value = "SMAP\nSceneEditorFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SceneEditorFragment.kt\ncom/narvii/video/SceneEditorFragment\n+ 2 MediaPreEditingActivity.kt\ncom/narvii/pre_editing/MediaPreEditingActivityKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1199:1\n320#2,2:1200\n322#2,19:1203\n343#2,8:1222\n1#3:1202\n*S KotlinDebug\n*F\n+ 1 SceneEditorFragment.kt\ncom/narvii/video/SceneEditorFragment\n*L\n720#1:1200,2\n720#1:1203,19\n1116#1:1222,8\n720#1:1202\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/reflect/KProperty<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/narvii/video/SceneEditorFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final MAX_CLIP_COUNT_PER_TRACK:I = 0x1e

.field public static final REQUEST_CODE_BASIC_CROPPING:I = 0x3039

.field public static final REQUEST_CODE_EDIT_SPEED:I = 0x115c

.field public static final REQUEST_CODE_SPLIT:I = 0xd05

.field public static final REQUEST_CODE_VIDEO_PIP:I = 0x303a

.field public static final REQUEST_SELECT_PIP_VIDEO:I = 0x303b


# instance fields
.field private addClipButton:Landroid/widget/ImageView;

.field private final binding$delegate:Lkotlin/properties/d;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private flyingTaskCount:I

.field private final fragmentRegister$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

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

    .annotation build Lorg/jetbrains/annotations/NotNull;
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

    .annotation build Lorg/jetbrains/annotations/NotNull;
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

    .annotation build Lorg/jetbrains/annotations/NotNull;
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

    .annotation build Lorg/jetbrains/annotations/NotNull;
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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private outputCoverImagePath:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private outputFolder:Ljava/io/File;

.field private outputPath:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private outputPreviewVideoPath:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private photoManager:Lcom/narvii/photos/PhotoManager;

.field private previewTasksOnGoing:Z

.field private previewVideoGeneratingTask:Lg7/d;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final progress$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private scene:Lcom/narvii/scene/model/SceneInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    new-array v0, v0, [Lkotlin/reflect/KProperty;

    .line 4
    .line 5
    new-instance v1, Lkotlin/jvm/internal/g0;

    .line 6
    .line 7
    const-string v2, "binding"

    .line 8
    .line 9
    const-string v3, "getBinding()Lcom/narvii/mediaeditor/databinding/FragmentSceneEditorBinding;"

    .line 10
    .line 11
    const-class v4, Lcom/narvii/video/SceneEditorFragment;

    .line 12
    const/4 v5, 0x0

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/g0;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 16
    .line 17
    .line 18
    invoke-static {v1}, Lkotlin/jvm/internal/q0;->g(Lkotlin/jvm/internal/f0;)Lkotlin/reflect/KProperty1;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    aput-object v1, v0, v5

    .line 22
    .line 23
    sput-object v0, Lcom/narvii/video/SceneEditorFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 24
    .line 25
    new-instance v0, Lcom/narvii/video/SceneEditorFragment$Companion;

    .line 26
    const/4 v1, 0x0

    .line 27
    .line 28
    .line 29
    invoke-direct {v0, v1}, Lcom/narvii/video/SceneEditorFragment$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    .line 30
    .line 31
    sput-object v0, Lcom/narvii/video/SceneEditorFragment;->Companion:Lcom/narvii/video/SceneEditorFragment$Companion;

    .line 32
    return-void
.end method

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
    iput-object v0, p0, Lcom/narvii/video/SceneEditorFragment;->orgVideoClipList:Ljava/util/ArrayList;

    .line 11
    .line 12
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    iput-object v0, p0, Lcom/narvii/video/SceneEditorFragment;->orgAudioClipList:Ljava/util/ArrayList;

    .line 18
    .line 19
    new-instance v0, Ljava/util/ArrayList;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    iput-object v0, p0, Lcom/narvii/video/SceneEditorFragment;->orgCaptionList:Ljava/util/ArrayList;

    .line 25
    .line 26
    new-instance v0, Ljava/util/ArrayList;

    .line 27
    .line 28
    .line 29
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    iput-object v0, p0, Lcom/narvii/video/SceneEditorFragment;->orgStickerList:Ljava/util/ArrayList;

    .line 32
    .line 33
    new-instance v0, Ljava/util/ArrayList;

    .line 34
    .line 35
    .line 36
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .line 38
    iput-object v0, p0, Lcom/narvii/video/SceneEditorFragment;->orgPipList:Ljava/util/ArrayList;

    .line 39
    .line 40
    new-instance v0, Lcom/narvii/video/SceneEditorFragment$progress$2;

    .line 41
    .line 42
    .line 43
    invoke-direct {v0, p0}, Lcom/narvii/video/SceneEditorFragment$progress$2;-><init>(Lcom/narvii/video/SceneEditorFragment;)V

    .line 44
    .line 45
    .line 46
    invoke-static {v0}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 47
    move-result-object v0

    .line 48
    .line 49
    iput-object v0, p0, Lcom/narvii/video/SceneEditorFragment;->progress$delegate:Lw7/m;

    .line 50
    .line 51
    new-instance v0, Lcom/narvii/video/SceneEditorFragment$fragmentRegister$2;

    .line 52
    .line 53
    .line 54
    invoke-direct {v0, p0}, Lcom/narvii/video/SceneEditorFragment$fragmentRegister$2;-><init>(Lcom/narvii/video/SceneEditorFragment;)V

    .line 55
    .line 56
    .line 57
    invoke-static {v0}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 58
    move-result-object v0

    .line 59
    .line 60
    iput-object v0, p0, Lcom/narvii/video/SceneEditorFragment;->fragmentRegister$delegate:Lw7/m;

    .line 61
    .line 62
    sget-object v0, Lcom/narvii/video/SceneEditorFragment$binding$2;->INSTANCE:Lcom/narvii/video/SceneEditorFragment$binding$2;

    .line 63
    .line 64
    .line 65
    invoke-static {p0, v0}, Lcom/narvii/util/FragmentExtensionsKt;->viewBinding(Landroidx/fragment/app/Fragment;Le8/l;)Lkotlin/properties/d;

    .line 66
    move-result-object v0

    .line 67
    .line 68
    iput-object v0, p0, Lcom/narvii/video/SceneEditorFragment;->binding$delegate:Lkotlin/properties/d;

    .line 69
    return-void
.end method

.method public static synthetic A(Lcom/narvii/video/SceneEditorFragment;II)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/video/SceneEditorFragment;->onActivityResult$lambda$27$lambda$26(Lcom/narvii/video/SceneEditorFragment;II)V

    return-void
.end method

.method public static synthetic B(Lcom/narvii/video/SceneEditorFragment;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lcom/narvii/video/SceneEditorFragment;->onAVClipsPrepared$lambda$25$lambda$24(Lcom/narvii/video/SceneEditorFragment;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic C(Lcom/narvii/video/SceneEditorFragment;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p6}, Lcom/narvii/video/SceneEditorFragment;->onAVClipsPrepared$lambda$25$lambda$24$lambda$23(Lcom/narvii/video/SceneEditorFragment;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic D(Lcom/narvii/video/SceneEditorFragment;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/video/SceneEditorFragment;->onPickResult$lambda$19$lambda$18$lambda$17(Lcom/narvii/video/SceneEditorFragment;I)V

    return-void
.end method

.method public static synthetic E(Lcom/narvii/video/SceneEditorFragment;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/video/SceneEditorFragment;->onActivityResult$lambda$29(Lcom/narvii/video/SceneEditorFragment;I)V

    return-void
.end method

.method public static synthetic F(Lcom/narvii/video/SceneEditorFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/video/SceneEditorFragment;->doExit$lambda$5(Lcom/narvii/video/SceneEditorFragment;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic G(Lcom/narvii/video/SceneEditorFragment;Ljava/util/ArrayList;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/video/SceneEditorFragment;->onPickResult$lambda$19(Lcom/narvii/video/SceneEditorFragment;Ljava/util/ArrayList;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic H(Lcom/narvii/video/SceneEditorFragment;Ljava/util/ArrayList;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/video/SceneEditorFragment;->onPickResult$lambda$19$lambda$18(Lcom/narvii/video/SceneEditorFragment;Ljava/util/ArrayList;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic I(Lcom/narvii/video/SceneEditorFragment;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p6}, Lcom/narvii/video/SceneEditorFragment;->onAVClipsPrepared$lambda$25(Lcom/narvii/video/SceneEditorFragment;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic J(Lcom/narvii/video/SceneEditorFragment;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/narvii/video/SceneEditorFragment;->onActivityResult$lambda$28(Lcom/narvii/video/SceneEditorFragment;)V

    return-void
.end method

.method public static final synthetic access$getFlyingTaskCount$p(Lcom/narvii/video/SceneEditorFragment;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lcom/narvii/video/SceneEditorFragment;->flyingTaskCount:I

    .line 3
    return p0
.end method

.method public static final synthetic access$getPreviewVideoGeneratingTask$p(Lcom/narvii/video/SceneEditorFragment;)Lg7/d;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/video/SceneEditorFragment;->previewVideoGeneratingTask:Lg7/d;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getProgress(Lcom/narvii/video/SceneEditorFragment;)Lcom/narvii/util/dialog/ProgressDialog;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/video/SceneEditorFragment;->getProgress()Lcom/narvii/util/dialog/ProgressDialog;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$onMediaProcessTouchDown(Lcom/narvii/video/SceneEditorFragment;Z)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/video/SceneEditorFragment;->onMediaProcessTouchDown(Z)V

    .line 4
    return-void
.end method

.method public static final synthetic access$setFlyingTaskCount$p(Lcom/narvii/video/SceneEditorFragment;I)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/video/SceneEditorFragment;->flyingTaskCount:I

    .line 3
    return-void
.end method

.method private final checkSceneDuration()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getTotalVisibleVideoDurationInMs()Lw7/u;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lw7/u;->c()Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    check-cast v0, Ljava/lang/Number;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 14
    move-result v0

    .line 15
    .line 16
    .line 17
    invoke-direct {p0}, Lcom/narvii/video/SceneEditorFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentSceneEditorBinding;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    iget-object v1, v1, Lcom/narvii/mediaeditor/databinding/FragmentSceneEditorBinding;->sceneInvalidHint:Landroid/widget/TextView;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 24
    move-result-object v2

    .line 25
    .line 26
    .line 27
    invoke-interface {v2}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getVideoClipInfoList()Ljava/util/ArrayList;

    .line 28
    move-result-object v2

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 32
    move-result v2

    .line 33
    .line 34
    if-nez v2, :cond_1

    .line 35
    .line 36
    const/16 v2, 0xbb8

    .line 37
    .line 38
    if-gt v2, v0, :cond_0

    .line 39
    .line 40
    .line 41
    invoke-static {}, Lcom/narvii/scene/SceneConstant;->getMaxSceneLengthMs()I

    .line 42
    move-result v2

    .line 43
    .line 44
    if-gt v0, v2, :cond_0

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    const/4 v0, 0x0

    .line 47
    goto :goto_1

    .line 48
    .line 49
    :cond_1
    :goto_0
    const/16 v0, 0x8

    .line 50
    .line 51
    .line 52
    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 53
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

    .line 1
    .line 2
    move-object/from16 v8, p0

    .line 3
    .line 4
    move-object/from16 v9, p2

    .line 5
    .line 6
    .line 7
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 13
    .line 14
    .line 15
    invoke-interface {v9, v0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 16
    return-void

    .line 17
    .line 18
    :cond_0
    new-instance v10, Lkotlin/jvm/internal/n0;

    .line 19
    .line 20
    .line 21
    invoke-direct {v10}, Lkotlin/jvm/internal/n0;-><init>()V

    .line 22
    .line 23
    new-instance v11, Lkotlin/jvm/internal/k0;

    .line 24
    .line 25
    .line 26
    invoke-direct {v11}, Lkotlin/jvm/internal/k0;-><init>()V

    .line 27
    .line 28
    new-instance v12, Ljava/util/ArrayList;

    .line 29
    .line 30
    .line 31
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 35
    move-result-object v13

    .line 36
    .line 37
    .line 38
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    move-result v0

    .line 40
    .line 41
    if-eqz v0, :cond_5

    .line 42
    .line 43
    .line 44
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    move-result-object v0

    .line 46
    move-object v14, v0

    .line 47
    .line 48
    check-cast v14, Lcom/narvii/video/model/AVClipInfoPack;

    .line 49
    .line 50
    iget-object v0, v14, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    invoke-static {v0}, Lcom/narvii/util/Utils;->isGifInData(Ljava/lang/String;)Z

    .line 54
    move-result v0

    .line 55
    .line 56
    if-eqz v0, :cond_4

    .line 57
    .line 58
    new-instance v15, Ljava/io/File;

    .line 59
    .line 60
    iget-object v0, v8, Lcom/narvii/video/SceneEditorFragment;->intermediateFolder:Ljava/io/File;

    .line 61
    .line 62
    if-nez v0, :cond_1

    .line 63
    .line 64
    const-string v0, "intermediateFolder"

    .line 65
    .line 66
    .line 67
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 68
    const/4 v0, 0x0

    .line 69
    .line 70
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    const/4 v7, 0x1

    .line 75
    .line 76
    .line 77
    invoke-virtual {v14, v7}, Lcom/narvii/video/model/AVClipInfoPack;->getClipInputName(Z)Ljava/lang/String;

    .line 78
    move-result-object v2

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    const-string v2, ".mp4"

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    move-result-object v1

    .line 91
    .line 92
    .line 93
    invoke-direct {v15, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    .line 97
    move-result v0

    .line 98
    .line 99
    if-eqz v0, :cond_2

    .line 100
    .line 101
    .line 102
    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 103
    move-result-object v0

    .line 104
    .line 105
    iput-object v0, v14, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    .line 106
    goto :goto_0

    .line 107
    .line 108
    .line 109
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getVideoManager()Lcom/narvii/video/services/VideoManager;

    .line 110
    move-result-object v6

    .line 111
    .line 112
    new-instance v5, Lcom/narvii/video/SceneEditorFragment$convertImageToVideo$task$1;

    .line 113
    move-object v0, v5

    .line 114
    move-object v1, v10

    .line 115
    .line 116
    move-object/from16 v2, p0

    .line 117
    move-object v3, v15

    .line 118
    move-object v4, v11

    .line 119
    .line 120
    move-object/from16 v16, v11

    .line 121
    move-object v11, v5

    .line 122
    move-object v5, v12

    .line 123
    .line 124
    move-object/from16 p1, v13

    .line 125
    move-object v13, v6

    .line 126
    .line 127
    move-object/from16 v6, p2

    .line 128
    .line 129
    move/from16 v17, v7

    .line 130
    move-object v7, v14

    .line 131
    .line 132
    .line 133
    invoke-direct/range {v0 .. v7}, Lcom/narvii/video/SceneEditorFragment$convertImageToVideo$task$1;-><init>(Lkotlin/jvm/internal/n0;Lcom/narvii/video/SceneEditorFragment;Ljava/io/File;Lkotlin/jvm/internal/k0;Ljava/util/ArrayList;Lcom/narvii/util/Callback;Lcom/narvii/video/model/AVClipInfoPack;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v13, v14, v15, v11}, Lcom/narvii/video/services/VideoManager;->convertImg2Video(Lcom/narvii/video/model/AVClipInfoPack;Ljava/io/File;Lcom/narvii/video/interfaces/IVideoServiceCallback;)Lg7/d;

    .line 137
    move-result-object v0

    .line 138
    .line 139
    if-eqz v0, :cond_3

    .line 140
    .line 141
    iget v1, v10, Lkotlin/jvm/internal/n0;->element:I

    .line 142
    .line 143
    add-int/lit8 v1, v1, 0x1

    .line 144
    .line 145
    iput v1, v10, Lkotlin/jvm/internal/n0;->element:I

    .line 146
    .line 147
    .line 148
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    .line 150
    :cond_3
    :goto_1
    move-object/from16 v13, p1

    .line 151
    .line 152
    move-object/from16 v11, v16

    .line 153
    goto :goto_0

    .line 154
    .line 155
    :cond_4
    move-object/from16 v16, v11

    .line 156
    .line 157
    move-object/from16 p1, v13

    .line 158
    .line 159
    iget-object v0, v14, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    .line 160
    .line 161
    const-string v1, "inputPath"

    .line 162
    .line 163
    .line 164
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v8, v0}, Lcom/narvii/video/BaseMediaEditorFragment;->isImageInput(Ljava/lang/String;)Z

    .line 168
    move-result v0

    .line 169
    .line 170
    if-eqz v0, :cond_3

    .line 171
    .line 172
    const/16 v0, 0x1388

    .line 173
    .line 174
    iput v0, v14, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    .line 175
    .line 176
    iput v0, v14, Lcom/narvii/video/model/BaseClipInfoPack;->orgDurationInMs:I

    .line 177
    goto :goto_1

    .line 178
    .line 179
    :cond_5
    iget v0, v10, Lkotlin/jvm/internal/n0;->element:I

    .line 180
    .line 181
    if-nez v0, :cond_6

    .line 182
    .line 183
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 184
    .line 185
    .line 186
    invoke-interface {v9, v0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 187
    goto :goto_2

    .line 188
    .line 189
    .line 190
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/narvii/video/SceneEditorFragment;->getProgress()Lcom/narvii/util/dialog/ProgressDialog;

    .line 191
    move-result-object v0

    .line 192
    .line 193
    .line 194
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 195
    :goto_2
    return-void
.end method

.method private final doExit()V
    .locals 10

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/SceneEditorFragment;->scene:Lcom/narvii/scene/model/SceneInfo;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_10

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/video/SceneEditorFragment;->orgVideoClipList:Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 11
    move-result v0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 15
    move-result-object v2

    .line 16
    .line 17
    .line 18
    invoke-interface {v2}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getVideoClipInfoList()Ljava/util/ArrayList;

    .line 19
    move-result-object v2

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 23
    move-result v2

    .line 24
    const/4 v3, 0x1

    .line 25
    .line 26
    if-ne v0, v2, :cond_0

    .line 27
    .line 28
    iget-object v0, p0, Lcom/narvii/video/SceneEditorFragment;->orgVideoClipList:Ljava/util/ArrayList;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 32
    move-result v0

    .line 33
    move v2, v1

    .line 34
    .line 35
    :goto_0
    if-ge v2, v0, :cond_2

    .line 36
    .line 37
    iget-object v4, p0, Lcom/narvii/video/SceneEditorFragment;->orgVideoClipList:Ljava/util/ArrayList;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 41
    move-result-object v4

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 45
    move-result-object v5

    .line 46
    .line 47
    .line 48
    invoke-interface {v5}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getVideoClipInfoList()Ljava/util/ArrayList;

    .line 49
    move-result-object v5

    .line 50
    .line 51
    .line 52
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 53
    move-result-object v5

    .line 54
    .line 55
    .line 56
    invoke-static {v4, v5}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 57
    move-result v4

    .line 58
    .line 59
    if-nez v4, :cond_1

    .line 60
    :cond_0
    move v0, v1

    .line 61
    goto :goto_1

    .line 62
    .line 63
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 64
    goto :goto_0

    .line 65
    :cond_2
    move v0, v3

    .line 66
    .line 67
    :goto_1
    iget-object v2, p0, Lcom/narvii/video/SceneEditorFragment;->orgAudioClipList:Ljava/util/ArrayList;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 71
    move-result v2

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 75
    move-result-object v4

    .line 76
    .line 77
    .line 78
    invoke-interface {v4}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getAudioClipInfoList()Ljava/util/ArrayList;

    .line 79
    move-result-object v4

    .line 80
    .line 81
    .line 82
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 83
    move-result v4

    .line 84
    .line 85
    if-ne v2, v4, :cond_3

    .line 86
    .line 87
    iget-object v2, p0, Lcom/narvii/video/SceneEditorFragment;->orgAudioClipList:Ljava/util/ArrayList;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 91
    move-result v2

    .line 92
    move v4, v1

    .line 93
    .line 94
    :goto_2
    if-ge v4, v2, :cond_5

    .line 95
    .line 96
    iget-object v5, p0, Lcom/narvii/video/SceneEditorFragment;->orgAudioClipList:Ljava/util/ArrayList;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 100
    move-result-object v5

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 104
    move-result-object v6

    .line 105
    .line 106
    .line 107
    invoke-interface {v6}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getAudioClipInfoList()Ljava/util/ArrayList;

    .line 108
    move-result-object v6

    .line 109
    .line 110
    .line 111
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 112
    move-result-object v6

    .line 113
    .line 114
    .line 115
    invoke-static {v5, v6}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 116
    move-result v5

    .line 117
    .line 118
    if-nez v5, :cond_4

    .line 119
    :cond_3
    move v2, v1

    .line 120
    goto :goto_3

    .line 121
    .line 122
    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 123
    goto :goto_2

    .line 124
    :cond_5
    move v2, v3

    .line 125
    .line 126
    :goto_3
    iget-object v4, p0, Lcom/narvii/video/SceneEditorFragment;->orgCaptionList:Ljava/util/ArrayList;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 130
    move-result v4

    .line 131
    .line 132
    .line 133
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 134
    move-result-object v5

    .line 135
    .line 136
    .line 137
    invoke-interface {v5}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getCaptionList()Ljava/util/ArrayList;

    .line 138
    move-result-object v5

    .line 139
    .line 140
    .line 141
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 142
    move-result v5

    .line 143
    .line 144
    if-ne v4, v5, :cond_6

    .line 145
    .line 146
    iget-object v4, p0, Lcom/narvii/video/SceneEditorFragment;->orgCaptionList:Ljava/util/ArrayList;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 150
    move-result v4

    .line 151
    move v5, v1

    .line 152
    .line 153
    :goto_4
    if-ge v5, v4, :cond_8

    .line 154
    .line 155
    iget-object v6, p0, Lcom/narvii/video/SceneEditorFragment;->orgCaptionList:Ljava/util/ArrayList;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 159
    move-result-object v6

    .line 160
    .line 161
    .line 162
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 163
    move-result-object v7

    .line 164
    .line 165
    .line 166
    invoke-interface {v7}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getCaptionList()Ljava/util/ArrayList;

    .line 167
    move-result-object v7

    .line 168
    .line 169
    .line 170
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 171
    move-result-object v7

    .line 172
    .line 173
    .line 174
    invoke-static {v6, v7}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 175
    move-result v6

    .line 176
    .line 177
    if-nez v6, :cond_7

    .line 178
    :cond_6
    move v4, v1

    .line 179
    goto :goto_5

    .line 180
    .line 181
    :cond_7
    add-int/lit8 v5, v5, 0x1

    .line 182
    goto :goto_4

    .line 183
    :cond_8
    move v4, v3

    .line 184
    .line 185
    :goto_5
    iget-object v5, p0, Lcom/narvii/video/SceneEditorFragment;->orgStickerList:Ljava/util/ArrayList;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 189
    move-result v5

    .line 190
    .line 191
    .line 192
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 193
    move-result-object v6

    .line 194
    .line 195
    .line 196
    invoke-interface {v6}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getStickerList()Ljava/util/ArrayList;

    .line 197
    move-result-object v6

    .line 198
    .line 199
    .line 200
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 201
    move-result v6

    .line 202
    .line 203
    if-ne v5, v6, :cond_9

    .line 204
    .line 205
    iget-object v5, p0, Lcom/narvii/video/SceneEditorFragment;->orgStickerList:Ljava/util/ArrayList;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 209
    move-result v5

    .line 210
    move v6, v1

    .line 211
    .line 212
    :goto_6
    if-ge v6, v5, :cond_b

    .line 213
    .line 214
    iget-object v7, p0, Lcom/narvii/video/SceneEditorFragment;->orgStickerList:Ljava/util/ArrayList;

    .line 215
    .line 216
    .line 217
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 218
    move-result-object v7

    .line 219
    .line 220
    .line 221
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 222
    move-result-object v8

    .line 223
    .line 224
    .line 225
    invoke-interface {v8}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getStickerList()Ljava/util/ArrayList;

    .line 226
    move-result-object v8

    .line 227
    .line 228
    .line 229
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 230
    move-result-object v8

    .line 231
    .line 232
    .line 233
    invoke-static {v7, v8}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 234
    move-result v7

    .line 235
    .line 236
    if-nez v7, :cond_a

    .line 237
    :cond_9
    move v5, v1

    .line 238
    goto :goto_7

    .line 239
    .line 240
    :cond_a
    add-int/lit8 v6, v6, 0x1

    .line 241
    goto :goto_6

    .line 242
    :cond_b
    move v5, v3

    .line 243
    .line 244
    :goto_7
    iget-object v6, p0, Lcom/narvii/video/SceneEditorFragment;->orgPipList:Ljava/util/ArrayList;

    .line 245
    .line 246
    .line 247
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 248
    move-result v6

    .line 249
    .line 250
    .line 251
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 252
    move-result-object v7

    .line 253
    .line 254
    .line 255
    invoke-interface {v7}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getPipVideoList()Ljava/util/ArrayList;

    .line 256
    move-result-object v7

    .line 257
    .line 258
    .line 259
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 260
    move-result v7

    .line 261
    .line 262
    if-ne v6, v7, :cond_c

    .line 263
    .line 264
    iget-object v6, p0, Lcom/narvii/video/SceneEditorFragment;->orgPipList:Ljava/util/ArrayList;

    .line 265
    .line 266
    .line 267
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 268
    move-result v6

    .line 269
    move v7, v1

    .line 270
    .line 271
    :goto_8
    if-ge v7, v6, :cond_e

    .line 272
    .line 273
    iget-object v8, p0, Lcom/narvii/video/SceneEditorFragment;->orgPipList:Ljava/util/ArrayList;

    .line 274
    .line 275
    .line 276
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 277
    move-result-object v8

    .line 278
    .line 279
    .line 280
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 281
    move-result-object v9

    .line 282
    .line 283
    .line 284
    invoke-interface {v9}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getPipVideoList()Ljava/util/ArrayList;

    .line 285
    move-result-object v9

    .line 286
    .line 287
    .line 288
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 289
    move-result-object v9

    .line 290
    .line 291
    .line 292
    invoke-static {v8, v9}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 293
    move-result v8

    .line 294
    .line 295
    if-nez v8, :cond_d

    .line 296
    :cond_c
    move v6, v1

    .line 297
    goto :goto_9

    .line 298
    .line 299
    :cond_d
    add-int/lit8 v7, v7, 0x1

    .line 300
    goto :goto_8

    .line 301
    :cond_e
    move v6, v3

    .line 302
    .line 303
    :goto_9
    if-eqz v0, :cond_f

    .line 304
    .line 305
    if-eqz v2, :cond_f

    .line 306
    .line 307
    if-eqz v4, :cond_f

    .line 308
    .line 309
    if-eqz v5, :cond_f

    .line 310
    .line 311
    if-eqz v6, :cond_f

    .line 312
    goto :goto_a

    .line 313
    .line 314
    :cond_f
    new-instance v0, Lcom/narvii/util/dialog/ActionSheetDialog;

    .line 315
    .line 316
    .line 317
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 318
    move-result-object v1

    .line 319
    .line 320
    .line 321
    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    .line 322
    .line 323
    sget v1, Lcom/narvii/mediaeditor/R$string;->discard_changes:I

    .line 324
    .line 325
    .line 326
    invoke-virtual {v0, v1, v3}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    .line 327
    .line 328
    new-instance v1, Lcom/narvii/video/o0;

    .line 329
    .line 330
    .line 331
    invoke-direct {v1, p0}, Lcom/narvii/video/o0;-><init>(Lcom/narvii/video/SceneEditorFragment;)V

    .line 332
    .line 333
    .line 334
    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 335
    .line 336
    .line 337
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    .line 338
    goto :goto_b

    .line 339
    .line 340
    .line 341
    :cond_10
    :goto_a
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->setResult(I)V

    .line 342
    .line 343
    .line 344
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 345
    :goto_b
    return-void
.end method

.method private static final doExit$lambda$5(Lcom/narvii/video/SceneEditorFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    const-string/jumbo p1, "this$0"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    if-nez p2, :cond_0

    .line 9
    const/4 p1, 0x0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setResult(I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 16
    :cond_0
    return-void
.end method

.method private final getBinding()Lcom/narvii/mediaeditor/databinding/FragmentSceneEditorBinding;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/SceneEditorFragment;->binding$delegate:Lkotlin/properties/d;

    .line 3
    .line 4
    sget-object v1, Lcom/narvii/video/SceneEditorFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    aget-object v1, v1, v2

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, p0, v1}, Lkotlin/properties/d;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    check-cast v0, Lcom/narvii/mediaeditor/databinding/FragmentSceneEditorBinding;

    .line 14
    return-object v0
.end method

.method private final getFragmentRegister()Lcom/narvii/app/FragmentRegister;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/SceneEditorFragment;->fragmentRegister$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/app/FragmentRegister;

    .line 9
    return-object v0
.end method

.method private final getProgress()Lcom/narvii/util/dialog/ProgressDialog;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/SceneEditorFragment;->progress$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/util/dialog/ProgressDialog;

    .line 9
    return-object v0
.end method

.method private final initOperationPanel(Z)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/video/SceneEditorFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentSceneEditorBinding;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget-object p1, v0, Lcom/narvii/mediaeditor/databinding/FragmentSceneEditorBinding;->operationPanel:Landroid/widget/LinearLayout;

    .line 9
    const/4 v1, 0x4

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 13
    .line 14
    iget-object p1, v0, Lcom/narvii/mediaeditor/databinding/FragmentSceneEditorBinding;->operationPanelForTemplate:Landroid/widget/LinearLayout;

    .line 15
    const/4 v1, 0x0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 19
    .line 20
    iget-object v1, v0, Lcom/narvii/mediaeditor/databinding/FragmentSceneEditorBinding;->opText:Landroid/widget/LinearLayout;

    .line 21
    .line 22
    const-string v2, "opText"

    .line 23
    .line 24
    .line 25
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    invoke-static {v1, p1}, Lcom/narvii/video/SceneEditorFragment;->initOperationPanel$lambda$9$moveToPanelForTemplate(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 32
    .line 33
    iget-object v1, v0, Lcom/narvii/mediaeditor/databinding/FragmentSceneEditorBinding;->opSticker:Landroid/widget/LinearLayout;

    .line 34
    .line 35
    const-string v2, "opSticker"

    .line 36
    .line 37
    .line 38
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-static {v1, p1}, Lcom/narvii/video/SceneEditorFragment;->initOperationPanel$lambda$9$moveToPanelForTemplate(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 42
    .line 43
    iget-object v1, v0, Lcom/narvii/mediaeditor/databinding/FragmentSceneEditorBinding;->opMusic:Landroid/widget/LinearLayout;

    .line 44
    .line 45
    const-string v2, "opMusic"

    .line 46
    .line 47
    .line 48
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-static {v1, p1}, Lcom/narvii/video/SceneEditorFragment;->initOperationPanel$lambda$9$moveToPanelForTemplate(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 52
    .line 53
    iget-object v0, v0, Lcom/narvii/mediaeditor/databinding/FragmentSceneEditorBinding;->opPip:Landroid/widget/LinearLayout;

    .line 54
    .line 55
    const-string v1, "opPip"

    .line 56
    .line 57
    .line 58
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-static {v0, p1}, Lcom/narvii/video/SceneEditorFragment;->initOperationPanel$lambda$9$moveToPanelForTemplate(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 62
    :cond_0
    return-void
.end method

.method private static final initOperationPanel$lambda$9$moveToPanelForTemplate(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    instance-of v1, v0, Landroid/view/ViewGroup;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    const-string v2, "null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams"

    .line 15
    .line 16
    .line 17
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 20
    .line 21
    check-cast v0, Landroid/view/ViewGroup;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 25
    const/4 v0, 0x0

    .line 26
    .line 27
    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 28
    .line 29
    const/high16 v0, 0x3f800000    # 1.0f

    .line 30
    .line 31
    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 35
    :cond_0
    return-void
.end method

.method private final initOperations()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/video/SceneEditorFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentSceneEditorBinding;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget-object v1, v0, Lcom/narvii/mediaeditor/databinding/FragmentSceneEditorBinding;->opTrim:Landroid/widget/LinearLayout;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    .line 11
    iget-object v1, v0, Lcom/narvii/mediaeditor/databinding/FragmentSceneEditorBinding;->opSplit:Landroid/widget/LinearLayout;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    .line 16
    iget-object v1, v0, Lcom/narvii/mediaeditor/databinding/FragmentSceneEditorBinding;->opSpeed:Landroid/widget/LinearLayout;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    .line 21
    iget-object v1, v0, Lcom/narvii/mediaeditor/databinding/FragmentSceneEditorBinding;->opMusic:Landroid/widget/LinearLayout;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    .line 26
    iget-object v1, v0, Lcom/narvii/mediaeditor/databinding/FragmentSceneEditorBinding;->opText:Landroid/widget/LinearLayout;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    .line 31
    iget-object v1, v0, Lcom/narvii/mediaeditor/databinding/FragmentSceneEditorBinding;->opSticker:Landroid/widget/LinearLayout;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    .line 36
    iget-object v1, v0, Lcom/narvii/mediaeditor/databinding/FragmentSceneEditorBinding;->opCrop:Landroid/widget/LinearLayout;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    .line 41
    iget-object v1, v0, Lcom/narvii/mediaeditor/databinding/FragmentSceneEditorBinding;->coverLayer:Landroid/view/View;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    .line 46
    iget-object v0, v0, Lcom/narvii/mediaeditor/databinding/FragmentSceneEditorBinding;->opPip:Landroid/widget/LinearLayout;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    return-void
.end method

.method private static final onAVClipsPrepared$lambda$25(Lcom/narvii/video/SceneEditorFragment;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Boolean;)V
    .locals 10

    .line 1
    move-object v1, p0

    .line 2
    .line 3
    .line 4
    const-string/jumbo v0, "this$0"

    .line 5
    .line 6
    .line 7
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    const-string v0, "$videoClipList"

    .line 10
    move-object v2, p1

    .line 11
    .line 12
    .line 13
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    const-string v0, "$audioClipList"

    .line 16
    move-object v3, p2

    .line 17
    .line 18
    .line 19
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    const-string v0, "$captionList"

    .line 22
    move-object v4, p3

    .line 23
    .line 24
    .line 25
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    const-string v0, "$stickerList"

    .line 28
    move-object v5, p4

    .line 29
    .line 30
    .line 31
    invoke-static {p4, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    const-string v0, "$pipList"

    .line 34
    move-object v6, p5

    .line 35
    .line 36
    .line 37
    invoke-static {p5, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual/range {p6 .. p6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 41
    move-result v0

    .line 42
    const/4 v7, 0x0

    .line 43
    const/4 v8, 0x1

    .line 44
    const/4 v9, 0x0

    .line 45
    .line 46
    if-nez v0, :cond_0

    .line 47
    .line 48
    .line 49
    invoke-static {p0, v9, v8, v7}, Lcom/narvii/video/BaseMediaEditorFragment;->showInvalidDialog$default(Lcom/narvii/video/BaseMediaEditorFragment;ZILjava/lang/Object;)V

    .line 50
    return-void

    .line 51
    .line 52
    .line 53
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 54
    move-result v0

    .line 55
    .line 56
    if-eqz v0, :cond_1

    .line 57
    .line 58
    .line 59
    invoke-static {p0, v9, v8, v7}, Lcom/narvii/video/BaseMediaEditorFragment;->showInvalidDialog$default(Lcom/narvii/video/BaseMediaEditorFragment;ZILjava/lang/Object;)V

    .line 60
    return-void

    .line 61
    .line 62
    :cond_1
    new-instance v7, Lcom/narvii/video/j0;

    .line 63
    move-object v0, v7

    .line 64
    move-object v1, p0

    .line 65
    move-object v2, p1

    .line 66
    move-object v3, p2

    .line 67
    move-object v4, p3

    .line 68
    move-object v5, p4

    .line 69
    move-object v6, p5

    .line 70
    .line 71
    .line 72
    invoke-direct/range {v0 .. v6}, Lcom/narvii/video/j0;-><init>(Lcom/narvii/video/SceneEditorFragment;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 73
    .line 74
    .line 75
    invoke-static {v7}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 76
    return-void
.end method

.method private static final onAVClipsPrepared$lambda$25$lambda$24(Lcom/narvii/video/SceneEditorFragment;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 10

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
    const-string v0, "$videoClipList"

    .line 9
    .line 10
    .line 11
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    const-string v0, "$audioClipList"

    .line 14
    .line 15
    .line 16
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    const-string v0, "$captionList"

    .line 19
    .line 20
    .line 21
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    const-string v0, "$stickerList"

    .line 24
    .line 25
    .line 26
    invoke-static {p4, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    const-string v0, "$pipList"

    .line 29
    .line 30
    .line 31
    invoke-static {p5, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-static {p1, p2}, Lkotlin/collections/t;->D0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    const-string v1, "null cannot be cast to non-null type java.util.ArrayList<com.narvii.video.model.AVClipInfoPack>{ kotlin.collections.TypeAliasesKt.ArrayList<com.narvii.video.model.AVClipInfoPack> }"

    .line 38
    .line 39
    .line 40
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    check-cast v0, Ljava/util/ArrayList;

    .line 43
    const/4 v1, 0x0

    .line 44
    .line 45
    new-instance v9, Lcom/narvii/video/q0;

    .line 46
    move-object v2, v9

    .line 47
    move-object v3, p0

    .line 48
    move-object v4, p1

    .line 49
    move-object v5, p2

    .line 50
    move-object v6, p3

    .line 51
    move-object v7, p4

    .line 52
    move-object v8, p5

    .line 53
    .line 54
    .line 55
    invoke-direct/range {v2 .. v8}, Lcom/narvii/video/q0;-><init>(Lcom/narvii/video/SceneEditorFragment;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 56
    const/4 p4, 0x2

    .line 57
    const/4 p5, 0x0

    .line 58
    move-object p1, v0

    .line 59
    move p2, v1

    .line 60
    move-object p3, v9

    .line 61
    .line 62
    .line 63
    invoke-static/range {p0 .. p5}, Lcom/narvii/video/BaseMediaEditorFragment;->prepareAVClipList$default(Lcom/narvii/video/BaseMediaEditorFragment;Ljava/util/ArrayList;ZLcom/narvii/util/Callback;ILjava/lang/Object;)V

    .line 64
    return-void
.end method

.method private static final onAVClipsPrepared$lambda$25$lambda$24$lambda$23(Lcom/narvii/video/SceneEditorFragment;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Boolean;)V
    .locals 8

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
    const-string v0, "$videoClipList"

    .line 9
    .line 10
    .line 11
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    const-string v0, "$audioClipList"

    .line 14
    .line 15
    .line 16
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    const-string v0, "$captionList"

    .line 19
    .line 20
    .line 21
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    const-string v0, "$stickerList"

    .line 24
    .line 25
    .line 26
    invoke-static {p4, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    const-string v0, "$pipList"

    .line 29
    .line 30
    .line 31
    invoke-static {p5, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 35
    move-result p6

    .line 36
    const/4 v0, 0x0

    .line 37
    const/4 v1, 0x0

    .line 38
    .line 39
    if-nez p6, :cond_0

    .line 40
    const/4 p1, 0x1

    .line 41
    .line 42
    .line 43
    invoke-static {p0, v0, p1, v1}, Lcom/narvii/video/BaseMediaEditorFragment;->showInvalidDialog$default(Lcom/narvii/video/BaseMediaEditorFragment;ZILjava/lang/Object;)V

    .line 44
    .line 45
    goto/16 :goto_4

    .line 46
    .line 47
    .line 48
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 49
    move-result-object v2

    .line 50
    const/4 v4, 0x0

    .line 51
    const/4 v5, 0x0

    .line 52
    const/4 v6, 0x6

    .line 53
    const/4 v7, 0x0

    .line 54
    move-object v3, p1

    .line 55
    .line 56
    .line 57
    invoke-static/range {v2 .. v7}, Lcom/narvii/video/interfaces/IPreviewPlayer$DefaultImpls;->resetVideoClipList$default(Lcom/narvii/video/interfaces/IPreviewPlayer;Ljava/util/ArrayList;IIILjava/lang/Object;)Lcom/narvii/video/model/AVClipInfoPack;

    .line 58
    move-result-object p1

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, p1}, Lcom/narvii/video/BaseMediaEditorFragment;->setActiveVideoClip(Lcom/narvii/video/model/AVClipInfoPack;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 65
    move-result-object p1

    .line 66
    .line 67
    .line 68
    invoke-interface {p1, p2}, Lcom/narvii/video/interfaces/IPreviewPlayer;->resetAudioClipList(Ljava/util/List;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 72
    move-result-object p1

    .line 73
    .line 74
    .line 75
    invoke-interface {p1, p3}, Lcom/narvii/video/interfaces/IPreviewPlayer;->resetCaptionList(Ljava/util/List;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 79
    move-result-object p1

    .line 80
    .line 81
    .line 82
    invoke-interface {p1, p4}, Lcom/narvii/video/interfaces/IPreviewPlayer;->resetStickerList(Ljava/util/List;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 86
    move-result-object p1

    .line 87
    .line 88
    .line 89
    invoke-interface {p1, p5}, Lcom/narvii/video/interfaces/IPreviewPlayer;->resetPipVideoList(Ljava/util/List;)V

    .line 90
    const/4 p1, 0x3

    .line 91
    .line 92
    .line 93
    invoke-static {p0, v0, v0, p1, v1}, Lcom/narvii/video/ScrollingTimeLineFragment;->updateVideoTimeLineInfo$default(Lcom/narvii/video/ScrollingTimeLineFragment;ZIILjava/lang/Object;)V

    .line 94
    .line 95
    iget-object p1, p0, Lcom/narvii/video/SceneEditorFragment;->scene:Lcom/narvii/scene/model/SceneInfo;

    .line 96
    .line 97
    if-eqz p1, :cond_1

    .line 98
    .line 99
    iget-object p1, p1, Lcom/narvii/scene/model/SceneInfo;->outputUrl:Ljava/lang/String;

    .line 100
    goto :goto_0

    .line 101
    :cond_1
    move-object p1, v1

    .line 102
    .line 103
    :goto_0
    const-string p2, ".mp4"

    .line 104
    .line 105
    if-nez p1, :cond_6

    .line 106
    .line 107
    new-instance p1, Ljava/io/File;

    .line 108
    .line 109
    iget-object p3, p0, Lcom/narvii/video/SceneEditorFragment;->outputFolder:Ljava/io/File;

    .line 110
    .line 111
    const-string p4, "outputFolder"

    .line 112
    .line 113
    if-nez p3, :cond_2

    .line 114
    .line 115
    .line 116
    invoke-static {p4}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 117
    move-object p3, v1

    .line 118
    .line 119
    :cond_2
    new-instance p5, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    .line 124
    iget-object p6, p0, Lcom/narvii/video/SceneEditorFragment;->photoManager:Lcom/narvii/photos/PhotoManager;

    .line 125
    .line 126
    if-nez p6, :cond_3

    .line 127
    .line 128
    const-string p6, "photoManager"

    .line 129
    .line 130
    .line 131
    invoke-static {p6}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 132
    move-object p6, v1

    .line 133
    .line 134
    :cond_3
    iget-object v0, p0, Lcom/narvii/video/SceneEditorFragment;->outputFolder:Ljava/io/File;

    .line 135
    .line 136
    if-nez v0, :cond_4

    .line 137
    .line 138
    .line 139
    invoke-static {p4}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 140
    move-object v0, v1

    .line 141
    .line 142
    .line 143
    :cond_4
    invoke-virtual {p6, v0}, Lcom/narvii/photos/PhotoManager;->getNewVideoName(Ljava/io/File;)Ljava/lang/String;

    .line 144
    move-result-object p4

    .line 145
    .line 146
    .line 147
    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    move-result-object p4

    .line 155
    .line 156
    .line 157
    invoke-direct {p1, p3, p4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 161
    move-result-object p1

    .line 162
    .line 163
    iput-object p1, p0, Lcom/narvii/video/SceneEditorFragment;->outputPath:Ljava/lang/String;

    .line 164
    .line 165
    iget-object p3, p0, Lcom/narvii/video/SceneEditorFragment;->scene:Lcom/narvii/scene/model/SceneInfo;

    .line 166
    .line 167
    if-nez p3, :cond_5

    .line 168
    goto :goto_1

    .line 169
    .line 170
    :cond_5
    iput-object p1, p3, Lcom/narvii/scene/model/SceneInfo;->outputUrl:Ljava/lang/String;

    .line 171
    .line 172
    :cond_6
    :goto_1
    new-instance p1, Ljava/io/File;

    .line 173
    .line 174
    .line 175
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getOutputFileDir()Ljava/io/File;

    .line 176
    move-result-object p3

    .line 177
    .line 178
    const-string p4, "preview_only_folder"

    .line 179
    .line 180
    .line 181
    invoke-direct {p1, p3, p4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 185
    .line 186
    new-instance p3, Ljava/io/File;

    .line 187
    .line 188
    .line 189
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getOutputFileDir()Ljava/io/File;

    .line 190
    move-result-object p4

    .line 191
    .line 192
    const-string p5, "coverImage_only_folder"

    .line 193
    .line 194
    .line 195
    invoke-direct {p3, p4, p5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {p3}, Ljava/io/File;->mkdirs()Z

    .line 199
    .line 200
    new-instance p4, Ljava/io/File;

    .line 201
    .line 202
    new-instance p5, Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    .line 206
    .line 207
    const-string p6, "preview_"

    .line 208
    .line 209
    .line 210
    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    iget-object p6, p0, Lcom/narvii/video/SceneEditorFragment;->scene:Lcom/narvii/scene/model/SceneInfo;

    .line 213
    .line 214
    if-eqz p6, :cond_7

    .line 215
    .line 216
    iget-object p6, p6, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    .line 217
    goto :goto_2

    .line 218
    :cond_7
    move-object p6, v1

    .line 219
    .line 220
    :goto_2
    const-string v0, "default"

    .line 221
    .line 222
    if-nez p6, :cond_8

    .line 223
    move-object p6, v0

    .line 224
    .line 225
    .line 226
    :cond_8
    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    const/16 p6, 0x5f

    .line 229
    .line 230
    .line 231
    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 235
    move-result-wide v2

    .line 236
    .line 237
    .line 238
    invoke-virtual {p5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 245
    move-result-object p2

    .line 246
    .line 247
    .line 248
    invoke-direct {p4, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {p4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 252
    move-result-object p1

    .line 253
    .line 254
    iput-object p1, p0, Lcom/narvii/video/SceneEditorFragment;->outputPreviewVideoPath:Ljava/lang/String;

    .line 255
    .line 256
    new-instance p1, Ljava/io/File;

    .line 257
    .line 258
    new-instance p2, Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 262
    .line 263
    const-string p4, "coverImage_"

    .line 264
    .line 265
    .line 266
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    iget-object p4, p0, Lcom/narvii/video/SceneEditorFragment;->scene:Lcom/narvii/scene/model/SceneInfo;

    .line 269
    .line 270
    if-eqz p4, :cond_9

    .line 271
    .line 272
    iget-object v1, p4, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    .line 273
    .line 274
    :cond_9
    if-nez v1, :cond_a

    .line 275
    goto :goto_3

    .line 276
    :cond_a
    move-object v0, v1

    .line 277
    .line 278
    .line 279
    :goto_3
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 286
    move-result-wide p4

    .line 287
    .line 288
    .line 289
    invoke-virtual {p2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    const-string p4, ".jpg"

    .line 292
    .line 293
    .line 294
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 298
    move-result-object p2

    .line 299
    .line 300
    .line 301
    invoke-direct {p1, p3, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 305
    move-result-object p1

    .line 306
    .line 307
    iput-object p1, p0, Lcom/narvii/video/SceneEditorFragment;->outputCoverImagePath:Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    invoke-direct {p0}, Lcom/narvii/video/SceneEditorFragment;->initOperations()V

    .line 311
    .line 312
    .line 313
    invoke-direct {p0}, Lcom/narvii/video/SceneEditorFragment;->checkSceneDuration()V

    .line 314
    .line 315
    .line 316
    invoke-direct {p0}, Lcom/narvii/video/SceneEditorFragment;->updateAddClipButtonVisibility()V

    .line 317
    .line 318
    .line 319
    invoke-direct {p0}, Lcom/narvii/video/SceneEditorFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentSceneEditorBinding;

    .line 320
    move-result-object p1

    .line 321
    .line 322
    iget-object p1, p1, Lcom/narvii/mediaeditor/databinding/FragmentSceneEditorBinding;->clipFastSwitchingPanel:Lcom/narvii/video/widget/ClipFastSwitchingPanel;

    .line 323
    .line 324
    .line 325
    invoke-virtual {p1, p0}, Lcom/narvii/video/widget/ClipFastSwitchingPanel;->setEventCallback(Lcom/narvii/video/widget/ClipFastSwitchingPanel$ClipFastSwitchingEventCallback;)V

    .line 326
    :goto_4
    return-void
.end method

.method private static final onActivityResult$lambda$27$lambda$26(Lcom/narvii/video/SceneEditorFragment;II)V
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
    const/4 v0, 0x1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0, p1}, Lcom/narvii/video/ScrollingTimeLineFragment;->updateVideoTimeLineInfo(ZI)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1, p2}, Lcom/narvii/video/ScrollingTimeLineFragment;->moveMainTrackTo(II)V

    .line 14
    return-void
.end method

.method private static final onActivityResult$lambda$28(Lcom/narvii/video/SceneEditorFragment;)V
    .locals 7

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
    invoke-virtual {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->getMainTimeLineComponent()Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getActiveVideoClip()Lcom/narvii/video/model/AVClipInfoPack;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 20
    .line 21
    iget v2, v0, Lcom/narvii/video/model/BaseClipInfoPack;->indexInScene:I

    .line 22
    const/4 v3, 0x0

    .line 23
    const/4 v4, 0x0

    .line 24
    const/4 v5, 0x6

    .line 25
    const/4 v6, 0x0

    .line 26
    .line 27
    .line 28
    invoke-static/range {v1 .. v6}, Lcom/narvii/video/widget/MediaTimeLineComponent;->scrollTimeLineToClip$default(Lcom/narvii/video/widget/MediaTimeLineComponent;IIZILjava/lang/Object;)I

    .line 29
    move-result v0

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v0, -0x1

    .line 32
    .line 33
    :goto_0
    if-ltz v0, :cond_2

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->getVideoPlaybackTimeText()Landroid/widget/TextView;

    .line 37
    move-result-object v1

    .line 38
    .line 39
    if-nez v1, :cond_1

    .line 40
    goto :goto_1

    .line 41
    .line 42
    .line 43
    :cond_1
    invoke-static {v0}, Lcom/narvii/video/widget/MediaTimeLineComponentKt;->convertMillisToTime(I)Ljava/lang/String;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    .line 49
    .line 50
    :goto_1
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getActiveVideoClip()Lcom/narvii/video/model/AVClipInfoPack;

    .line 51
    move-result-object v0

    .line 52
    .line 53
    .line 54
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 55
    .line 56
    iget v0, v0, Lcom/narvii/video/model/BaseClipInfoPack;->indexInScene:I

    .line 57
    const/4 v1, 0x1

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, v0, v1}, Lcom/narvii/video/BaseMediaEditorFragment;->safeSeekTo(II)V

    .line 61
    :cond_2
    return-void
.end method

.method private static final onActivityResult$lambda$29(Lcom/narvii/video/SceneEditorFragment;I)V
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
    const/4 v0, 0x1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0, p1}, Lcom/narvii/video/ScrollingTimeLineFragment;->updateVideoTimeLineInfo(ZI)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1, v0}, Lcom/narvii/video/BaseMediaEditorFragment;->safeSeekTo(II)V

    .line 14
    return-void
.end method

.method private final onEmptyStatusChanged(Z)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/video/SceneEditorFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentSceneEditorBinding;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    const/high16 v1, 0x3f000000    # 0.5f

    .line 9
    goto :goto_0

    .line 10
    .line 11
    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    .line 12
    .line 13
    :goto_0
    iget-object v2, v0, Lcom/narvii/mediaeditor/databinding/FragmentSceneEditorBinding;->sceneEmptyView:Landroid/widget/RelativeLayout;

    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    const/4 p1, 0x0

    .line 17
    goto :goto_1

    .line 18
    .line 19
    :cond_1
    const/16 p1, 0x8

    .line 20
    .line 21
    .line 22
    :goto_1
    invoke-virtual {v2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 23
    .line 24
    iget-object p1, v0, Lcom/narvii/mediaeditor/databinding/FragmentSceneEditorBinding;->opTrim:Landroid/widget/LinearLayout;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 28
    .line 29
    iget-object p1, v0, Lcom/narvii/mediaeditor/databinding/FragmentSceneEditorBinding;->opSplit:Landroid/widget/LinearLayout;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 33
    .line 34
    iget-object p1, v0, Lcom/narvii/mediaeditor/databinding/FragmentSceneEditorBinding;->opSpeed:Landroid/widget/LinearLayout;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 38
    .line 39
    iget-object p1, v0, Lcom/narvii/mediaeditor/databinding/FragmentSceneEditorBinding;->opMusic:Landroid/widget/LinearLayout;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 43
    .line 44
    iget-object p1, v0, Lcom/narvii/mediaeditor/databinding/FragmentSceneEditorBinding;->opText:Landroid/widget/LinearLayout;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 48
    .line 49
    iget-object p1, v0, Lcom/narvii/mediaeditor/databinding/FragmentSceneEditorBinding;->opCrop:Landroid/widget/LinearLayout;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 53
    .line 54
    iget-object p1, v0, Lcom/narvii/mediaeditor/databinding/FragmentSceneEditorBinding;->opSticker:Landroid/widget/LinearLayout;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 58
    .line 59
    iget-object p1, v0, Lcom/narvii/mediaeditor/databinding/FragmentSceneEditorBinding;->opPip:Landroid/widget/LinearLayout;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 63
    return-void
.end method

.method private final onMediaProcessTouchDown(Z)V
    .locals 4

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/video/SceneEditorFragment;->hasFailedTask:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/narvii/video/SceneEditorFragment;->getProgress()Lcom/narvii/util/dialog/ProgressDialog;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Landroid/app/Dialog;->hide()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    sget v2, Lcom/narvii/mediaeditor/R$string;->try_again:I

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 25
    move-result-object v2

    .line 26
    .line 27
    .line 28
    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->showShortToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 29
    .line 30
    iput-boolean p1, p0, Lcom/narvii/video/SceneEditorFragment;->hasFailedTask:Z

    .line 31
    .line 32
    iput-boolean v0, p0, Lcom/narvii/video/SceneEditorFragment;->previewTasksOnGoing:Z

    .line 33
    return-void

    .line 34
    .line 35
    :cond_1
    iget p1, p0, Lcom/narvii/video/SceneEditorFragment;->flyingTaskCount:I

    .line 36
    .line 37
    if-gtz p1, :cond_b

    .line 38
    .line 39
    .line 40
    invoke-direct {p0}, Lcom/narvii/video/SceneEditorFragment;->getProgress()Lcom/narvii/util/dialog/ProgressDialog;

    .line 41
    move-result-object p1

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Landroid/app/Dialog;->hide()V

    .line 45
    .line 46
    new-instance p1, Landroid/content/Intent;

    .line 47
    .line 48
    .line 49
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 50
    .line 51
    iget-object v1, p0, Lcom/narvii/video/SceneEditorFragment;->scene:Lcom/narvii/scene/model/SceneInfo;

    .line 52
    .line 53
    if-eqz v1, :cond_6

    .line 54
    .line 55
    iget-object v2, p0, Lcom/narvii/video/SceneEditorFragment;->outputPreviewVideoPath:Ljava/lang/String;

    .line 56
    .line 57
    if-eqz v2, :cond_4

    .line 58
    .line 59
    new-instance v2, Ljava/io/File;

    .line 60
    .line 61
    iget-object v3, p0, Lcom/narvii/video/SceneEditorFragment;->outputPreviewVideoPath:Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 68
    move-result v2

    .line 69
    .line 70
    if-eqz v2, :cond_2

    .line 71
    goto :goto_0

    .line 72
    .line 73
    .line 74
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getActiveVideoClip()Lcom/narvii/video/model/AVClipInfoPack;

    .line 75
    move-result-object v2

    .line 76
    .line 77
    if-eqz v2, :cond_3

    .line 78
    .line 79
    iget-object v2, v2, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    .line 80
    .line 81
    if-nez v2, :cond_5

    .line 82
    .line 83
    :cond_3
    iget-object v2, p0, Lcom/narvii/video/SceneEditorFragment;->outputPreviewVideoPath:Ljava/lang/String;

    .line 84
    goto :goto_1

    .line 85
    .line 86
    :cond_4
    :goto_0
    iget-object v2, p0, Lcom/narvii/video/SceneEditorFragment;->outputPreviewVideoPath:Ljava/lang/String;

    .line 87
    .line 88
    :cond_5
    :goto_1
    iput-object v2, v1, Lcom/narvii/scene/model/SceneInfo;->previewFilePath:Ljava/lang/String;

    .line 89
    .line 90
    iget-object v2, p0, Lcom/narvii/video/SceneEditorFragment;->outputCoverImagePath:Ljava/lang/String;

    .line 91
    .line 92
    iput-object v2, v1, Lcom/narvii/scene/model/SceneInfo;->coverImage:Ljava/lang/String;

    .line 93
    .line 94
    const-string/jumbo v2, "sceneInfo"

    .line 95
    .line 96
    .line 97
    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 98
    move-result-object v1

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    .line 103
    :cond_6
    iput-boolean v0, p0, Lcom/narvii/video/SceneEditorFragment;->previewTasksOnGoing:Z

    .line 104
    .line 105
    const-string v1, "from"

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 109
    move-result v1

    .line 110
    const/4 v2, 0x1

    .line 111
    const/4 v3, -0x1

    .line 112
    .line 113
    if-eq v1, v2, :cond_9

    .line 114
    const/4 v2, 0x2

    .line 115
    .line 116
    if-eq v1, v2, :cond_8

    .line 117
    const/4 v2, 0x3

    .line 118
    .line 119
    if-eq v1, v2, :cond_7

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0, v3, p1}, Lcom/narvii/app/NVFragment;->setResult(ILandroid/content/Intent;)V

    .line 123
    goto :goto_2

    .line 124
    .line 125
    :cond_7
    iget-object p1, p0, Lcom/narvii/video/SceneEditorFragment;->scene:Lcom/narvii/scene/model/SceneInfo;

    .line 126
    .line 127
    if-eqz p1, :cond_a

    .line 128
    .line 129
    new-instance v1, Lcom/narvii/scene/notification/SceneInfoObject;

    .line 130
    .line 131
    .line 132
    invoke-direct {v1}, Lcom/narvii/scene/notification/SceneInfoObject;-><init>()V

    .line 133
    .line 134
    iput-object p1, v1, Lcom/narvii/scene/notification/SceneInfoObject;->sceneInfo:Lcom/narvii/scene/model/SceneInfo;

    .line 135
    .line 136
    new-instance p1, Lcom/narvii/notification/Notification;

    .line 137
    .line 138
    const-string v2, "new"

    .line 139
    .line 140
    .line 141
    invoke-direct {p1, v2, v1}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 142
    .line 143
    .line 144
    invoke-static {p0, p1, v0}, Lcom/narvii/util/NotificationUtils;->sendNotification(Lcom/narvii/app/NVContext;Lcom/narvii/notification/Notification;Z)V

    .line 145
    goto :goto_2

    .line 146
    .line 147
    :cond_8
    iget-object p1, p0, Lcom/narvii/video/SceneEditorFragment;->scene:Lcom/narvii/scene/model/SceneInfo;

    .line 148
    .line 149
    if-eqz p1, :cond_a

    .line 150
    .line 151
    .line 152
    const-string/jumbo v0, "storyPost"

    .line 153
    .line 154
    .line 155
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 156
    move-result-object v0

    .line 157
    .line 158
    check-cast v0, Lcom/narvii/scene/StoryPostService;

    .line 159
    .line 160
    const-string v1, "outputFileDir"

    .line 161
    .line 162
    .line 163
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 164
    move-result-object v1

    .line 165
    .line 166
    const-string v2, "getStringParam(...)"

    .line 167
    .line 168
    .line 169
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    .line 171
    const-string v3, "extra"

    .line 172
    .line 173
    .line 174
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 175
    move-result-object v3

    .line 176
    .line 177
    .line 178
    invoke-static {v3, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    invoke-interface {v0, p1, v1, v3}, Lcom/narvii/scene/StoryPostService;->launchStoryPost(Lcom/narvii/scene/model/SceneInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    goto :goto_2

    .line 183
    .line 184
    .line 185
    :cond_9
    invoke-virtual {p0, v3, p1}, Lcom/narvii/app/NVFragment;->setResult(ILandroid/content/Intent;)V

    .line 186
    .line 187
    .line 188
    :cond_a
    :goto_2
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 189
    :cond_b
    return-void
.end method

.method private final onPickResult(Ljava/util/List;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 17
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

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p1

    .line 5
    .line 6
    move-object/from16 v2, p2

    .line 7
    .line 8
    move-object/from16 v3, p3

    .line 9
    .line 10
    if-eqz v1, :cond_16

    .line 11
    .line 12
    .line 13
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    .line 14
    move-result v4

    .line 15
    .line 16
    if-nez v4, :cond_16

    .line 17
    .line 18
    .line 19
    invoke-static/range {p2 .. p2}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    move-result v4

    .line 21
    .line 22
    if-eqz v4, :cond_0

    .line 23
    .line 24
    goto/16 :goto_c

    .line 25
    :cond_0
    const/4 v4, 0x1

    .line 26
    const/4 v5, 0x0

    .line 27
    .line 28
    if-eqz v3, :cond_2

    .line 29
    .line 30
    const-string v6, "caller"

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3, v6, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 34
    move-result v6

    .line 35
    .line 36
    const/16 v7, 0x303b

    .line 37
    .line 38
    if-ne v6, v7, :cond_2

    .line 39
    .line 40
    new-instance v2, Lcom/narvii/pip/PipInfoPack;

    .line 41
    .line 42
    .line 43
    invoke-direct {v2}, Lcom/narvii/pip/PipInfoPack;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 47
    move-result-object v3

    .line 48
    .line 49
    check-cast v3, Lcom/narvii/model/Media;

    .line 50
    .line 51
    iget v3, v3, Lcom/narvii/model/Media;->type:I

    .line 52
    .line 53
    const/16 v6, 0x7b

    .line 54
    .line 55
    if-eq v3, v6, :cond_1

    .line 56
    .line 57
    .line 58
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 59
    move-result-object v1

    .line 60
    .line 61
    sget v2, Lcom/narvii/mediaeditor/R$string;->invalid_input:I

    .line 62
    .line 63
    .line 64
    invoke-static {v1, v2, v5}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    .line 65
    move-result-object v1

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1}, Lcom/narvii/util/NVToast;->show()V

    .line 69
    return-void

    .line 70
    .line 71
    .line 72
    :cond_1
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 73
    move-result-object v1

    .line 74
    .line 75
    check-cast v1, Lcom/narvii/model/Media;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1}, Lcom/narvii/model/Media;->getMediaUrl()Ljava/lang/String;

    .line 79
    move-result-object v1

    .line 80
    .line 81
    .line 82
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 83
    move-result-object v1

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 87
    move-result-object v1

    .line 88
    .line 89
    iput-object v1, v2, Lcom/narvii/pip/PipInfoPack;->inputPath:Ljava/lang/String;

    .line 90
    .line 91
    new-array v1, v4, [Lcom/narvii/pip/PipInfoPack;

    .line 92
    .line 93
    aput-object v2, v1, v5

    .line 94
    .line 95
    .line 96
    invoke-static {v1}, Lkotlin/collections/t;->g([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 97
    move-result-object v1

    .line 98
    .line 99
    .line 100
    invoke-direct {v0, v1}, Lcom/narvii/video/SceneEditorFragment;->startPipEditFragment(Ljava/util/List;)V

    .line 101
    return-void

    .line 102
    :cond_2
    const/4 v6, 0x2

    .line 103
    .line 104
    if-eqz v3, :cond_3

    .line 105
    .line 106
    const-string v7, "pickFrom"

    .line 107
    .line 108
    .line 109
    invoke-virtual {v3, v7, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 110
    move-result v7

    .line 111
    goto :goto_0

    .line 112
    :cond_3
    move v7, v6

    .line 113
    :goto_0
    const/4 v8, 0x0

    .line 114
    .line 115
    if-eqz v3, :cond_4

    .line 116
    .line 117
    const-string/jumbo v9, "soundDataList"

    .line 118
    .line 119
    .line 120
    invoke-virtual {v3, v9}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 121
    move-result-object v9

    .line 122
    goto :goto_1

    .line 123
    :cond_4
    move-object v9, v8

    .line 124
    .line 125
    .line 126
    :goto_1
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 127
    move-result v10

    .line 128
    .line 129
    if-nez v10, :cond_5

    .line 130
    .line 131
    const-class v10, Lcom/narvii/media/online/audio/model/Sound;

    .line 132
    .line 133
    .line 134
    invoke-static {v9, v10}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 135
    move-result-object v9

    .line 136
    goto :goto_2

    .line 137
    :cond_5
    move-object v9, v8

    .line 138
    .line 139
    :goto_2
    if-eqz v3, :cond_6

    .line 140
    .line 141
    const-string v10, "category"

    .line 142
    .line 143
    .line 144
    invoke-virtual {v3, v10}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 145
    move-result-object v10

    .line 146
    goto :goto_3

    .line 147
    :cond_6
    move-object v10, v8

    .line 148
    .line 149
    .line 150
    :goto_3
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 151
    move-result v11

    .line 152
    .line 153
    if-nez v11, :cond_7

    .line 154
    .line 155
    const-class v11, Lcom/narvii/media/online/audio/model/AssetCategory;

    .line 156
    .line 157
    .line 158
    invoke-static {v10, v11}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 159
    move-result-object v10

    .line 160
    .line 161
    check-cast v10, Lcom/narvii/media/online/audio/model/AssetCategory;

    .line 162
    goto :goto_4

    .line 163
    :cond_7
    move-object v10, v8

    .line 164
    .line 165
    :goto_4
    if-eqz v3, :cond_8

    .line 166
    .line 167
    const-string/jumbo v11, "soundTypeList"

    .line 168
    .line 169
    .line 170
    invoke-virtual {v3, v11}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 171
    move-result-object v3

    .line 172
    goto :goto_5

    .line 173
    :cond_8
    move-object v3, v8

    .line 174
    .line 175
    .line 176
    :goto_5
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 177
    move-result v11

    .line 178
    .line 179
    if-nez v11, :cond_9

    .line 180
    .line 181
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 182
    .line 183
    .line 184
    invoke-static {v3, v8}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 185
    move-result-object v8

    .line 186
    .line 187
    :cond_9
    new-instance v3, Ljava/util/ArrayList;

    .line 188
    .line 189
    .line 190
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 191
    .line 192
    .line 193
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    .line 194
    move-result v11

    .line 195
    move v12, v5

    .line 196
    .line 197
    .line 198
    :goto_6
    const-string/jumbo v13, "video"

    .line 199
    .line 200
    const-string v14, "audio"

    .line 201
    .line 202
    if-ge v12, v11, :cond_13

    .line 203
    .line 204
    .line 205
    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 206
    move-result-object v15

    .line 207
    .line 208
    check-cast v15, Lcom/narvii/model/Media;

    .line 209
    .line 210
    iget-object v4, v15, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 214
    move-result-object v4

    .line 215
    .line 216
    .line 217
    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 218
    move-result-object v4

    .line 219
    .line 220
    if-nez v4, :cond_a

    .line 221
    .line 222
    const-string v4, ""

    .line 223
    .line 224
    .line 225
    :cond_a
    invoke-virtual {v15}, Lcom/narvii/model/Media;->isImage()Z

    .line 226
    move-result v16

    .line 227
    .line 228
    if-eqz v16, :cond_b

    .line 229
    .line 230
    .line 231
    invoke-virtual {v0, v4}, Lcom/narvii/video/BaseMediaEditorFragment;->isImageInput(Ljava/lang/String;)Z

    .line 232
    move-result v16

    .line 233
    .line 234
    if-nez v16, :cond_b

    .line 235
    .line 236
    .line 237
    invoke-static {v4}, Lcom/narvii/util/Utils;->isGifInData(Ljava/lang/String;)Z

    .line 238
    move-result v16

    .line 239
    .line 240
    if-nez v16, :cond_b

    .line 241
    move v14, v5

    .line 242
    .line 243
    goto/16 :goto_b

    .line 244
    .line 245
    :cond_b
    new-instance v5, Lcom/narvii/video/model/AVClipInfoPack;

    .line 246
    .line 247
    .line 248
    invoke-direct {v5}, Lcom/narvii/video/model/AVClipInfoPack;-><init>()V

    .line 249
    .line 250
    iput v12, v5, Lcom/narvii/video/model/BaseClipInfoPack;->indexInScene:I

    .line 251
    .line 252
    iput-object v4, v5, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    .line 253
    .line 254
    iput-object v4, v5, Lcom/narvii/video/model/AVClipInfoPack;->originalInputPath:Ljava/lang/String;

    .line 255
    .line 256
    iget-object v6, v15, Lcom/narvii/model/Media;->author:Ljava/lang/String;

    .line 257
    .line 258
    iput-object v6, v5, Lcom/narvii/video/model/AVClipInfoPack;->author:Ljava/lang/String;

    .line 259
    .line 260
    iget-object v6, v15, Lcom/narvii/model/Media;->fileName:Ljava/lang/String;

    .line 261
    .line 262
    iput-object v6, v5, Lcom/narvii/video/model/AVClipInfoPack;->fileName:Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->isAllVideoClipMute()Z

    .line 266
    move-result v6

    .line 267
    .line 268
    if-eqz v6, :cond_c

    .line 269
    const/4 v6, 0x0

    .line 270
    goto :goto_7

    .line 271
    .line 272
    :cond_c
    const/high16 v6, 0x3f800000    # 1.0f

    .line 273
    .line 274
    :goto_7
    iput v6, v5, Lcom/narvii/video/model/AVClipInfoPack;->trackVolume:F

    .line 275
    .line 276
    .line 277
    invoke-static {v2, v14}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 278
    move-result v6

    .line 279
    .line 280
    if-eqz v6, :cond_11

    .line 281
    .line 282
    if-eqz v9, :cond_d

    .line 283
    .line 284
    .line 285
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 286
    move-result v4

    .line 287
    .line 288
    .line 289
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    .line 290
    move-result v6

    .line 291
    .line 292
    if-ne v4, v6, :cond_d

    .line 293
    .line 294
    if-eqz v10, :cond_d

    .line 295
    .line 296
    sget-object v4, Lcom/narvii/video/services/SceneMediaProcessor;->INSTANCE:Lcom/narvii/video/services/SceneMediaProcessor;

    .line 297
    .line 298
    .line 299
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 300
    move-result-object v6

    .line 301
    .line 302
    check-cast v6, Lcom/narvii/media/online/audio/model/Sound;

    .line 303
    .line 304
    .line 305
    invoke-virtual {v4, v5, v6, v10}, Lcom/narvii/video/services/SceneMediaProcessor;->fillAudioClipMetadata(Lcom/narvii/video/model/AVClipInfoPack;Lcom/narvii/media/online/audio/model/Sound;Lcom/narvii/media/online/audio/model/AssetCategory;)Lcom/narvii/video/model/AVClipInfoPack;

    .line 306
    .line 307
    :cond_d
    if-eqz v8, :cond_10

    .line 308
    .line 309
    .line 310
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 311
    move-result v4

    .line 312
    .line 313
    .line 314
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    .line 315
    move-result v6

    .line 316
    .line 317
    if-ne v4, v6, :cond_10

    .line 318
    .line 319
    .line 320
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 321
    move-result-object v4

    .line 322
    .line 323
    check-cast v4, Ljava/lang/Integer;

    .line 324
    .line 325
    if-nez v4, :cond_e

    .line 326
    const/4 v6, 0x2

    .line 327
    goto :goto_8

    .line 328
    .line 329
    .line 330
    :cond_e
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 331
    move-result v4

    .line 332
    const/4 v6, 0x2

    .line 333
    .line 334
    if-ne v4, v6, :cond_f

    .line 335
    const/4 v4, 0x1

    .line 336
    goto :goto_9

    .line 337
    :cond_f
    :goto_8
    const/4 v4, 0x0

    .line 338
    .line 339
    :goto_9
    iput-boolean v4, v5, Lcom/narvii/video/model/AVClipInfoPack;->isSfx:Z

    .line 340
    const/4 v14, 0x0

    .line 341
    goto :goto_a

    .line 342
    :cond_10
    const/4 v6, 0x2

    .line 343
    const/4 v14, 0x0

    .line 344
    .line 345
    iput-boolean v14, v5, Lcom/narvii/video/model/AVClipInfoPack;->isSfx:Z

    .line 346
    goto :goto_a

    .line 347
    :cond_11
    const/4 v6, 0x2

    .line 348
    const/4 v14, 0x0

    .line 349
    .line 350
    .line 351
    invoke-static {v2, v13}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 352
    move-result v13

    .line 353
    .line 354
    if-eqz v13, :cond_12

    .line 355
    .line 356
    sget-object v13, Lcom/narvii/video/services/SceneMediaProcessor;->INSTANCE:Lcom/narvii/video/services/SceneMediaProcessor;

    .line 357
    .line 358
    iget v15, v15, Lcom/narvii/model/Media;->type:I

    .line 359
    .line 360
    .line 361
    invoke-virtual {v13, v4, v15, v7}, Lcom/narvii/video/services/SceneMediaProcessor;->getVideoSource(Ljava/lang/String;II)I

    .line 362
    move-result v4

    .line 363
    .line 364
    iput v4, v5, Lcom/narvii/video/model/AVClipInfoPack;->videoSource:I

    .line 365
    .line 366
    .line 367
    :cond_12
    :goto_a
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 368
    .line 369
    :goto_b
    add-int/lit8 v12, v12, 0x1

    .line 370
    move v5, v14

    .line 371
    const/4 v4, 0x1

    .line 372
    .line 373
    goto/16 :goto_6

    .line 374
    .line 375
    .line 376
    :cond_13
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 377
    move-result v1

    .line 378
    .line 379
    if-eqz v1, :cond_14

    .line 380
    return-void

    .line 381
    .line 382
    .line 383
    :cond_14
    invoke-static {v2, v13}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 384
    move-result v1

    .line 385
    .line 386
    if-eqz v1, :cond_15

    .line 387
    .line 388
    new-instance v1, Lcom/narvii/video/m0;

    .line 389
    .line 390
    .line 391
    invoke-direct {v1, v0, v3}, Lcom/narvii/video/m0;-><init>(Lcom/narvii/video/SceneEditorFragment;Ljava/util/ArrayList;)V

    .line 392
    .line 393
    .line 394
    invoke-direct {v0, v3, v1}, Lcom/narvii/video/SceneEditorFragment;->convertImageToVideo(Ljava/util/List;Lcom/narvii/util/Callback;)V

    .line 395
    goto :goto_c

    .line 396
    .line 397
    .line 398
    :cond_15
    invoke-static {v2, v14}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 399
    move-result v1

    .line 400
    .line 401
    if-eqz v1, :cond_16

    .line 402
    .line 403
    .line 404
    invoke-direct {v0, v3}, Lcom/narvii/video/SceneEditorFragment;->opMusic(Ljava/util/List;)V

    .line 405
    :cond_16
    :goto_c
    return-void
.end method

.method private static final onPickResult$lambda$19(Lcom/narvii/video/SceneEditorFragment;Ljava/util/ArrayList;Ljava/lang/Boolean;)V
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
    const-string v0, "$clipList"

    .line 9
    .line 10
    .line 11
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 14
    .line 15
    .line 16
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 17
    move-result p2

    .line 18
    const/4 v0, 0x0

    .line 19
    .line 20
    if-eqz p2, :cond_0

    .line 21
    .line 22
    new-instance p2, Lcom/narvii/video/k0;

    .line 23
    .line 24
    .line 25
    invoke-direct {p2, p0, p1}, Lcom/narvii/video/k0;-><init>(Lcom/narvii/video/SceneEditorFragment;Ljava/util/ArrayList;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p1, v0, p2}, Lcom/narvii/video/BaseMediaEditorFragment;->prepareAVClipList(Ljava/util/ArrayList;ZLcom/narvii/util/Callback;)V

    .line 29
    goto :goto_0

    .line 30
    .line 31
    .line 32
    :cond_0
    invoke-virtual {p0, v0}, Lcom/narvii/video/BaseMediaEditorFragment;->showInvalidDialog(Z)V

    .line 33
    :goto_0
    return-void
.end method

.method private static final onPickResult$lambda$19$lambda$18(Lcom/narvii/video/SceneEditorFragment;Ljava/util/ArrayList;Ljava/lang/Boolean;)V
    .locals 1

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
    const-string p2, "$clipList"

    .line 9
    .line 10
    .line 11
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    const/4 p2, 0x0

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, p2}, Lcom/narvii/video/SceneEditorFragment;->onEmptyStatusChanged(Z)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 19
    move-result-object p2

    .line 20
    .line 21
    .line 22
    invoke-interface {p2}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getVideoClipInfoList()Ljava/util/ArrayList;

    .line 23
    move-result-object p2

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 27
    move-result p2

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    .line 34
    invoke-interface {v0, p1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->addVideoClipList(Ljava/util/ArrayList;)Lcom/narvii/video/model/AVClipInfoPack;

    .line 35
    .line 36
    .line 37
    invoke-direct {p0}, Lcom/narvii/video/SceneEditorFragment;->checkSceneDuration()V

    .line 38
    .line 39
    .line 40
    invoke-direct {p0}, Lcom/narvii/video/SceneEditorFragment;->updateAddClipButtonVisibility()V

    .line 41
    .line 42
    new-instance p1, Lcom/narvii/video/l0;

    .line 43
    .line 44
    .line 45
    invoke-direct {p1, p0, p2}, Lcom/narvii/video/l0;-><init>(Lcom/narvii/video/SceneEditorFragment;I)V

    .line 46
    .line 47
    .line 48
    invoke-static {p1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 49
    return-void
.end method

.method private static final onPickResult$lambda$19$lambda$18$lambda$17(Lcom/narvii/video/SceneEditorFragment;I)V
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
    const/4 v0, 0x1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0, p1}, Lcom/narvii/video/ScrollingTimeLineFragment;->updateVideoTimeLineInfo(ZI)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->getMainTimeLineComponent()Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/narvii/video/widget/MediaTimeLineComponent;->refreshTimeLine()V

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getActiveVideoClip()Lcom/narvii/video/model/AVClipInfoPack;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    .line 26
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 27
    .line 28
    iget p1, p1, Lcom/narvii/video/model/BaseClipInfoPack;->indexInScene:I

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, p1, v0}, Lcom/narvii/video/BaseMediaEditorFragment;->safeSeekTo(II)V

    .line 32
    return-void
.end method

.method private final opAddVideo()V
    .locals 9

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/SceneEditorFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string v0, "mediaPickerFragment"

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 11
    move-object v2, v1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object v2, v0

    .line 14
    .line 15
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    iget-object v3, p0, Lcom/narvii/video/SceneEditorFragment;->intermediateFolder:Ljava/io/File;

    .line 21
    .line 22
    if-nez v3, :cond_1

    .line 23
    .line 24
    const-string v3, "intermediateFolder"

    .line 25
    .line 26
    .line 27
    invoke-static {v3}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    move-object v1, v3

    .line 30
    .line 31
    .line 32
    :goto_1
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object v3

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    .line 52
    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getVideoClipInfoList()Ljava/util/ArrayList;

    .line 53
    move-result-object v0

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 57
    move-result v0

    .line 58
    .line 59
    rsub-int/lit8 v4, v0, 0x1e

    .line 60
    const/4 v5, 0x0

    .line 61
    const/4 v6, 0x0

    .line 62
    .line 63
    const/16 v7, 0x18

    .line 64
    const/4 v8, 0x0

    .line 65
    .line 66
    .line 67
    invoke-static/range {v2 .. v8}, Lcom/narvii/pre_editing/MediaPreEditingActivityKt;->pickVideoFromGalleryAndYoutube$default(Lcom/narvii/media/MediaPickerFragment;Ljava/lang/String;IIZILjava/lang/Object;)V

    .line 68
    return-void
.end method

.method private final opAttachment(I)V
    .locals 0

    return-void
.end method

.method private final opCrop()V
    .locals 0

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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/video/SceneEditorFragment;->getFragmentRegister()Lcom/narvii/app/FragmentRegister;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const-string v1, "audioEditor"

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/narvii/app/FragmentRegister;->getFragmentDeepLinkUri(Ljava/lang/String;)Landroid/net/Uri;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    new-instance v1, Landroid/content/Intent;

    .line 17
    .line 18
    const-string v2, "android.intent.action.VIEW"

    .line 19
    .line 20
    .line 21
    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    .line 28
    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getVideoClipInfoList()Ljava/util/ArrayList;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    .line 32
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    const-string v2, "inputVideoClipList"

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    .line 40
    const-string v0, "inputAudioClipList"

    .line 41
    .line 42
    .line 43
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 44
    move-result-object p1

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 51
    move-result-object p1

    .line 52
    .line 53
    .line 54
    invoke-interface {p1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getCaptionList()Ljava/util/ArrayList;

    .line 55
    move-result-object p1

    .line 56
    .line 57
    .line 58
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 59
    move-result-object p1

    .line 60
    .line 61
    const-string v0, "inputCaptionList"

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 68
    move-result-object p1

    .line 69
    .line 70
    .line 71
    invoke-interface {p1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getStickerList()Ljava/util/ArrayList;

    .line 72
    move-result-object p1

    .line 73
    .line 74
    .line 75
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 76
    move-result-object p1

    .line 77
    .line 78
    const-string v0, "inputStickerList"

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->getFrameRetrieverManager()Lcom/narvii/video/services/FrameRetrieverManager;

    .line 85
    move-result-object p1

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1}, Lcom/narvii/video/services/FrameRetrieverManager;->getOutputFolderPath()Ljava/lang/String;

    .line 89
    move-result-object p1

    .line 90
    .line 91
    const-string v0, "frameRetrieverOutputFolder"

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->getREQUEST_CODE_SCENE_EDITOR()I

    .line 98
    move-result p1

    .line 99
    .line 100
    .line 101
    invoke-static {p0, v1, p1}, Lcom/narvii/video/SceneEditorFragment;->safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V

    .line 102
    .line 103
    new-instance p1, Lcom/narvii/video/n0;

    .line 104
    .line 105
    .line 106
    invoke-direct {p1, p0}, Lcom/narvii/video/n0;-><init>(Lcom/narvii/video/SceneEditorFragment;)V

    .line 107
    .line 108
    .line 109
    invoke-static {p1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 110
    :cond_0
    return-void
.end method

.method private static final opMusic$lambda$3$lambda$2(Lcom/narvii/video/SceneEditorFragment;)V
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
    const/4 v0, 0x1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/narvii/video/ScrollingTimeLineFragment;->setSubAudioEditing(Z)V

    .line 11
    return-void
.end method

.method private final opPIP()V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getPipVideoList()Ljava/util/ArrayList;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x1

    .line 14
    xor-int/2addr v0, v1

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    .line 23
    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getPipVideoList()Ljava/util/ArrayList;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    .line 27
    invoke-direct {p0, v0}, Lcom/narvii/video/SceneEditorFragment;->startPipEditFragment(Ljava/util/List;)V

    .line 28
    goto :goto_0

    .line 29
    .line 30
    :cond_0
    iget-object v0, p0, Lcom/narvii/video/SceneEditorFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 31
    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    const-string v0, "mediaPickerFragment"

    .line 35
    .line 36
    .line 37
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 38
    const/4 v0, 0x0

    .line 39
    .line 40
    :cond_1
    const/16 v2, 0x303b

    .line 41
    const/4 v3, 0x0

    .line 42
    .line 43
    const-string v4, ""

    .line 44
    .line 45
    .line 46
    invoke-static {v0, v4, v1, v2, v3}, Lcom/narvii/pre_editing/MediaPreEditingActivityKt;->pickVideoFromGalleryAndYoutube(Lcom/narvii/media/MediaPickerFragment;Ljava/lang/String;IIZ)V

    .line 47
    :goto_0
    return-void
.end method

.method private final opSpeed()V
    .locals 0

    return-void
.end method

.method private final opSplit()V
    .locals 0

    return-void
.end method

.method private final opTrim()V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getActiveVideoClip()Lcom/narvii/video/model/AVClipInfoPack;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    const/4 v1, 0x1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v1}, Lcom/narvii/video/ScrollingTimeLineFragment;->setSubVideoEditing(Z)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lcom/narvii/video/SceneEditorFragment;->getFragmentRegister()Lcom/narvii/app/FragmentRegister;

    .line 14
    move-result-object v2

    .line 15
    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-static {v2}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 20
    .line 21
    const-string v3, "mediaEditor"

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, v3}, Lcom/narvii/app/FragmentRegister;->getFragmentDeepLinkUri(Ljava/lang/String;)Landroid/net/Uri;

    .line 25
    move-result-object v2

    .line 26
    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    new-instance v3, Landroid/content/Intent;

    .line 30
    .line 31
    const-string v4, "android.intent.action.VIEW"

    .line 32
    .line 33
    .line 34
    invoke-direct {v3, v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 35
    .line 36
    const-string v2, "clipInfoPack"

    .line 37
    .line 38
    .line 39
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    .line 45
    const-string v0, "isVideoTrimming"

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 49
    .line 50
    const-string v0, "minOutputLength"

    .line 51
    .line 52
    const/16 v1, 0x3e8

    .line 53
    .line 54
    .line 55
    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->getREQUEST_CODE_SCENE_EDITOR()I

    .line 59
    move-result v0

    .line 60
    .line 61
    .line 62
    invoke-static {p0, v3, v0}, Lcom/narvii/video/SceneEditorFragment;->safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V

    .line 63
    :cond_0
    return-void
.end method

.method public static safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V
    .locals 1
    .param p0, "p0"    # Landroidx/fragment/app/Fragment;
    .param p1, "p1"    # Landroid/content/Intent;
    .param p2, "p2"    # I

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private final sendEditActionLog(Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/logging/ActSemantic;->edit:Lcom/narvii/logging/ActSemantic;

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 14
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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/video/SceneEditorFragment;->getFragmentRegister()Lcom/narvii/app/FragmentRegister;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    const-string v1, "pipEditor"

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/narvii/app/FragmentRegister;->getFragmentDeepLinkUri(Ljava/lang/String;)Landroid/net/Uri;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    new-instance v1, Landroid/content/Intent;

    .line 17
    .line 18
    const-string v2, "android.intent.action.VIEW"

    .line 19
    .line 20
    .line 21
    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    .line 28
    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getVideoClipInfoList()Ljava/util/ArrayList;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    .line 32
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    const-string v2, "inputVideoClipList"

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 42
    move-result-object v0

    .line 43
    .line 44
    .line 45
    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getAudioClipInfoList()Ljava/util/ArrayList;

    .line 46
    move-result-object v0

    .line 47
    .line 48
    .line 49
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 50
    move-result-object v0

    .line 51
    .line 52
    const-string v2, "inputAudioClipList"

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->getFrameRetrieverManager()Lcom/narvii/video/services/FrameRetrieverManager;

    .line 59
    move-result-object v0

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/narvii/video/services/FrameRetrieverManager;->getOutputFolderPath()Ljava/lang/String;

    .line 63
    move-result-object v0

    .line 64
    .line 65
    const-string v2, "frameRetrieverOutputFolder"

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    .line 70
    const-string v0, "inputPipInfoPackList"

    .line 71
    .line 72
    .line 73
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 74
    move-result-object p1

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 81
    move-result-object p1

    .line 82
    .line 83
    .line 84
    invoke-interface {p1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getCaptionList()Ljava/util/ArrayList;

    .line 85
    move-result-object p1

    .line 86
    .line 87
    .line 88
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 89
    move-result-object p1

    .line 90
    .line 91
    const-string v0, "inputCaptionList"

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 98
    move-result-object p1

    .line 99
    .line 100
    .line 101
    invoke-interface {p1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getStickerList()Ljava/util/ArrayList;

    .line 102
    move-result-object p1

    .line 103
    .line 104
    .line 105
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 106
    move-result-object p1

    .line 107
    .line 108
    const-string v0, "inputStickerList"

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getOutputFileDir()Ljava/io/File;

    .line 115
    move-result-object p1

    .line 116
    .line 117
    if-eqz p1, :cond_0

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 121
    move-result-object p1

    .line 122
    goto :goto_0

    .line 123
    :cond_0
    const/4 p1, 0x0

    .line 124
    .line 125
    :goto_0
    const-string v0, "outputFileDir"

    .line 126
    .line 127
    .line 128
    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    .line 130
    const/16 p1, 0x303a

    .line 131
    .line 132
    .line 133
    invoke-static {p0, v1, p1}, Lcom/narvii/video/SceneEditorFragment;->safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V

    .line 134
    :cond_1
    return-void
.end method

.method private final updateAddClipButtonVisibility()V
    .locals 0

    return-void
.end method

.method public static synthetic z(Lcom/narvii/video/SceneEditorFragment;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/narvii/video/SceneEditorFragment;->opMusic$lambda$3$lambda$2(Lcom/narvii/video/SceneEditorFragment;)V

    return-void
.end method


# virtual methods
.method protected changeVideoPlaybackStatus(ZZ)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/video/ScrollingTimeLineFragment;->changeVideoPlaybackStatus(ZZ)V

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/narvii/video/SceneEditorFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentSceneEditorBinding;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    iget-object p1, p1, Lcom/narvii/mediaeditor/databinding/FragmentSceneEditorBinding;->clipFastSwitchingPanel:Lcom/narvii/video/widget/ClipFastSwitchingPanel;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 15
    move-result p1

    .line 16
    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    .line 20
    invoke-direct {p0}, Lcom/narvii/video/SceneEditorFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentSceneEditorBinding;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    iget-object p1, p1, Lcom/narvii/mediaeditor/databinding/FragmentSceneEditorBinding;->clipFastSwitchingPanel:Lcom/narvii/video/widget/ClipFastSwitchingPanel;

    .line 24
    .line 25
    const/16 p2, 0x8

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 29
    .line 30
    .line 31
    invoke-direct {p0}, Lcom/narvii/video/SceneEditorFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentSceneEditorBinding;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    iget-object p1, p1, Lcom/narvii/mediaeditor/databinding/FragmentSceneEditorBinding;->coverLayer:Landroid/view/View;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 38
    :cond_0
    return-void
.end method

.method protected getAudioInputClipList()Ljava/util/ArrayList;
    .locals 3
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
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    iget-object v1, p0, Lcom/narvii/video/SceneEditorFragment;->scene:Lcom/narvii/scene/model/SceneInfo;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    return-object v0

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-static {v1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 14
    .line 15
    iget-object v1, v1, Lcom/narvii/scene/model/SceneInfo;->audioClips:Ljava/util/ArrayList;

    .line 16
    .line 17
    const-string v2, "audioClips"

    .line 18
    .line 19
    .line 20
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 24
    move-result v1

    .line 25
    .line 26
    xor-int/lit8 v1, v1, 0x1

    .line 27
    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    iget-object v1, p0, Lcom/narvii/video/SceneEditorFragment;->scene:Lcom/narvii/scene/model/SceneInfo;

    .line 31
    .line 32
    .line 33
    invoke-static {v1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 34
    .line 35
    iget-object v1, v1, Lcom/narvii/scene/model/SceneInfo;->audioClips:Ljava/util/ArrayList;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 39
    :cond_1
    return-object v0
.end method

.method protected getCaptionList()Ljava/util/ArrayList;
    .locals 3
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
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    iget-object v1, p0, Lcom/narvii/video/SceneEditorFragment;->scene:Lcom/narvii/scene/model/SceneInfo;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    return-object v0

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-static {v1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 14
    .line 15
    iget-object v1, v1, Lcom/narvii/scene/model/SceneInfo;->captions:Ljava/util/ArrayList;

    .line 16
    .line 17
    const-string v2, "captions"

    .line 18
    .line 19
    .line 20
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 24
    move-result v1

    .line 25
    .line 26
    xor-int/lit8 v1, v1, 0x1

    .line 27
    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    iget-object v1, p0, Lcom/narvii/video/SceneEditorFragment;->scene:Lcom/narvii/scene/model/SceneInfo;

    .line 31
    .line 32
    .line 33
    invoke-static {v1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 34
    .line 35
    iget-object v1, v1, Lcom/narvii/scene/model/SceneInfo;->captions:Ljava/util/ArrayList;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 39
    :cond_1
    return-object v0
.end method

.method public getCustomTheme()I
    .locals 1

    sget v0, Lcom/narvii/mediaeditor/R$style;->AminoTheme_Overlay:I

    return v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/SceneEditorFragment;->scene:Lcom/narvii/scene/model/SceneInfo;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/scene/model/SceneInfo;->isGeneratedFromTemplate()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    .line 13
    const-string/jumbo v0, "video_template_scene_edit"

    .line 14
    return-object v0

    .line 15
    .line 16
    :cond_0
    const-string/jumbo v0, "scene_edit"

    .line 17
    return-object v0
.end method

.method protected getPipClipList()Ljava/util/ArrayList;
    .locals 3
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
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    iget-object v1, p0, Lcom/narvii/video/SceneEditorFragment;->scene:Lcom/narvii/scene/model/SceneInfo;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    return-object v0

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-static {v1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 14
    .line 15
    iget-object v1, v1, Lcom/narvii/scene/model/SceneInfo;->pipClips:Ljava/util/ArrayList;

    .line 16
    .line 17
    const-string v2, "pipClips"

    .line 18
    .line 19
    .line 20
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 24
    move-result v1

    .line 25
    .line 26
    xor-int/lit8 v1, v1, 0x1

    .line 27
    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    iget-object v1, p0, Lcom/narvii/video/SceneEditorFragment;->scene:Lcom/narvii/scene/model/SceneInfo;

    .line 31
    .line 32
    .line 33
    invoke-static {v1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 34
    .line 35
    iget-object v1, v1, Lcom/narvii/scene/model/SceneInfo;->pipClips:Ljava/util/ArrayList;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 39
    :cond_1
    return-object v0
.end method

.method protected getStickerList()Ljava/util/ArrayList;
    .locals 3
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
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    iget-object v1, p0, Lcom/narvii/video/SceneEditorFragment;->scene:Lcom/narvii/scene/model/SceneInfo;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    return-object v0

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-static {v1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 14
    .line 15
    iget-object v1, v1, Lcom/narvii/scene/model/SceneInfo;->stickers:Ljava/util/ArrayList;

    .line 16
    .line 17
    const-string/jumbo v2, "stickers"

    .line 18
    .line 19
    .line 20
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 24
    move-result v1

    .line 25
    .line 26
    xor-int/lit8 v1, v1, 0x1

    .line 27
    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    iget-object v1, p0, Lcom/narvii/video/SceneEditorFragment;->scene:Lcom/narvii/scene/model/SceneInfo;

    .line 31
    .line 32
    .line 33
    invoke-static {v1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 34
    .line 35
    iget-object v1, v1, Lcom/narvii/scene/model/SceneInfo;->stickers:Ljava/util/ArrayList;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 39
    :cond_1
    return-object v0
.end method

.method protected getVideoInputClipList()Ljava/util/ArrayList;
    .locals 6
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
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    iget-object v1, p0, Lcom/narvii/video/SceneEditorFragment;->scene:Lcom/narvii/scene/model/SceneInfo;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    return-object v0

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-static {v1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 14
    .line 15
    iget-object v1, v1, Lcom/narvii/scene/model/SceneInfo;->videoClips:Ljava/util/ArrayList;

    .line 16
    .line 17
    .line 18
    const-string/jumbo v2, "videoClips"

    .line 19
    .line 20
    .line 21
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 25
    move-result v1

    .line 26
    .line 27
    xor-int/lit8 v1, v1, 0x1

    .line 28
    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    iget-object v1, p0, Lcom/narvii/video/SceneEditorFragment;->scene:Lcom/narvii/scene/model/SceneInfo;

    .line 32
    .line 33
    .line 34
    invoke-static {v1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 35
    .line 36
    iget-object v1, v1, Lcom/narvii/scene/model/SceneInfo;->videoClips:Ljava/util/ArrayList;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 40
    goto :goto_1

    .line 41
    .line 42
    :cond_1
    iget-object v1, p0, Lcom/narvii/video/SceneEditorFragment;->scene:Lcom/narvii/scene/model/SceneInfo;

    .line 43
    .line 44
    .line 45
    invoke-static {v1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 46
    .line 47
    iget-object v1, v1, Lcom/narvii/scene/model/SceneInfo;->inputFilePathList:Ljava/util/List;

    .line 48
    .line 49
    .line 50
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 51
    move-result v1

    .line 52
    const/4 v2, 0x0

    .line 53
    .line 54
    :goto_0
    if-ge v2, v1, :cond_3

    .line 55
    .line 56
    new-instance v3, Lcom/narvii/video/model/AVClipInfoPack;

    .line 57
    .line 58
    .line 59
    invoke-direct {v3}, Lcom/narvii/video/model/AVClipInfoPack;-><init>()V

    .line 60
    .line 61
    iput v2, v3, Lcom/narvii/video/model/BaseClipInfoPack;->indexInScene:I

    .line 62
    .line 63
    iget-object v4, p0, Lcom/narvii/video/SceneEditorFragment;->scene:Lcom/narvii/scene/model/SceneInfo;

    .line 64
    .line 65
    .line 66
    invoke-static {v4}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 67
    .line 68
    iget-object v4, v4, Lcom/narvii/scene/model/SceneInfo;->inputFilePathList:Ljava/util/List;

    .line 69
    .line 70
    .line 71
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 72
    move-result-object v4

    .line 73
    .line 74
    check-cast v4, Ljava/lang/String;

    .line 75
    .line 76
    iput-object v4, v3, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    .line 77
    .line 78
    iget-object v4, p0, Lcom/narvii/video/SceneEditorFragment;->scene:Lcom/narvii/scene/model/SceneInfo;

    .line 79
    .line 80
    .line 81
    invoke-static {v4}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 82
    .line 83
    iget-object v4, v4, Lcom/narvii/scene/model/SceneInfo;->inputFilePathList:Ljava/util/List;

    .line 84
    .line 85
    .line 86
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 87
    move-result-object v4

    .line 88
    .line 89
    check-cast v4, Ljava/lang/String;

    .line 90
    .line 91
    iput-object v4, v3, Lcom/narvii/video/model/AVClipInfoPack;->originalInputPath:Ljava/lang/String;

    .line 92
    .line 93
    iget-object v4, p0, Lcom/narvii/video/SceneEditorFragment;->scene:Lcom/narvii/scene/model/SceneInfo;

    .line 94
    .line 95
    .line 96
    invoke-static {v4}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 97
    .line 98
    iget-object v4, v4, Lcom/narvii/scene/model/SceneInfo;->inputFileFrom:Ljava/util/List;

    .line 99
    .line 100
    if-eqz v4, :cond_2

    .line 101
    .line 102
    iget-object v4, p0, Lcom/narvii/video/SceneEditorFragment;->scene:Lcom/narvii/scene/model/SceneInfo;

    .line 103
    .line 104
    .line 105
    invoke-static {v4}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 106
    .line 107
    iget-object v4, v4, Lcom/narvii/scene/model/SceneInfo;->inputFileFrom:Ljava/util/List;

    .line 108
    .line 109
    .line 110
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 111
    move-result v4

    .line 112
    .line 113
    if-le v4, v2, :cond_2

    .line 114
    .line 115
    iget-object v4, p0, Lcom/narvii/video/SceneEditorFragment;->scene:Lcom/narvii/scene/model/SceneInfo;

    .line 116
    .line 117
    .line 118
    invoke-static {v4}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 119
    .line 120
    iget-object v4, v4, Lcom/narvii/scene/model/SceneInfo;->inputFileFrom:Ljava/util/List;

    .line 121
    .line 122
    .line 123
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 124
    move-result-object v4

    .line 125
    .line 126
    const-string v5, "get(...)"

    .line 127
    .line 128
    .line 129
    invoke-static {v4, v5}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    .line 131
    check-cast v4, Ljava/lang/Number;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    .line 135
    move-result v4

    .line 136
    .line 137
    iput v4, v3, Lcom/narvii/video/model/AVClipInfoPack;->videoSource:I

    .line 138
    .line 139
    .line 140
    :cond_2
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    .line 142
    add-int/lit8 v2, v2, 0x1

    .line 143
    goto :goto_0

    .line 144
    :cond_3
    :goto_1
    return-object v0
.end method

.method public initComponent()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/video/SceneEditorFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentSceneEditorBinding;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget-object v0, v0, Lcom/narvii/mediaeditor/databinding/FragmentSceneEditorBinding;->videoDuration:Landroid/widget/TextView;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/narvii/video/ScrollingTimeLineFragment;->setVideoDurationText(Landroid/widget/TextView;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lcom/narvii/video/SceneEditorFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentSceneEditorBinding;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    iget-object v0, v0, Lcom/narvii/mediaeditor/databinding/FragmentSceneEditorBinding;->videoPlaybackTime:Landroid/widget/TextView;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Lcom/narvii/video/ScrollingTimeLineFragment;->setVideoPlaybackTimeText(Landroid/widget/TextView;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Lcom/narvii/video/SceneEditorFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentSceneEditorBinding;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    iget-object v0, v0, Lcom/narvii/mediaeditor/databinding/FragmentSceneEditorBinding;->divider:Landroid/view/View;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v0}, Lcom/narvii/video/ScrollingTimeLineFragment;->setVideoPlaybackTimeDivider(Landroid/view/View;)V

    .line 28
    .line 29
    .line 30
    invoke-direct {p0}, Lcom/narvii/video/SceneEditorFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentSceneEditorBinding;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    iget-object v0, v0, Lcom/narvii/mediaeditor/databinding/FragmentSceneEditorBinding;->videoViewPlayer:Lcom/narvii/video/widget/videoview/NVEditorPreviewVideoVIew;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v0}, Lcom/narvii/video/BaseMediaEditorFragment;->setPreviewVideoView(Lcom/narvii/video/widget/videoview/NVEditorPreviewVideoVIew;)V

    .line 37
    .line 38
    .line 39
    invoke-direct {p0}, Lcom/narvii/video/SceneEditorFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentSceneEditorBinding;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    iget-object v0, v0, Lcom/narvii/mediaeditor/databinding/FragmentSceneEditorBinding;->playerButton:Landroid/widget/ImageView;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v0}, Lcom/narvii/video/BaseMediaEditorFragment;->setPlayerButton(Landroid/widget/ImageView;)V

    .line 46
    .line 47
    .line 48
    invoke-direct {p0}, Lcom/narvii/video/SceneEditorFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentSceneEditorBinding;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    iget-object v0, v0, Lcom/narvii/mediaeditor/databinding/FragmentSceneEditorBinding;->pauseShadow:Landroid/view/View;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, v0}, Lcom/narvii/video/BaseMediaEditorFragment;->setPauseShadow(Landroid/view/View;)V

    .line 55
    .line 56
    .line 57
    invoke-direct {p0}, Lcom/narvii/video/SceneEditorFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentSceneEditorBinding;

    .line 58
    move-result-object v0

    .line 59
    .line 60
    iget-object v0, v0, Lcom/narvii/mediaeditor/databinding/FragmentSceneEditorBinding;->videoTimeLineComponent:Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, v0}, Lcom/narvii/video/ScrollingTimeLineFragment;->setMainTimeLineComponent(Lcom/narvii/video/widget/MediaTimeLineComponent;)V

    .line 64
    return-void
.end method

.method public initFrameRetrieverManager()V
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->getFrameRetrieverManager()Lcom/narvii/video/services/FrameRetrieverManager;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/narvii/video/SceneEditorFragment;->scene:Lcom/narvii/scene/model/SceneInfo;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    iget-object v1, v1, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x0

    .line 13
    .line 14
    :goto_0
    if-nez v1, :cond_1

    .line 15
    .line 16
    .line 17
    invoke-static {}, Ljava/lang/Math;->random()D

    .line 18
    move-result-wide v1

    .line 19
    .line 20
    .line 21
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    :cond_1
    const-string/jumbo v2, "scene"

    .line 25
    const/4 v3, 0x1

    .line 26
    const/4 v4, 0x0

    .line 27
    .line 28
    const/16 v5, 0x8

    .line 29
    const/4 v6, 0x0

    .line 30
    .line 31
    .line 32
    invoke-static/range {v0 .. v6}, Lcom/narvii/video/services/FrameRetrieverManager;->initRetriever$default(Lcom/narvii/video/services/FrameRetrieverManager;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/Object;)V

    .line 33
    return-void
.end method

.method protected initInputClips()Z
    .locals 5

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/photos/PhotoManager;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/narvii/photos/PhotoManager;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    iput-object v0, p0, Lcom/narvii/video/SceneEditorFragment;->photoManager:Lcom/narvii/photos/PhotoManager;

    .line 8
    .line 9
    const-string/jumbo v0, "sceneInfo"

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    sget-object v1, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 18
    .line 19
    const-class v2, Lcom/narvii/scene/model/SceneInfo;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v0, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    check-cast v0, Lcom/narvii/scene/model/SceneInfo;

    .line 26
    .line 27
    iput-object v0, p0, Lcom/narvii/video/SceneEditorFragment;->scene:Lcom/narvii/scene/model/SceneInfo;

    .line 28
    .line 29
    :cond_0
    iget-object v0, p0, Lcom/narvii/video/SceneEditorFragment;->scene:Lcom/narvii/scene/model/SceneInfo;

    .line 30
    .line 31
    if-eqz v0, :cond_6

    .line 32
    .line 33
    iget-object v1, v0, Lcom/narvii/scene/model/SceneInfo;->videoClips:Ljava/util/ArrayList;

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
    if-eqz v2, :cond_1

    .line 44
    .line 45
    .line 46
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    move-result-object v2

    .line 48
    .line 49
    check-cast v2, Lcom/narvii/video/model/AVClipInfoPack;

    .line 50
    .line 51
    iget-object v3, v2, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    .line 52
    .line 53
    iput-object v3, v2, Lcom/narvii/video/model/AVClipInfoPack;->originalInputPath:Ljava/lang/String;

    .line 54
    .line 55
    iget-object v3, p0, Lcom/narvii/video/SceneEditorFragment;->orgVideoClipList:Ljava/util/ArrayList;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2}, Lcom/narvii/video/model/AVClipInfoPack;->copy()Lcom/narvii/video/model/AVClipInfoPack;

    .line 59
    move-result-object v2

    .line 60
    .line 61
    .line 62
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    goto :goto_0

    .line 64
    .line 65
    :cond_1
    iget-object v1, v0, Lcom/narvii/scene/model/SceneInfo;->audioClips:Ljava/util/ArrayList;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 69
    move-result-object v1

    .line 70
    .line 71
    .line 72
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 73
    move-result v2

    .line 74
    .line 75
    if-eqz v2, :cond_2

    .line 76
    .line 77
    .line 78
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 79
    move-result-object v2

    .line 80
    .line 81
    check-cast v2, Lcom/narvii/video/model/AVClipInfoPack;

    .line 82
    .line 83
    iget-object v3, p0, Lcom/narvii/video/SceneEditorFragment;->orgAudioClipList:Ljava/util/ArrayList;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2}, Lcom/narvii/video/model/AVClipInfoPack;->copy()Lcom/narvii/video/model/AVClipInfoPack;

    .line 87
    move-result-object v2

    .line 88
    .line 89
    .line 90
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    goto :goto_1

    .line 92
    .line 93
    :cond_2
    iget-object v1, v0, Lcom/narvii/scene/model/SceneInfo;->captions:Ljava/util/ArrayList;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 97
    move-result-object v1

    .line 98
    .line 99
    .line 100
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 101
    move-result v2

    .line 102
    .line 103
    if-eqz v2, :cond_3

    .line 104
    .line 105
    .line 106
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 107
    move-result-object v2

    .line 108
    .line 109
    check-cast v2, Lcom/narvii/video/model/Caption;

    .line 110
    .line 111
    iget-object v3, p0, Lcom/narvii/video/SceneEditorFragment;->orgCaptionList:Ljava/util/ArrayList;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v2}, Lcom/narvii/video/model/Caption;->copy()Lcom/narvii/video/model/Caption;

    .line 115
    move-result-object v2

    .line 116
    .line 117
    .line 118
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    goto :goto_2

    .line 120
    .line 121
    :cond_3
    iget-object v1, v0, Lcom/narvii/scene/model/SceneInfo;->stickers:Ljava/util/ArrayList;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 125
    move-result-object v1

    .line 126
    .line 127
    .line 128
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 129
    move-result v2

    .line 130
    .line 131
    if-eqz v2, :cond_4

    .line 132
    .line 133
    .line 134
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 135
    move-result-object v2

    .line 136
    .line 137
    check-cast v2, Lcom/narvii/video/model/StickerInfoPack;

    .line 138
    .line 139
    iget-object v3, p0, Lcom/narvii/video/SceneEditorFragment;->orgStickerList:Ljava/util/ArrayList;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v2}, Lcom/narvii/video/model/StickerInfoPack;->copy()Lcom/narvii/video/model/StickerInfoPack;

    .line 143
    move-result-object v2

    .line 144
    .line 145
    .line 146
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    goto :goto_3

    .line 148
    .line 149
    :cond_4
    iget-object v1, v0, Lcom/narvii/scene/model/SceneInfo;->pipClips:Ljava/util/ArrayList;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 153
    move-result-object v1

    .line 154
    .line 155
    .line 156
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 157
    move-result v2

    .line 158
    .line 159
    if-eqz v2, :cond_5

    .line 160
    .line 161
    .line 162
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 163
    move-result-object v2

    .line 164
    .line 165
    check-cast v2, Lcom/narvii/pip/PipInfoPack;

    .line 166
    .line 167
    iget-object v3, p0, Lcom/narvii/video/SceneEditorFragment;->orgPipList:Ljava/util/ArrayList;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v2}, Lcom/narvii/pip/PipInfoPack;->copy()Lcom/narvii/pip/PipInfoPack;

    .line 171
    move-result-object v2

    .line 172
    .line 173
    .line 174
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    goto :goto_4

    .line 176
    .line 177
    .line 178
    :cond_5
    invoke-virtual {v0}, Lcom/narvii/scene/model/SceneInfo;->isGeneratedFromTemplate()Z

    .line 179
    move-result v0

    .line 180
    .line 181
    .line 182
    invoke-direct {p0, v0}, Lcom/narvii/video/SceneEditorFragment;->initOperationPanel(Z)V

    .line 183
    .line 184
    :cond_6
    const-string v0, "outputFileDir"

    .line 185
    .line 186
    .line 187
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 188
    move-result-object v0

    .line 189
    .line 190
    .line 191
    invoke-static {v0}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 192
    move-result v1

    .line 193
    const/4 v2, 0x0

    .line 194
    const/4 v3, 0x1

    .line 195
    .line 196
    if-eqz v1, :cond_7

    .line 197
    const/4 v0, 0x0

    .line 198
    .line 199
    .line 200
    invoke-static {p0, v0, v3, v2}, Lcom/narvii/video/BaseMediaEditorFragment;->showInvalidDialog$default(Lcom/narvii/video/BaseMediaEditorFragment;ZILjava/lang/Object;)V

    .line 201
    return v0

    .line 202
    .line 203
    :cond_7
    new-instance v1, Ljava/io/File;

    .line 204
    .line 205
    .line 206
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {p0, v1}, Lcom/narvii/video/BaseMediaEditorFragment;->setOutputFileDir(Ljava/io/File;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getOutputFileDir()Ljava/io/File;

    .line 213
    move-result-object v0

    .line 214
    .line 215
    .line 216
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 220
    move-result v0

    .line 221
    .line 222
    if-nez v0, :cond_8

    .line 223
    .line 224
    .line 225
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getOutputFileDir()Ljava/io/File;

    .line 226
    move-result-object v0

    .line 227
    .line 228
    .line 229
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 233
    .line 234
    :cond_8
    new-instance v0, Ljava/io/File;

    .line 235
    .line 236
    .line 237
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getOutputFileDir()Ljava/io/File;

    .line 238
    move-result-object v1

    .line 239
    .line 240
    .line 241
    invoke-static {v1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 242
    .line 243
    iget-object v4, p0, Lcom/narvii/video/SceneEditorFragment;->scene:Lcom/narvii/scene/model/SceneInfo;

    .line 244
    .line 245
    if-eqz v4, :cond_9

    .line 246
    .line 247
    iget-object v2, v4, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    .line 248
    .line 249
    :cond_9
    if-nez v2, :cond_a

    .line 250
    .line 251
    const-string v2, "default"

    .line 252
    .line 253
    .line 254
    :cond_a
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 255
    .line 256
    iput-object v0, p0, Lcom/narvii/video/SceneEditorFragment;->outputFolder:Ljava/io/File;

    .line 257
    .line 258
    .line 259
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 260
    .line 261
    new-instance v0, Ljava/io/File;

    .line 262
    .line 263
    .line 264
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getOutputFileDir()Ljava/io/File;

    .line 265
    move-result-object v1

    .line 266
    .line 267
    const-string/jumbo v2, "scene_intermediate_file"

    .line 268
    .line 269
    .line 270
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 271
    .line 272
    iput-object v0, p0, Lcom/narvii/video/SceneEditorFragment;->intermediateFolder:Ljava/io/File;

    .line 273
    .line 274
    .line 275
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 276
    .line 277
    .line 278
    invoke-virtual {p0}, Lcom/narvii/video/SceneEditorFragment;->onAVClipsPrepared()V

    .line 279
    return v3
.end method

.method protected onAVClipsPrepared()V
    .locals 9

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->onAVClipsPrepared()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/video/SceneEditorFragment;->getVideoInputClipList()Ljava/util/ArrayList;

    .line 7
    move-result-object v7

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/narvii/video/SceneEditorFragment;->getAudioInputClipList()Ljava/util/ArrayList;

    .line 11
    move-result-object v3

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/narvii/video/SceneEditorFragment;->getCaptionList()Ljava/util/ArrayList;

    .line 15
    move-result-object v4

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/narvii/video/SceneEditorFragment;->getStickerList()Ljava/util/ArrayList;

    .line 19
    move-result-object v5

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/narvii/video/SceneEditorFragment;->getPipClipList()Ljava/util/ArrayList;

    .line 23
    move-result-object v6

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/narvii/video/SceneEditorFragment;->initFrameRetrieverManager()V

    .line 27
    .line 28
    new-instance v8, Lcom/narvii/video/p0;

    .line 29
    move-object v0, v8

    .line 30
    move-object v1, p0

    .line 31
    move-object v2, v7

    .line 32
    .line 33
    .line 34
    invoke-direct/range {v0 .. v6}, Lcom/narvii/video/p0;-><init>(Lcom/narvii/video/SceneEditorFragment;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 35
    .line 36
    .line 37
    invoke-direct {p0, v7, v8}, Lcom/narvii/video/SceneEditorFragment;->convertImageToVideo(Ljava/util/List;Lcom/narvii/util/Callback;)V

    .line 38
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/video/BaseMediaEditorFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/video/SceneEditorFragment;->scene:Lcom/narvii/scene/model/SceneInfo;

    .line 6
    const/4 v0, 0x0

    .line 7
    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/narvii/scene/model/SceneInfo;->isGeneratedFromTemplate()Z

    .line 12
    move-result p1

    .line 13
    const/4 v1, 0x1

    .line 14
    .line 15
    if-ne p1, v1, :cond_1

    .line 16
    .line 17
    iget-object p1, p0, Lcom/narvii/video/SceneEditorFragment;->scene:Lcom/narvii/scene/model/SceneInfo;

    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    iget-object p1, p1, Lcom/narvii/scene/model/SceneInfo;->title:Ljava/lang/String;

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move-object p1, v0

    .line 24
    .line 25
    .line 26
    :goto_0
    invoke-static {p1}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 27
    move-result p1

    .line 28
    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    const-string p1, ""

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 35
    goto :goto_1

    .line 36
    .line 37
    :cond_1
    iget-object p1, p0, Lcom/narvii/video/SceneEditorFragment;->scene:Lcom/narvii/scene/model/SceneInfo;

    .line 38
    .line 39
    if-eqz p1, :cond_2

    .line 40
    .line 41
    iget-object v0, p1, Lcom/narvii/scene/model/SceneInfo;->title:Ljava/lang/String;

    .line 42
    .line 43
    :cond_2
    if-nez v0, :cond_3

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 47
    move-result-object p1

    .line 48
    .line 49
    sget v0, Lcom/narvii/mediaeditor/R$string;->scene:I

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 53
    move-result-object v0

    .line 54
    .line 55
    const-string p1, "getString(...)"

    .line 56
    .line 57
    .line 58
    invoke-static {v0, p1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    :cond_3
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 62
    :goto_1
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 18
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
    invoke-super/range {p0 .. p3}, Lcom/narvii/video/ScrollingTimeLineFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 12
    .line 13
    const/16 v4, 0xd05

    .line 14
    .line 15
    const-wide/16 v5, 0x2bc

    .line 16
    const/4 v7, 0x1

    .line 17
    .line 18
    const-class v8, Lcom/narvii/video/model/AVClipInfoPack;

    .line 19
    const/4 v9, 0x0

    .line 20
    const/4 v10, -0x1

    .line 21
    const/4 v11, 0x0

    .line 22
    .line 23
    if-ne v1, v4, :cond_3

    .line 24
    .line 25
    if-ne v2, v10, :cond_3

    .line 26
    .line 27
    if-eqz v3, :cond_0

    .line 28
    .line 29
    .line 30
    const-string/jumbo v1, "videoClipList"

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    move-result-object v9

    .line 35
    .line 36
    :cond_0
    if-eqz v3, :cond_1

    .line 37
    .line 38
    const-string v1, "activeClipIndex"

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3, v1, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 42
    move-result v1

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    move v1, v11

    .line 45
    .line 46
    :goto_0
    if-eqz v3, :cond_2

    .line 47
    .line 48
    const-string v2, "inClipPlaybackTime"

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3, v2, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 52
    move-result v11

    .line 53
    .line 54
    :cond_2
    if-eqz v9, :cond_10

    .line 55
    .line 56
    .line 57
    invoke-static {v9, v8}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 58
    move-result-object v13

    .line 59
    .line 60
    if-eqz v13, :cond_10

    .line 61
    .line 62
    .line 63
    invoke-interface {v13}, Ljava/util/Collection;->isEmpty()Z

    .line 64
    move-result v2

    .line 65
    xor-int/2addr v2, v7

    .line 66
    .line 67
    if-eqz v2, :cond_10

    .line 68
    .line 69
    .line 70
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 71
    move-result-object v12

    .line 72
    const/4 v14, 0x0

    .line 73
    const/4 v15, 0x0

    .line 74
    .line 75
    const/16 v16, 0x6

    .line 76
    .line 77
    const/16 v17, 0x0

    .line 78
    .line 79
    .line 80
    invoke-static/range {v12 .. v17}, Lcom/narvii/video/interfaces/IPreviewPlayer$DefaultImpls;->resetVideoClipList$default(Lcom/narvii/video/interfaces/IPreviewPlayer;Ljava/util/ArrayList;IIILjava/lang/Object;)Lcom/narvii/video/model/AVClipInfoPack;

    .line 81
    .line 82
    new-instance v2, Lcom/narvii/video/r0;

    .line 83
    .line 84
    .line 85
    invoke-direct {v2, v0, v1, v11}, Lcom/narvii/video/r0;-><init>(Lcom/narvii/video/SceneEditorFragment;II)V

    .line 86
    .line 87
    .line 88
    invoke-static {v2, v5, v6}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 89
    .line 90
    goto/16 :goto_2

    .line 91
    .line 92
    .line 93
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->getREQUEST_CODE_SCENE_EDITOR()I

    .line 94
    move-result v4

    .line 95
    .line 96
    if-ne v1, v4, :cond_5

    .line 97
    .line 98
    if-ne v2, v10, :cond_5

    .line 99
    .line 100
    .line 101
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getTotalVisibleVideoDurationInMs()Lw7/u;

    .line 102
    move-result-object v1

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1}, Lw7/u;->c()Ljava/lang/Object;

    .line 106
    move-result-object v1

    .line 107
    .line 108
    check-cast v1, Ljava/lang/Number;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 112
    move-result v1

    .line 113
    .line 114
    .line 115
    invoke-direct/range {p0 .. p0}, Lcom/narvii/video/SceneEditorFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentSceneEditorBinding;

    .line 116
    move-result-object v2

    .line 117
    .line 118
    iget-object v2, v2, Lcom/narvii/mediaeditor/databinding/FragmentSceneEditorBinding;->sceneInvalidHint:Landroid/widget/TextView;

    .line 119
    .line 120
    const/16 v3, 0xbb8

    .line 121
    .line 122
    if-gt v3, v1, :cond_4

    .line 123
    .line 124
    .line 125
    invoke-static {}, Lcom/narvii/scene/SceneConstant;->getMaxSceneLengthMs()I

    .line 126
    move-result v3

    .line 127
    .line 128
    if-gt v1, v3, :cond_4

    .line 129
    .line 130
    const/16 v11, 0x8

    .line 131
    .line 132
    .line 133
    :cond_4
    invoke-virtual {v2, v11}, Landroid/view/View;->setVisibility(I)V

    .line 134
    .line 135
    goto/16 :goto_2

    .line 136
    .line 137
    :cond_5
    const/16 v4, 0x3039

    .line 138
    .line 139
    if-ne v1, v4, :cond_a

    .line 140
    .line 141
    if-ne v2, v10, :cond_a

    .line 142
    .line 143
    const-string v1, "BasicCropping success"

    .line 144
    .line 145
    .line 146
    invoke-static {v1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;)V

    .line 147
    .line 148
    if-eqz v3, :cond_6

    .line 149
    .line 150
    const-string v1, "croppingData"

    .line 151
    .line 152
    .line 153
    invoke-virtual {v3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 154
    move-result-object v1

    .line 155
    goto :goto_1

    .line 156
    :cond_6
    move-object v1, v9

    .line 157
    .line 158
    :goto_1
    if-eqz v3, :cond_7

    .line 159
    .line 160
    .line 161
    const-string/jumbo v2, "success"

    .line 162
    .line 163
    .line 164
    invoke-virtual {v3, v2, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 165
    move-result v2

    .line 166
    .line 167
    .line 168
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 169
    move-result-object v9

    .line 170
    .line 171
    :cond_7
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 172
    .line 173
    .line 174
    invoke-static {v9, v2}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 175
    move-result v2

    .line 176
    .line 177
    if-eqz v2, :cond_10

    .line 178
    .line 179
    if-eqz v1, :cond_10

    .line 180
    .line 181
    const-class v2, Lcom/narvii/cropping/CroppingData;

    .line 182
    .line 183
    .line 184
    invoke-static {v1, v2}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 185
    move-result-object v1

    .line 186
    .line 187
    check-cast v1, Lcom/narvii/cropping/CroppingData;

    .line 188
    .line 189
    .line 190
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getActiveVideoClip()Lcom/narvii/video/model/AVClipInfoPack;

    .line 191
    move-result-object v2

    .line 192
    .line 193
    if-eqz v2, :cond_10

    .line 194
    .line 195
    if-eqz v1, :cond_10

    .line 196
    .line 197
    .line 198
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 199
    move-result-object v2

    .line 200
    .line 201
    .line 202
    invoke-interface {v2}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getVideoClipInfoList()Ljava/util/ArrayList;

    .line 203
    move-result-object v2

    .line 204
    .line 205
    .line 206
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getActiveVideoClip()Lcom/narvii/video/model/AVClipInfoPack;

    .line 207
    move-result-object v3

    .line 208
    .line 209
    .line 210
    invoke-static {v3}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 211
    .line 212
    iput-object v1, v3, Lcom/narvii/video/model/AVClipInfoPack;->croppingData:Lcom/narvii/cropping/CroppingData;

    .line 213
    .line 214
    .line 215
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getActiveVideoClip()Lcom/narvii/video/model/AVClipInfoPack;

    .line 216
    move-result-object v3

    .line 217
    .line 218
    .line 219
    invoke-static {v3}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 220
    .line 221
    iget v3, v3, Lcom/narvii/video/model/BaseClipInfoPack;->indexInScene:I

    .line 222
    .line 223
    .line 224
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 225
    move-result-object v3

    .line 226
    .line 227
    check-cast v3, Lcom/narvii/video/model/AVClipInfoPack;

    .line 228
    .line 229
    iput-object v1, v3, Lcom/narvii/video/model/AVClipInfoPack;->croppingData:Lcom/narvii/cropping/CroppingData;

    .line 230
    .line 231
    .line 232
    invoke-virtual {v1}, Lcom/narvii/cropping/CroppingData;->isDynamic()Z

    .line 233
    move-result v3

    .line 234
    .line 235
    if-eqz v3, :cond_8

    .line 236
    .line 237
    .line 238
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getActiveVideoClip()Lcom/narvii/video/model/AVClipInfoPack;

    .line 239
    move-result-object v3

    .line 240
    .line 241
    .line 242
    invoke-static {v3}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 243
    .line 244
    iget v3, v3, Lcom/narvii/video/model/BaseClipInfoPack;->indexInScene:I

    .line 245
    .line 246
    .line 247
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 248
    move-result-object v3

    .line 249
    .line 250
    check-cast v3, Lcom/narvii/video/model/AVClipInfoPack;

    .line 251
    .line 252
    iget-object v1, v1, Lcom/narvii/cropping/CroppingData;->dynamicPath:Ljava/lang/String;

    .line 253
    .line 254
    iput-object v1, v3, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 258
    move-result-object v3

    .line 259
    .line 260
    .line 261
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getActiveVideoClip()Lcom/narvii/video/model/AVClipInfoPack;

    .line 262
    move-result-object v1

    .line 263
    .line 264
    .line 265
    invoke-static {v1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 266
    .line 267
    iget v5, v1, Lcom/narvii/video/model/BaseClipInfoPack;->indexInScene:I

    .line 268
    const/4 v6, 0x0

    .line 269
    const/4 v7, 0x4

    .line 270
    const/4 v8, 0x0

    .line 271
    move-object v4, v2

    .line 272
    .line 273
    .line 274
    invoke-static/range {v3 .. v8}, Lcom/narvii/video/interfaces/IPreviewPlayer$DefaultImpls;->resetVideoClipList$default(Lcom/narvii/video/interfaces/IPreviewPlayer;Ljava/util/ArrayList;IIILjava/lang/Object;)Lcom/narvii/video/model/AVClipInfoPack;

    .line 275
    move-result-object v1

    .line 276
    .line 277
    .line 278
    invoke-virtual {v0, v1}, Lcom/narvii/video/BaseMediaEditorFragment;->setActiveVideoClip(Lcom/narvii/video/model/AVClipInfoPack;)V

    .line 279
    .line 280
    goto/16 :goto_2

    .line 281
    .line 282
    :cond_8
    iget-object v3, v1, Lcom/narvii/cropping/CroppingData;->orgVideoPath:Ljava/lang/String;

    .line 283
    .line 284
    if-eqz v3, :cond_9

    .line 285
    .line 286
    .line 287
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getActiveVideoClip()Lcom/narvii/video/model/AVClipInfoPack;

    .line 288
    move-result-object v3

    .line 289
    .line 290
    .line 291
    invoke-static {v3}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 292
    .line 293
    iget v3, v3, Lcom/narvii/video/model/BaseClipInfoPack;->indexInScene:I

    .line 294
    .line 295
    .line 296
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 297
    move-result-object v3

    .line 298
    .line 299
    check-cast v3, Lcom/narvii/video/model/AVClipInfoPack;

    .line 300
    .line 301
    iget-object v1, v1, Lcom/narvii/cropping/CroppingData;->orgVideoPath:Ljava/lang/String;

    .line 302
    .line 303
    iput-object v1, v3, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 307
    move-result-object v3

    .line 308
    .line 309
    .line 310
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getActiveVideoClip()Lcom/narvii/video/model/AVClipInfoPack;

    .line 311
    move-result-object v1

    .line 312
    .line 313
    .line 314
    invoke-static {v1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 315
    .line 316
    iget v5, v1, Lcom/narvii/video/model/BaseClipInfoPack;->indexInScene:I

    .line 317
    const/4 v6, 0x0

    .line 318
    const/4 v7, 0x4

    .line 319
    const/4 v8, 0x0

    .line 320
    move-object v4, v2

    .line 321
    .line 322
    .line 323
    invoke-static/range {v3 .. v8}, Lcom/narvii/video/interfaces/IPreviewPlayer$DefaultImpls;->resetVideoClipList$default(Lcom/narvii/video/interfaces/IPreviewPlayer;Ljava/util/ArrayList;IIILjava/lang/Object;)Lcom/narvii/video/model/AVClipInfoPack;

    .line 324
    move-result-object v1

    .line 325
    .line 326
    .line 327
    invoke-virtual {v0, v1}, Lcom/narvii/video/BaseMediaEditorFragment;->setActiveVideoClip(Lcom/narvii/video/model/AVClipInfoPack;)V

    .line 328
    .line 329
    .line 330
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 331
    move-result-object v1

    .line 332
    .line 333
    .line 334
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getActiveVideoClip()Lcom/narvii/video/model/AVClipInfoPack;

    .line 335
    move-result-object v3

    .line 336
    .line 337
    .line 338
    invoke-static {v3}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 339
    .line 340
    iget v3, v3, Lcom/narvii/video/model/BaseClipInfoPack;->indexInScene:I

    .line 341
    .line 342
    .line 343
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 344
    move-result-object v2

    .line 345
    .line 346
    const-string v3, "get(...)"

    .line 347
    .line 348
    .line 349
    invoke-static {v2, v3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 350
    .line 351
    check-cast v2, Lcom/narvii/video/model/AVClipInfoPack;

    .line 352
    .line 353
    .line 354
    invoke-interface {v1, v2}, Lcom/narvii/video/interfaces/IPreviewPlayer;->updateClipTransform(Lcom/narvii/video/model/AVClipInfoPack;)V

    .line 355
    .line 356
    .line 357
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 358
    move-result-object v1

    .line 359
    .line 360
    .line 361
    invoke-interface {v1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->refreshBackgroundTrack()V

    .line 362
    .line 363
    new-instance v1, Lcom/narvii/video/s0;

    .line 364
    .line 365
    .line 366
    invoke-direct {v1, v0}, Lcom/narvii/video/s0;-><init>(Lcom/narvii/video/SceneEditorFragment;)V

    .line 367
    .line 368
    .line 369
    invoke-static {v1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 370
    .line 371
    goto/16 :goto_2

    .line 372
    .line 373
    :cond_a
    const/16 v4, 0x115c

    .line 374
    .line 375
    if-ne v1, v4, :cond_e

    .line 376
    .line 377
    if-ne v2, v10, :cond_e

    .line 378
    .line 379
    if-eqz v3, :cond_b

    .line 380
    .line 381
    const-string v1, "clipInfoPack"

    .line 382
    .line 383
    .line 384
    invoke-virtual {v3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 385
    move-result-object v9

    .line 386
    .line 387
    .line 388
    :cond_b
    invoke-static {v9, v8}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 389
    move-result-object v1

    .line 390
    .line 391
    check-cast v1, Lcom/narvii/video/model/AVClipInfoPack;

    .line 392
    .line 393
    if-nez v1, :cond_c

    .line 394
    return-void

    .line 395
    .line 396
    :cond_c
    if-eqz v3, :cond_d

    .line 397
    .line 398
    const-string v2, "currentActiveIndex"

    .line 399
    .line 400
    .line 401
    invoke-virtual {v3, v2, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 402
    move-result v2

    .line 403
    .line 404
    .line 405
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 406
    move-result-object v3

    .line 407
    .line 408
    .line 409
    invoke-interface {v3}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getVideoClipInfoList()Ljava/util/ArrayList;

    .line 410
    move-result-object v8

    .line 411
    .line 412
    if-ltz v2, :cond_10

    .line 413
    .line 414
    .line 415
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 416
    move-result v3

    .line 417
    .line 418
    if-ge v2, v3, :cond_10

    .line 419
    .line 420
    .line 421
    invoke-virtual {v8, v2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 422
    .line 423
    .line 424
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 425
    move-result-object v7

    .line 426
    const/4 v9, 0x0

    .line 427
    const/4 v10, 0x0

    .line 428
    const/4 v11, 0x6

    .line 429
    const/4 v12, 0x0

    .line 430
    .line 431
    .line 432
    invoke-static/range {v7 .. v12}, Lcom/narvii/video/interfaces/IPreviewPlayer$DefaultImpls;->resetVideoClipList$default(Lcom/narvii/video/interfaces/IPreviewPlayer;Ljava/util/ArrayList;IIILjava/lang/Object;)Lcom/narvii/video/model/AVClipInfoPack;

    .line 433
    .line 434
    .line 435
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getTotalVisibleVideoDurationInMs()Lw7/u;

    .line 436
    move-result-object v1

    .line 437
    .line 438
    .line 439
    invoke-virtual {v1}, Lw7/u;->c()Ljava/lang/Object;

    .line 440
    move-result-object v1

    .line 441
    .line 442
    check-cast v1, Ljava/lang/Number;

    .line 443
    .line 444
    .line 445
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 446
    move-result v1

    .line 447
    .line 448
    .line 449
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 450
    move-result-object v3

    .line 451
    .line 452
    .line 453
    invoke-interface {v3, v1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->adjustAllViceTrackRange(I)V

    .line 454
    .line 455
    .line 456
    invoke-direct/range {p0 .. p0}, Lcom/narvii/video/SceneEditorFragment;->checkSceneDuration()V

    .line 457
    .line 458
    new-instance v1, Lcom/narvii/video/t0;

    .line 459
    .line 460
    .line 461
    invoke-direct {v1, v0, v2}, Lcom/narvii/video/t0;-><init>(Lcom/narvii/video/SceneEditorFragment;I)V

    .line 462
    .line 463
    .line 464
    invoke-static {v1, v5, v6}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 465
    goto :goto_2

    .line 466
    :cond_d
    return-void

    .line 467
    .line 468
    :cond_e
    if-ne v2, v10, :cond_10

    .line 469
    .line 470
    .line 471
    const v2, 0xfd30

    .line 472
    .line 473
    if-ne v1, v2, :cond_10

    .line 474
    .line 475
    if-eqz v3, :cond_10

    .line 476
    .line 477
    const-string v1, "media"

    .line 478
    .line 479
    .line 480
    invoke-virtual {v3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 481
    move-result-object v1

    .line 482
    .line 483
    const-class v2, Lcom/narvii/model/Media;

    .line 484
    .line 485
    .line 486
    invoke-static {v1, v2}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 487
    move-result-object v1

    .line 488
    .line 489
    check-cast v1, Lcom/narvii/model/Media;

    .line 490
    .line 491
    const-string v2, "bundle"

    .line 492
    .line 493
    .line 494
    invoke-virtual {v3, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    .line 495
    move-result-object v2

    .line 496
    .line 497
    if-nez v2, :cond_f

    .line 498
    .line 499
    new-instance v2, Landroid/os/Bundle;

    .line 500
    .line 501
    .line 502
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 503
    .line 504
    .line 505
    :cond_f
    invoke-static {v2}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 506
    .line 507
    .line 508
    invoke-static {v1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 509
    .line 510
    new-array v3, v7, [Lcom/narvii/model/Media;

    .line 511
    .line 512
    aput-object v1, v3, v11

    .line 513
    .line 514
    .line 515
    invoke-static {v3}, Lkotlin/collections/t;->s([Ljava/lang/Object;)Ljava/util/List;

    .line 516
    move-result-object v1

    .line 517
    .line 518
    .line 519
    const-string/jumbo v3, "video"

    .line 520
    .line 521
    .line 522
    invoke-direct {v0, v1, v3, v2}, Lcom/narvii/video/SceneEditorFragment;->onPickResult(Ljava/util/List;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 523
    :cond_10
    :goto_2
    return-void
.end method

.method public onBackPressed(Lcom/narvii/app/NVActivity;)Z
    .locals 1
    .param p1    # Lcom/narvii/app/NVActivity;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/video/SceneEditorFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentSceneEditorBinding;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    iget-object p1, p1, Lcom/narvii/mediaeditor/databinding/FragmentSceneEditorBinding;->clipFastSwitchingPanel:Lcom/narvii/video/widget/ClipFastSwitchingPanel;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 10
    move-result p1

    .line 11
    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Lcom/narvii/video/SceneEditorFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentSceneEditorBinding;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    iget-object p1, p1, Lcom/narvii/mediaeditor/databinding/FragmentSceneEditorBinding;->clipFastSwitchingPanel:Lcom/narvii/video/widget/ClipFastSwitchingPanel;

    .line 19
    .line 20
    const/16 v0, 0x8

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 24
    .line 25
    .line 26
    invoke-direct {p0}, Lcom/narvii/video/SceneEditorFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentSceneEditorBinding;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    iget-object p1, p1, Lcom/narvii/mediaeditor/databinding/FragmentSceneEditorBinding;->coverLayer:Landroid/view/View;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 33
    goto :goto_0

    .line 34
    .line 35
    .line 36
    :cond_0
    invoke-direct {p0}, Lcom/narvii/video/SceneEditorFragment;->doExit()V

    .line 37
    :goto_0
    const/4 p1, 0x1

    .line 38
    return p1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1    # Landroid/view/View;
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
    if-eqz p1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 10
    move-result v0

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    move-result-object v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    .line 18
    :goto_0
    sget v1, Lcom/narvii/mediaeditor/R$id;->cover_layer:I

    .line 19
    .line 20
    if-nez v0, :cond_1

    .line 21
    goto :goto_1

    .line 22
    .line 23
    .line 24
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 25
    move-result v2

    .line 26
    .line 27
    if-ne v2, v1, :cond_2

    .line 28
    .line 29
    .line 30
    invoke-direct {p0}, Lcom/narvii/video/SceneEditorFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentSceneEditorBinding;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    iget-object p1, p1, Lcom/narvii/mediaeditor/databinding/FragmentSceneEditorBinding;->coverLayer:Landroid/view/View;

    .line 34
    .line 35
    const/16 v0, 0x8

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 39
    .line 40
    .line 41
    invoke-direct {p0}, Lcom/narvii/video/SceneEditorFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentSceneEditorBinding;

    .line 42
    move-result-object p1

    .line 43
    .line 44
    iget-object p1, p1, Lcom/narvii/mediaeditor/databinding/FragmentSceneEditorBinding;->clipFastSwitchingPanel:Lcom/narvii/video/widget/ClipFastSwitchingPanel;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 48
    .line 49
    goto/16 :goto_d

    .line 50
    .line 51
    :cond_2
    :goto_1
    sget v1, Lcom/narvii/mediaeditor/R$id;->op_trim:I

    .line 52
    .line 53
    if-nez v0, :cond_3

    .line 54
    goto :goto_2

    .line 55
    .line 56
    .line 57
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 58
    move-result v2

    .line 59
    .line 60
    if-ne v2, v1, :cond_4

    .line 61
    .line 62
    const-string p1, "Trim"

    .line 63
    .line 64
    .line 65
    invoke-direct {p0, p1}, Lcom/narvii/video/SceneEditorFragment;->sendEditActionLog(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-direct {p0}, Lcom/narvii/video/SceneEditorFragment;->opTrim()V

    .line 69
    .line 70
    goto/16 :goto_d

    .line 71
    .line 72
    :cond_4
    :goto_2
    sget v1, Lcom/narvii/mediaeditor/R$id;->op_split:I

    .line 73
    .line 74
    if-nez v0, :cond_5

    .line 75
    goto :goto_3

    .line 76
    .line 77
    .line 78
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 79
    move-result v2

    .line 80
    .line 81
    if-eq v2, v1, :cond_12

    .line 82
    .line 83
    :goto_3
    sget v1, Lcom/narvii/mediaeditor/R$id;->op_speed:I

    .line 84
    .line 85
    if-nez v0, :cond_6

    .line 86
    goto :goto_4

    .line 87
    .line 88
    .line 89
    :cond_6
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 90
    move-result v2

    .line 91
    .line 92
    if-eq v2, v1, :cond_12

    .line 93
    .line 94
    :goto_4
    sget v1, Lcom/narvii/mediaeditor/R$id;->op_music:I

    .line 95
    .line 96
    if-nez v0, :cond_7

    .line 97
    goto :goto_5

    .line 98
    .line 99
    .line 100
    :cond_7
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 101
    move-result v2

    .line 102
    .line 103
    if-ne v2, v1, :cond_8

    .line 104
    goto :goto_6

    .line 105
    .line 106
    :cond_8
    :goto_5
    sget v2, Lcom/narvii/mediaeditor/R$id;->op_sfx:I

    .line 107
    .line 108
    if-nez v0, :cond_9

    .line 109
    goto :goto_7

    .line 110
    .line 111
    .line 112
    :cond_9
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 113
    move-result v3

    .line 114
    .line 115
    if-ne v3, v2, :cond_b

    .line 116
    .line 117
    .line 118
    :goto_6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 119
    move-result p1

    .line 120
    .line 121
    if-ne p1, v1, :cond_a

    .line 122
    .line 123
    const-string p1, "Music"

    .line 124
    .line 125
    .line 126
    invoke-direct {p0, p1}, Lcom/narvii/video/SceneEditorFragment;->sendEditActionLog(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    :cond_a
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 130
    move-result-object p1

    .line 131
    .line 132
    .line 133
    invoke-interface {p1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getAudioClipInfoList()Ljava/util/ArrayList;

    .line 134
    move-result-object p1

    .line 135
    .line 136
    .line 137
    invoke-direct {p0, p1}, Lcom/narvii/video/SceneEditorFragment;->opMusic(Ljava/util/List;)V

    .line 138
    goto :goto_d

    .line 139
    .line 140
    :cond_b
    :goto_7
    sget p1, Lcom/narvii/mediaeditor/R$id;->op_text:I

    .line 141
    .line 142
    if-nez v0, :cond_c

    .line 143
    goto :goto_8

    .line 144
    .line 145
    .line 146
    :cond_c
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 147
    move-result v1

    .line 148
    .line 149
    if-eq v1, p1, :cond_12

    .line 150
    .line 151
    :goto_8
    sget p1, Lcom/narvii/mediaeditor/R$id;->op_sticker:I

    .line 152
    .line 153
    if-nez v0, :cond_d

    .line 154
    goto :goto_9

    .line 155
    .line 156
    .line 157
    :cond_d
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 158
    move-result v1

    .line 159
    .line 160
    if-eq v1, p1, :cond_12

    .line 161
    .line 162
    :goto_9
    sget p1, Lcom/narvii/mediaeditor/R$id;->op_crop:I

    .line 163
    .line 164
    if-nez v0, :cond_e

    .line 165
    goto :goto_a

    .line 166
    .line 167
    .line 168
    :cond_e
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 169
    move-result v1

    .line 170
    .line 171
    if-eq v1, p1, :cond_12

    .line 172
    .line 173
    :goto_a
    sget p1, Lcom/narvii/mediaeditor/R$id;->option_add_video:I

    .line 174
    .line 175
    if-nez v0, :cond_f

    .line 176
    goto :goto_b

    .line 177
    .line 178
    .line 179
    :cond_f
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 180
    move-result v1

    .line 181
    .line 182
    if-eq v1, p1, :cond_12

    .line 183
    .line 184
    :goto_b
    sget p1, Lcom/narvii/mediaeditor/R$id;->empty_view_option_add_video:I

    .line 185
    .line 186
    if-nez v0, :cond_10

    .line 187
    goto :goto_c

    .line 188
    .line 189
    .line 190
    :cond_10
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 191
    move-result v1

    .line 192
    .line 193
    if-eq v1, p1, :cond_12

    .line 194
    .line 195
    :goto_c
    if-nez v0, :cond_11

    .line 196
    goto :goto_d

    .line 197
    .line 198
    .line 199
    :cond_11
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 200
    :cond_12
    :goto_d
    return-void
.end method

.method public onClipDeleted()V
    .locals 8

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/video/SceneEditorFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentSceneEditorBinding;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget-object v0, v0, Lcom/narvii/mediaeditor/databinding/FragmentSceneEditorBinding;->coverLayer:Landroid/view/View;

    .line 7
    .line 8
    const/16 v1, 0x8

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Lcom/narvii/video/SceneEditorFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentSceneEditorBinding;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    iget-object v0, v0, Lcom/narvii/mediaeditor/databinding/FragmentSceneEditorBinding;->clipFastSwitchingPanel:Lcom/narvii/video/widget/ClipFastSwitchingPanel;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getActiveVideoClip()Lcom/narvii/video/model/AVClipInfoPack;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    .line 33
    invoke-interface {v1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getVideoClipInfoList()Ljava/util/ArrayList;

    .line 34
    move-result-object v1

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 38
    move-result v2

    .line 39
    .line 40
    iget v0, v0, Lcom/narvii/video/model/BaseClipInfoPack;->indexInScene:I

    .line 41
    .line 42
    if-ltz v0, :cond_1

    .line 43
    .line 44
    if-ge v0, v2, :cond_1

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 51
    move-result-object v2

    .line 52
    const/4 v4, 0x0

    .line 53
    const/4 v5, 0x0

    .line 54
    const/4 v6, 0x6

    .line 55
    const/4 v7, 0x0

    .line 56
    move-object v3, v1

    .line 57
    .line 58
    .line 59
    invoke-static/range {v2 .. v7}, Lcom/narvii/video/interfaces/IPreviewPlayer$DefaultImpls;->resetVideoClipList$default(Lcom/narvii/video/interfaces/IPreviewPlayer;Ljava/util/ArrayList;IIILjava/lang/Object;)Lcom/narvii/video/model/AVClipInfoPack;

    .line 60
    const/4 v0, 0x2

    .line 61
    const/4 v2, 0x0

    .line 62
    const/4 v3, 0x1

    .line 63
    .line 64
    .line 65
    invoke-static {p0, v3, v4, v0, v2}, Lcom/narvii/video/ScrollingTimeLineFragment;->updateVideoTimeLineInfo$default(Lcom/narvii/video/ScrollingTimeLineFragment;ZIILjava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    invoke-direct {p0}, Lcom/narvii/video/SceneEditorFragment;->checkSceneDuration()V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 72
    move-result v0

    .line 73
    .line 74
    if-eqz v0, :cond_0

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 78
    move-result-object v0

    .line 79
    .line 80
    .line 81
    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->stop()V

    .line 82
    .line 83
    .line 84
    invoke-direct {p0, v3}, Lcom/narvii/video/SceneEditorFragment;->onEmptyStatusChanged(Z)V

    .line 85
    .line 86
    .line 87
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 88
    move-result-object v0

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getTotalVisibleVideoDurationInMs()Lw7/u;

    .line 92
    move-result-object v1

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1}, Lw7/u;->c()Ljava/lang/Object;

    .line 96
    move-result-object v1

    .line 97
    .line 98
    check-cast v1, Ljava/lang/Number;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 102
    move-result v1

    .line 103
    .line 104
    .line 105
    invoke-interface {v0, v1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->adjustAllViceTrackRange(I)V

    .line 106
    .line 107
    .line 108
    :cond_1
    invoke-direct {p0}, Lcom/narvii/video/SceneEditorFragment;->updateAddClipButtonVisibility()V

    .line 109
    return-void
.end method

.method public onClipListReordered(Ljava/util/ArrayList;I)V
    .locals 7
    .param p1    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            ">;I)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "clipList"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 9
    move-result-object v1

    .line 10
    const/4 v3, 0x0

    .line 11
    const/4 v4, 0x0

    .line 12
    const/4 v5, 0x6

    .line 13
    const/4 v6, 0x0

    .line 14
    move-object v2, p1

    .line 15
    .line 16
    .line 17
    invoke-static/range {v1 .. v6}, Lcom/narvii/video/interfaces/IPreviewPlayer$DefaultImpls;->resetVideoClipList$default(Lcom/narvii/video/interfaces/IPreviewPlayer;Ljava/util/ArrayList;IIILjava/lang/Object;)Lcom/narvii/video/model/AVClipInfoPack;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 21
    move-result-object p1

    .line 22
    const/4 v0, 0x0

    .line 23
    .line 24
    .line 25
    invoke-interface {p1, p2, v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->seekTimeLineTo(II)V

    .line 26
    const/4 p1, 0x1

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/narvii/video/ScrollingTimeLineFragment;->updateVideoTimeLineInfo(ZI)V

    .line 30
    return-void
.end method

.method public onClipSwitched(Lcom/narvii/video/model/AVClipInfoPack;)V
    .locals 4
    .param p1    # Lcom/narvii/video/model/AVClipInfoPack;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "newClip"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    iget p1, p1, Lcom/narvii/video/model/BaseClipInfoPack;->indexInScene:I

    .line 12
    const/4 v1, 0x2

    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x0

    .line 15
    .line 16
    .line 17
    invoke-static {v0, p1, v3, v1, v2}, Lcom/narvii/video/interfaces/IPreviewPlayer$DefaultImpls;->setActiveVideoClip$default(Lcom/narvii/video/interfaces/IPreviewPlayer;IIILjava/lang/Object;)Lcom/narvii/video/model/AVClipInfoPack;

    .line 18
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/video/ScrollingTimeLineFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    const/4 p1, 0x1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    const-string v0, "playListMediaPicker"

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    instance-of v1, p1, Lcom/narvii/media/MediaPickerFragment;

    .line 20
    const/4 v2, 0x0

    .line 21
    .line 22
    const-string v3, "mediaPickerFragment"

    .line 23
    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    check-cast p1, Lcom/narvii/media/MediaPickerFragment;

    .line 27
    .line 28
    iput-object p1, p0, Lcom/narvii/video/SceneEditorFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 29
    goto :goto_0

    .line 30
    .line 31
    :cond_0
    new-instance p1, Lcom/narvii/media/MediaPickerFragment;

    .line 32
    .line 33
    .line 34
    invoke-direct {p1}, Lcom/narvii/media/MediaPickerFragment;-><init>()V

    .line 35
    .line 36
    iput-object p1, p0, Lcom/narvii/video/SceneEditorFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 40
    move-result-object p1

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 44
    move-result-object p1

    .line 45
    .line 46
    iget-object v1, p0, Lcom/narvii/video/SceneEditorFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 47
    .line 48
    if-nez v1, :cond_1

    .line 49
    .line 50
    .line 51
    invoke-static {v3}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 52
    move-object v1, v2

    .line 53
    .line 54
    .line 55
    :cond_1
    invoke-virtual {p1, v1, v0}, Landroidx/fragment/app/FragmentTransaction;->e(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 56
    move-result-object p1

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->k()I

    .line 60
    .line 61
    :goto_0
    iget-object p1, p0, Lcom/narvii/video/SceneEditorFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 62
    .line 63
    if-nez p1, :cond_2

    .line 64
    .line 65
    .line 66
    invoke-static {v3}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 67
    goto :goto_1

    .line 68
    :cond_2
    move-object v2, p1

    .line 69
    .line 70
    .line 71
    :goto_1
    invoke-virtual {v2, p0}, Lcom/narvii/media/MediaPickerFragment;->addOnResultListener(Lcom/narvii/media/MediaPickerFragment$OnResultListener;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 75
    move-result-object p1

    .line 76
    .line 77
    const-string v0, "null cannot be cast to non-null type com.narvii.app.NVActivity"

    .line 78
    .line 79
    .line 80
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    .line 82
    check-cast p1, Lcom/narvii/app/NVActivity;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 86
    move-result-object v0

    .line 87
    .line 88
    sget v1, Lcom/narvii/mediaeditor/R$drawable;->ic_actionbar_close:I

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 92
    move-result-object v0

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1, v0}, Lcom/narvii/app/NVActivity;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 96
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1    # Landroid/view/Menu;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MenuInflater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "menu"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "inflater"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 14
    const/4 p2, 0x0

    .line 15
    .line 16
    .line 17
    const v0, 0x104000a

    .line 18
    .line 19
    .line 20
    invoke-interface {p1, p2, v0, p2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 25
    move-result-object p2

    .line 26
    .line 27
    sget v0, Lcom/narvii/mediaeditor/R$drawable;->ic_white_check:I

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 31
    move-result-object p2

    .line 32
    .line 33
    .line 34
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 35
    move-result-object p1

    .line 36
    const/4 p2, 0x2

    .line 37
    .line 38
    .line 39
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 40
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    const-string p2, "inflater"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/narvii/video/SceneEditorFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentSceneEditorBinding;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/narvii/mediaeditor/databinding/FragmentSceneEditorBinding;->getRoot()Lcom/github/mmin18/widget/FlexLayout;

    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroy()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/video/SceneEditorFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string v0, "mediaPickerFragment"

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 13
    const/4 v0, 0x0

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {v0, p0}, Lcom/narvii/media/MediaPickerFragment;->removeOnResultListener(Lcom/narvii/media/MediaPickerFragment$OnResultListener;)V

    .line 17
    return-void
.end method

.method public onDestroyView()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->onDestroyView()V

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
    invoke-virtual {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->getFrameRetrieverManager()Lcom/narvii/video/services/FrameRetrieverManager;

    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x1

    .line 16
    const/4 v2, 0x0

    .line 17
    const/4 v3, 0x0

    .line 18
    .line 19
    .line 20
    invoke-static {v0, v3, v1, v2}, Lcom/narvii/video/services/FrameRetrieverManager;->release$default(Lcom/narvii/video/services/FrameRetrieverManager;ZILjava/lang/Object;)V

    .line 21
    return-void
.end method

.method public onOptionCropSelected()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/video/SceneEditorFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentSceneEditorBinding;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget-object v0, v0, Lcom/narvii/mediaeditor/databinding/FragmentSceneEditorBinding;->coverLayer:Landroid/view/View;

    .line 7
    .line 8
    const/16 v1, 0x8

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Lcom/narvii/video/SceneEditorFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentSceneEditorBinding;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    iget-object v0, v0, Lcom/narvii/mediaeditor/databinding/FragmentSceneEditorBinding;->clipFastSwitchingPanel:Lcom/narvii/video/widget/ClipFastSwitchingPanel;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 21
    .line 22
    .line 23
    invoke-direct {p0}, Lcom/narvii/video/SceneEditorFragment;->opCrop()V

    .line 24
    return-void
.end method

.method public onOptionMusicSelected()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/video/SceneEditorFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentSceneEditorBinding;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget-object v0, v0, Lcom/narvii/mediaeditor/databinding/FragmentSceneEditorBinding;->coverLayer:Landroid/view/View;

    .line 7
    .line 8
    const/16 v1, 0x8

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Lcom/narvii/video/SceneEditorFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentSceneEditorBinding;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    iget-object v0, v0, Lcom/narvii/mediaeditor/databinding/FragmentSceneEditorBinding;->clipFastSwitchingPanel:Lcom/narvii/video/widget/ClipFastSwitchingPanel;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    .line 27
    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getAudioClipInfoList()Ljava/util/ArrayList;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    .line 31
    invoke-direct {p0, v0}, Lcom/narvii/video/SceneEditorFragment;->opMusic(Ljava/util/List;)V

    .line 32
    return-void
.end method

.method public onOptionSpeedSelected()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/video/SceneEditorFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentSceneEditorBinding;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget-object v0, v0, Lcom/narvii/mediaeditor/databinding/FragmentSceneEditorBinding;->coverLayer:Landroid/view/View;

    .line 7
    .line 8
    const/16 v1, 0x8

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Lcom/narvii/video/SceneEditorFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentSceneEditorBinding;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    iget-object v0, v0, Lcom/narvii/mediaeditor/databinding/FragmentSceneEditorBinding;->clipFastSwitchingPanel:Lcom/narvii/video/widget/ClipFastSwitchingPanel;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 21
    .line 22
    .line 23
    invoke-direct {p0}, Lcom/narvii/video/SceneEditorFragment;->opSpeed()V

    .line 24
    return-void
.end method

.method public onOptionTrimSelected()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/video/SceneEditorFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentSceneEditorBinding;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget-object v0, v0, Lcom/narvii/mediaeditor/databinding/FragmentSceneEditorBinding;->coverLayer:Landroid/view/View;

    .line 7
    .line 8
    const/16 v1, 0x8

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Lcom/narvii/video/SceneEditorFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentSceneEditorBinding;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    iget-object v0, v0, Lcom/narvii/mediaeditor/databinding/FragmentSceneEditorBinding;->clipFastSwitchingPanel:Lcom/narvii/video/widget/ClipFastSwitchingPanel;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 21
    .line 22
    .line 23
    invoke-direct {p0}, Lcom/narvii/video/SceneEditorFragment;->opTrim()V

    .line 24
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 12
    .param p1    # Landroid/view/MenuItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "item"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const/4 v0, 0x1

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0, v1}, Lcom/narvii/video/SceneEditorFragment;->changeVideoPlaybackStatus(ZZ)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v1}, Lcom/narvii/video/BaseMediaEditorFragment;->setAutoPlaying(Z)V

    .line 14
    .line 15
    .line 16
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 17
    move-result v2

    .line 18
    .line 19
    .line 20
    const v3, 0x104000a

    .line 21
    .line 22
    if-ne v2, v3, :cond_7

    .line 23
    .line 24
    iput-boolean v1, p0, Lcom/narvii/video/SceneEditorFragment;->hasFailedTask:Z

    .line 25
    .line 26
    iget-boolean p1, p0, Lcom/narvii/video/SceneEditorFragment;->previewTasksOnGoing:Z

    .line 27
    .line 28
    if-eqz p1, :cond_0

    .line 29
    return v0

    .line 30
    .line 31
    :cond_0
    sget-object p1, Lcom/narvii/logging/ActSemantic;->save:Lcom/narvii/logging/ActSemantic;

    .line 32
    .line 33
    .line 34
    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    const-string v2, "SaveIcon"

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v2}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 41
    move-result-object p1

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 45
    .line 46
    iput-boolean v0, p0, Lcom/narvii/video/SceneEditorFragment;->previewTasksOnGoing:Z

    .line 47
    const/4 p1, 0x2

    .line 48
    const/4 v2, 0x0

    .line 49
    .line 50
    .line 51
    invoke-static {p0, v0, v1, p1, v2}, Lcom/narvii/video/BaseMediaEditorFragment;->changeVideoPlaybackStatus$default(Lcom/narvii/video/BaseMediaEditorFragment;ZZILjava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, v1}, Lcom/narvii/video/BaseMediaEditorFragment;->setAutoPlaying(Z)V

    .line 55
    .line 56
    .line 57
    invoke-direct {p0}, Lcom/narvii/video/SceneEditorFragment;->getProgress()Lcom/narvii/util/dialog/ProgressDialog;

    .line 58
    move-result-object p1

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 62
    .line 63
    iget-object v5, p0, Lcom/narvii/video/SceneEditorFragment;->scene:Lcom/narvii/scene/model/SceneInfo;

    .line 64
    .line 65
    const-string p1, "editorPackFactory"

    .line 66
    .line 67
    if-eqz v5, :cond_4

    .line 68
    .line 69
    iget-object v3, v5, Lcom/narvii/scene/model/SceneInfo;->inputFilePathList:Ljava/util/List;

    .line 70
    .line 71
    .line 72
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 76
    move-result-object v3

    .line 77
    .line 78
    .line 79
    invoke-interface {v3}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getVideoClipInfoList()Ljava/util/ArrayList;

    .line 80
    move-result-object v3

    .line 81
    .line 82
    .line 83
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 84
    move-result-object v3

    .line 85
    .line 86
    .line 87
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 88
    move-result v4

    .line 89
    .line 90
    if-eqz v4, :cond_1

    .line 91
    .line 92
    .line 93
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 94
    move-result-object v4

    .line 95
    .line 96
    check-cast v4, Lcom/narvii/video/model/AVClipInfoPack;

    .line 97
    .line 98
    iget-object v6, v5, Lcom/narvii/scene/model/SceneInfo;->inputFilePathList:Ljava/util/List;

    .line 99
    .line 100
    iget-object v7, v4, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    .line 105
    sget-object v6, Lcom/narvii/video/services/SceneMediaProcessor;->INSTANCE:Lcom/narvii/video/services/SceneMediaProcessor;

    .line 106
    .line 107
    .line 108
    invoke-static {v4}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 109
    .line 110
    iget-object v7, v4, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    .line 111
    .line 112
    const-string v8, "inputPath"

    .line 113
    .line 114
    .line 115
    invoke-static {v7, v8}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0, v7}, Lcom/narvii/video/BaseMediaEditorFragment;->isImageInput(Ljava/lang/String;)Z

    .line 119
    move-result v7

    .line 120
    .line 121
    .line 122
    invoke-virtual {v6, v4, v7, v2}, Lcom/narvii/video/services/SceneMediaProcessor;->fillVideoMetadata(Lcom/narvii/video/model/AVClipInfoPack;ZLcom/narvii/video/model/StreamInfo;)V

    .line 123
    goto :goto_0

    .line 124
    .line 125
    .line 126
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 127
    move-result-object v3

    .line 128
    .line 129
    .line 130
    invoke-interface {v3}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getVideoClipInfoList()Ljava/util/ArrayList;

    .line 131
    move-result-object v3

    .line 132
    .line 133
    iput-object v3, v5, Lcom/narvii/scene/model/SceneInfo;->videoClips:Ljava/util/ArrayList;

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 137
    move-result-object v3

    .line 138
    .line 139
    .line 140
    invoke-interface {v3}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getAudioClipInfoList()Ljava/util/ArrayList;

    .line 141
    move-result-object v3

    .line 142
    .line 143
    iput-object v3, v5, Lcom/narvii/scene/model/SceneInfo;->audioClips:Ljava/util/ArrayList;

    .line 144
    .line 145
    .line 146
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 147
    move-result-object v3

    .line 148
    .line 149
    .line 150
    invoke-interface {v3}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getCaptionList()Ljava/util/ArrayList;

    .line 151
    move-result-object v3

    .line 152
    .line 153
    iput-object v3, v5, Lcom/narvii/scene/model/SceneInfo;->captions:Ljava/util/ArrayList;

    .line 154
    .line 155
    .line 156
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 157
    move-result-object v3

    .line 158
    .line 159
    .line 160
    invoke-interface {v3}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getStickerList()Ljava/util/ArrayList;

    .line 161
    move-result-object v3

    .line 162
    .line 163
    iput-object v3, v5, Lcom/narvii/scene/model/SceneInfo;->stickers:Ljava/util/ArrayList;

    .line 164
    .line 165
    .line 166
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 167
    move-result-object v3

    .line 168
    .line 169
    .line 170
    invoke-interface {v3}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getPipVideoList()Ljava/util/ArrayList;

    .line 171
    move-result-object v3

    .line 172
    .line 173
    iput-object v3, v5, Lcom/narvii/scene/model/SceneInfo;->pipClips:Ljava/util/ArrayList;

    .line 174
    .line 175
    iget-object v3, p0, Lcom/narvii/video/SceneEditorFragment;->outputFolder:Ljava/io/File;

    .line 176
    .line 177
    if-nez v3, :cond_2

    .line 178
    .line 179
    const-string v3, "outputFolder"

    .line 180
    .line 181
    .line 182
    invoke-static {v3}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 183
    goto :goto_1

    .line 184
    :cond_2
    move-object v2, v3

    .line 185
    .line 186
    .line 187
    :goto_1
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 188
    move-result-object v2

    .line 189
    .line 190
    if-eqz v2, :cond_3

    .line 191
    array-length v3, v2

    .line 192
    move v4, v1

    .line 193
    .line 194
    :goto_2
    if-ge v4, v3, :cond_3

    .line 195
    .line 196
    aget-object v6, v2, v4

    .line 197
    .line 198
    .line 199
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 200
    .line 201
    add-int/lit8 v4, v4, 0x1

    .line 202
    goto :goto_2

    .line 203
    .line 204
    :cond_3
    const/high16 v2, -0x40800000    # -1.0f

    .line 205
    .line 206
    iput v2, v5, Lcom/narvii/scene/model/SceneInfo;->currentSceneVideoProgress:F

    .line 207
    .line 208
    .line 209
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 210
    move-result-object v2

    .line 211
    .line 212
    .line 213
    invoke-interface {v2}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getVideoClipInfoList()Ljava/util/ArrayList;

    .line 214
    move-result-object v2

    .line 215
    .line 216
    .line 217
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 218
    move-result v2

    .line 219
    xor-int/2addr v2, v0

    .line 220
    .line 221
    if-eqz v2, :cond_4

    .line 222
    .line 223
    .line 224
    invoke-static {}, Lcom/narvii/app/NVApplication;->isBasedOnMeishe()Z

    .line 225
    move-result v2

    .line 226
    .line 227
    if-nez v2, :cond_4

    .line 228
    .line 229
    .line 230
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 231
    move-result-object v2

    .line 232
    .line 233
    check-cast v2, Lcom/narvii/video/services/IEditorPackFactory;

    .line 234
    .line 235
    sget-object v3, Lcom/narvii/video/services/SceneMediaProcessor;->INSTANCE:Lcom/narvii/video/services/SceneMediaProcessor;

    .line 236
    .line 237
    .line 238
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getVideoManager()Lcom/narvii/video/services/VideoManager;

    .line 239
    move-result-object v6

    .line 240
    .line 241
    .line 242
    invoke-interface {v2}, Lcom/narvii/video/services/IEditorPackFactory;->getVideoGenerator()Lcom/narvii/video/interfaces/ISceneVideoGenerator;

    .line 243
    move-result-object v7

    .line 244
    const/4 v8, 0x0

    .line 245
    const/4 v9, 0x1

    .line 246
    .line 247
    const/16 v10, 0x10

    .line 248
    const/4 v11, 0x0

    .line 249
    move-object v4, p0

    .line 250
    .line 251
    .line 252
    invoke-static/range {v3 .. v11}, Lcom/narvii/video/services/SceneMediaProcessor;->processScene$default(Lcom/narvii/video/services/SceneMediaProcessor;Lcom/narvii/app/NVContext;Lcom/narvii/scene/model/SceneInfo;Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/interfaces/ISceneVideoGenerator;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;ZILjava/lang/Object;)V

    .line 253
    .line 254
    .line 255
    :cond_4
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 256
    move-result-object v2

    .line 257
    .line 258
    .line 259
    invoke-interface {v2}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getVideoClipInfoList()Ljava/util/ArrayList;

    .line 260
    move-result-object v2

    .line 261
    .line 262
    .line 263
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 264
    move-result v2

    .line 265
    .line 266
    if-eqz v2, :cond_5

    .line 267
    .line 268
    iput v1, p0, Lcom/narvii/video/SceneEditorFragment;->flyingTaskCount:I

    .line 269
    .line 270
    .line 271
    invoke-direct {p0, v1}, Lcom/narvii/video/SceneEditorFragment;->onMediaProcessTouchDown(Z)V

    .line 272
    goto :goto_3

    .line 273
    .line 274
    :cond_5
    iput v0, p0, Lcom/narvii/video/SceneEditorFragment;->flyingTaskCount:I

    .line 275
    .line 276
    .line 277
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 278
    move-result-object p1

    .line 279
    .line 280
    check-cast p1, Lcom/narvii/video/services/IEditorPackFactory;

    .line 281
    .line 282
    .line 283
    invoke-static {}, Lcom/narvii/app/NVApplication;->isBasedOnMeishe()Z

    .line 284
    move-result v2

    .line 285
    .line 286
    if-eqz v2, :cond_6

    .line 287
    .line 288
    iget-object v2, p0, Lcom/narvii/video/SceneEditorFragment;->scene:Lcom/narvii/scene/model/SceneInfo;

    .line 289
    .line 290
    if-eqz v2, :cond_6

    .line 291
    .line 292
    sget-object v1, Lcom/narvii/video/services/SceneMediaProcessor;->INSTANCE:Lcom/narvii/video/services/SceneMediaProcessor;

    .line 293
    .line 294
    .line 295
    invoke-static {v2}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 296
    .line 297
    new-instance v3, Ljava/io/File;

    .line 298
    .line 299
    iget-object v4, p0, Lcom/narvii/video/SceneEditorFragment;->outputCoverImagePath:Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    invoke-interface {p1}, Lcom/narvii/video/services/IEditorPackFactory;->getVideoGenerator()Lcom/narvii/video/interfaces/ISceneVideoGenerator;

    .line 306
    move-result-object p1

    .line 307
    .line 308
    new-instance v4, Lcom/narvii/video/SceneEditorFragment$onOptionsItemSelected$2;

    .line 309
    .line 310
    .line 311
    invoke-direct {v4, p0}, Lcom/narvii/video/SceneEditorFragment$onOptionsItemSelected$2;-><init>(Lcom/narvii/video/SceneEditorFragment;)V

    .line 312
    .line 313
    .line 314
    invoke-virtual {v1, v2, v3, p1, v4}, Lcom/narvii/video/services/SceneMediaProcessor;->getSceneCoverImage(Lcom/narvii/scene/model/SceneInfo;Ljava/io/File;Lcom/narvii/video/interfaces/ISceneVideoGenerator;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;)V

    .line 315
    goto :goto_3

    .line 316
    .line 317
    :cond_6
    sget-object v5, Lcom/narvii/video/services/SceneMediaProcessor;->INSTANCE:Lcom/narvii/video/services/SceneMediaProcessor;

    .line 318
    .line 319
    .line 320
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 321
    move-result-object v2

    .line 322
    .line 323
    .line 324
    invoke-interface {v2}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getVideoClipInfoList()Ljava/util/ArrayList;

    .line 325
    move-result-object v2

    .line 326
    .line 327
    .line 328
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 329
    move-result-object v1

    .line 330
    .line 331
    const-string v2, "get(...)"

    .line 332
    .line 333
    .line 334
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 335
    move-object v6, v1

    .line 336
    .line 337
    check-cast v6, Lcom/narvii/video/model/AVClipInfoPack;

    .line 338
    .line 339
    new-instance v7, Ljava/io/File;

    .line 340
    .line 341
    iget-object v1, p0, Lcom/narvii/video/SceneEditorFragment;->outputCoverImagePath:Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    invoke-direct {v7, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 345
    .line 346
    .line 347
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getVideoManager()Lcom/narvii/video/services/VideoManager;

    .line 348
    move-result-object v8

    .line 349
    .line 350
    .line 351
    invoke-interface {p1}, Lcom/narvii/video/services/IEditorPackFactory;->getVideoGenerator()Lcom/narvii/video/interfaces/ISceneVideoGenerator;

    .line 352
    move-result-object v9

    .line 353
    .line 354
    new-instance v10, Lcom/narvii/video/SceneEditorFragment$onOptionsItemSelected$3;

    .line 355
    .line 356
    .line 357
    invoke-direct {v10, p0}, Lcom/narvii/video/SceneEditorFragment$onOptionsItemSelected$3;-><init>(Lcom/narvii/video/SceneEditorFragment;)V

    .line 358
    .line 359
    .line 360
    invoke-virtual/range {v5 .. v10}, Lcom/narvii/video/services/SceneMediaProcessor;->getSceneCoverImage(Lcom/narvii/video/model/AVClipInfoPack;Ljava/io/File;Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/interfaces/ISceneVideoGenerator;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;)Lg7/d;

    .line 361
    :goto_3
    return v0

    .line 362
    .line 363
    .line 364
    :cond_7
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 365
    move-result p1

    .line 366
    return p1
.end method

.method public onPause()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->onPause()V

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
    invoke-virtual {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->getFrameRetrieverManager()Lcom/narvii/video/services/FrameRetrieverManager;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/narvii/video/services/FrameRetrieverManager;->abortFlyingFrameRetrievers()V

    .line 18
    return-void
.end method

.method public onPickMediaResult(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 9
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
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

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p1, :cond_2

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 7
    move-result v1

    .line 8
    .line 9
    .line 10
    invoke-interface {p1, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 15
    move-result v2

    .line 16
    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 21
    move-result-object v2

    .line 22
    move-object v3, v2

    .line 23
    .line 24
    check-cast v3, Lcom/narvii/model/Media;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3}, Lcom/narvii/model/Media;->isVideo()Z

    .line 28
    move-result v3

    .line 29
    .line 30
    if-eqz v3, :cond_0

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    move-object v2, v0

    .line 33
    .line 34
    :goto_0
    check-cast v2, Lcom/narvii/model/Media;

    .line 35
    goto :goto_1

    .line 36
    :cond_2
    move-object v2, v0

    .line 37
    .line 38
    :goto_1
    if-eqz v2, :cond_3

    .line 39
    .line 40
    new-instance v1, Lcom/narvii/scene/helper/SceneSpHelper;

    .line 41
    .line 42
    .line 43
    invoke-direct {v1, p0}, Lcom/narvii/scene/helper/SceneSpHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 44
    .line 45
    iget-object v3, v2, Lcom/narvii/model/Media;->fileName:Ljava/lang/String;

    .line 46
    .line 47
    const-string v4, "fileName"

    .line 48
    .line 49
    .line 50
    invoke-static {v3, v4}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v2, v3}, Lcom/narvii/scene/helper/SceneSpHelper;->saveRecentVideo(Lcom/narvii/model/Media;Ljava/lang/String;)V

    .line 54
    .line 55
    :cond_3
    if-eqz p1, :cond_4

    .line 56
    .line 57
    .line 58
    invoke-static {p1}, Lkotlin/collections/t;->j0(Ljava/util/List;)Ljava/lang/Object;

    .line 59
    move-result-object v1

    .line 60
    .line 61
    check-cast v1, Lcom/narvii/model/Media;

    .line 62
    goto :goto_2

    .line 63
    :cond_4
    move-object v1, v0

    .line 64
    .line 65
    :goto_2
    if-eqz v1, :cond_b

    .line 66
    .line 67
    iget-object v2, v1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    invoke-static {v2}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 71
    move-result v2

    .line 72
    .line 73
    if-nez v2, :cond_b

    .line 74
    .line 75
    if-eqz p2, :cond_b

    .line 76
    .line 77
    iget v2, v1, Lcom/narvii/model/Media;->type:I

    .line 78
    .line 79
    const/16 v3, 0x67

    .line 80
    .line 81
    const-string v4, "intermediateFolder"

    .line 82
    .line 83
    if-ne v2, v3, :cond_6

    .line 84
    .line 85
    new-instance p1, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .line 90
    iget-object v2, p0, Lcom/narvii/video/SceneEditorFragment;->intermediateFolder:Ljava/io/File;

    .line 91
    .line 92
    if-nez v2, :cond_5

    .line 93
    .line 94
    .line 95
    invoke-static {v4}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 96
    goto :goto_3

    .line 97
    :cond_5
    move-object v0, v2

    .line 98
    .line 99
    .line 100
    :goto_3
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 101
    move-result-object v0

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    move-result-object p1

    .line 114
    .line 115
    .line 116
    invoke-static {p0, v1, p2, p1}, Lcom/narvii/pre_editing/MediaPreEditingActivityKt;->startPreEditActivity(Lcom/narvii/app/NVFragment;Lcom/narvii/model/Media;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 117
    goto :goto_6

    .line 118
    .line 119
    :cond_6
    const/16 v3, 0x7b

    .line 120
    .line 121
    const-string v5, ""

    .line 122
    .line 123
    .line 124
    const-string/jumbo v6, "type"

    .line 125
    .line 126
    if-ne v2, v3, :cond_a

    .line 127
    .line 128
    iget-wide v2, v1, Lcom/narvii/model/Media;->duration:J

    .line 129
    .line 130
    .line 131
    const-wide/32 v7, 0xee47

    .line 132
    .line 133
    cmp-long v2, v2, v7

    .line 134
    .line 135
    if-lez v2, :cond_8

    .line 136
    .line 137
    new-instance p1, Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    .line 142
    iget-object v2, p0, Lcom/narvii/video/SceneEditorFragment;->intermediateFolder:Ljava/io/File;

    .line 143
    .line 144
    if-nez v2, :cond_7

    .line 145
    .line 146
    .line 147
    invoke-static {v4}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 148
    goto :goto_4

    .line 149
    :cond_7
    move-object v0, v2

    .line 150
    .line 151
    .line 152
    :goto_4
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 153
    move-result-object v0

    .line 154
    .line 155
    .line 156
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 165
    move-result-object p1

    .line 166
    .line 167
    .line 168
    invoke-static {p0, v1, p2, p1}, Lcom/narvii/pre_editing/MediaPreEditingActivityKt;->startPreEditActivity(Lcom/narvii/app/NVFragment;Lcom/narvii/model/Media;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 169
    goto :goto_6

    .line 170
    .line 171
    .line 172
    :cond_8
    invoke-virtual {p2, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 173
    move-result-object v0

    .line 174
    .line 175
    if-nez v0, :cond_9

    .line 176
    goto :goto_5

    .line 177
    :cond_9
    move-object v5, v0

    .line 178
    .line 179
    .line 180
    :goto_5
    invoke-static {v5}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 181
    .line 182
    .line 183
    invoke-direct {p0, p1, v5, p2}, Lcom/narvii/video/SceneEditorFragment;->onPickResult(Ljava/util/List;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 184
    goto :goto_6

    .line 185
    .line 186
    .line 187
    :cond_a
    invoke-virtual {p2, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 188
    move-result-object v0

    .line 189
    .line 190
    if-nez v0, :cond_9

    .line 191
    goto :goto_5

    .line 192
    :cond_b
    :goto_6
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->onResume()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getInitSuccess()Z

    .line 7
    move-result v0

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->getMainTimeLineComponent()Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/narvii/video/widget/MediaTimeLineComponent;->refreshTimeLine()V

    .line 19
    :cond_0
    return-void
.end method

.method public onTimeLineClicked(Lcom/narvii/video/interfaces/ITimelineClip;)V
    .locals 5
    .param p1    # Lcom/narvii/video/interfaces/ITimelineClip;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "clipInfo"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1}, Lcom/narvii/video/BaseMediaEditorFragment;->onTimeLineClicked(Lcom/narvii/video/interfaces/ITimelineClip;)V

    .line 9
    .line 10
    instance-of v0, p1, Lcom/narvii/video/model/AVClipInfoPack;

    .line 11
    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/video/SceneEditorFragment;->scene:Lcom/narvii/scene/model/SceneInfo;

    .line 15
    const/4 v1, 0x1

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/narvii/scene/model/SceneInfo;->isGeneratedFromTemplate()Z

    .line 21
    move-result v0

    .line 22
    .line 23
    if-ne v0, v1, :cond_0

    .line 24
    goto :goto_0

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    check-cast p1, Lcom/narvii/video/model/AVClipInfoPack;

    .line 31
    .line 32
    iget p1, p1, Lcom/narvii/video/model/BaseClipInfoPack;->indexInScene:I

    .line 33
    const/4 v2, 0x0

    .line 34
    const/4 v3, 0x2

    .line 35
    const/4 v4, 0x0

    .line 36
    .line 37
    .line 38
    invoke-static {v0, p1, v2, v3, v4}, Lcom/narvii/video/interfaces/IPreviewPlayer$DefaultImpls;->setActiveVideoClip$default(Lcom/narvii/video/interfaces/IPreviewPlayer;IIILjava/lang/Object;)Lcom/narvii/video/model/AVClipInfoPack;

    .line 39
    .line 40
    .line 41
    invoke-static {p0, v1, v2, v3, v4}, Lcom/narvii/video/BaseMediaEditorFragment;->changeVideoPlaybackStatus$default(Lcom/narvii/video/BaseMediaEditorFragment;ZZILjava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v2}, Lcom/narvii/video/BaseMediaEditorFragment;->setAutoPlaying(Z)V

    .line 45
    .line 46
    .line 47
    invoke-direct {p0}, Lcom/narvii/video/SceneEditorFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentSceneEditorBinding;

    .line 48
    move-result-object p1

    .line 49
    .line 50
    iget-object p1, p1, Lcom/narvii/mediaeditor/databinding/FragmentSceneEditorBinding;->coverLayer:Landroid/view/View;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 54
    .line 55
    .line 56
    invoke-direct {p0}, Lcom/narvii/video/SceneEditorFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentSceneEditorBinding;

    .line 57
    move-result-object p1

    .line 58
    .line 59
    iget-object p1, p1, Lcom/narvii/mediaeditor/databinding/FragmentSceneEditorBinding;->clipFastSwitchingPanel:Lcom/narvii/video/widget/ClipFastSwitchingPanel;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 63
    .line 64
    .line 65
    invoke-direct {p0}, Lcom/narvii/video/SceneEditorFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentSceneEditorBinding;

    .line 66
    move-result-object p1

    .line 67
    .line 68
    iget-object p1, p1, Lcom/narvii/mediaeditor/databinding/FragmentSceneEditorBinding;->clipFastSwitchingPanel:Lcom/narvii/video/widget/ClipFastSwitchingPanel;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 72
    move-result-object v0

    .line 73
    .line 74
    .line 75
    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getVideoClipInfoList()Ljava/util/ArrayList;

    .line 76
    move-result-object v0

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getActiveVideoClip()Lcom/narvii/video/model/AVClipInfoPack;

    .line 80
    move-result-object v1

    .line 81
    .line 82
    if-eqz v1, :cond_1

    .line 83
    .line 84
    iget v2, v1, Lcom/narvii/video/model/BaseClipInfoPack;->indexInScene:I

    .line 85
    .line 86
    .line 87
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->getFrameRetrieverManager()Lcom/narvii/video/services/FrameRetrieverManager;

    .line 88
    move-result-object v1

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1, v0, v2, v1}, Lcom/narvii/video/widget/ClipFastSwitchingPanel;->setClipSet(Ljava/util/ArrayList;ILcom/narvii/video/services/FrameRetrieverManager;)V

    .line 92
    :cond_2
    :goto_0
    return-void
.end method

.method public onVolumeChanged(F)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getActiveVideoClip()Lcom/narvii/video/model/AVClipInfoPack;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iput p1, v0, Lcom/narvii/video/model/AVClipInfoPack;->trackVolume:F

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 12
    move-result-object p1

    .line 13
    const/4 v1, 0x1

    .line 14
    .line 15
    .line 16
    invoke-interface {p1, v0, v1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->setVolume(Lcom/narvii/video/model/AVClipInfoPack;Z)V

    .line 17
    :cond_0
    return-void
.end method
