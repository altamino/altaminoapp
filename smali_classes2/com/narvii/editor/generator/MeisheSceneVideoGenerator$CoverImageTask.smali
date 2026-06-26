.class public final Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$CoverImageTask;
.super Lcom/narvii/video/interfaces/ISceneVideoGenerator$Task;
.source "MeisheSceneVideoGenerator.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "CoverImageTask"
.end annotation


# instance fields
.field private onGenerateCallback:Lcom/narvii/video/interfaces/ISceneVideoGenerator$OnGenerateCallback;

.field private final outputPath:Ljava/lang/String;

.field private final selectedPlaybackTime:I

.field final synthetic this$0:Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;

.field private final timeline:Lcom/meicam/sdk/NvsTimeline;


# direct methods
.method public constructor <init>(Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;Ljava/lang/String;Lcom/meicam/sdk/NvsTimeline;Ljava/lang/String;ILcom/narvii/video/interfaces/ISceneVideoGenerator$OnGenerateCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/meicam/sdk/NvsTimeline;",
            "Ljava/lang/String;",
            "I",
            "Lcom/narvii/video/interfaces/ISceneVideoGenerator$OnGenerateCallback;",
            ")V"
        }
    .end annotation

    const-string v0, "id"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 266
    iput-object p1, p0, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$CoverImageTask;->this$0:Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;

    .line 270
    invoke-direct {p0, p2}, Lcom/narvii/video/interfaces/ISceneVideoGenerator$Task;-><init>(Ljava/lang/String;)V

    iput-object p3, p0, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$CoverImageTask;->timeline:Lcom/meicam/sdk/NvsTimeline;

    iput-object p4, p0, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$CoverImageTask;->outputPath:Ljava/lang/String;

    iput p5, p0, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$CoverImageTask;->selectedPlaybackTime:I

    iput-object p6, p0, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$CoverImageTask;->onGenerateCallback:Lcom/narvii/video/interfaces/ISceneVideoGenerator$OnGenerateCallback;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;Ljava/lang/String;Lcom/meicam/sdk/NvsTimeline;Ljava/lang/String;ILcom/narvii/video/interfaces/ISceneVideoGenerator$OnGenerateCallback;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    .line 266
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p8, "UUID.randomUUID().toString()"

    invoke-static {p2, p8}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    move-object v2, p2

    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_1

    const/4 p5, -0x1

    const/4 v5, -0x1

    goto :goto_0

    :cond_1
    move v5, p5

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v6, p6

    .line 269
    invoke-direct/range {v0 .. v6}, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$CoverImageTask;-><init>(Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;Ljava/lang/String;Lcom/meicam/sdk/NvsTimeline;Ljava/lang/String;ILcom/narvii/video/interfaces/ISceneVideoGenerator$OnGenerateCallback;)V

    return-void
.end method


# virtual methods
.method public abort()V
    .locals 1

    .line 320
    iget-object v0, p0, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$CoverImageTask;->this$0:Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;

    invoke-static {v0}, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;->access$clearCoverImageTask(Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;)V

    .line 321
    iget-object v0, p0, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$CoverImageTask;->onGenerateCallback:Lcom/narvii/video/interfaces/ISceneVideoGenerator$OnGenerateCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/narvii/video/interfaces/ISceneVideoGenerator$OnGenerateCallback;->onCancel()V

    :cond_0
    const/4 v0, 0x0

    .line 322
    iput-object v0, p0, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$CoverImageTask;->onGenerateCallback:Lcom/narvii/video/interfaces/ISceneVideoGenerator$OnGenerateCallback;

    return-void
.end method

.method public execute()V
    .locals 5

    .line 273
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$CoverImageTask;->outputPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 274
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 275
    iget-object v0, p0, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$CoverImageTask;->onGenerateCallback:Lcom/narvii/video/interfaces/ISceneVideoGenerator$OnGenerateCallback;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "output path error"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/narvii/video/interfaces/ISceneVideoGenerator$OnGenerateCallback;->onError(Ljava/lang/Exception;)V

    :cond_0
    return-void

    .line 279
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 280
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    goto :goto_0

    .line 281
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 282
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 284
    :cond_3
    :goto_0
    iget v1, p0, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$CoverImageTask;->selectedPlaybackTime:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_4

    const-wide/16 v1, 0x1

    goto :goto_1

    :cond_4
    int-to-long v1, v1

    const/16 v3, 0x3e8

    int-to-long v3, v3

    mul-long v1, v1, v3

    .line 289
    :goto_1
    iget-object v3, p0, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$CoverImageTask;->this$0:Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;

    invoke-virtual {v3}, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;->getSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    new-instance v4, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$CoverImageTask$execute$1;

    invoke-direct {v4, p0, v1, v2, v0}, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$CoverImageTask$execute$1;-><init>(Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$CoverImageTask;JLjava/io/File;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final getOnGenerateCallback()Lcom/narvii/video/interfaces/ISceneVideoGenerator$OnGenerateCallback;
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$CoverImageTask;->onGenerateCallback:Lcom/narvii/video/interfaces/ISceneVideoGenerator$OnGenerateCallback;

    return-object v0
.end method

.method public final getOutputPath()Ljava/lang/String;
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$CoverImageTask;->outputPath:Ljava/lang/String;

    return-object v0
.end method

.method public final getSelectedPlaybackTime()I
    .locals 1

    .line 269
    iget v0, p0, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$CoverImageTask;->selectedPlaybackTime:I

    return v0
.end method

.method public final getTimeline()Lcom/meicam/sdk/NvsTimeline;
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$CoverImageTask;->timeline:Lcom/meicam/sdk/NvsTimeline;

    return-object v0
.end method

.method public pause()V
    .locals 0

    return-void
.end method

.method public final setOnGenerateCallback(Lcom/narvii/video/interfaces/ISceneVideoGenerator$OnGenerateCallback;)V
    .locals 0

    .line 270
    iput-object p1, p0, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$CoverImageTask;->onGenerateCallback:Lcom/narvii/video/interfaces/ISceneVideoGenerator$OnGenerateCallback;

    return-void
.end method
