.class public Lcom/google/android/exoplayer2/upstream/z;
.super Lcom/google/android/exoplayer2/upstream/l;
.source "SourceFile"


# static fields
.field public static final TYPE_CLOSE:I = 0x3

.field public static final TYPE_OPEN:I = 0x1

.field public static final TYPE_READ:I = 0x2


# instance fields
.field public final dataSpec:Lcom/google/android/exoplayer2/upstream/o;

.field public final type:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/o;I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x7d0

    .line 1
    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/exoplayer2/upstream/z;-><init>(Lcom/google/android/exoplayer2/upstream/o;II)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/o;II)V
    .locals 0

    .line 2
    invoke-static {p2, p3}, Lcom/google/android/exoplayer2/upstream/z;->b(II)I

    move-result p2

    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/upstream/l;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/z;->dataSpec:Lcom/google/android/exoplayer2/upstream/o;

    iput p3, p0, Lcom/google/android/exoplayer2/upstream/z;->type:I

    return-void
.end method

.method public constructor <init>(Ljava/io/IOException;Lcom/google/android/exoplayer2/upstream/o;I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x7d0

    .line 5
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/google/android/exoplayer2/upstream/z;-><init>(Ljava/io/IOException;Lcom/google/android/exoplayer2/upstream/o;II)V

    return-void
.end method

.method public constructor <init>(Ljava/io/IOException;Lcom/google/android/exoplayer2/upstream/o;II)V
    .locals 0

    .line 6
    invoke-static {p3, p4}, Lcom/google/android/exoplayer2/upstream/z;->b(II)I

    move-result p3

    invoke-direct {p0, p1, p3}, Lcom/google/android/exoplayer2/upstream/l;-><init>(Ljava/lang/Throwable;I)V

    iput-object p2, p0, Lcom/google/android/exoplayer2/upstream/z;->dataSpec:Lcom/google/android/exoplayer2/upstream/o;

    iput p4, p0, Lcom/google/android/exoplayer2/upstream/z;->type:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/o;I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x7d0

    .line 3
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/google/android/exoplayer2/upstream/z;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/o;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/o;II)V
    .locals 0

    .line 4
    invoke-static {p3, p4}, Lcom/google/android/exoplayer2/upstream/z;->b(II)I

    move-result p3

    invoke-direct {p0, p1, p3}, Lcom/google/android/exoplayer2/upstream/l;-><init>(Ljava/lang/String;I)V

    iput-object p2, p0, Lcom/google/android/exoplayer2/upstream/z;->dataSpec:Lcom/google/android/exoplayer2/upstream/o;

    iput p4, p0, Lcom/google/android/exoplayer2/upstream/z;->type:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/IOException;Lcom/google/android/exoplayer2/upstream/o;I)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v4, 0x7d0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    .line 7
    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/upstream/z;-><init>(Ljava/lang/String;Ljava/io/IOException;Lcom/google/android/exoplayer2/upstream/o;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/IOException;Lcom/google/android/exoplayer2/upstream/o;II)V
    .locals 0
    .param p2    # Ljava/io/IOException;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 8
    invoke-static {p4, p5}, Lcom/google/android/exoplayer2/upstream/z;->b(II)I

    move-result p4

    invoke-direct {p0, p1, p2, p4}, Lcom/google/android/exoplayer2/upstream/l;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    iput-object p3, p0, Lcom/google/android/exoplayer2/upstream/z;->dataSpec:Lcom/google/android/exoplayer2/upstream/o;

    iput p5, p0, Lcom/google/android/exoplayer2/upstream/z;->type:I

    return-void
.end method

.method private static b(II)I
    .locals 1

    .line 1
    const/16 v0, 0x7d0

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/16 p0, 0x7d1

    :cond_0
    return p0
.end method

.method public static c(Ljava/io/IOException;Lcom/google/android/exoplayer2/upstream/o;I)Lcom/google/android/exoplayer2/upstream/z;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    instance-of v1, p0, Ljava/net/SocketTimeoutException;

    .line 7
    .line 8
    const/16 v2, 0x7d7

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    const/16 v0, 0x7d2

    .line 13
    goto :goto_0

    .line 14
    .line 15
    :cond_0
    instance-of v1, p0, Ljava/io/InterruptedIOException;

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    const/16 v0, 0x3ec

    .line 20
    goto :goto_0

    .line 21
    .line 22
    :cond_1
    if-eqz v0, :cond_2

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Lcom/google/common/base/c;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    const-string v1, "cleartext.*not permitted.*"

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 32
    move-result v0

    .line 33
    .line 34
    if-eqz v0, :cond_2

    .line 35
    move v0, v2

    .line 36
    goto :goto_0

    .line 37
    .line 38
    :cond_2
    const/16 v0, 0x7d1

    .line 39
    .line 40
    :goto_0
    if-ne v0, v2, :cond_3

    .line 41
    .line 42
    new-instance p2, Lcom/google/android/exoplayer2/upstream/y;

    .line 43
    .line 44
    .line 45
    invoke-direct {p2, p0, p1}, Lcom/google/android/exoplayer2/upstream/y;-><init>(Ljava/io/IOException;Lcom/google/android/exoplayer2/upstream/o;)V

    .line 46
    goto :goto_1

    .line 47
    .line 48
    :cond_3
    new-instance v1, Lcom/google/android/exoplayer2/upstream/z;

    .line 49
    .line 50
    .line 51
    invoke-direct {v1, p0, p1, v0, p2}, Lcom/google/android/exoplayer2/upstream/z;-><init>(Ljava/io/IOException;Lcom/google/android/exoplayer2/upstream/o;II)V

    .line 52
    move-object p2, v1

    .line 53
    :goto_1
    return-object p2
.end method
