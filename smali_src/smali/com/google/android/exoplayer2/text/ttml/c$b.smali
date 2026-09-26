.class final Lcom/google/android/exoplayer2/text/ttml/c$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/text/ttml/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field final effectiveFrameRate:F

.field final subFrameRate:I

.field final tickRate:I


# direct methods
.method constructor <init>(FII)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput p1, p0, Lcom/google/android/exoplayer2/text/ttml/c$b;->effectiveFrameRate:F

    .line 6
    .line 7
    iput p2, p0, Lcom/google/android/exoplayer2/text/ttml/c$b;->subFrameRate:I

    .line 8
    .line 9
    iput p3, p0, Lcom/google/android/exoplayer2/text/ttml/c$b;->tickRate:I

    .line 10
    return-void
.end method
