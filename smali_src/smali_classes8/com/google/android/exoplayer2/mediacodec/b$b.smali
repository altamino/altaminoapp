.class public final Lcom/google/android/exoplayer2/mediacodec/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/mediacodec/l$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/mediacodec/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final callbackThreadSupplier:Lcom/google/common/base/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/u<",
            "Landroid/os/HandlerThread;",
            ">;"
        }
    .end annotation
.end field

.field private final queueingThreadSupplier:Lcom/google/common/base/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/u<",
            "Landroid/os/HandlerThread;",
            ">;"
        }
    .end annotation
.end field

.field private final synchronizeCodecInteractionsWithQueueing:Z


# direct methods
.method public constructor <init>(IZ)V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/mediacodec/c;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/mediacodec/c;-><init>(I)V

    new-instance v1, Lcom/google/android/exoplayer2/mediacodec/d;

    invoke-direct {v1, p1}, Lcom/google/android/exoplayer2/mediacodec/d;-><init>(I)V

    invoke-direct {p0, v0, v1, p2}, Lcom/google/android/exoplayer2/mediacodec/b$b;-><init>(Lcom/google/common/base/u;Lcom/google/common/base/u;Z)V

    return-void
.end method

.method constructor <init>(Lcom/google/common/base/u;Lcom/google/common/base/u;Z)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/u<",
            "Landroid/os/HandlerThread;",
            ">;",
            "Lcom/google/common/base/u<",
            "Landroid/os/HandlerThread;",
            ">;Z)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/b$b;->callbackThreadSupplier:Lcom/google/common/base/u;

    iput-object p2, p0, Lcom/google/android/exoplayer2/mediacodec/b$b;->queueingThreadSupplier:Lcom/google/common/base/u;

    iput-boolean p3, p0, Lcom/google/android/exoplayer2/mediacodec/b$b;->synchronizeCodecInteractionsWithQueueing:Z

    return-void
.end method

.method public static synthetic b(I)Landroid/os/HandlerThread;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/exoplayer2/mediacodec/b$b;->e(I)Landroid/os/HandlerThread;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(I)Landroid/os/HandlerThread;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/exoplayer2/mediacodec/b$b;->f(I)Landroid/os/HandlerThread;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic e(I)Landroid/os/HandlerThread;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Landroid/os/HandlerThread;

    .line 3
    .line 4
    .line 5
    invoke-static {p0}, Lcom/google/android/exoplayer2/mediacodec/b;->q(I)Ljava/lang/String;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, p0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 10
    return-object v0
.end method

.method private static synthetic f(I)Landroid/os/HandlerThread;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Landroid/os/HandlerThread;

    .line 3
    .line 4
    .line 5
    invoke-static {p0}, Lcom/google/android/exoplayer2/mediacodec/b;->p(I)Ljava/lang/String;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, p0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 10
    return-object v0
.end method


# virtual methods
.method public bridge synthetic a(Lcom/google/android/exoplayer2/mediacodec/l$a;)Lcom/google/android/exoplayer2/mediacodec/l;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/mediacodec/b$b;->d(Lcom/google/android/exoplayer2/mediacodec/l$a;)Lcom/google/android/exoplayer2/mediacodec/b;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public d(Lcom/google/android/exoplayer2/mediacodec/l$a;)Lcom/google/android/exoplayer2/mediacodec/b;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p1, Lcom/google/android/exoplayer2/mediacodec/l$a;->codecInfo:Lcom/google/android/exoplayer2/mediacodec/n;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/google/android/exoplayer2/mediacodec/n;->name:Ljava/lang/String;

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    .line 10
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    const-string v3, "createCodec:"

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object v2

    .line 23
    .line 24
    .line 25
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/m0;->a(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-static {v0}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    .line 29
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 30
    .line 31
    :try_start_1
    new-instance v2, Lcom/google/android/exoplayer2/mediacodec/b;

    .line 32
    .line 33
    iget-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/b$b;->callbackThreadSupplier:Lcom/google/common/base/u;

    .line 34
    .line 35
    .line 36
    invoke-interface {v3}, Lcom/google/common/base/u;->get()Ljava/lang/Object;

    .line 37
    move-result-object v3

    .line 38
    move-object v5, v3

    .line 39
    .line 40
    check-cast v5, Landroid/os/HandlerThread;

    .line 41
    .line 42
    iget-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/b$b;->queueingThreadSupplier:Lcom/google/common/base/u;

    .line 43
    .line 44
    .line 45
    invoke-interface {v3}, Lcom/google/common/base/u;->get()Ljava/lang/Object;

    .line 46
    move-result-object v3

    .line 47
    move-object v6, v3

    .line 48
    .line 49
    check-cast v6, Landroid/os/HandlerThread;

    .line 50
    .line 51
    iget-boolean v7, p0, Lcom/google/android/exoplayer2/mediacodec/b$b;->synchronizeCodecInteractionsWithQueueing:Z

    .line 52
    const/4 v8, 0x0

    .line 53
    move-object v3, v2

    .line 54
    move-object v4, v0

    .line 55
    .line 56
    .line 57
    invoke-direct/range {v3 .. v8}, Lcom/google/android/exoplayer2/mediacodec/b;-><init>(Landroid/media/MediaCodec;Landroid/os/HandlerThread;Landroid/os/HandlerThread;ZLcom/google/android/exoplayer2/mediacodec/b$a;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 58
    .line 59
    .line 60
    :try_start_2
    invoke-static {}, Lcom/google/android/exoplayer2/util/m0;->c()V

    .line 61
    .line 62
    iget-object v1, p1, Lcom/google/android/exoplayer2/mediacodec/l$a;->mediaFormat:Landroid/media/MediaFormat;

    .line 63
    .line 64
    iget-object v3, p1, Lcom/google/android/exoplayer2/mediacodec/l$a;->surface:Landroid/view/Surface;

    .line 65
    .line 66
    iget-object v4, p1, Lcom/google/android/exoplayer2/mediacodec/l$a;->crypto:Landroid/media/MediaCrypto;

    .line 67
    .line 68
    iget p1, p1, Lcom/google/android/exoplayer2/mediacodec/l$a;->flags:I

    .line 69
    .line 70
    .line 71
    invoke-static {v2, v1, v3, v4, p1}, Lcom/google/android/exoplayer2/mediacodec/b;->o(Lcom/google/android/exoplayer2/mediacodec/b;Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 72
    return-object v2

    .line 73
    :catch_0
    move-exception p1

    .line 74
    move-object v1, v2

    .line 75
    goto :goto_0

    .line 76
    :catch_1
    move-exception p1

    .line 77
    goto :goto_0

    .line 78
    :catch_2
    move-exception p1

    .line 79
    move-object v0, v1

    .line 80
    .line 81
    :goto_0
    if-nez v1, :cond_0

    .line 82
    .line 83
    if-eqz v0, :cond_1

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 87
    goto :goto_1

    .line 88
    .line 89
    .line 90
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/mediacodec/b;->release()V

    .line 91
    :cond_1
    :goto_1
    throw p1
.end method
