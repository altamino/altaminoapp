.class public abstract Lcom/narvii/video/interfaces/ISceneVideoGenerator;
.super Ljava/lang/Object;
.source "ISceneVideoGenerator.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/video/interfaces/ISceneVideoGenerator$OnGenerateCallback;,
        Lcom/narvii/video/interfaces/ISceneVideoGenerator$Task;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic generateSceneVideo$default(Lcom/narvii/video/interfaces/ISceneVideoGenerator;Lcom/narvii/scene/model/SceneInfo;Ljava/lang/String;Lcom/narvii/video/interfaces/ISceneVideoGenerator$OnGenerateCallback;ZILjava/lang/Object;)V
    .locals 0

    if-nez p6, :cond_1

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    .line 14
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/narvii/video/interfaces/ISceneVideoGenerator;->generateSceneVideo(Lcom/narvii/scene/model/SceneInfo;Ljava/lang/String;Lcom/narvii/video/interfaces/ISceneVideoGenerator$OnGenerateCallback;Z)V

    return-void

    .line 0
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: generateSceneVideo"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public abstract abort()V
.end method

.method public abstract generateSceneVideo(Lcom/narvii/scene/model/SceneInfo;Ljava/lang/String;Lcom/narvii/video/interfaces/ISceneVideoGenerator$OnGenerateCallback;Z)V
.end method

.method public abstract generateStoryVideo(Lcom/narvii/scene/model/SceneDraft;Ljava/lang/String;Lcom/narvii/video/interfaces/ISceneVideoGenerator$OnGenerateCallback;)V
.end method

.method public abstract getLastFrameSnapShot(Lcom/narvii/scene/model/SceneInfo;)Landroid/graphics/Bitmap;
.end method

.method public abstract grabSceneCoverImage(Lcom/narvii/scene/model/SceneInfo;Ljava/lang/String;Lcom/narvii/video/interfaces/ISceneVideoGenerator$OnGenerateCallback;)V
.end method

.method public abstract grabStoryCoverImage(Lcom/narvii/scene/model/SceneDraft;Ljava/lang/String;ILcom/narvii/video/interfaces/ISceneVideoGenerator$OnGenerateCallback;)V
.end method

.method public abstract prepareSceneList(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/scene/model/SceneInfo;",
            ">;)V"
        }
    .end annotation
.end method
