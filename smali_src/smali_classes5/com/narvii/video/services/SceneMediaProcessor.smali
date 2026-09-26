.class public final Lcom/narvii/video/services/SceneMediaProcessor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSceneMediaProcessor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SceneMediaProcessor.kt\ncom/narvii/video/services/SceneMediaProcessor\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,806:1\n1#2:807\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/narvii/video/services/SceneMediaProcessor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static completedTaskCount:I

.field private static final inProcessingEditingConfigMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lg7/d;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static inProcessingGlobalMusicMixingTask:Lg7/d;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static final processListenerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final progressMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static sceneInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/scene/model/SceneInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static storyProcessFailureFlag:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/video/services/SceneMediaProcessor;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/narvii/video/services/SceneMediaProcessor;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/narvii/video/services/SceneMediaProcessor;->INSTANCE:Lcom/narvii/video/services/SceneMediaProcessor;

    .line 8
    .line 9
    new-instance v0, Ljava/util/HashMap;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 13
    .line 14
    sput-object v0, Lcom/narvii/video/services/SceneMediaProcessor;->progressMap:Ljava/util/HashMap;

    .line 15
    .line 16
    new-instance v0, Ljava/util/HashMap;

    .line 17
    .line 18
    .line 19
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 20
    .line 21
    sput-object v0, Lcom/narvii/video/services/SceneMediaProcessor;->processListenerMap:Ljava/util/HashMap;

    .line 22
    .line 23
    new-instance v0, Ljava/util/HashMap;

    .line 24
    .line 25
    .line 26
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 27
    .line 28
    sput-object v0, Lcom/narvii/video/services/SceneMediaProcessor;->inProcessingEditingConfigMap:Ljava/util/HashMap;

    .line 29
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static synthetic a(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/video/services/SceneMediaProcessor;->copySceneOrgFileToOutputFile$lambda$7(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;)V

    return-void
.end method

.method public static final synthetic access$copySceneOrgFileToOutputFile(Lcom/narvii/video/services/SceneMediaProcessor;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/video/services/SceneMediaProcessor;->copySceneOrgFileToOutputFile(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;)V

    .line 4
    return-void
.end method

.method public static final synthetic access$getCompletedTaskCount$p()I
    .locals 1

    sget v0, Lcom/narvii/video/services/SceneMediaProcessor;->completedTaskCount:I

    return v0
.end method

.method public static final synthetic access$getInProcessingEditingConfigMap$p()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Lcom/narvii/video/services/SceneMediaProcessor;->inProcessingEditingConfigMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public static final synthetic access$getPathIndexInSceneList(Lcom/narvii/video/services/SceneMediaProcessor;Ljava/util/ArrayList;Ljava/lang/String;)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/narvii/video/services/SceneMediaProcessor;->getPathIndexInSceneList(Ljava/util/ArrayList;Ljava/lang/String;)I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic access$getProcessListenerMap$p()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Lcom/narvii/video/services/SceneMediaProcessor;->processListenerMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public static final synthetic access$getProgressMap$p()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Lcom/narvii/video/services/SceneMediaProcessor;->progressMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public static final synthetic access$getSceneInfoList$p()Ljava/util/ArrayList;
    .locals 1

    sget-object v0, Lcom/narvii/video/services/SceneMediaProcessor;->sceneInfoList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static final synthetic access$getStoryProcessFailureFlag$p()Z
    .locals 1

    sget-boolean v0, Lcom/narvii/video/services/SceneMediaProcessor;->storyProcessFailureFlag:Z

    return v0
.end method

.method public static final synthetic access$mixBGM_stage2(Lcom/narvii/video/services/SceneMediaProcessor;Ljava/util/ArrayList;Ljava/io/File;Ljava/util/ArrayList;Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct/range {p0 .. p5}, Lcom/narvii/video/services/SceneMediaProcessor;->mixBGM_stage2(Ljava/util/ArrayList;Ljava/io/File;Ljava/util/ArrayList;Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;)V

    .line 4
    return-void
.end method

.method public static final synthetic access$setCompletedTaskCount$p(I)V
    .locals 0

    sput p0, Lcom/narvii/video/services/SceneMediaProcessor;->completedTaskCount:I

    return-void
.end method

.method public static final synthetic access$setInProcessingGlobalMusicMixingTask$p(Lg7/d;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/narvii/video/services/SceneMediaProcessor;->inProcessingGlobalMusicMixingTask:Lg7/d;

    return-void
.end method

.method public static final synthetic access$setStoryProcessFailureFlag$p(Z)V
    .locals 0

    sput-boolean p0, Lcom/narvii/video/services/SceneMediaProcessor;->storyProcessFailureFlag:Z

    return-void
.end method

.method public static final synthetic access$stepIntoBGMMixing(Lcom/narvii/video/services/SceneMediaProcessor;Ljava/util/ArrayList;Lcom/narvii/video/model/AVClipInfoPack;Ljava/util/ArrayList;Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct/range {p0 .. p5}, Lcom/narvii/video/services/SceneMediaProcessor;->stepIntoBGMMixing(Ljava/util/ArrayList;Lcom/narvii/video/model/AVClipInfoPack;Ljava/util/ArrayList;Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;)V

    .line 4
    return-void
.end method

.method private final addMediaProcessListener(Ljava/lang/String;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;)V
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/video/services/SceneMediaProcessor;->processListenerMap:Ljava/util/HashMap;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    return-void
.end method

.method public static synthetic b(Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/video/services/SceneMediaProcessor;->copySceneOrgFileToOutputFile$lambda$7$lambda$6(Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;Ljava/util/ArrayList;)V

    return-void
.end method

.method private final copySceneOrgFileToOutputFile(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/scene/model/SceneInfo;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/video/services/h;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p1, p2, p3}, Lcom/narvii/video/services/h;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;)V

    .line 6
    .line 7
    new-instance p1, Ljava/lang/Thread;

    .line 8
    .line 9
    .line 10
    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 14
    return-void
.end method

.method private static final copySceneOrgFileToOutputFile$lambda$7(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;)V
    .locals 9

    .line 1
    .line 2
    const-string v0, "$sceneInfoList"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "$outputPathList"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    .line 17
    :goto_0
    if-ge v1, v0, :cond_1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 21
    move-result-object v2

    .line 22
    .line 23
    const-string v3, "get(...)"

    .line 24
    .line 25
    .line 26
    invoke-static {v2, v3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    check-cast v2, Lcom/narvii/scene/model/SceneInfo;

    .line 29
    .line 30
    .line 31
    invoke-static {v2}, Lcom/narvii/video/services/SceneMediaProcessorKt;->getOrgFile(Lcom/narvii/scene/model/SceneInfo;)Ljava/io/File;

    .line 32
    move-result-object v3

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 36
    move-result v2

    .line 37
    .line 38
    if-eqz v2, :cond_0

    .line 39
    .line 40
    new-instance v4, Ljava/io/File;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 44
    move-result-object v2

    .line 45
    .line 46
    check-cast v2, Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 50
    const/4 v5, 0x1

    .line 51
    const/4 v6, 0x0

    .line 52
    const/4 v7, 0x4

    .line 53
    const/4 v8, 0x0

    .line 54
    .line 55
    .line 56
    invoke-static/range {v3 .. v8}, Lkotlin/io/j;->p(Ljava/io/File;Ljava/io/File;ZIILjava/lang/Object;)Ljava/io/File;

    .line 57
    .line 58
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 59
    goto :goto_0

    .line 60
    .line 61
    :cond_1
    new-instance p0, Lcom/narvii/video/services/i;

    .line 62
    .line 63
    .line 64
    invoke-direct {p0, p2, p1}, Lcom/narvii/video/services/i;-><init>(Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;Ljava/util/ArrayList;)V

    .line 65
    .line 66
    .line 67
    invoke-static {p0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 68
    return-void
.end method

.method private static final copySceneOrgFileToOutputFile$lambda$7$lambda$6(Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;Ljava/util/ArrayList;)V
    .locals 1

    .line 1
    .line 2
    const-string v0, "$outputPathList"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-interface {p0, p1}, Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;->onSuccess(Ljava/util/ArrayList;)V

    .line 11
    :cond_0
    return-void
.end method

.method public static synthetic fillVideoMetadata$default(Lcom/narvii/video/services/SceneMediaProcessor;Lcom/narvii/video/model/AVClipInfoPack;ZLcom/narvii/video/model/StreamInfo;ILjava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    and-int/lit8 p4, p4, 0x4

    .line 3
    .line 4
    if-eqz p4, :cond_0

    .line 5
    const/4 p3, 0x0

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/video/services/SceneMediaProcessor;->fillVideoMetadata(Lcom/narvii/video/model/AVClipInfoPack;ZLcom/narvii/video/model/StreamInfo;)V

    .line 9
    return-void
.end method

.method private final getPathIndexInSceneList(Ljava/util/ArrayList;Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/scene/model/SceneInfo;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    :goto_0
    if-ge v1, v0, :cond_1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    move-result-object v2

    .line 12
    .line 13
    check-cast v2, Lcom/narvii/scene/model/SceneInfo;

    .line 14
    .line 15
    iget-object v2, v2, Lcom/narvii/scene/model/SceneInfo;->outputUrl:Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 19
    move-result v2

    .line 20
    .line 21
    if-eqz v2, :cond_0

    .line 22
    return v1

    .line 23
    .line 24
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/4 p1, -0x1

    .line 27
    return p1
.end method

.method public static synthetic getPreviewMedia$default(Lcom/narvii/video/services/SceneMediaProcessor;Lcom/narvii/video/model/AVClipInfoPack;Lcom/narvii/video/model/AVClipInfoPack;Ljava/io/File;Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;ILjava/lang/Object;)Lg7/d;
    .locals 7

    .line 1
    .line 2
    and-int/lit8 p7, p6, 0x2

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    if-eqz p7, :cond_0

    .line 6
    move-object v3, v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move-object v3, p2

    .line 9
    .line 10
    :goto_0
    and-int/lit8 p2, p6, 0x10

    .line 11
    .line 12
    if-eqz p2, :cond_1

    .line 13
    move-object v6, v0

    .line 14
    goto :goto_1

    .line 15
    :cond_1
    move-object v6, p5

    .line 16
    :goto_1
    move-object v1, p0

    .line 17
    move-object v2, p1

    .line 18
    move-object v4, p3

    .line 19
    move-object v5, p4

    .line 20
    .line 21
    .line 22
    invoke-virtual/range {v1 .. v6}, Lcom/narvii/video/services/SceneMediaProcessor;->getPreviewMedia(Lcom/narvii/video/model/AVClipInfoPack;Lcom/narvii/video/model/AVClipInfoPack;Ljava/io/File;Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;)Lg7/d;

    .line 23
    move-result-object p0

    .line 24
    return-object p0
.end method

.method public static synthetic getSceneCoverImage$default(Lcom/narvii/video/services/SceneMediaProcessor;Lcom/narvii/video/model/AVClipInfoPack;Ljava/io/File;Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/interfaces/ISceneVideoGenerator;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;ILjava/lang/Object;)Lg7/d;
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    const/4 p5, 0x0

    :cond_0
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/narvii/video/services/SceneMediaProcessor;->getSceneCoverImage(Lcom/narvii/video/model/AVClipInfoPack;Ljava/io/File;Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/interfaces/ISceneVideoGenerator;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;)Lg7/d;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getSceneCoverImage$default(Lcom/narvii/video/services/SceneMediaProcessor;Lcom/narvii/scene/model/SceneInfo;Ljava/io/File;Lcom/narvii/video/interfaces/ISceneVideoGenerator;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    .line 2
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/narvii/video/services/SceneMediaProcessor;->getSceneCoverImage(Lcom/narvii/scene/model/SceneInfo;Ljava/io/File;Lcom/narvii/video/interfaces/ISceneVideoGenerator;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;)V

    return-void
.end method

.method public static synthetic getStoryCoverImage$default(Lcom/narvii/video/services/SceneMediaProcessor;Lcom/narvii/scene/model/SceneDraft;Ljava/io/File;ILcom/narvii/video/interfaces/ISceneVideoGenerator;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;ILjava/lang/Object;)V
    .locals 6

    .line 1
    .line 2
    and-int/lit8 p6, p6, 0x10

    .line 3
    .line 4
    if-eqz p6, :cond_0

    .line 5
    const/4 p5, 0x0

    .line 6
    :cond_0
    move-object v5, p5

    .line 7
    move-object v0, p0

    .line 8
    move-object v1, p1

    .line 9
    move-object v2, p2

    .line 10
    move v3, p3

    .line 11
    move-object v4, p4

    .line 12
    .line 13
    .line 14
    invoke-virtual/range {v0 .. v5}, Lcom/narvii/video/services/SceneMediaProcessor;->getStoryCoverImage(Lcom/narvii/scene/model/SceneDraft;Ljava/io/File;ILcom/narvii/video/interfaces/ISceneVideoGenerator;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;)V

    .line 15
    return-void
.end method

.method private final mixBGM_stage1(Ljava/util/ArrayList;Lcom/narvii/video/model/AVClipInfoPack;Ljava/util/ArrayList;Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            ">;",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/narvii/video/services/VideoManager;",
            "Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v2, Lkotlin/jvm/internal/m0;

    .line 3
    .line 4
    .line 5
    invoke-direct {v2}, Lkotlin/jvm/internal/m0;-><init>()V

    .line 6
    .line 7
    const/high16 v0, 0x3f000000    # 0.5f

    .line 8
    .line 9
    iput v0, v2, Lkotlin/jvm/internal/m0;->element:F

    .line 10
    .line 11
    new-instance v7, Ljava/io/File;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p4}, Lcom/narvii/video/services/VideoManager;->getTmpFileFolder()Ljava/io/File;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    const-string v1, "mixed_audio_tmp.mp4"

    .line 18
    .line 19
    .line 20
    invoke-direct {v7, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 21
    .line 22
    new-instance v8, Ljava/util/ArrayList;

    .line 23
    .line 24
    .line 25
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 29
    move-result-object v0

    .line 30
    const/4 v1, 0x0

    .line 31
    .line 32
    .line 33
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    move-result v3

    .line 35
    .line 36
    if-eqz v3, :cond_0

    .line 37
    .line 38
    .line 39
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    move-result-object v3

    .line 41
    .line 42
    check-cast v3, Lcom/narvii/video/model/AVClipInfoPack;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3}, Lcom/narvii/video/model/AVClipInfoPack;->copy()Lcom/narvii/video/model/AVClipInfoPack;

    .line 46
    move-result-object v3

    .line 47
    .line 48
    const-string v4, "copy(...)"

    .line 49
    .line 50
    .line 51
    invoke-static {v3, v4}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    .line 53
    iput v1, v3, Lcom/narvii/video/model/BaseClipInfoPack;->startOffsetToMainTrackInMs:I

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3}, Lcom/narvii/video/model/AVClipInfoPack;->trimmedDurationInMs()I

    .line 57
    move-result v4

    .line 58
    add-int/2addr v1, v4

    .line 59
    .line 60
    const/high16 v4, 0x3f800000    # 1.0f

    .line 61
    .line 62
    iget v5, p2, Lcom/narvii/video/model/AVClipInfoPack;->trackVolume:F

    .line 63
    sub-float/2addr v4, v5

    .line 64
    .line 65
    iput v4, v3, Lcom/narvii/video/model/AVClipInfoPack;->trackVolume:F

    .line 66
    .line 67
    .line 68
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    goto :goto_0

    .line 70
    .line 71
    :cond_0
    if-eqz p5, :cond_1

    .line 72
    .line 73
    iget v0, v2, Lkotlin/jvm/internal/m0;->element:F

    .line 74
    .line 75
    .line 76
    invoke-interface {p5, v0}, Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;->onProgress(F)V

    .line 77
    .line 78
    :cond_1
    new-instance v9, Lcom/narvii/video/services/SceneMediaProcessor$mixBGM_stage1$1;

    .line 79
    move-object v0, v9

    .line 80
    move-object v1, p5

    .line 81
    move-object v3, v7

    .line 82
    move-object v4, p1

    .line 83
    move-object v5, p3

    .line 84
    move-object v6, p4

    .line 85
    .line 86
    .line 87
    invoke-direct/range {v0 .. v6}, Lcom/narvii/video/services/SceneMediaProcessor$mixBGM_stage1$1;-><init>(Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;Lkotlin/jvm/internal/m0;Ljava/io/File;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/narvii/video/services/VideoManager;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p4, v8, p2, v7, v9}, Lcom/narvii/video/services/VideoManager;->mixBGM_Stage1(Ljava/util/ArrayList;Lcom/narvii/video/model/AVClipInfoPack;Ljava/io/File;Lcom/narvii/video/interfaces/IVideoServiceCallback;)Lg7/d;

    .line 91
    move-result-object p1

    .line 92
    .line 93
    sput-object p1, Lcom/narvii/video/services/SceneMediaProcessor;->inProcessingGlobalMusicMixingTask:Lg7/d;

    .line 94
    return-void
.end method

.method static synthetic mixBGM_stage1$default(Lcom/narvii/video/services/SceneMediaProcessor;Ljava/util/ArrayList;Lcom/narvii/video/model/AVClipInfoPack;Ljava/util/ArrayList;Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;ILjava/lang/Object;)V
    .locals 6

    .line 1
    .line 2
    and-int/lit8 p6, p6, 0x10

    .line 3
    .line 4
    if-eqz p6, :cond_0

    .line 5
    const/4 p5, 0x0

    .line 6
    :cond_0
    move-object v5, p5

    .line 7
    move-object v0, p0

    .line 8
    move-object v1, p1

    .line 9
    move-object v2, p2

    .line 10
    move-object v3, p3

    .line 11
    move-object v4, p4

    .line 12
    .line 13
    .line 14
    invoke-direct/range {v0 .. v5}, Lcom/narvii/video/services/SceneMediaProcessor;->mixBGM_stage1(Ljava/util/ArrayList;Lcom/narvii/video/model/AVClipInfoPack;Ljava/util/ArrayList;Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;)V

    .line 15
    return-void
.end method

.method private final mixBGM_stage2(Ljava/util/ArrayList;Ljava/io/File;Ljava/util/ArrayList;Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            ">;",
            "Ljava/io/File;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/narvii/video/services/VideoManager;",
            "Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v10, Lkotlin/jvm/internal/n0;

    .line 3
    .line 4
    .line 5
    invoke-direct {v10}, Lkotlin/jvm/internal/n0;-><init>()V

    .line 6
    .line 7
    new-instance v11, Lkotlin/jvm/internal/k0;

    .line 8
    .line 9
    .line 10
    invoke-direct {v11}, Lkotlin/jvm/internal/k0;-><init>()V

    .line 11
    .line 12
    new-instance v12, Ljava/util/HashMap;

    .line 13
    .line 14
    .line 15
    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    .line 19
    move-result v13

    .line 20
    const/4 v0, 0x0

    .line 21
    move v14, v0

    .line 22
    .line 23
    :goto_0
    if-ge v14, v13, :cond_1

    .line 24
    .line 25
    move-object/from16 v15, p1

    .line 26
    .line 27
    .line 28
    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    const-string v2, "get(...)"

    .line 32
    .line 33
    .line 34
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    move-object/from16 v16, v1

    .line 37
    .line 38
    check-cast v16, Lcom/narvii/video/model/AVClipInfoPack;

    .line 39
    .line 40
    new-instance v9, Lcom/narvii/video/model/AVClipInfoPack;

    .line 41
    .line 42
    .line 43
    invoke-direct {v9}, Lcom/narvii/video/model/AVClipInfoPack;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 47
    move-result-object v1

    .line 48
    .line 49
    iput-object v1, v9, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    .line 50
    .line 51
    iput v0, v9, Lcom/narvii/video/model/AVClipInfoPack;->trimStartInMs:I

    .line 52
    .line 53
    .line 54
    invoke-virtual/range {v16 .. v16}, Lcom/narvii/video/model/AVClipInfoPack;->trimmedDurationInMs()I

    .line 55
    move-result v1

    .line 56
    add-int/2addr v1, v0

    .line 57
    .line 58
    iput v1, v9, Lcom/narvii/video/model/AVClipInfoPack;->trimEndInMs:I

    .line 59
    .line 60
    .line 61
    invoke-virtual/range {v16 .. v16}, Lcom/narvii/video/model/AVClipInfoPack;->trimmedDurationInMs()I

    .line 62
    move-result v1

    .line 63
    .line 64
    add-int v17, v0, v1

    .line 65
    .line 66
    sget-object v0, Lcom/narvii/video/services/SceneMediaProcessor;->sceneInfoList:Ljava/util/ArrayList;

    .line 67
    .line 68
    .line 69
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 73
    move-result-object v0

    .line 74
    .line 75
    .line 76
    invoke-static {v0, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    move-object v8, v0

    .line 78
    .line 79
    check-cast v8, Lcom/narvii/scene/model/SceneInfo;

    .line 80
    .line 81
    new-instance v7, Ljava/io/File;

    .line 82
    .line 83
    move-object/from16 v6, p3

    .line 84
    .line 85
    .line 86
    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 87
    move-result-object v0

    .line 88
    .line 89
    check-cast v0, Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    new-instance v18, Lcom/narvii/video/services/SceneMediaProcessor$mixBGM_stage2$task$1;

    .line 95
    .line 96
    move-object/from16 v0, v18

    .line 97
    move-object v1, v11

    .line 98
    move-object v2, v12

    .line 99
    move-object v3, v8

    .line 100
    .line 101
    move-object/from16 v4, p5

    .line 102
    .line 103
    move-object/from16 v5, p4

    .line 104
    move-object v6, v10

    .line 105
    .line 106
    move-object/from16 v19, v7

    .line 107
    .line 108
    move-object/from16 v7, p1

    .line 109
    .line 110
    move-object/from16 v20, v10

    .line 111
    move-object v10, v8

    .line 112
    .line 113
    move-object/from16 v8, p3

    .line 114
    .line 115
    move-object/from16 v21, v9

    .line 116
    .line 117
    move-object/from16 v9, p2

    .line 118
    .line 119
    .line 120
    invoke-direct/range {v0 .. v9}, Lcom/narvii/video/services/SceneMediaProcessor$mixBGM_stage2$task$1;-><init>(Lkotlin/jvm/internal/k0;Ljava/util/HashMap;Lcom/narvii/scene/model/SceneInfo;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;Lcom/narvii/video/services/VideoManager;Lkotlin/jvm/internal/n0;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/io/File;)V

    .line 121
    .line 122
    move-object/from16 v1, p4

    .line 123
    .line 124
    move-object/from16 v2, v16

    .line 125
    .line 126
    move-object/from16 v3, v21

    .line 127
    .line 128
    move-object/from16 v4, v19

    .line 129
    move v5, v14

    .line 130
    .line 131
    move-object/from16 v6, v18

    .line 132
    .line 133
    .line 134
    invoke-virtual/range {v1 .. v6}, Lcom/narvii/video/services/VideoManager;->mixBGM_Stage2(Lcom/narvii/video/model/AVClipInfoPack;Lcom/narvii/video/model/AVClipInfoPack;Ljava/io/File;ILcom/narvii/video/interfaces/IVideoServiceCallback;)Lg7/d;

    .line 135
    move-result-object v0

    .line 136
    .line 137
    sget-object v1, Lcom/narvii/video/services/SceneMediaProcessor;->sceneInfoList:Ljava/util/ArrayList;

    .line 138
    .line 139
    if-eqz v1, :cond_0

    .line 140
    .line 141
    if-eqz v0, :cond_0

    .line 142
    .line 143
    sget-object v1, Lcom/narvii/video/services/SceneMediaProcessor;->inProcessingEditingConfigMap:Ljava/util/HashMap;

    .line 144
    .line 145
    iget-object v2, v10, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    .line 146
    .line 147
    const-string v3, "id"

    .line 148
    .line 149
    .line 150
    invoke-static {v2, v3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    .line 155
    :cond_0
    add-int/lit8 v14, v14, 0x1

    .line 156
    .line 157
    move/from16 v0, v17

    .line 158
    .line 159
    move-object/from16 v10, v20

    .line 160
    .line 161
    goto/16 :goto_0

    .line 162
    :cond_1
    return-void
.end method

.method static synthetic mixBGM_stage2$default(Lcom/narvii/video/services/SceneMediaProcessor;Ljava/util/ArrayList;Ljava/io/File;Ljava/util/ArrayList;Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;ILjava/lang/Object;)V
    .locals 6

    .line 1
    .line 2
    and-int/lit8 p6, p6, 0x10

    .line 3
    .line 4
    if-eqz p6, :cond_0

    .line 5
    const/4 p5, 0x0

    .line 6
    :cond_0
    move-object v5, p5

    .line 7
    move-object v0, p0

    .line 8
    move-object v1, p1

    .line 9
    move-object v2, p2

    .line 10
    move-object v3, p3

    .line 11
    move-object v4, p4

    .line 12
    .line 13
    .line 14
    invoke-direct/range {v0 .. v5}, Lcom/narvii/video/services/SceneMediaProcessor;->mixBGM_stage2(Ljava/util/ArrayList;Ljava/io/File;Ljava/util/ArrayList;Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;)V

    .line 15
    return-void
.end method

.method private final obtainProcessListenerImpl(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/narvii/video/model/AVClipInfoPack;Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;)Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/scene/model/SceneInfo;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            "Lcom/narvii/video/services/VideoManager;",
            "Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;",
            ")",
            "Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v6, Lcom/narvii/video/services/SceneMediaProcessor$obtainProcessListenerImpl$1;

    .line 3
    move-object v0, v6

    .line 4
    move-object v1, p1

    .line 5
    move-object v2, p3

    .line 6
    move-object v3, p2

    .line 7
    move-object v4, p5

    .line 8
    move-object v5, p4

    .line 9
    .line 10
    .line 11
    invoke-direct/range {v0 .. v5}, Lcom/narvii/video/services/SceneMediaProcessor$obtainProcessListenerImpl$1;-><init>(Ljava/util/ArrayList;Lcom/narvii/video/model/AVClipInfoPack;Ljava/util/ArrayList;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;Lcom/narvii/video/services/VideoManager;)V

    .line 12
    return-object v6
.end method

.method public static synthetic processScene$default(Lcom/narvii/video/services/SceneMediaProcessor;Lcom/narvii/scene/model/SceneInfo;Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;ZILjava/lang/Object;)Lg7/d;
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    const/4 p3, 0x0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    const/4 p4, 0x0

    .line 1
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/narvii/video/services/SceneMediaProcessor;->processScene(Lcom/narvii/scene/model/SceneInfo;Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;Z)Lg7/d;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic processScene$default(Lcom/narvii/video/services/SceneMediaProcessor;Lcom/narvii/app/NVContext;Lcom/narvii/scene/model/SceneInfo;Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/interfaces/ISceneVideoGenerator;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;ZILjava/lang/Object;)V
    .locals 7

    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_0

    const/4 p5, 0x0

    :cond_0
    move-object v5, p5

    and-int/lit8 p5, p7, 0x20

    if-eqz p5, :cond_1

    const/4 p6, 0x0

    :cond_1
    move v6, p6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 3
    invoke-virtual/range {v0 .. v6}, Lcom/narvii/video/services/SceneMediaProcessor;->processScene(Lcom/narvii/app/NVContext;Lcom/narvii/scene/model/SceneInfo;Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/interfaces/ISceneVideoGenerator;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;Z)V

    return-void
.end method

.method public static synthetic processScene$default(Lcom/narvii/video/services/SceneMediaProcessor;Lcom/narvii/scene/model/SceneInfo;Lcom/narvii/video/interfaces/ISceneVideoGenerator;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    const/4 p3, 0x0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    const/4 p4, 0x0

    .line 2
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/narvii/video/services/SceneMediaProcessor;->processScene(Lcom/narvii/scene/model/SceneInfo;Lcom/narvii/video/interfaces/ISceneVideoGenerator;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;Z)V

    return-void
.end method

.method public static synthetic processStory$default(Lcom/narvii/video/services/SceneMediaProcessor;Lcom/narvii/app/NVContext;Ljava/util/ArrayList;Lcom/narvii/video/model/AVClipInfoPack;Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/interfaces/ISceneVideoGenerator;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;ILjava/lang/Object;)Ljava/util/ArrayList;
    .locals 9

    .line 1
    .line 2
    and-int/lit8 v0, p7, 0x10

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    move-object v7, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move-object v7, p5

    .line 9
    .line 10
    :goto_0
    and-int/lit8 v0, p7, 0x20

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    move-object v8, v1

    .line 14
    goto :goto_1

    .line 15
    :cond_1
    move-object v8, p6

    .line 16
    :goto_1
    move-object v2, p0

    .line 17
    move-object v3, p1

    .line 18
    move-object v4, p2

    .line 19
    move-object v5, p3

    .line 20
    move-object v6, p4

    .line 21
    .line 22
    .line 23
    invoke-virtual/range {v2 .. v8}, Lcom/narvii/video/services/SceneMediaProcessor;->processStory(Lcom/narvii/app/NVContext;Ljava/util/ArrayList;Lcom/narvii/video/model/AVClipInfoPack;Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/interfaces/ISceneVideoGenerator;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;)Ljava/util/ArrayList;

    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method

.method private final removeMediaProcessListener(Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/video/services/SceneMediaProcessor;->processListenerMap:Ljava/util/HashMap;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    return-void
.end method

.method private final stepIntoBGMMixing(Ljava/util/ArrayList;Lcom/narvii/video/model/AVClipInfoPack;Ljava/util/ArrayList;Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/scene/model/SceneInfo;",
            ">;",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/narvii/video/services/VideoManager;",
            "Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v1, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    .line 12
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v0

    .line 14
    const/4 v2, 0x1

    .line 15
    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    .line 19
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    check-cast v0, Lcom/narvii/scene/model/SceneInfo;

    .line 23
    .line 24
    new-instance v3, Lcom/narvii/video/model/AVClipInfoPack;

    .line 25
    .line 26
    .line 27
    invoke-direct {v3}, Lcom/narvii/video/model/AVClipInfoPack;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    invoke-static {v0}, Lcom/narvii/video/services/SceneMediaProcessorKt;->getOrgFile(Lcom/narvii/scene/model/SceneInfo;)Ljava/io/File;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    iput-object v0, v3, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    .line 41
    .line 42
    const-string v4, "inputPath"

    .line 43
    .line 44
    .line 45
    invoke-static {v0, v4}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p4, v0}, Lcom/narvii/video/services/VideoManager;->fetchStreamInfoSync(Ljava/lang/String;)Lcom/narvii/video/model/StreamInfo;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    iget v4, v0, Lcom/narvii/video/model/StreamInfo;->durationInMs:I

    .line 52
    .line 53
    iput v4, v3, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    .line 54
    .line 55
    iput v4, v3, Lcom/narvii/video/model/BaseClipInfoPack;->orgDurationInMs:I

    .line 56
    .line 57
    iget-object v4, v0, Lcom/narvii/video/model/StreamInfo;->aCodecType:Ljava/lang/String;

    .line 58
    const/4 v5, 0x0

    .line 59
    .line 60
    if-eqz v4, :cond_0

    .line 61
    move v4, v2

    .line 62
    goto :goto_1

    .line 63
    :cond_0
    move v4, v5

    .line 64
    .line 65
    :goto_1
    iput-boolean v4, v3, Lcom/narvii/video/model/AVClipInfoPack;->hasAudioTrack:Z

    .line 66
    .line 67
    iget-object v0, v0, Lcom/narvii/video/model/StreamInfo;->vCodecType:Ljava/lang/String;

    .line 68
    .line 69
    if-eqz v0, :cond_1

    .line 70
    goto :goto_2

    .line 71
    :cond_1
    move v2, v5

    .line 72
    .line 73
    :goto_2
    iput-boolean v2, v3, Lcom/narvii/video/model/AVClipInfoPack;->hasVideoTrack:Z

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    goto :goto_0

    .line 78
    .line 79
    :cond_2
    iput-boolean v2, p2, Lcom/narvii/video/model/AVClipInfoPack;->hasAudioTrack:Z

    .line 80
    move-object v0, p0

    .line 81
    move-object v2, p2

    .line 82
    move-object v3, p3

    .line 83
    move-object v4, p4

    .line 84
    move-object v5, p5

    .line 85
    .line 86
    .line 87
    invoke-direct/range {v0 .. v5}, Lcom/narvii/video/services/SceneMediaProcessor;->mixBGM_stage1(Ljava/util/ArrayList;Lcom/narvii/video/model/AVClipInfoPack;Ljava/util/ArrayList;Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;)V

    .line 88
    return-void
.end method

.method static synthetic stepIntoBGMMixing$default(Lcom/narvii/video/services/SceneMediaProcessor;Ljava/util/ArrayList;Lcom/narvii/video/model/AVClipInfoPack;Ljava/util/ArrayList;Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;ILjava/lang/Object;)V
    .locals 6

    .line 1
    .line 2
    and-int/lit8 p6, p6, 0x10

    .line 3
    .line 4
    if-eqz p6, :cond_0

    .line 5
    const/4 p5, 0x0

    .line 6
    :cond_0
    move-object v5, p5

    .line 7
    move-object v0, p0

    .line 8
    move-object v1, p1

    .line 9
    move-object v2, p2

    .line 10
    move-object v3, p3

    .line 11
    move-object v4, p4

    .line 12
    .line 13
    .line 14
    invoke-direct/range {v0 .. v5}, Lcom/narvii/video/services/SceneMediaProcessor;->stepIntoBGMMixing(Ljava/util/ArrayList;Lcom/narvii/video/model/AVClipInfoPack;Ljava/util/ArrayList;Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;)V

    .line 15
    return-void
.end method


# virtual methods
.method public final clearListeners()V
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/video/services/SceneMediaProcessor;->processListenerMap:Ljava/util/HashMap;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 6
    return-void
.end method

.method public final fillAudioClipMetadata(Lcom/narvii/video/model/AVClipInfoPack;Lcom/narvii/media/online/audio/model/Sound;Lcom/narvii/media/online/audio/model/AssetCategory;)Lcom/narvii/video/model/AVClipInfoPack;
    .locals 1
    .param p1    # Lcom/narvii/video/model/AVClipInfoPack;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/media/online/audio/model/Sound;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/narvii/media/online/audio/model/AssetCategory;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "audioClip"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    iget-object v0, p2, Lcom/narvii/media/online/audio/model/Sound;->id:Ljava/lang/String;

    .line 10
    .line 11
    iput-object v0, p1, Lcom/narvii/video/model/AVClipInfoPack;->musicId:Ljava/lang/String;

    .line 12
    .line 13
    iget p2, p2, Lcom/narvii/media/online/audio/model/Sound;->type:I

    .line 14
    .line 15
    iput p2, p1, Lcom/narvii/video/model/AVClipInfoPack;->musicType:I

    .line 16
    .line 17
    :cond_0
    if-eqz p3, :cond_1

    .line 18
    .line 19
    iget-object p2, p3, Lcom/narvii/media/online/audio/model/AssetCategory;->id:Ljava/lang/String;

    .line 20
    .line 21
    iput-object p2, p1, Lcom/narvii/video/model/AVClipInfoPack;->categoryId:Ljava/lang/String;

    .line 22
    :cond_1
    return-object p1
.end method

.method public final fillVideoMetadata(Lcom/narvii/video/model/AVClipInfoPack;ZLcom/narvii/video/model/StreamInfo;)V
    .locals 12
    .param p1    # Lcom/narvii/video/model/AVClipInfoPack;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/narvii/video/model/StreamInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "clip"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const/16 v0, 0x500

    .line 8
    .line 9
    const/16 v1, 0x2d0

    .line 10
    const/4 v2, 0x3

    .line 11
    const/4 v3, 0x1

    .line 12
    const/4 v4, 0x0

    .line 13
    const/4 v5, 0x0

    .line 14
    .line 15
    const/high16 v6, 0x3f800000    # 1.0f

    .line 16
    const/4 v7, 0x2

    .line 17
    .line 18
    if-eqz p2, :cond_0

    .line 19
    .line 20
    iput v1, p1, Lcom/narvii/video/model/AVClipInfoPack;->rawVideoWidth:I

    .line 21
    .line 22
    iput v0, p1, Lcom/narvii/video/model/AVClipInfoPack;->rawVideoHeight:I

    .line 23
    .line 24
    const/16 p2, 0x14

    .line 25
    .line 26
    iput p2, p1, Lcom/narvii/video/model/AVClipInfoPack;->frameRate:I

    .line 27
    .line 28
    const/16 p2, 0x3e8

    .line 29
    .line 30
    iput p2, p1, Lcom/narvii/video/model/AVClipInfoPack;->bitRate:I

    .line 31
    .line 32
    iget-object p2, p1, Lcom/narvii/video/model/AVClipInfoPack;->targetRectInfo:[F

    .line 33
    .line 34
    aput v5, p2, v4

    .line 35
    .line 36
    aput v5, p2, v3

    .line 37
    .line 38
    aput v6, p2, v7

    .line 39
    .line 40
    aput v6, p2, v2

    .line 41
    .line 42
    goto/16 :goto_6

    .line 43
    .line 44
    :cond_0
    if-eqz p3, :cond_5

    .line 45
    .line 46
    iget p2, p3, Lcom/narvii/video/model/StreamInfo;->rotate:I

    .line 47
    .line 48
    const/16 v8, 0x10e

    .line 49
    .line 50
    const/16 v9, 0x5a

    .line 51
    .line 52
    if-eq p2, v9, :cond_2

    .line 53
    .line 54
    if-ne p2, v8, :cond_1

    .line 55
    goto :goto_0

    .line 56
    .line 57
    :cond_1
    iget v10, p3, Lcom/narvii/video/model/StreamInfo;->width:I

    .line 58
    goto :goto_1

    .line 59
    .line 60
    :cond_2
    :goto_0
    iget v10, p3, Lcom/narvii/video/model/StreamInfo;->height:I

    .line 61
    .line 62
    :goto_1
    iput v10, p1, Lcom/narvii/video/model/AVClipInfoPack;->rawVideoWidth:I

    .line 63
    .line 64
    if-eq p2, v9, :cond_4

    .line 65
    .line 66
    if-ne p2, v8, :cond_3

    .line 67
    goto :goto_2

    .line 68
    .line 69
    :cond_3
    iget p2, p3, Lcom/narvii/video/model/StreamInfo;->height:I

    .line 70
    goto :goto_3

    .line 71
    .line 72
    :cond_4
    :goto_2
    iget p2, p3, Lcom/narvii/video/model/StreamInfo;->width:I

    .line 73
    .line 74
    :goto_3
    iput p2, p1, Lcom/narvii/video/model/AVClipInfoPack;->rawVideoHeight:I

    .line 75
    .line 76
    iget p2, p3, Lcom/narvii/video/model/StreamInfo;->fps:I

    .line 77
    .line 78
    iput p2, p1, Lcom/narvii/video/model/AVClipInfoPack;->frameRate:I

    .line 79
    .line 80
    iget p2, p3, Lcom/narvii/video/model/StreamInfo;->bitrateInKbps:I

    .line 81
    .line 82
    iput p2, p1, Lcom/narvii/video/model/AVClipInfoPack;->bitRate:I

    .line 83
    goto :goto_6

    .line 84
    .line 85
    .line 86
    :cond_5
    invoke-virtual {p1}, Lcom/narvii/video/model/AVClipInfoPack;->getRotateAngle()I

    .line 87
    move-result p2

    .line 88
    .line 89
    if-eqz p2, :cond_6

    .line 90
    .line 91
    const/16 p3, 0xb4

    .line 92
    .line 93
    if-eq p2, p3, :cond_6

    .line 94
    .line 95
    iget p2, p1, Lcom/narvii/video/model/AVClipInfoPack;->rawVideoHeight:I

    .line 96
    int-to-float p2, p2

    .line 97
    .line 98
    iget p3, p1, Lcom/narvii/video/model/AVClipInfoPack;->rawVideoWidth:I

    .line 99
    :goto_4
    int-to-float p3, p3

    .line 100
    div-float/2addr p2, p3

    .line 101
    goto :goto_5

    .line 102
    .line 103
    :cond_6
    iget p2, p1, Lcom/narvii/video/model/AVClipInfoPack;->rawVideoWidth:I

    .line 104
    int-to-float p2, p2

    .line 105
    .line 106
    iget p3, p1, Lcom/narvii/video/model/AVClipInfoPack;->rawVideoHeight:I

    .line 107
    goto :goto_4

    .line 108
    .line 109
    :goto_5
    const/high16 p3, 0x3f100000    # 0.5625f

    .line 110
    .line 111
    cmpg-float v8, p2, p3

    .line 112
    .line 113
    if-gez v8, :cond_7

    .line 114
    int-to-float p3, v0

    .line 115
    mul-float/2addr p2, p3

    .line 116
    float-to-int p2, p2

    .line 117
    .line 118
    rsub-int p3, p2, 0x2d0

    .line 119
    div-int/2addr p3, v7

    .line 120
    .line 121
    iget-object v8, p1, Lcom/narvii/video/model/AVClipInfoPack;->targetRectInfo:[F

    .line 122
    int-to-float p3, p3

    .line 123
    .line 124
    const/high16 v9, 0x44340000    # 720.0f

    .line 125
    div-float/2addr p3, v9

    .line 126
    .line 127
    aput p3, v8, v4

    .line 128
    .line 129
    aput v5, v8, v3

    .line 130
    int-to-float p2, p2

    .line 131
    div-float/2addr p2, v9

    .line 132
    .line 133
    aput p2, v8, v7

    .line 134
    .line 135
    aput v6, v8, v2

    .line 136
    goto :goto_6

    .line 137
    .line 138
    :cond_7
    cmpl-float p3, p2, p3

    .line 139
    .line 140
    if-lez p3, :cond_8

    .line 141
    int-to-float p3, v1

    .line 142
    div-float/2addr p3, p2

    .line 143
    float-to-int p2, p3

    .line 144
    .line 145
    rsub-int p3, p2, 0x500

    .line 146
    div-int/2addr p3, v7

    .line 147
    .line 148
    iget-object v8, p1, Lcom/narvii/video/model/AVClipInfoPack;->targetRectInfo:[F

    .line 149
    .line 150
    aput v5, v8, v4

    .line 151
    int-to-float p3, p3

    .line 152
    .line 153
    const/high16 v9, 0x44a00000    # 1280.0f

    .line 154
    div-float/2addr p3, v9

    .line 155
    .line 156
    aput p3, v8, v3

    .line 157
    .line 158
    aput v6, v8, v7

    .line 159
    int-to-float p2, p2

    .line 160
    div-float/2addr p2, v9

    .line 161
    .line 162
    aput p2, v8, v2

    .line 163
    .line 164
    :cond_8
    :goto_6
    iget-object p2, p1, Lcom/narvii/video/model/AVClipInfoPack;->croppingData:Lcom/narvii/cropping/CroppingData;

    .line 165
    .line 166
    if-eqz p2, :cond_b

    .line 167
    .line 168
    .line 169
    invoke-virtual {p2}, Lcom/narvii/cropping/CroppingData;->isDynamic()Z

    .line 170
    move-result p3

    .line 171
    .line 172
    if-eqz p3, :cond_9

    .line 173
    .line 174
    iget-object p3, p1, Lcom/narvii/video/model/AVClipInfoPack;->targetRectInfo:[F

    .line 175
    .line 176
    aput v5, p3, v4

    .line 177
    .line 178
    aput v5, p3, v3

    .line 179
    .line 180
    aput v6, p3, v7

    .line 181
    .line 182
    aput v6, p3, v2

    .line 183
    :cond_9
    int-to-float p3, v1

    .line 184
    .line 185
    iget-object p1, p1, Lcom/narvii/video/model/AVClipInfoPack;->targetRectInfo:[F

    .line 186
    .line 187
    aget v1, p1, v7

    .line 188
    mul-float/2addr v1, p3

    .line 189
    int-to-float v0, v0

    .line 190
    .line 191
    aget v8, p1, v2

    .line 192
    mul-float/2addr v8, v0

    .line 193
    .line 194
    aget v9, p1, v4

    .line 195
    mul-float/2addr v9, p3

    .line 196
    .line 197
    aget v10, p1, v3

    .line 198
    mul-float/2addr v10, v0

    .line 199
    .line 200
    iget v11, p2, Lcom/narvii/cropping/CroppingData;->scale:F

    .line 201
    .line 202
    cmpl-float v5, v11, v5

    .line 203
    .line 204
    if-lez v5, :cond_a

    .line 205
    .line 206
    sub-float v5, v11, v6

    .line 207
    mul-float/2addr v5, v1

    .line 208
    sub-float/2addr v11, v6

    .line 209
    mul-float/2addr v11, v8

    .line 210
    add-float/2addr v1, v5

    .line 211
    add-float/2addr v8, v11

    .line 212
    int-to-float v6, v7

    .line 213
    div-float/2addr v5, v6

    .line 214
    sub-float/2addr v9, v5

    .line 215
    div-float/2addr v11, v6

    .line 216
    sub-float/2addr v10, v11

    .line 217
    .line 218
    :cond_a
    iget v5, p2, Lcom/narvii/cropping/CroppingData;->transformXRatio:F

    .line 219
    mul-float/2addr v5, p3

    .line 220
    add-float/2addr v9, v5

    .line 221
    .line 222
    iget p2, p2, Lcom/narvii/cropping/CroppingData;->transformYRatio:F

    .line 223
    neg-float p2, p2

    .line 224
    mul-float/2addr p2, v0

    .line 225
    add-float/2addr v10, p2

    .line 226
    div-float/2addr v9, p3

    .line 227
    .line 228
    aput v9, p1, v4

    .line 229
    div-float/2addr v10, v0

    .line 230
    .line 231
    aput v10, p1, v3

    .line 232
    div-float/2addr v1, p3

    .line 233
    .line 234
    aput v1, p1, v7

    .line 235
    div-float/2addr v8, v0

    .line 236
    .line 237
    aput v8, p1, v2

    .line 238
    :cond_b
    return-void
.end method

.method public final getPreviewMedia(Lcom/narvii/video/model/AVClipInfoPack;Lcom/narvii/video/model/AVClipInfoPack;Ljava/io/File;Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;)Lg7/d;
    .locals 9
    .param p1    # Lcom/narvii/video/model/AVClipInfoPack;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/video/model/AVClipInfoPack;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/narvii/video/services/VideoManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "videoClip"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    const-string v0, "outputFile"

    .line 9
    .line 10
    .line 11
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string/jumbo v0, "videoManager"

    .line 15
    .line 16
    .line 17
    invoke-static {p4, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    .line 21
    move-result v0

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    .line 26
    invoke-static {p3}, Lcom/narvii/util/Utils;->deleteDir(Ljava/io/File;)Z

    .line 27
    .line 28
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    .line 29
    .line 30
    .line 31
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .line 33
    if-eqz p2, :cond_3

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2}, Lcom/narvii/video/model/AVClipInfoPack;->copy()Lcom/narvii/video/model/AVClipInfoPack;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    const-string v1, "copy(...)"

    .line 40
    .line 41
    .line 42
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2}, Lcom/narvii/video/model/AVClipInfoPack;->getInputFile()Ljava/io/File;

    .line 46
    move-result-object v1

    .line 47
    .line 48
    if-eqz v1, :cond_2

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2}, Lcom/narvii/video/model/AVClipInfoPack;->getInputFile()Ljava/io/File;

    .line 52
    move-result-object p2

    .line 53
    .line 54
    .line 55
    invoke-static {p2}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 59
    move-result-object p2

    .line 60
    .line 61
    const-string v1, "getAbsolutePath(...)"

    .line 62
    .line 63
    .line 64
    invoke-static {p2, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p4, p2}, Lcom/narvii/video/services/VideoManager;->fetchStreamInfoSync(Ljava/lang/String;)Lcom/narvii/video/model/StreamInfo;

    .line 68
    move-result-object p2

    .line 69
    .line 70
    iget-object p2, p2, Lcom/narvii/video/model/StreamInfo;->aCodecType:Ljava/lang/String;

    .line 71
    .line 72
    if-eqz p2, :cond_1

    .line 73
    const/4 p2, 0x1

    .line 74
    goto :goto_0

    .line 75
    :cond_1
    const/4 p2, 0x0

    .line 76
    .line 77
    :goto_0
    iput-boolean p2, v0, Lcom/narvii/video/model/AVClipInfoPack;->hasAudioTrack:Z

    .line 78
    .line 79
    :cond_2
    iget p2, v0, Lcom/narvii/video/model/BaseClipInfoPack;->startOffsetToMainTrackInMs:I

    .line 80
    .line 81
    iget v1, p1, Lcom/narvii/video/model/AVClipInfoPack;->trimStartInMs:I

    .line 82
    add-int/2addr p2, v1

    .line 83
    .line 84
    iput p2, v0, Lcom/narvii/video/model/BaseClipInfoPack;->startOffsetToMainTrackInMs:I

    .line 85
    .line 86
    .line 87
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    :cond_3
    const/4 v5, 0x0

    .line 89
    .line 90
    new-instance v6, Lcom/narvii/video/services/SceneMediaProcessor$getPreviewMedia$2;

    .line 91
    .line 92
    .line 93
    invoke-direct {v6, p5}, Lcom/narvii/video/services/SceneMediaProcessor$getPreviewMedia$2;-><init>(Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;)V

    .line 94
    .line 95
    const/16 v7, 0x8

    .line 96
    const/4 v8, 0x0

    .line 97
    move-object v1, p4

    .line 98
    move-object v2, p1

    .line 99
    move-object v4, p3

    .line 100
    .line 101
    .line 102
    invoke-static/range {v1 .. v8}, Lcom/narvii/video/services/VideoManager;->encodeScenePreview$default(Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/model/AVClipInfoPack;Ljava/util/ArrayList;Ljava/io/File;ZLcom/narvii/video/interfaces/IVideoServiceCallback;ILjava/lang/Object;)Lg7/d;

    .line 103
    move-result-object p1

    .line 104
    return-object p1
.end method

.method public final getSceneCoverImage(Lcom/narvii/video/model/AVClipInfoPack;Ljava/io/File;Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/interfaces/ISceneVideoGenerator;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;)Lg7/d;
    .locals 12
    .param p1    # Lcom/narvii/video/model/AVClipInfoPack;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/narvii/video/services/VideoManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/narvii/video/interfaces/ISceneVideoGenerator;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v0, p5

    const-string/jumbo v3, "videoClip"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "outputFile"

    invoke-static {p2, v3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v3, "videoManager"

    move-object v4, p3

    invoke-static {p3, v3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/narvii/video/model/AVClipInfoPack;->getInputFile()Ljava/io/File;

    move-result-object v3

    if-nez v3, :cond_1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 2
    invoke-static {v0, v2, v3, v1}, Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener$DefaultImpls;->onFailed$default(Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;ZILjava/lang/Object;)V

    :cond_0
    return-object v1

    .line 3
    :cond_1
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4
    invoke-static {p2}, Lcom/narvii/util/Utils;->deleteDir(Ljava/io/File;)Z

    .line 5
    :cond_2
    iget v3, v1, Lcom/narvii/video/model/AVClipInfoPack;->trimStartInMs:I

    int-to-double v5, v3

    invoke-virtual {p1}, Lcom/narvii/video/model/AVClipInfoPack;->trimmedDurationInMs()I

    move-result v3

    int-to-double v7, v3

    const-wide v9, 0x3fd3333333333333L    # 0.3

    mul-double/2addr v7, v9

    add-double/2addr v5, v7

    double-to-int v3, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-instance v7, Lcom/narvii/video/services/SceneMediaProcessor$getSceneCoverImage$1;

    invoke-direct {v7, p2, v0}, Lcom/narvii/video/services/SceneMediaProcessor$getSceneCoverImage$1;-><init>(Ljava/io/File;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;)V

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/16 v10, 0x58

    const/4 v11, 0x0

    move-object v0, p3

    move-object v1, p1

    move-object v2, p2

    move v4, v5

    move v5, v6

    move-object v6, v7

    move-object v7, v8

    move v8, v9

    move v9, v10

    move-object v10, v11

    invoke-static/range {v0 .. v10}, Lcom/narvii/video/services/VideoManager;->getCoverImage$default(Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/model/AVClipInfoPack;Ljava/io/File;IIILcom/narvii/video/interfaces/IVideoServiceCallback;Ljava/lang/String;ZILjava/lang/Object;)Lg7/d;

    move-result-object v0

    return-object v0
.end method

.method public final getSceneCoverImage(Lcom/narvii/scene/model/SceneInfo;Ljava/io/File;Lcom/narvii/video/interfaces/ISceneVideoGenerator;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;)V
    .locals 2
    .param p1    # Lcom/narvii/scene/model/SceneInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/narvii/video/interfaces/ISceneVideoGenerator;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "sceneInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outputFile"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v0, p1, Lcom/narvii/scene/model/SceneInfo;->videoClips:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    invoke-static {p2}, Lcom/narvii/util/Utils;->deleteDir(Ljava/io/File;)Z

    :cond_1
    if-eqz p3, :cond_2

    .line 9
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getAbsolutePath(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/narvii/video/services/SceneMediaProcessor$getSceneCoverImage$2;

    invoke-direct {v1, p2, p4}, Lcom/narvii/video/services/SceneMediaProcessor$getSceneCoverImage$2;-><init>(Ljava/io/File;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;)V

    invoke-virtual {p3, p1, v0, v1}, Lcom/narvii/video/interfaces/ISceneVideoGenerator;->grabSceneCoverImage(Lcom/narvii/scene/model/SceneInfo;Ljava/lang/String;Lcom/narvii/video/interfaces/ISceneVideoGenerator$OnGenerateCallback;)V

    :cond_2
    return-void

    :cond_3
    :goto_0
    if-eqz p4, :cond_4

    const/4 p1, 0x1

    const/4 p2, 0x0

    const/4 p3, 0x0

    .line 10
    invoke-static {p4, p3, p1, p2}, Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener$DefaultImpls;->onFailed$default(Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;ZILjava/lang/Object;)V

    :cond_4
    return-void
.end method

.method public final getStoryCoverImage(Lcom/narvii/scene/model/SceneDraft;Ljava/io/File;ILcom/narvii/video/interfaces/ISceneVideoGenerator;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;)V
    .locals 2
    .param p1    # Lcom/narvii/scene/model/SceneDraft;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/narvii/video/interfaces/ISceneVideoGenerator;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "sceneDraft"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "outputFile"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-static {p2}, Lcom/narvii/util/Utils;->deleteDir(Ljava/io/File;)Z

    .line 20
    .line 21
    :cond_0
    if-eqz p4, :cond_1

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    const-string v1, "getAbsolutePath(...)"

    .line 28
    .line 29
    .line 30
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    new-instance v1, Lcom/narvii/video/services/SceneMediaProcessor$getStoryCoverImage$1;

    .line 33
    .line 34
    .line 35
    invoke-direct {v1, p2, p5}, Lcom/narvii/video/services/SceneMediaProcessor$getStoryCoverImage$1;-><init>(Ljava/io/File;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p4, p1, v0, p3, v1}, Lcom/narvii/video/interfaces/ISceneVideoGenerator;->grabStoryCoverImage(Lcom/narvii/scene/model/SceneDraft;Ljava/lang/String;ILcom/narvii/video/interfaces/ISceneVideoGenerator$OnGenerateCallback;)V

    .line 39
    :cond_1
    return-void
.end method

.method public final getVideoSource(Ljava/lang/String;II)I
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "mediaPath"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const/4 v0, 0x2

    .line 7
    .line 8
    if-ne p3, v0, :cond_1

    .line 9
    .line 10
    const/16 p3, 0x64

    .line 11
    .line 12
    if-eq p2, p3, :cond_0

    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-static {p1}, Lcom/narvii/util/Utils;->isGifInData(Ljava/lang/String;)Z

    .line 18
    move-result p1

    .line 19
    .line 20
    if-eqz p1, :cond_2

    .line 21
    const/4 v0, 0x4

    .line 22
    goto :goto_0

    .line 23
    .line 24
    :cond_1
    const/16 v0, 0x8

    .line 25
    :cond_2
    :goto_0
    return v0
.end method

.method public final onPreSceneDraft()V
    .locals 4

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/video/services/SceneMediaProcessor;->sceneInfoList:Ljava/util/ArrayList;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v1

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    check-cast v1, Lcom/narvii/scene/model/SceneInfo;

    .line 21
    .line 22
    sget-object v2, Lcom/narvii/video/services/SceneMediaProcessor;->progressMap:Ljava/util/HashMap;

    .line 23
    .line 24
    iget-object v3, v1, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    move-result-object v2

    .line 29
    .line 30
    check-cast v2, Ljava/lang/Float;

    .line 31
    .line 32
    const/high16 v3, 0x3f800000    # 1.0f

    .line 33
    .line 34
    .line 35
    invoke-static {v2, v3}, Lkotlin/jvm/internal/t;->c(Ljava/lang/Float;F)Z

    .line 36
    move-result v2

    .line 37
    .line 38
    if-eqz v2, :cond_0

    .line 39
    goto :goto_1

    .line 40
    .line 41
    :cond_0
    const/high16 v3, -0x40800000    # -1.0f

    .line 42
    .line 43
    :goto_1
    iput v3, v1, Lcom/narvii/scene/model/SceneInfo;->currentSceneVideoProgress:F

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    return-void
.end method

.method public final processScene(Lcom/narvii/scene/model/SceneInfo;Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;Z)Lg7/d;
    .locals 12
    .param p1    # Lcom/narvii/scene/model/SceneInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/video/services/VideoManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    move-object v0, p1

    move-object v1, p2

    move/from16 v10, p4

    const-string v2, "scene"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v2, "videoManager"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v10, :cond_0

    sget-object v2, Lcom/narvii/video/services/SceneMediaProcessor;->inProcessingEditingConfigMap:Ljava/util/HashMap;

    .line 1
    iget-object v3, v0, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg7/d;

    if-eqz v2, :cond_0

    .line 2
    invoke-virtual {v2}, Lg7/d;->z()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3
    invoke-virtual {p2, v2}, Lcom/narvii/video/services/VideoManager;->abort(Lg7/d;)V

    :cond_0
    sget-object v2, Lcom/narvii/video/services/SceneMediaProcessor;->progressMap:Ljava/util/HashMap;

    .line 4
    iget-object v3, v0, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    const-string v11, "id"

    invoke-static {v3, v11}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {p1}, Lcom/narvii/video/services/SceneMediaProcessorKt;->getOrgFile(Lcom/narvii/scene/model/SceneInfo;)Ljava/io/File;

    move-result-object v2

    .line 6
    new-instance v4, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Lkotlin/io/j;->s(Ljava/io/File;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "_tmp."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lkotlin/io/j;->r(Ljava/io/File;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_1
    sget-object v3, Lcom/narvii/video/services/SceneMediaProcessor;->inProcessingEditingConfigMap:Ljava/util/HashMap;

    .line 9
    iget-object v5, v0, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg7/d;

    if-eqz v3, :cond_2

    .line 10
    invoke-virtual {p2, v3}, Lcom/narvii/video/services/VideoManager;->abort(Lg7/d;)V

    .line 11
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 12
    iget-object v5, v0, Lcom/narvii/scene/model/SceneInfo;->audioClips:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/narvii/video/model/AVClipInfoPack;

    .line 13
    iget-object v7, v6, Lcom/narvii/video/model/AVClipInfoPack;->streamInfo:Lcom/narvii/video/model/StreamInfo;

    .line 14
    iget-object v7, v7, Lcom/narvii/video/model/StreamInfo;->aCodecType:Ljava/lang/String;

    if-eqz v7, :cond_3

    .line 15
    invoke-virtual {v6}, Lcom/narvii/video/model/AVClipInfoPack;->copy()Lcom/narvii/video/model/AVClipInfoPack;

    move-result-object v6

    const-string v7, "copy(...)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x1

    .line 16
    iput-boolean v7, v6, Lcom/narvii/video/model/AVClipInfoPack;->hasAudioTrack:Z

    .line 17
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 18
    :cond_4
    iput-object v3, v0, Lcom/narvii/scene/model/SceneInfo;->audioClips:Ljava/util/ArrayList;

    .line 19
    iget-object v3, v0, Lcom/narvii/scene/model/SceneInfo;->videoClips:Ljava/util/ArrayList;

    const-string/jumbo v5, "videoClips"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, v0, Lcom/narvii/scene/model/SceneInfo;->audioClips:Ljava/util/ArrayList;

    const/4 v6, 0x0

    new-instance v7, Lcom/narvii/video/services/SceneMediaProcessor$processScene$editingConfig$1;

    move-object v8, p3

    invoke-direct {v7, p3, p1, v2, v4}, Lcom/narvii/video/services/SceneMediaProcessor$processScene$editingConfig$1;-><init>(Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;Lcom/narvii/scene/model/SceneInfo;Ljava/io/File;Ljava/io/File;)V

    const/16 v8, 0x8

    const/4 v9, 0x0

    move-object v1, p2

    move-object v2, v3

    move-object v3, v5

    move v5, v6

    move/from16 v6, p4

    invoke-static/range {v1 .. v9}, Lcom/narvii/video/services/VideoManager;->encodeSceneOutput$default(Lcom/narvii/video/services/VideoManager;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/io/File;ZZLcom/narvii/video/interfaces/IVideoServiceCallback;ILjava/lang/Object;)Lg7/d;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 20
    invoke-virtual {v1, v10}, Lg7/d;->K(Z)V

    sget-object v2, Lcom/narvii/video/services/SceneMediaProcessor;->inProcessingEditingConfigMap:Ljava/util/HashMap;

    .line 21
    iget-object v0, v0, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    invoke-static {v0, v11}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    return-object v1
.end method

.method public final processScene(Lcom/narvii/app/NVContext;Lcom/narvii/scene/model/SceneInfo;Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/interfaces/ISceneVideoGenerator;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;Z)V
    .locals 6
    .param p1    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/scene/model/SceneInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/narvii/video/services/VideoManager;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/narvii/video/interfaces/ISceneVideoGenerator;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scene"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iget-object v0, p2, Lcom/narvii/scene/model/SceneInfo;->videoClips:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/video/model/AVClipInfoPack;

    .line 29
    iget-object v2, v1, Lcom/narvii/video/model/AVClipInfoPack;->croppingData:Lcom/narvii/cropping/CroppingData;

    .line 30
    iget-wide v2, v1, Lcom/narvii/video/model/AVClipInfoPack;->speed:D

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    .line 31
    iget-object v2, v1, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    invoke-static {v2}, Lcom/narvii/util/Utils;->isJPG(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v1, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    invoke-static {v2}, Lcom/narvii/util/Utils;->isPNG(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v1, v1, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    invoke-static {v1}, Lcom/narvii/util/Utils;->isBMP(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    .line 32
    :cond_1
    invoke-static {}, Lcom/narvii/app/NVApplication;->isBasedOnMeishe()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 33
    invoke-virtual {p0, p2, p4, p5, p6}, Lcom/narvii/video/services/SceneMediaProcessor;->processScene(Lcom/narvii/scene/model/SceneInfo;Lcom/narvii/video/interfaces/ISceneVideoGenerator;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;Z)V

    const-string p2, "meishe"

    goto :goto_1

    .line 34
    :cond_2
    invoke-static {p3}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    invoke-virtual {p0, p2, p3, p5, p6}, Lcom/narvii/video/services/SceneMediaProcessor;->processScene(Lcom/narvii/scene/model/SceneInfo;Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;Z)Lg7/d;

    const-string p2, "ffmpeg"

    :goto_1
    const-string p3, "statistics"

    .line 35
    invoke-interface {p1, p3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/statistics/StatisticsService;

    if-eqz p1, :cond_3

    const-string p3, "Scene Compiling"

    .line 36
    invoke-interface {p1, p3}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string/jumbo p3, "tool"

    invoke-virtual {p1, p3, p2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    :cond_3
    return-void
.end method

.method public final processScene(Lcom/narvii/scene/model/SceneInfo;Lcom/narvii/video/interfaces/ISceneVideoGenerator;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;Z)V
    .locals 4
    .param p1    # Lcom/narvii/scene/model/SceneInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/video/interfaces/ISceneVideoGenerator;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string p4, "scene"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p4, Lcom/narvii/video/services/SceneMediaProcessor;->progressMap:Ljava/util/HashMap;

    .line 22
    iget-object v0, p1, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    const-string v1, "id"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {p4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    invoke-static {p1}, Lcom/narvii/video/services/SceneMediaProcessorKt;->getOrgFile(Lcom/narvii/scene/model/SceneInfo;)Ljava/io/File;

    move-result-object p4

    .line 24
    new-instance v0, Ljava/io/File;

    invoke-virtual {p4}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p4}, Lkotlin/io/j;->s(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_tmp."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Lkotlin/io/j;->r(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 26
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    if-eqz p2, :cond_1

    .line 27
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getAbsolutePath(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/narvii/video/services/SceneMediaProcessor$processScene$2;

    invoke-direct {v2, p1, p4, p3, v0}, Lcom/narvii/video/services/SceneMediaProcessor$processScene$2;-><init>(Lcom/narvii/scene/model/SceneInfo;Ljava/io/File;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;Ljava/io/File;)V

    const/4 p3, 0x0

    invoke-virtual {p2, p1, v1, v2, p3}, Lcom/narvii/video/interfaces/ISceneVideoGenerator;->generateSceneVideo(Lcom/narvii/scene/model/SceneInfo;Ljava/lang/String;Lcom/narvii/video/interfaces/ISceneVideoGenerator$OnGenerateCallback;Z)V

    :cond_1
    return-void
.end method

.method public final processStory(Lcom/narvii/app/NVContext;Ljava/util/ArrayList;Lcom/narvii/video/model/AVClipInfoPack;Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/interfaces/ISceneVideoGenerator;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;)Ljava/util/ArrayList;
    .locals 21
    .param p1    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/narvii/video/model/AVClipInfoPack;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/narvii/video/services/VideoManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/narvii/video/interfaces/ISceneVideoGenerator;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/scene/model/SceneInfo;",
            ">;",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            "Lcom/narvii/video/services/VideoManager;",
            "Lcom/narvii/video/interfaces/ISceneVideoGenerator;",
            "Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;",
            ")",
            "Ljava/util/ArrayList<",
            "Lg7/d;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    move-object/from16 v6, p2

    .line 3
    .line 4
    move-object/from16 v15, p5

    .line 5
    .line 6
    const-string v0, "ctx"

    .line 7
    .line 8
    move-object/from16 v14, p1

    .line 9
    .line 10
    .line 11
    invoke-static {v14, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    const-string v0, "sceneInfoList"

    .line 14
    .line 15
    .line 16
    invoke-static {v6, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string/jumbo v0, "videoManager"

    .line 20
    .line 21
    move-object/from16 v13, p4

    .line 22
    .line 23
    .line 24
    invoke-static {v13, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    sput-object v6, Lcom/narvii/video/services/SceneMediaProcessor;->sceneInfoList:Ljava/util/ArrayList;

    .line 27
    .line 28
    new-instance v12, Ljava/util/ArrayList;

    .line 29
    .line 30
    .line 31
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 32
    const/4 v0, 0x0

    .line 33
    .line 34
    sput-boolean v0, Lcom/narvii/video/services/SceneMediaProcessor;->storyProcessFailureFlag:Z

    .line 35
    .line 36
    sput v0, Lcom/narvii/video/services/SceneMediaProcessor;->completedTaskCount:I

    .line 37
    .line 38
    .line 39
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 40
    move-result-object v1

    .line 41
    .line 42
    .line 43
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    move-result v2

    .line 45
    .line 46
    const/high16 v16, 0x3f800000    # 1.0f

    .line 47
    .line 48
    const-string v11, "id"

    .line 49
    .line 50
    const/high16 v10, -0x40800000    # -1.0f

    .line 51
    .line 52
    if-eqz v2, :cond_3

    .line 53
    .line 54
    .line 55
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    move-result-object v2

    .line 57
    .line 58
    check-cast v2, Lcom/narvii/scene/model/SceneInfo;

    .line 59
    .line 60
    iget-object v3, v2, Lcom/narvii/scene/model/SceneInfo;->outputUrl:Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    sget-object v3, Lcom/narvii/video/services/SceneMediaProcessor;->progressMap:Ljava/util/HashMap;

    .line 66
    .line 67
    iget-object v4, v2, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 71
    move-result v4

    .line 72
    .line 73
    if-eqz v4, :cond_1

    .line 74
    .line 75
    iget-object v4, v2, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    invoke-static {v4, v11}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    .line 80
    iget v5, v2, Lcom/narvii/scene/model/SceneInfo;->currentSceneVideoProgress:F

    .line 81
    .line 82
    iget-object v2, v2, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    move-result-object v2

    .line 87
    .line 88
    check-cast v2, Ljava/lang/Float;

    .line 89
    .line 90
    if-nez v2, :cond_0

    .line 91
    .line 92
    .line 93
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 94
    move-result-object v2

    .line 95
    .line 96
    .line 97
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    .line 98
    move-result v2

    .line 99
    .line 100
    .line 101
    invoke-static {v5, v2}, Ljava/lang/Math;->max(FF)F

    .line 102
    move-result v2

    .line 103
    .line 104
    .line 105
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 106
    move-result-object v2

    .line 107
    .line 108
    .line 109
    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    goto :goto_0

    .line 111
    .line 112
    :cond_1
    iget-object v4, v2, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    invoke-static {v4, v11}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    .line 117
    iget v2, v2, Lcom/narvii/scene/model/SceneInfo;->currentSceneVideoProgress:F

    .line 118
    .line 119
    cmpg-float v2, v2, v16

    .line 120
    .line 121
    if-nez v2, :cond_2

    .line 122
    goto :goto_1

    .line 123
    .line 124
    :cond_2
    move/from16 v16, v10

    .line 125
    .line 126
    .line 127
    :goto_1
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 128
    move-result-object v2

    .line 129
    .line 130
    .line 131
    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    goto :goto_0

    .line 133
    .line 134
    :cond_3
    if-eqz v15, :cond_4

    .line 135
    .line 136
    .line 137
    invoke-virtual {v15, v6}, Lcom/narvii/video/interfaces/ISceneVideoGenerator;->prepareSceneList(Ljava/util/ArrayList;)V

    .line 138
    .line 139
    .line 140
    :cond_4
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    .line 141
    move-result v9

    .line 142
    move v8, v0

    .line 143
    .line 144
    :goto_2
    if-ge v8, v9, :cond_c

    .line 145
    .line 146
    .line 147
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 148
    move-result-object v0

    .line 149
    .line 150
    const-string v1, "get(...)"

    .line 151
    .line 152
    .line 153
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    move-object v7, v0

    .line 155
    .line 156
    check-cast v7, Lcom/narvii/scene/model/SceneInfo;

    .line 157
    .line 158
    sget-object v0, Lcom/narvii/video/services/SceneMediaProcessor;->progressMap:Ljava/util/HashMap;

    .line 159
    .line 160
    iget-object v1, v7, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    move-result-object v1

    .line 165
    .line 166
    check-cast v1, Ljava/lang/Float;

    .line 167
    .line 168
    if-nez v1, :cond_5

    .line 169
    move v1, v10

    .line 170
    goto :goto_3

    .line 171
    .line 172
    .line 173
    :cond_5
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 174
    move-result v1

    .line 175
    .line 176
    :goto_3
    cmpg-float v2, v1, v16

    .line 177
    .line 178
    if-nez v2, :cond_9

    .line 179
    .line 180
    .line 181
    invoke-static {v7}, Lcom/narvii/video/services/SceneMediaProcessorKt;->getOrgFile(Lcom/narvii/scene/model/SceneInfo;)Ljava/io/File;

    .line 182
    move-result-object v1

    .line 183
    .line 184
    .line 185
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 186
    move-result v1

    .line 187
    .line 188
    if-eqz v1, :cond_8

    .line 189
    .line 190
    sget v0, Lcom/narvii/video/services/SceneMediaProcessor;->completedTaskCount:I

    .line 191
    .line 192
    add-int/lit8 v0, v0, 0x1

    .line 193
    .line 194
    sput v0, Lcom/narvii/video/services/SceneMediaProcessor;->completedTaskCount:I

    .line 195
    .line 196
    .line 197
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    .line 198
    move-result v1

    .line 199
    .line 200
    if-lt v0, v1, :cond_7

    .line 201
    .line 202
    if-nez p3, :cond_6

    .line 203
    .line 204
    move-object/from16 v7, p0

    .line 205
    .line 206
    move-object/from16 v5, p6

    .line 207
    .line 208
    .line 209
    invoke-direct {v7, v6, v12, v5}, Lcom/narvii/video/services/SceneMediaProcessor;->copySceneOrgFileToOutputFile(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;)V

    .line 210
    .line 211
    :goto_4
    move/from16 v17, v8

    .line 212
    .line 213
    move/from16 v18, v9

    .line 214
    .line 215
    move/from16 v19, v10

    .line 216
    move-object v9, v11

    .line 217
    .line 218
    move-object/from16 v20, v12

    .line 219
    .line 220
    goto/16 :goto_6

    .line 221
    .line 222
    :cond_6
    move-object/from16 v7, p0

    .line 223
    .line 224
    move-object/from16 v5, p6

    .line 225
    .line 226
    move-object/from16 v0, p0

    .line 227
    .line 228
    move-object/from16 v1, p2

    .line 229
    .line 230
    move-object/from16 v2, p3

    .line 231
    move-object v3, v12

    .line 232
    .line 233
    move-object/from16 v4, p4

    .line 234
    .line 235
    .line 236
    invoke-direct/range {v0 .. v5}, Lcom/narvii/video/services/SceneMediaProcessor;->stepIntoBGMMixing(Ljava/util/ArrayList;Lcom/narvii/video/model/AVClipInfoPack;Ljava/util/ArrayList;Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;)V

    .line 237
    goto :goto_4

    .line 238
    .line 239
    :cond_7
    move-object/from16 v7, p0

    .line 240
    goto :goto_4

    .line 241
    .line 242
    :cond_8
    iget-object v1, v7, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    invoke-static {v1, v11}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 249
    move-result-object v2

    .line 250
    .line 251
    .line 252
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    .line 254
    iput v10, v7, Lcom/narvii/scene/model/SceneInfo;->currentSceneVideoProgress:F

    .line 255
    .line 256
    move-object/from16 v0, p0

    .line 257
    .line 258
    move-object/from16 v1, p2

    .line 259
    move-object v2, v12

    .line 260
    .line 261
    move-object/from16 v3, p3

    .line 262
    .line 263
    move-object/from16 v4, p4

    .line 264
    .line 265
    move-object/from16 v5, p6

    .line 266
    .line 267
    .line 268
    invoke-direct/range {v0 .. v5}, Lcom/narvii/video/services/SceneMediaProcessor;->obtainProcessListenerImpl(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/narvii/video/model/AVClipInfoPack;Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;)Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;

    .line 269
    move-result-object v0

    .line 270
    const/4 v1, 0x0

    .line 271
    .line 272
    const/16 v2, 0x20

    .line 273
    const/4 v3, 0x0

    .line 274
    move-object v5, v7

    .line 275
    .line 276
    move-object/from16 v7, p0

    .line 277
    .line 278
    move/from16 v17, v8

    .line 279
    .line 280
    move-object/from16 v8, p1

    .line 281
    .line 282
    move/from16 v18, v9

    .line 283
    move-object v9, v5

    .line 284
    .line 285
    move/from16 v19, v10

    .line 286
    .line 287
    move-object/from16 v10, p4

    .line 288
    move-object v4, v11

    .line 289
    .line 290
    move-object/from16 v11, p5

    .line 291
    .line 292
    move-object/from16 v20, v12

    .line 293
    move-object v12, v0

    .line 294
    move v13, v1

    .line 295
    move v14, v2

    .line 296
    move-object v15, v3

    .line 297
    .line 298
    .line 299
    invoke-static/range {v7 .. v15}, Lcom/narvii/video/services/SceneMediaProcessor;->processScene$default(Lcom/narvii/video/services/SceneMediaProcessor;Lcom/narvii/app/NVContext;Lcom/narvii/scene/model/SceneInfo;Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/interfaces/ISceneVideoGenerator;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;ZILjava/lang/Object;)V

    .line 300
    move-object v9, v4

    .line 301
    .line 302
    goto/16 :goto_6

    .line 303
    :cond_9
    move-object v5, v7

    .line 304
    .line 305
    move/from16 v17, v8

    .line 306
    .line 307
    move/from16 v18, v9

    .line 308
    .line 309
    move/from16 v19, v10

    .line 310
    move-object v4, v11

    .line 311
    .line 312
    move-object/from16 v20, v12

    .line 313
    .line 314
    cmpg-float v0, v1, v19

    .line 315
    .line 316
    if-nez v0, :cond_a

    .line 317
    goto :goto_5

    .line 318
    :cond_a
    const/4 v0, 0x0

    .line 319
    .line 320
    cmpg-float v0, v1, v0

    .line 321
    .line 322
    if-nez v0, :cond_b

    .line 323
    .line 324
    :goto_5
    move-object/from16 v0, p0

    .line 325
    .line 326
    move-object/from16 v1, p2

    .line 327
    .line 328
    move-object/from16 v2, v20

    .line 329
    .line 330
    move-object/from16 v3, p3

    .line 331
    move-object v15, v4

    .line 332
    .line 333
    move-object/from16 v4, p4

    .line 334
    move-object v9, v5

    .line 335
    .line 336
    move-object/from16 v5, p6

    .line 337
    .line 338
    .line 339
    invoke-direct/range {v0 .. v5}, Lcom/narvii/video/services/SceneMediaProcessor;->obtainProcessListenerImpl(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/narvii/video/model/AVClipInfoPack;Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;)Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;

    .line 340
    move-result-object v12

    .line 341
    const/4 v13, 0x0

    .line 342
    .line 343
    const/16 v14, 0x20

    .line 344
    const/4 v0, 0x0

    .line 345
    .line 346
    move-object/from16 v7, p0

    .line 347
    .line 348
    move-object/from16 v8, p1

    .line 349
    .line 350
    move-object/from16 v10, p4

    .line 351
    .line 352
    move-object/from16 v11, p5

    .line 353
    move-object v5, v15

    .line 354
    move-object v15, v0

    .line 355
    .line 356
    .line 357
    invoke-static/range {v7 .. v15}, Lcom/narvii/video/services/SceneMediaProcessor;->processScene$default(Lcom/narvii/video/services/SceneMediaProcessor;Lcom/narvii/app/NVContext;Lcom/narvii/scene/model/SceneInfo;Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/interfaces/ISceneVideoGenerator;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;ZILjava/lang/Object;)V

    .line 358
    move-object v9, v5

    .line 359
    goto :goto_6

    .line 360
    :cond_b
    move-object v9, v5

    .line 361
    move-object v5, v4

    .line 362
    .line 363
    sget-object v7, Lcom/narvii/video/services/SceneMediaProcessor;->processListenerMap:Ljava/util/HashMap;

    .line 364
    .line 365
    iget-object v8, v9, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    invoke-static {v8, v5}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 369
    .line 370
    move-object/from16 v0, p0

    .line 371
    .line 372
    move-object/from16 v1, p2

    .line 373
    .line 374
    move-object/from16 v2, v20

    .line 375
    .line 376
    move-object/from16 v3, p3

    .line 377
    .line 378
    move-object/from16 v4, p4

    .line 379
    move-object v9, v5

    .line 380
    .line 381
    move-object/from16 v5, p6

    .line 382
    .line 383
    .line 384
    invoke-direct/range {v0 .. v5}, Lcom/narvii/video/services/SceneMediaProcessor;->obtainProcessListenerImpl(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/narvii/video/model/AVClipInfoPack;Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;)Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;

    .line 385
    move-result-object v0

    .line 386
    .line 387
    .line 388
    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    .line 390
    :goto_6
    add-int/lit8 v8, v17, 0x1

    .line 391
    .line 392
    move-object/from16 v14, p1

    .line 393
    .line 394
    move-object/from16 v13, p4

    .line 395
    .line 396
    move-object/from16 v15, p5

    .line 397
    move-object v11, v9

    .line 398
    .line 399
    move/from16 v9, v18

    .line 400
    .line 401
    move/from16 v10, v19

    .line 402
    .line 403
    move-object/from16 v12, v20

    .line 404
    .line 405
    goto/16 :goto_2

    .line 406
    .line 407
    :cond_c
    new-instance v0, Ljava/util/ArrayList;

    .line 408
    .line 409
    .line 410
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 411
    .line 412
    sget-object v1, Lcom/narvii/video/services/SceneMediaProcessor;->inProcessingEditingConfigMap:Ljava/util/HashMap;

    .line 413
    .line 414
    .line 415
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 416
    move-result-object v1

    .line 417
    .line 418
    .line 419
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 420
    return-object v0
.end method

.method public final release(Lcom/narvii/video/services/VideoManager;)V
    .locals 2
    .param p1    # Lcom/narvii/video/services/VideoManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "videoManager"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    sget-object v0, Lcom/narvii/video/services/SceneMediaProcessor;->processListenerMap:Ljava/util/HashMap;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 12
    .line 13
    sget-object v0, Lcom/narvii/video/services/SceneMediaProcessor;->progressMap:Ljava/util/HashMap;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 17
    .line 18
    sget-object v0, Lcom/narvii/video/services/SceneMediaProcessor;->inProcessingEditingConfigMap:Ljava/util/HashMap;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    .line 29
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    move-result v1

    .line 31
    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    .line 35
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    move-result-object v1

    .line 37
    .line 38
    check-cast v1, Lg7/d;

    .line 39
    .line 40
    .line 41
    invoke-static {v1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v1}, Lcom/narvii/video/services/VideoManager;->abort(Lg7/d;)V

    .line 45
    goto :goto_0

    .line 46
    .line 47
    :cond_0
    sget-object v0, Lcom/narvii/video/services/SceneMediaProcessor;->inProcessingGlobalMusicMixingTask:Lg7/d;

    .line 48
    .line 49
    if-eqz v0, :cond_1

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v0}, Lcom/narvii/video/services/VideoManager;->abort(Lg7/d;)V

    .line 53
    .line 54
    :cond_1
    sget-object p1, Lcom/narvii/video/services/SceneMediaProcessor;->inProcessingEditingConfigMap:Ljava/util/HashMap;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 58
    const/4 p1, 0x0

    .line 59
    .line 60
    sput p1, Lcom/narvii/video/services/SceneMediaProcessor;->completedTaskCount:I

    .line 61
    .line 62
    sput-boolean p1, Lcom/narvii/video/services/SceneMediaProcessor;->storyProcessFailureFlag:Z

    .line 63
    return-void
.end method

.method public final removeScene(Lcom/narvii/scene/model/SceneInfo;Lcom/narvii/video/services/VideoManager;)V
    .locals 2
    .param p1    # Lcom/narvii/scene/model/SceneInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/video/services/VideoManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "scene"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string/jumbo v0, "videoManager"

    .line 9
    .line 10
    .line 11
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    const/high16 v0, -0x40800000    # -1.0f

    .line 14
    .line 15
    iput v0, p1, Lcom/narvii/scene/model/SceneInfo;->currentSceneVideoProgress:F

    .line 16
    .line 17
    sget-object v0, Lcom/narvii/video/services/SceneMediaProcessor;->progressMap:Ljava/util/HashMap;

    .line 18
    .line 19
    iget-object v1, p1, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    sget-object v0, Lcom/narvii/video/services/SceneMediaProcessor;->processListenerMap:Ljava/util/HashMap;

    .line 25
    .line 26
    iget-object v1, p1, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    sget-object v0, Lcom/narvii/video/services/SceneMediaProcessor;->inProcessingEditingConfigMap:Ljava/util/HashMap;

    .line 32
    .line 33
    iget-object v1, p1, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    move-result-object v1

    .line 38
    .line 39
    check-cast v1, Lg7/d;

    .line 40
    .line 41
    if-eqz v1, :cond_0

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2, v1}, Lcom/narvii/video/services/VideoManager;->abort(Lg7/d;)V

    .line 45
    .line 46
    iget-object p1, p1, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    move-result-object p1

    .line 51
    .line 52
    check-cast p1, Lg7/d;

    .line 53
    :cond_0
    return-void
.end method

.method public final terminateAll(Lcom/narvii/video/services/VideoManager;)V
    .locals 1
    .param p1    # Lcom/narvii/video/services/VideoManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "videoManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/narvii/video/services/SceneMediaProcessor;->terminateAll(Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/interfaces/ISceneVideoGenerator;)V

    return-void
.end method

.method public final terminateAll(Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/interfaces/ISceneVideoGenerator;)V
    .locals 3
    .param p1    # Lcom/narvii/video/services/VideoManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/video/interfaces/ISceneVideoGenerator;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string/jumbo v0, "videoManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/narvii/video/services/SceneMediaProcessor;->inProcessingEditingConfigMap:Ljava/util/HashMap;

    .line 3
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4
    invoke-virtual {p1, v0}, Lcom/narvii/video/services/VideoManager;->abortAll(Ljava/util/ArrayList;)V

    sget-object v0, Lcom/narvii/video/services/SceneMediaProcessor;->inProcessingGlobalMusicMixingTask:Lg7/d;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p1, v0}, Lcom/narvii/video/services/VideoManager;->abort(Lg7/d;)V

    .line 6
    :cond_0
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    if-eqz p2, :cond_1

    .line 7
    invoke-virtual {p2}, Lcom/narvii/video/interfaces/ISceneVideoGenerator;->abort()V

    :cond_1
    return-void
.end method
