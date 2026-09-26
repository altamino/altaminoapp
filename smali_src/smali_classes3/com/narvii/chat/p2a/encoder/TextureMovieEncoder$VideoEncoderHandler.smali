.class Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$VideoEncoderHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VideoEncoderHandler"
.end annotation


# instance fields
.field private mWeakEncoder:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$VideoEncoderHandler;->mWeakEncoder:Ljava/lang/ref/WeakReference;

    .line 11
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    .line 1
    .line 2
    iget v0, p1, Landroid/os/Message;->what:I

    .line 3
    .line 4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 5
    .line 6
    iget-object v2, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$VideoEncoderHandler;->mWeakEncoder:Ljava/lang/ref/WeakReference;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 10
    move-result-object v2

    .line 11
    .line 12
    check-cast v2, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;

    .line 13
    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    const-string p1, "TextureMovieEncoder"

    .line 17
    .line 18
    const-string v0, "VideoEncoderHandler.handleMessage: encoder is null"

    .line 19
    .line 20
    .line 21
    invoke-static {p1, v0}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    return-void

    .line 23
    .line 24
    :cond_0
    if-eqz v0, :cond_6

    .line 25
    const/4 v3, 0x1

    .line 26
    .line 27
    if-eq v0, v3, :cond_5

    .line 28
    const/4 v3, 0x2

    .line 29
    .line 30
    if-eq v0, v3, :cond_4

    .line 31
    const/4 v1, 0x3

    .line 32
    .line 33
    if-eq v0, v1, :cond_3

    .line 34
    const/4 v1, 0x4

    .line 35
    .line 36
    if-eq v0, v1, :cond_2

    .line 37
    const/4 p1, 0x5

    .line 38
    .line 39
    if-ne v0, p1, :cond_1

    .line 40
    .line 41
    .line 42
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 43
    move-result-object p1

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Landroid/os/Looper;->quit()V

    .line 47
    goto :goto_0

    .line 48
    .line 49
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    .line 50
    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    const-string v2, "Unhandled msg what="

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    move-result-object v0

    .line 67
    .line 68
    .line 69
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 70
    throw p1

    .line 71
    .line 72
    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast p1, Landroid/opengl/EGLContext;

    .line 75
    .line 76
    .line 77
    invoke-static {v2, p1}, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->q(Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;Landroid/opengl/EGLContext;)V

    .line 78
    goto :goto_0

    .line 79
    .line 80
    :cond_3
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 81
    .line 82
    .line 83
    invoke-static {v2, p1}, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->n(Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;I)V

    .line 84
    goto :goto_0

    .line 85
    .line 86
    :cond_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 87
    int-to-long v3, v0

    .line 88
    .line 89
    const/16 v0, 0x20

    .line 90
    shl-long/2addr v3, v0

    .line 91
    .line 92
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 93
    int-to-long v5, p1

    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    const-wide v7, 0xffffffffL

    .line 99
    and-long/2addr v5, v7

    .line 100
    or-long/2addr v3, v5

    .line 101
    .line 102
    check-cast v1, [F

    .line 103
    .line 104
    .line 105
    invoke-static {v2, v1, v3, v4}, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->m(Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;[FJ)V

    .line 106
    goto :goto_0

    .line 107
    .line 108
    .line 109
    :cond_5
    invoke-static {v2}, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->p(Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;)V

    .line 110
    goto :goto_0

    .line 111
    .line 112
    :cond_6
    check-cast v1, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$EncoderConfig;

    .line 113
    .line 114
    .line 115
    invoke-static {v2, v1}, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->o(Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$EncoderConfig;)V

    .line 116
    :goto_0
    return-void
.end method
