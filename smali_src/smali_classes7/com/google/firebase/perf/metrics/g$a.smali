.class public Lcom/google/firebase/perf/metrics/g$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/perf/metrics/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field frozenFrames:I

.field slowFrames:I

.field totalFrames:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput p1, p0, Lcom/google/firebase/perf/metrics/g$a;->totalFrames:I

    .line 6
    .line 7
    iput p2, p0, Lcom/google/firebase/perf/metrics/g$a;->slowFrames:I

    .line 8
    .line 9
    iput p3, p0, Lcom/google/firebase/perf/metrics/g$a;->frozenFrames:I

    .line 10
    return-void
.end method


# virtual methods
.method public a(Lcom/google/firebase/perf/metrics/g$a;)Lcom/google/firebase/perf/metrics/g$a;
    .locals 3

    .line 1
    .line 2
    iget v0, p0, Lcom/google/firebase/perf/metrics/g$a;->totalFrames:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/google/firebase/perf/metrics/g$a;->d()I

    .line 6
    move-result v1

    .line 7
    sub-int/2addr v0, v1

    .line 8
    .line 9
    iget v1, p0, Lcom/google/firebase/perf/metrics/g$a;->slowFrames:I

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/google/firebase/perf/metrics/g$a;->c()I

    .line 13
    move-result v2

    .line 14
    sub-int/2addr v1, v2

    .line 15
    .line 16
    iget v2, p0, Lcom/google/firebase/perf/metrics/g$a;->frozenFrames:I

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/google/firebase/perf/metrics/g$a;->b()I

    .line 20
    move-result p1

    .line 21
    sub-int/2addr v2, p1

    .line 22
    .line 23
    new-instance p1, Lcom/google/firebase/perf/metrics/g$a;

    .line 24
    .line 25
    .line 26
    invoke-direct {p1, v0, v1, v2}, Lcom/google/firebase/perf/metrics/g$a;-><init>(III)V

    .line 27
    return-object p1
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/firebase/perf/metrics/g$a;->frozenFrames:I

    return v0
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/firebase/perf/metrics/g$a;->slowFrames:I

    return v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/firebase/perf/metrics/g$a;->totalFrames:I

    return v0
.end method
