.class public final Lcom/narvii/video/services/FrameRetrieverManager$retrieveFrame$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg7/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/video/services/FrameRetrieverManager;->retrieveFrame(Lcom/narvii/video/interfaces/IAVClipInfoPack;IZLcom/narvii/video/interfaces/IVideoServiceCallback;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $dir:Ljava/io/File;

.field final synthetic $output:Ljava/io/File;

.field final synthetic this$0:Lcom/narvii/video/services/FrameRetrieverManager;


# direct methods
.method constructor <init>(Ljava/io/File;Ljava/io/File;Lcom/narvii/video/services/FrameRetrieverManager;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/video/services/FrameRetrieverManager$retrieveFrame$3$1;->$output:Ljava/io/File;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/video/services/FrameRetrieverManager$retrieveFrame$3$1;->$dir:Ljava/io/File;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/video/services/FrameRetrieverManager$retrieveFrame$3$1;->this$0:Lcom/narvii/video/services/FrameRetrieverManager;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lg7/c$a;->a(Lg7/c;)V

    .line 4
    return-void
.end method

.method public onFail()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lg7/c$a;->b(Lg7/c;)V

    .line 4
    return-void
.end method

.method public onProgress(F)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Lg7/c$a;->c(Lg7/c;F)V

    .line 4
    return-void
.end method

.method public onStart()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lg7/c$a;->d(Lg7/c;)V

    .line 4
    return-void
.end method

.method public onSuccess()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lg7/c$a;->e(Lg7/c;)V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/video/model/AVClipInfoPack;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Lcom/narvii/video/model/AVClipInfoPack;-><init>()V

    .line 9
    .line 10
    iget-object v1, p0, Lcom/narvii/video/services/FrameRetrieverManager$retrieveFrame$3$1;->$output:Ljava/io/File;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    iput-object v1, v0, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    .line 17
    .line 18
    new-instance v1, Ljava/io/File;

    .line 19
    .line 20
    iget-object v2, p0, Lcom/narvii/video/services/FrameRetrieverManager$retrieveFrame$3$1;->$dir:Ljava/io/File;

    .line 21
    .line 22
    .line 23
    const-string/jumbo v3, "wave.jpg"

    .line 24
    .line 25
    .line 26
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 27
    .line 28
    new-instance v2, Lg7/d$a$a;

    .line 29
    .line 30
    const/16 v3, 0x200

    .line 31
    .line 32
    .line 33
    invoke-direct {v2, v0, v1, v3}, Lg7/d$a$a;-><init>(Lcom/narvii/video/model/AVClipInfoPack;Ljava/io/File;I)V

    .line 34
    const/4 v0, 0x1

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, v0}, Lg7/d$a$a;->F(Z)Lg7/d$a$a;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Lg7/d$a$a;->c()Lg7/d;

    .line 42
    move-result-object v0

    .line 43
    .line 44
    iget-object v1, p0, Lcom/narvii/video/services/FrameRetrieverManager$retrieveFrame$3$1;->this$0:Lcom/narvii/video/services/FrameRetrieverManager;

    .line 45
    .line 46
    .line 47
    invoke-static {v1}, Lcom/narvii/video/services/FrameRetrieverManager;->access$getMediaRetriever$p(Lcom/narvii/video/services/FrameRetrieverManager;)Lg7/a;

    .line 48
    move-result-object v1

    .line 49
    .line 50
    iget-object v2, p0, Lcom/narvii/video/services/FrameRetrieverManager$retrieveFrame$3$1;->this$0:Lcom/narvii/video/services/FrameRetrieverManager;

    .line 51
    .line 52
    .line 53
    invoke-static {v2}, Lcom/narvii/video/services/FrameRetrieverManager;->access$getAudioWaveExecutor$p(Lcom/narvii/video/services/FrameRetrieverManager;)Ljava/util/concurrent/ThreadPoolExecutor;

    .line 54
    move-result-object v2

    .line 55
    const/4 v3, 0x0

    .line 56
    .line 57
    .line 58
    invoke-interface {v1, v0, v2, v3}, Lg7/a;->execute(Lg7/d;Ljava/util/concurrent/ExecutorService;Lg7/c;)V

    .line 59
    return-void
.end method
