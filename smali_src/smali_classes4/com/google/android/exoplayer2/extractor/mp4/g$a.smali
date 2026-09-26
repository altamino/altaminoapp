.class final Lcom/google/android/exoplayer2/extractor/mp4/g$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/mp4/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field public final sampleTimeIsRelative:Z

.field public final sampleTimeUs:J

.field public final size:I


# direct methods
.method public constructor <init>(JZI)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/g$a;->sampleTimeUs:J

    .line 6
    .line 7
    iput-boolean p3, p0, Lcom/google/android/exoplayer2/extractor/mp4/g$a;->sampleTimeIsRelative:Z

    .line 8
    .line 9
    iput p4, p0, Lcom/google/android/exoplayer2/extractor/mp4/g$a;->size:I

    .line 10
    return-void
.end method
