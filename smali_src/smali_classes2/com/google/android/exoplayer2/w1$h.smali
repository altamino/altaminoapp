.class final Lcom/google/android/exoplayer2/w1$h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/w1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "h"
.end annotation


# instance fields
.field public final timeline:Lcom/google/android/exoplayer2/z3;

.field public final windowIndex:I

.field public final windowPositionUs:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/z3;IJ)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/android/exoplayer2/w1$h;->timeline:Lcom/google/android/exoplayer2/z3;

    .line 6
    .line 7
    iput p2, p0, Lcom/google/android/exoplayer2/w1$h;->windowIndex:I

    .line 8
    .line 9
    iput-wide p3, p0, Lcom/google/android/exoplayer2/w1$h;->windowPositionUs:J

    .line 10
    return-void
.end method
