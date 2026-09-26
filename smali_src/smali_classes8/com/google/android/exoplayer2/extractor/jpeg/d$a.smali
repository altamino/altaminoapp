.class Lcom/google/android/exoplayer2/extractor/jpeg/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/b0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer2/extractor/jpeg/d;->h(Lcom/google/android/exoplayer2/extractor/b0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/extractor/jpeg/d;

.field final synthetic val$seekMap:Lcom/google/android/exoplayer2/extractor/b0;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/extractor/jpeg/d;Lcom/google/android/exoplayer2/extractor/b0;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/jpeg/d$a;->this$0:Lcom/google/android/exoplayer2/extractor/jpeg/d;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/jpeg/d$a;->val$seekMap:Lcom/google/android/exoplayer2/extractor/b0;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public getDurationUs()J
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/d$a;->val$seekMap:Lcom/google/android/exoplayer2/extractor/b0;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/b0;->getDurationUs()J

    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public getSeekPoints(J)Lcom/google/android/exoplayer2/extractor/b0$a;
    .locals 8

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/d$a;->val$seekMap:Lcom/google/android/exoplayer2/extractor/b0;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/extractor/b0;->getSeekPoints(J)Lcom/google/android/exoplayer2/extractor/b0$a;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    new-instance p2, Lcom/google/android/exoplayer2/extractor/b0$a;

    .line 9
    .line 10
    new-instance v0, Lcom/google/android/exoplayer2/extractor/c0;

    .line 11
    .line 12
    iget-object v1, p1, Lcom/google/android/exoplayer2/extractor/b0$a;->first:Lcom/google/android/exoplayer2/extractor/c0;

    .line 13
    .line 14
    iget-wide v2, v1, Lcom/google/android/exoplayer2/extractor/c0;->timeUs:J

    .line 15
    .line 16
    iget-wide v4, v1, Lcom/google/android/exoplayer2/extractor/c0;->position:J

    .line 17
    .line 18
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/jpeg/d$a;->this$0:Lcom/google/android/exoplayer2/extractor/jpeg/d;

    .line 19
    .line 20
    .line 21
    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/jpeg/d;->a(Lcom/google/android/exoplayer2/extractor/jpeg/d;)J

    .line 22
    move-result-wide v6

    .line 23
    add-long/2addr v4, v6

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/android/exoplayer2/extractor/c0;-><init>(JJ)V

    .line 27
    .line 28
    new-instance v1, Lcom/google/android/exoplayer2/extractor/c0;

    .line 29
    .line 30
    iget-object p1, p1, Lcom/google/android/exoplayer2/extractor/b0$a;->second:Lcom/google/android/exoplayer2/extractor/c0;

    .line 31
    .line 32
    iget-wide v2, p1, Lcom/google/android/exoplayer2/extractor/c0;->timeUs:J

    .line 33
    .line 34
    iget-wide v4, p1, Lcom/google/android/exoplayer2/extractor/c0;->position:J

    .line 35
    .line 36
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/jpeg/d$a;->this$0:Lcom/google/android/exoplayer2/extractor/jpeg/d;

    .line 37
    .line 38
    .line 39
    invoke-static {p1}, Lcom/google/android/exoplayer2/extractor/jpeg/d;->a(Lcom/google/android/exoplayer2/extractor/jpeg/d;)J

    .line 40
    move-result-wide v6

    .line 41
    add-long/2addr v4, v6

    .line 42
    .line 43
    .line 44
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/exoplayer2/extractor/c0;-><init>(JJ)V

    .line 45
    .line 46
    .line 47
    invoke-direct {p2, v0, v1}, Lcom/google/android/exoplayer2/extractor/b0$a;-><init>(Lcom/google/android/exoplayer2/extractor/c0;Lcom/google/android/exoplayer2/extractor/c0;)V

    .line 48
    return-object p2
.end method

.method public isSeekable()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/d$a;->val$seekMap:Lcom/google/android/exoplayer2/extractor/b0;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/b0;->isSeekable()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method
