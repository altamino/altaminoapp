.class public final Ly2/a;
.super Lcom/google/android/exoplayer2/text/h;
.source "SourceFile"


# instance fields
.field private final parser:Ly2/b;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "DvbDecoder"

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/text/h;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance v0, Lcom/google/android/exoplayer2/util/c0;

    .line 8
    const/4 v1, 0x0

    .line 9
    .line 10
    .line 11
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    check-cast p1, [B

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/util/c0;-><init>([B)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/c0;->J()I

    .line 21
    move-result p1

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/c0;->J()I

    .line 25
    move-result v0

    .line 26
    .line 27
    new-instance v1, Ly2/b;

    .line 28
    .line 29
    .line 30
    invoke-direct {v1, p1, v0}, Ly2/b;-><init>(II)V

    .line 31
    .line 32
    iput-object v1, p0, Ly2/a;->parser:Ly2/b;

    .line 33
    return-void
.end method


# virtual methods
.method protected v([BIZ)Lcom/google/android/exoplayer2/text/i;
    .locals 1

    .line 1
    .line 2
    if-eqz p3, :cond_0

    .line 3
    .line 4
    iget-object p3, p0, Ly2/a;->parser:Ly2/b;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p3}, Ly2/b;->r()V

    .line 8
    .line 9
    :cond_0
    new-instance p3, Ly2/c;

    .line 10
    .line 11
    iget-object v0, p0, Ly2/a;->parser:Ly2/b;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1, p2}, Ly2/b;->b([BI)Ljava/util/List;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    .line 18
    invoke-direct {p3, p1}, Ly2/c;-><init>(Ljava/util/List;)V

    .line 19
    return-object p3
.end method
