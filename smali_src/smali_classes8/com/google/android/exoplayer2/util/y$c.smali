.class public final Lcom/google/android/exoplayer2/util/y$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/util/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final constraintsFlagsAndReservedZero2Bits:I

.field public final deltaPicOrderAlwaysZeroFlag:Z

.field public final frameMbsOnlyFlag:Z

.field public final frameNumLength:I

.field public final height:I

.field public final levelIdc:I

.field public final maxNumRefFrames:I

.field public final picOrderCntLsbLength:I

.field public final picOrderCountType:I

.field public final pixelWidthHeightRatio:F

.field public final profileIdc:I

.field public final separateColorPlaneFlag:Z

.field public final seqParameterSetId:I

.field public final width:I


# direct methods
.method public constructor <init>(IIIIIIIFZZIIIZ)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput p1, p0, Lcom/google/android/exoplayer2/util/y$c;->profileIdc:I

    .line 6
    .line 7
    iput p2, p0, Lcom/google/android/exoplayer2/util/y$c;->constraintsFlagsAndReservedZero2Bits:I

    .line 8
    .line 9
    iput p3, p0, Lcom/google/android/exoplayer2/util/y$c;->levelIdc:I

    .line 10
    .line 11
    iput p4, p0, Lcom/google/android/exoplayer2/util/y$c;->seqParameterSetId:I

    .line 12
    .line 13
    iput p5, p0, Lcom/google/android/exoplayer2/util/y$c;->maxNumRefFrames:I

    .line 14
    .line 15
    iput p6, p0, Lcom/google/android/exoplayer2/util/y$c;->width:I

    .line 16
    .line 17
    iput p7, p0, Lcom/google/android/exoplayer2/util/y$c;->height:I

    .line 18
    .line 19
    iput p8, p0, Lcom/google/android/exoplayer2/util/y$c;->pixelWidthHeightRatio:F

    .line 20
    .line 21
    iput-boolean p9, p0, Lcom/google/android/exoplayer2/util/y$c;->separateColorPlaneFlag:Z

    .line 22
    .line 23
    iput-boolean p10, p0, Lcom/google/android/exoplayer2/util/y$c;->frameMbsOnlyFlag:Z

    .line 24
    .line 25
    iput p11, p0, Lcom/google/android/exoplayer2/util/y$c;->frameNumLength:I

    .line 26
    .line 27
    iput p12, p0, Lcom/google/android/exoplayer2/util/y$c;->picOrderCountType:I

    .line 28
    .line 29
    iput p13, p0, Lcom/google/android/exoplayer2/util/y$c;->picOrderCntLsbLength:I

    .line 30
    .line 31
    iput-boolean p14, p0, Lcom/google/android/exoplayer2/util/y$c;->deltaPicOrderAlwaysZeroFlag:Z

    .line 32
    return-void
.end method
