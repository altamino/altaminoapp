.class final Lcom/google/android/exoplayer2/ui/c0$k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ui/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "k"
.end annotation


# instance fields
.field public final trackGroup:Lcom/google/android/exoplayer2/e4$a;

.field public final trackIndex:I

.field public final trackName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/e4;IILjava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/e4;->b()Lcom/google/common/collect/a0;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    .line 10
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    check-cast p1, Lcom/google/android/exoplayer2/e4$a;

    .line 14
    .line 15
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/c0$k;->trackGroup:Lcom/google/android/exoplayer2/e4$a;

    .line 16
    .line 17
    iput p3, p0, Lcom/google/android/exoplayer2/ui/c0$k;->trackIndex:I

    .line 18
    .line 19
    iput-object p4, p0, Lcom/google/android/exoplayer2/ui/c0$k;->trackName:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c0$k;->trackGroup:Lcom/google/android/exoplayer2/e4$a;

    .line 3
    .line 4
    iget v1, p0, Lcom/google/android/exoplayer2/ui/c0$k;->trackIndex:I

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/e4$a;->f(I)Z

    .line 8
    move-result v0

    .line 9
    return v0
.end method
