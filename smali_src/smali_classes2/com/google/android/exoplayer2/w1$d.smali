.class final Lcom/google/android/exoplayer2/w1$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/w1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/google/android/exoplayer2/w1$d;",
        ">;"
    }
.end annotation


# instance fields
.field public final message:Lcom/google/android/exoplayer2/h3;

.field public resolvedPeriodIndex:I

.field public resolvedPeriodTimeUs:J

.field public resolvedPeriodUid:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/h3;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/android/exoplayer2/w1$d;->message:Lcom/google/android/exoplayer2/h3;

    .line 6
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/w1$d;)I
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/w1$d;->resolvedPeriodUid:Ljava/lang/Object;

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    move v3, v2

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v3, v1

    .line 10
    .line 11
    :goto_0
    iget-object v4, p1, Lcom/google/android/exoplayer2/w1$d;->resolvedPeriodUid:Ljava/lang/Object;

    .line 12
    .line 13
    if-nez v4, :cond_1

    .line 14
    move v4, v2

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    move v4, v1

    .line 17
    .line 18
    :goto_1
    if-eq v3, v4, :cond_3

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    const/4 v2, -0x1

    .line 22
    :cond_2
    return v2

    .line 23
    .line 24
    :cond_3
    if-nez v0, :cond_4

    .line 25
    return v1

    .line 26
    .line 27
    :cond_4
    iget v0, p0, Lcom/google/android/exoplayer2/w1$d;->resolvedPeriodIndex:I

    .line 28
    .line 29
    iget v1, p1, Lcom/google/android/exoplayer2/w1$d;->resolvedPeriodIndex:I

    .line 30
    sub-int/2addr v0, v1

    .line 31
    .line 32
    if-eqz v0, :cond_5

    .line 33
    return v0

    .line 34
    .line 35
    :cond_5
    iget-wide v0, p0, Lcom/google/android/exoplayer2/w1$d;->resolvedPeriodTimeUs:J

    .line 36
    .line 37
    iget-wide v2, p1, Lcom/google/android/exoplayer2/w1$d;->resolvedPeriodTimeUs:J

    .line 38
    .line 39
    .line 40
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/util/o0;->n(JJ)I

    .line 41
    move-result p1

    .line 42
    return p1
.end method

.method public b(IJLjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/w1$d;->resolvedPeriodIndex:I

    iput-wide p2, p0, Lcom/google/android/exoplayer2/w1$d;->resolvedPeriodTimeUs:J

    iput-object p4, p0, Lcom/google/android/exoplayer2/w1$d;->resolvedPeriodUid:Ljava/lang/Object;

    return-void
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    .line 2
    check-cast p1, Lcom/google/android/exoplayer2/w1$d;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/w1$d;->a(Lcom/google/android/exoplayer2/w1$d;)I

    .line 6
    move-result p1

    .line 7
    return p1
.end method
