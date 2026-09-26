.class public final Lcom/google/android/exoplayer2/extractor/mp4/d$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/mp4/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final duration:J

.field public final flags:[I

.field public final maximumSize:I

.field public final offsets:[J

.field public final sizes:[I

.field public final timestamps:[J


# direct methods
.method private constructor <init>([J[II[J[IJ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/d$b;->offsets:[J

    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/mp4/d$b;->sizes:[I

    iput p3, p0, Lcom/google/android/exoplayer2/extractor/mp4/d$b;->maximumSize:I

    iput-object p4, p0, Lcom/google/android/exoplayer2/extractor/mp4/d$b;->timestamps:[J

    iput-object p5, p0, Lcom/google/android/exoplayer2/extractor/mp4/d$b;->flags:[I

    iput-wide p6, p0, Lcom/google/android/exoplayer2/extractor/mp4/d$b;->duration:J

    return-void
.end method

.method synthetic constructor <init>([J[II[J[IJLcom/google/android/exoplayer2/extractor/mp4/d$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p7}, Lcom/google/android/exoplayer2/extractor/mp4/d$b;-><init>([J[II[J[IJ)V

    return-void
.end method
