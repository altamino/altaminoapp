.class final Lcom/narvii/video/services/FrameRetrieverManager$FrameHunter;
.super Ljava/lang/Object;
.source "FrameRetrieverManager.kt"

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

.field private final frameTime:I

.field private final handler:Landroid/os/Handler;

.field private final prefix:Ljava/lang/String;

.field private final prey:Ljava/io/File;

.field private final sectionIndex:I

.field final synthetic this$0:Lcom/narvii/video/services/FrameRetrieverManager;


# direct methods
.method public constructor <init>(Lcom/narvii/video/services/FrameRetrieverManager;Ljava/lang/String;IFZLcom/narvii/video/interfaces/IVideoServiceCallback;)V
    .locals 1
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

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 425
    iput-object p1, p0, Lcom/narvii/video/services/FrameRetrieverManager$FrameHunter;->this$0:Lcom/narvii/video/services/FrameRetrieverManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/narvii/video/services/FrameRetrieverManager$FrameHunter;->prefix:Ljava/lang/String;

    iput p3, p0, Lcom/narvii/video/services/FrameRetrieverManager$FrameHunter;->frameTime:I

    iput-boolean p5, p0, Lcom/narvii/video/services/FrameRetrieverManager$FrameHunter;->bitmapDecoding:Z

    iput-object p6, p0, Lcom/narvii/video/services/FrameRetrieverManager$FrameHunter;->callback:Lcom/narvii/video/interfaces/IVideoServiceCallback;

    .line 426
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/narvii/video/services/FrameRetrieverManager$FrameHunter;->handler:Landroid/os/Handler;

    .line 427
    iget p2, p0, Lcom/narvii/video/services/FrameRetrieverManager$FrameHunter;->frameTime:I

    int-to-float p2, p2

    invoke-static {p1}, Lcom/narvii/video/services/FrameRetrieverManager;->access$getFrameSectionSize$p(Lcom/narvii/video/services/FrameRetrieverManager;)I

    move-result p3

    int-to-float p3, p3

    mul-float p3, p3, p4

    div-float/2addr p2, p3

    float-to-int p2, p2

    iput p2, p0, Lcom/narvii/video/services/FrameRetrieverManager$FrameHunter;->sectionIndex:I

    .line 428
    iget-object p2, p0, Lcom/narvii/video/services/FrameRetrieverManager$FrameHunter;->prefix:Ljava/lang/String;

    iget p3, p0, Lcom/narvii/video/services/FrameRetrieverManager$FrameHunter;->frameTime:I

    invoke-static {p1, p2, p3, p4}, Lcom/narvii/video/services/FrameRetrieverManager;->access$getFrameFilePathByTime(Lcom/narvii/video/services/FrameRetrieverManager;Ljava/lang/String;IF)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/video/services/FrameRetrieverManager$FrameHunter;->prey:Ljava/io/File;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/narvii/video/services/FrameRetrieverManager;Ljava/lang/String;IFZLcom/narvii/video/interfaces/IVideoServiceCallback;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p7, p7, 0x8

    if-eqz p7, :cond_0

    const/4 p5, 0x0

    const/4 v5, 0x0

    goto :goto_0

    :cond_0
    move v5, p5

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p6

    .line 425
    invoke-direct/range {v0 .. v6}, Lcom/narvii/video/services/FrameRetrieverManager$FrameHunter;-><init>(Lcom/narvii/video/services/FrameRetrieverManager;Ljava/lang/String;IFZLcom/narvii/video/interfaces/IVideoServiceCallback;)V

    return-void
.end method

.method public static final synthetic access$getPrey$p(Lcom/narvii/video/services/FrameRetrieverManager$FrameHunter;)Ljava/io/File;
    .locals 0

    .line 425
    iget-object p0, p0, Lcom/narvii/video/services/FrameRetrieverManager$FrameHunter;->prey:Ljava/io/File;

    return-object p0
.end method


# virtual methods
.method public final getBitmapDecoding()Z
    .locals 1

    .line 425
    iget-boolean v0, p0, Lcom/narvii/video/services/FrameRetrieverManager$FrameHunter;->bitmapDecoding:Z

    return v0
.end method

.method public final getCallback()Lcom/narvii/video/interfaces/IVideoServiceCallback;
    .locals 1

    .line 425
    iget-object v0, p0, Lcom/narvii/video/services/FrameRetrieverManager$FrameHunter;->callback:Lcom/narvii/video/interfaces/IVideoServiceCallback;

    return-object v0
.end method

.method public final getFrameTime()I
    .locals 1

    .line 425
    iget v0, p0, Lcom/narvii/video/services/FrameRetrieverManager$FrameHunter;->frameTime:I

    return v0
.end method

.method public final getPrefix()Ljava/lang/String;
    .locals 1

    .line 425
    iget-object v0, p0, Lcom/narvii/video/services/FrameRetrieverManager$FrameHunter;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public run()V
    .locals 3

    .line 432
    iget-object v0, p0, Lcom/narvii/video/services/FrameRetrieverManager$FrameHunter;->prey:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 433
    iget-object v0, p0, Lcom/narvii/video/services/FrameRetrieverManager$FrameHunter;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 434
    iget-boolean v0, p0, Lcom/narvii/video/services/FrameRetrieverManager$FrameHunter;->bitmapDecoding:Z

    if-eqz v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/narvii/video/services/FrameRetrieverManager$FrameHunter;->prey:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 439
    :goto_0
    new-instance v1, Lcom/narvii/video/services/FrameRetrieverManager$FrameHunter$run$1;

    invoke-direct {v1, p0, v0}, Lcom/narvii/video/services/FrameRetrieverManager$FrameHunter$run$1;-><init>(Lcom/narvii/video/services/FrameRetrieverManager$FrameHunter;Landroid/graphics/Bitmap;)V

    invoke-static {v1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 452
    :cond_1
    iget-object v0, p0, Lcom/narvii/video/services/FrameRetrieverManager$FrameHunter;->this$0:Lcom/narvii/video/services/FrameRetrieverManager;

    invoke-static {v0}, Lcom/narvii/video/services/FrameRetrieverManager;->access$getFrameSectionLoadFlags$p(Lcom/narvii/video/services/FrameRetrieverManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/narvii/video/services/FrameRetrieverManager$FrameHunter;->prefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/narvii/video/services/FrameRetrieverManager$FrameHunter;->sectionIndex:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 453
    iget-object v0, p0, Lcom/narvii/video/services/FrameRetrieverManager$FrameHunter;->handler:Landroid/os/Handler;

    const-wide/16 v1, 0x32

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 457
    :cond_2
    iget-object v0, p0, Lcom/narvii/video/services/FrameRetrieverManager$FrameHunter;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 458
    new-instance v0, Lcom/narvii/video/services/FrameRetrieverManager$FrameHunter$run$2;

    invoke-direct {v0, p0}, Lcom/narvii/video/services/FrameRetrieverManager$FrameHunter$run$2;-><init>(Lcom/narvii/video/services/FrameRetrieverManager$FrameHunter;)V

    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method
