.class public final Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$MeisheTask;
.super Lcom/narvii/video/interfaces/ISceneVideoGenerator$Task;
.source "MeisheSceneVideoGenerator.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MeisheTask"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMeisheSceneVideoGenerator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MeisheSceneVideoGenerator.kt\ncom/narvii/editor/generator/MeisheSceneVideoGenerator$MeisheTask\n*L\n1#1,325:1\n*E\n"
.end annotation


# instance fields
.field private final onGenerateCallback:Lcom/narvii/video/interfaces/ISceneVideoGenerator$OnGenerateCallback;

.field private final outputPath:Ljava/lang/String;

.field final synthetic this$0:Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;

.field private final timeline:Lcom/meicam/sdk/NvsTimeline;


# direct methods
.method public constructor <init>(Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;Ljava/lang/String;Lcom/meicam/sdk/NvsTimeline;Ljava/lang/String;Lcom/narvii/video/interfaces/ISceneVideoGenerator$OnGenerateCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/meicam/sdk/NvsTimeline;",
            "Ljava/lang/String;",
            "Lcom/narvii/video/interfaces/ISceneVideoGenerator$OnGenerateCallback;",
            ")V"
        }
    .end annotation

    const-string v0, "id"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 226
    iput-object p1, p0, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$MeisheTask;->this$0:Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;

    .line 229
    invoke-direct {p0, p2}, Lcom/narvii/video/interfaces/ISceneVideoGenerator$Task;-><init>(Ljava/lang/String;)V

    iput-object p3, p0, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$MeisheTask;->timeline:Lcom/meicam/sdk/NvsTimeline;

    iput-object p4, p0, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$MeisheTask;->outputPath:Ljava/lang/String;

    iput-object p5, p0, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$MeisheTask;->onGenerateCallback:Lcom/narvii/video/interfaces/ISceneVideoGenerator$OnGenerateCallback;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;Ljava/lang/String;Lcom/meicam/sdk/NvsTimeline;Ljava/lang/String;Lcom/narvii/video/interfaces/ISceneVideoGenerator$OnGenerateCallback;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p6, p6, 0x1

    if-eqz p6, :cond_0

    .line 226
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p6, "UUID.randomUUID().toString()"

    invoke-static {p2, p6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    move-object v2, p2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$MeisheTask;-><init>(Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;Ljava/lang/String;Lcom/meicam/sdk/NvsTimeline;Ljava/lang/String;Lcom/narvii/video/interfaces/ISceneVideoGenerator$OnGenerateCallback;)V

    return-void
.end method


# virtual methods
.method public abort()V
    .locals 3

    .line 258
    sget-object v0, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;->Companion:Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$Companion;

    invoke-virtual {v0}, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$Companion;->getTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MeisheTask abort >>> id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/narvii/video/interfaces/ISceneVideoGenerator$Task;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  outputPath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$MeisheTask;->outputPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    iget-object v0, p0, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$MeisheTask;->this$0:Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;

    invoke-virtual {v0}, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;->getStreamingContext()Lcom/meicam/sdk/NvsStreamingContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meicam/sdk/NvsStreamingContext;->stop()V

    return-void
.end method

.method public execute()V
    .locals 10

    .line 232
    iget-object v1, p0, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$MeisheTask;->timeline:Lcom/meicam/sdk/NvsTimeline;

    if-eqz v1, :cond_1

    .line 233
    sget-object v0, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;->Companion:Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$Companion;

    invoke-virtual {v0}, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$Companion;->getTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MeisheTask execute >>> id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/narvii/video/interfaces/ISceneVideoGenerator$Task;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  outputPath = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$MeisheTask;->outputPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$MeisheTask;->outputPath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/narvii/util/FileUtils;->isEmpty(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 236
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$MeisheTask;->outputPath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/narvii/util/FileUtils;->deleteFile(Ljava/io/File;)Z

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$MeisheTask;->this$0:Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;

    invoke-virtual {v0}, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;->getStreamingContext()Lcom/meicam/sdk/NvsStreamingContext;

    move-result-object v0

    sget-object v2, Lcom/narvii/editor/utils/TimelineUtils;->INSTANCE:Lcom/narvii/editor/utils/TimelineUtils;

    invoke-virtual {v2}, Lcom/narvii/editor/utils/TimelineUtils;->createCompileConfig()Ljava/util/Hashtable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/meicam/sdk/NvsStreamingContext;->setCompileConfigurations(Ljava/util/Hashtable;)V

    .line 239
    iget-object v0, p0, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$MeisheTask;->this$0:Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;

    invoke-virtual {v0}, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;->getStreamingContext()Lcom/meicam/sdk/NvsStreamingContext;

    move-result-object v0

    const/16 v2, 0x500

    invoke-virtual {v0, v2}, Lcom/meicam/sdk/NvsStreamingContext;->setCustomCompileVideoHeight(I)V

    .line 240
    iget-object v0, p0, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$MeisheTask;->this$0:Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;

    invoke-virtual {v0}, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;->getStreamingContext()Lcom/meicam/sdk/NvsStreamingContext;

    move-result-object v0

    const-wide/16 v2, 0x0

    .line 242
    invoke-virtual {v1}, Lcom/meicam/sdk/NvsTimeline;->getDuration()J

    move-result-wide v4

    .line 243
    iget-object v6, p0, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$MeisheTask;->outputPath:Ljava/lang/String;

    const/16 v7, 0x100

    const/4 v8, 0x2

    const/4 v9, 0x1

    .line 240
    invoke-virtual/range {v0 .. v9}, Lcom/meicam/sdk/NvsStreamingContext;->compileTimeline(Lcom/meicam/sdk/NvsTimeline;JJLjava/lang/String;III)Z

    :cond_1
    return-void
.end method

.method public final getOnGenerateCallback()Lcom/narvii/video/interfaces/ISceneVideoGenerator$OnGenerateCallback;
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$MeisheTask;->onGenerateCallback:Lcom/narvii/video/interfaces/ISceneVideoGenerator$OnGenerateCallback;

    return-object v0
.end method

.method public final getOutputPath()Ljava/lang/String;
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$MeisheTask;->outputPath:Ljava/lang/String;

    return-object v0
.end method

.method public final getTimeline()Lcom/meicam/sdk/NvsTimeline;
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$MeisheTask;->timeline:Lcom/meicam/sdk/NvsTimeline;

    return-object v0
.end method

.method public pause()V
    .locals 3

    .line 251
    sget-object v0, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;->Companion:Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$Companion;

    invoke-virtual {v0}, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$Companion;->getTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MeisheTask pause >>> id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/narvii/video/interfaces/ISceneVideoGenerator$Task;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  outputPath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$MeisheTask;->outputPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    iget-object v0, p0, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$MeisheTask;->this$0:Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;

    invoke-virtual {v0}, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;->getStreamingContext()Lcom/meicam/sdk/NvsStreamingContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meicam/sdk/NvsStreamingContext;->stop()V

    return-void
.end method
