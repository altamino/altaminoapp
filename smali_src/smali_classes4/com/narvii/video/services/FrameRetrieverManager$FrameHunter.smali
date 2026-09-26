.class final Lcom/narvii/video/services/FrameRetrieverManager$FrameHunter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/video/services/FrameRetrieverManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FrameHunter"
.end annotation


# instance fields
.field private final bitmapDecoding:Z

.field private final callback:Lcom/narvii/video/interfaces/IVideoServiceCallback;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final frameTime:I

.field private final handler:Landroid/os/Handler;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final prefix:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final prey:Ljava/io/File;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final sectionIndex:I

.field final synthetic this$0:Lcom/narvii/video/services/FrameRetrieverManager;


# direct methods
.method public constructor <init>(Lcom/narvii/video/services/FrameRetrieverManager;Ljava/lang/String;IFZLcom/narvii/video/interfaces/IVideoServiceCallback;)V
    .locals 1
    .param p1    # Lcom/narvii/video/services/FrameRetrieverManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Z
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IFZ",
            "Lcom/narvii/video/interfaces/IVideoServiceCallback;",
            ")V"
        }
    .end annotation

    const-string v0, "prefix"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/video/services/FrameRetrieverManager$FrameHunter;->this$0:Lcom/narvii/video/services/FrameRetrieverManager;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/narvii/video/services/FrameRetrieverManager$FrameHunter;->prefix:Ljava/lang/String;

    iput p3, p0, Lcom/narvii/video/services/FrameRetrieverManager$FrameHunter;->frameTime:I

    iput-boolean p5, p0, Lcom/narvii/video/services/FrameRetrieverManager$FrameHunter;->bitmapDecoding:Z

    iput-object p6, p0, Lcom/narvii/video/services/FrameRetrieverManager$FrameHunter;->callback:Lcom/narvii/video/interfaces/IVideoServiceCallback;

    .line 2
    new-instance p5, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p6

    invoke-direct {p5, p6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p5, p0, Lcom/narvii/video/services/FrameRetrieverManager$FrameHunter;->handler:Landroid/os/Handler;

    int-to-float p5, p3

    .line 3
    invoke-static {p1}, Lcom/narvii/video/services/FrameRetrieverManager;->access$getFrameSectionSize$p(Lcom/narvii/video/services/FrameRetrieverManager;)I

    move-result p6

    int-to-float p6, p6

    mul-float/2addr p6, p4

    div-float/2addr p5, p6

    float-to-int p5, p5

    iput p5, p0, Lcom/narvii/video/services/FrameRetrieverManager$FrameHunter;->sectionIndex:I

    .line 4
    invoke-static {p1, p2, p3, p4}, Lcom/narvii/video/services/FrameRetrieverManager;->access$getFrameFilePathByTime(Lcom/narvii/video/services/FrameRetrieverManager;Ljava/lang/String;IF)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/video/services/FrameRetrieverManager$FrameHunter;->prey:Ljava/io/File;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/narvii/video/services/FrameRetrieverManager;Ljava/lang/String;IFZLcom/narvii/video/interfaces/IVideoServiceCallback;ILkotlin/jvm/internal/k;)V
    .locals 7

    and-int/lit8 p7, p7, 0x8

    if-eqz p7, :cond_0

    const/4 p5, 0x0

    :cond_0
    move v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p6

    .line 5
    invoke-direct/range {v0 .. v6}, Lcom/narvii/video/services/FrameRetrieverManager$FrameHunter;-><init>(Lcom/narvii/video/services/FrameRetrieverManager;Ljava/lang/String;IFZLcom/narvii/video/interfaces/IVideoServiceCallback;)V

    return-void
.end method

.method public static synthetic a(Lcom/narvii/video/services/FrameRetrieverManager$FrameHunter;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/narvii/video/services/FrameRetrieverManager$FrameHunter;->run$lambda$1(Lcom/narvii/video/services/FrameRetrieverManager$FrameHunter;)V

    return-void
.end method

.method public static synthetic b(Lcom/narvii/video/services/FrameRetrieverManager$FrameHunter;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/video/services/FrameRetrieverManager$FrameHunter;->run$lambda$0(Lcom/narvii/video/services/FrameRetrieverManager$FrameHunter;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private static final run$lambda$0(Lcom/narvii/video/services/FrameRetrieverManager$FrameHunter;Landroid/graphics/Bitmap;)V
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
    iget-object v0, p0, Lcom/narvii/video/services/FrameRetrieverManager$FrameHunter;->prey:Ljava/io/File;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-boolean v0, p0, Lcom/narvii/video/services/FrameRetrieverManager$FrameHunter;->bitmapDecoding:Z

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Lcom/narvii/video/services/FrameRetrieverManager$FrameHunter;->callback:Lcom/narvii/video/interfaces/IVideoServiceCallback;

    .line 21
    .line 22
    iget p0, p0, Lcom/narvii/video/services/FrameRetrieverManager$FrameHunter;->frameTime:I

    .line 23
    .line 24
    .line 25
    invoke-interface {v0, p0, p1}, Lcom/narvii/video/interfaces/IVideoServiceCallback;->onFrameBitmapLoaded(ILandroid/graphics/Bitmap;)V

    .line 26
    goto :goto_0

    .line 27
    .line 28
    :cond_0
    iget-object p1, p0, Lcom/narvii/video/services/FrameRetrieverManager$FrameHunter;->callback:Lcom/narvii/video/interfaces/IVideoServiceCallback;

    .line 29
    .line 30
    iget v0, p0, Lcom/narvii/video/services/FrameRetrieverManager$FrameHunter;->frameTime:I

    .line 31
    .line 32
    iget-object p0, p0, Lcom/narvii/video/services/FrameRetrieverManager$FrameHunter;->prey:Ljava/io/File;

    .line 33
    .line 34
    .line 35
    invoke-interface {p1, v0, p0}, Lcom/narvii/video/interfaces/IVideoServiceCallback;->onFramePicturesLoaded(ILjava/io/File;)V

    .line 36
    goto :goto_0

    .line 37
    .line 38
    :cond_1
    iget-object p0, p0, Lcom/narvii/video/services/FrameRetrieverManager$FrameHunter;->callback:Lcom/narvii/video/interfaces/IVideoServiceCallback;

    .line 39
    .line 40
    new-instance p1, Ljava/lang/Exception;

    .line 41
    .line 42
    const-string v0, "Failed to get frame screenshot"

    .line 43
    .line 44
    .line 45
    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-interface {p0, p1}, Lcom/narvii/video/interfaces/IVideoServiceCallback;->onActionFailed(Ljava/lang/Exception;)V

    .line 49
    :goto_0
    return-void
.end method

.method private static final run$lambda$1(Lcom/narvii/video/services/FrameRetrieverManager$FrameHunter;)V
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
    iget-object p0, p0, Lcom/narvii/video/services/FrameRetrieverManager$FrameHunter;->callback:Lcom/narvii/video/interfaces/IVideoServiceCallback;

    .line 9
    .line 10
    new-instance v0, Ljava/lang/Exception;

    .line 11
    .line 12
    const-string v1, "Failed to get frame screenshot"

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-interface {p0, v0}, Lcom/narvii/video/interfaces/IVideoServiceCallback;->onActionFailed(Ljava/lang/Exception;)V

    .line 19
    return-void
.end method


# virtual methods
.method public final getBitmapDecoding()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/video/services/FrameRetrieverManager$FrameHunter;->bitmapDecoding:Z

    return v0
.end method

.method public final getCallback()Lcom/narvii/video/interfaces/IVideoServiceCallback;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/video/services/FrameRetrieverManager$FrameHunter;->callback:Lcom/narvii/video/interfaces/IVideoServiceCallback;

    return-object v0
.end method

.method public final getFrameTime()I
    .locals 1

    iget v0, p0, Lcom/narvii/video/services/FrameRetrieverManager$FrameHunter;->frameTime:I

    return v0
.end method

.method public final getPrefix()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/video/services/FrameRetrieverManager$FrameHunter;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public run()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/services/FrameRetrieverManager$FrameHunter;->prey:Ljava/io/File;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/narvii/video/services/FrameRetrieverManager$FrameHunter;->handler:Landroid/os/Handler;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 15
    .line 16
    iget-boolean v0, p0, Lcom/narvii/video/services/FrameRetrieverManager$FrameHunter;->bitmapDecoding:Z

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Lcom/narvii/video/services/FrameRetrieverManager$FrameHunter;->prey:Ljava/io/File;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    .line 27
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    :cond_0
    new-instance v0, Lcom/narvii/video/services/f;

    .line 31
    .line 32
    .line 33
    invoke-direct {v0, p0, v1}, Lcom/narvii/video/services/f;-><init>(Lcom/narvii/video/services/FrameRetrieverManager$FrameHunter;Landroid/graphics/Bitmap;)V

    .line 34
    .line 35
    .line 36
    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 37
    goto :goto_1

    .line 38
    .line 39
    :cond_1
    iget-object v0, p0, Lcom/narvii/video/services/FrameRetrieverManager$FrameHunter;->this$0:Lcom/narvii/video/services/FrameRetrieverManager;

    .line 40
    .line 41
    .line 42
    invoke-static {v0}, Lcom/narvii/video/services/FrameRetrieverManager;->access$getFrameSectionLoadFlags$p(Lcom/narvii/video/services/FrameRetrieverManager;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    if-nez v0, :cond_2

    .line 46
    .line 47
    const-string v0, "frameSectionLoadFlags"

    .line 48
    .line 49
    .line 50
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 51
    goto :goto_0

    .line 52
    :cond_2
    move-object v1, v0

    .line 53
    .line 54
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    iget-object v2, p0, Lcom/narvii/video/services/FrameRetrieverManager$FrameHunter;->prefix:Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    iget v2, p0, Lcom/narvii/video/services/FrameRetrieverManager$FrameHunter;->sectionIndex:I

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    move-result-object v0

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    move-result-object v0

    .line 76
    .line 77
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 78
    .line 79
    .line 80
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 81
    move-result v0

    .line 82
    .line 83
    if-eqz v0, :cond_3

    .line 84
    .line 85
    iget-object v0, p0, Lcom/narvii/video/services/FrameRetrieverManager$FrameHunter;->handler:Landroid/os/Handler;

    .line 86
    .line 87
    const-wide/16 v1, 0x32

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 91
    goto :goto_1

    .line 92
    .line 93
    :cond_3
    iget-object v0, p0, Lcom/narvii/video/services/FrameRetrieverManager$FrameHunter;->handler:Landroid/os/Handler;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 97
    .line 98
    new-instance v0, Lcom/narvii/video/services/g;

    .line 99
    .line 100
    .line 101
    invoke-direct {v0, p0}, Lcom/narvii/video/services/g;-><init>(Lcom/narvii/video/services/FrameRetrieverManager$FrameHunter;)V

    .line 102
    .line 103
    .line 104
    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 105
    :goto_1
    return-void
.end method
