.class public Lpl/droidsonroids/gif/GifIOException;
.super Ljava/io/IOException;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0xbdbbd5fa1b9L


# instance fields
.field private final mErrnoMessage:Ljava/lang/String;

.field public final reason:Lpl/droidsonroids/gif/c;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lpl/droidsonroids/gif/c;->a(I)Lpl/droidsonroids/gif/c;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    iput-object p1, p0, Lpl/droidsonroids/gif/GifIOException;->reason:Lpl/droidsonroids/gif/c;

    .line 10
    .line 11
    iput-object p2, p0, Lpl/droidsonroids/gif/GifIOException;->mErrnoMessage:Ljava/lang/String;

    .line 12
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lpl/droidsonroids/gif/GifIOException;->mErrnoMessage:Ljava/lang/String;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lpl/droidsonroids/gif/GifIOException;->reason:Lpl/droidsonroids/gif/c;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lpl/droidsonroids/gif/c;->b()Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    return-object v0

    .line 12
    .line 13
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    iget-object v1, p0, Lpl/droidsonroids/gif/GifIOException;->reason:Lpl/droidsonroids/gif/c;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Lpl/droidsonroids/gif/c;->b()Ljava/lang/String;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v1, ": "

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    iget-object v1, p0, Lpl/droidsonroids/gif/GifIOException;->mErrnoMessage:Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object v0

    .line 40
    return-object v0
.end method
