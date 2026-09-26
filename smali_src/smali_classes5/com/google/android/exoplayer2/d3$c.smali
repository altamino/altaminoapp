.class public final Lcom/google/android/exoplayer2/d3$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/d3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field private final flags:Lcom/google/android/exoplayer2/util/m;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/util/m;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/android/exoplayer2/d3$c;->flags:Lcom/google/android/exoplayer2/util/m;

    .line 6
    return-void
.end method


# virtual methods
.method public a(I)Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/d3$c;->flags:Lcom/google/android/exoplayer2/util/m;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/m;->a(I)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public varargs b([I)Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/d3$c;->flags:Lcom/google/android/exoplayer2/util/m;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/m;->b([I)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    const/4 p1, 0x1

    .line 4
    return p1

    .line 5
    .line 6
    :cond_0
    instance-of v0, p1, Lcom/google/android/exoplayer2/d3$c;

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    const/4 p1, 0x0

    .line 10
    return p1

    .line 11
    .line 12
    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/d3$c;

    .line 13
    .line 14
    iget-object v0, p0, Lcom/google/android/exoplayer2/d3$c;->flags:Lcom/google/android/exoplayer2/util/m;

    .line 15
    .line 16
    iget-object p1, p1, Lcom/google/android/exoplayer2/d3$c;->flags:Lcom/google/android/exoplayer2/util/m;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/m;->equals(Ljava/lang/Object;)Z

    .line 20
    move-result p1

    .line 21
    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/d3$c;->flags:Lcom/google/android/exoplayer2/util/m;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/m;->hashCode()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method
