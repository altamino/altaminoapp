.class public final Lcom/google/android/exoplayer2/extractor/mp4/o;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final TRANSFORMATION_CEA608_CDAT:I = 0x1

.field public static final TRANSFORMATION_NONE:I


# instance fields
.field public final durationUs:J

.field public final editListDurations:[J
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final editListMediaTimes:[J
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final format:Lcom/google/android/exoplayer2/a2;

.field public final id:I

.field public final movieTimescale:J

.field public final nalUnitLengthFieldLength:I

.field private final sampleDescriptionEncryptionBoxes:[Lcom/google/android/exoplayer2/extractor/mp4/p;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final sampleTransformation:I

.field public final timescale:J

.field public final type:I


# direct methods
.method public constructor <init>(IIJJJLcom/google/android/exoplayer2/a2;I[Lcom/google/android/exoplayer2/extractor/mp4/p;I[J[J)V
    .locals 0
    .param p11    # [Lcom/google/android/exoplayer2/extractor/mp4/p;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p13    # [J
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p14    # [J
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/o;->id:I

    .line 6
    .line 7
    iput p2, p0, Lcom/google/android/exoplayer2/extractor/mp4/o;->type:I

    .line 8
    .line 9
    iput-wide p3, p0, Lcom/google/android/exoplayer2/extractor/mp4/o;->timescale:J

    .line 10
    .line 11
    iput-wide p5, p0, Lcom/google/android/exoplayer2/extractor/mp4/o;->movieTimescale:J

    .line 12
    .line 13
    iput-wide p7, p0, Lcom/google/android/exoplayer2/extractor/mp4/o;->durationUs:J

    .line 14
    .line 15
    iput-object p9, p0, Lcom/google/android/exoplayer2/extractor/mp4/o;->format:Lcom/google/android/exoplayer2/a2;

    .line 16
    .line 17
    iput p10, p0, Lcom/google/android/exoplayer2/extractor/mp4/o;->sampleTransformation:I

    .line 18
    .line 19
    iput-object p11, p0, Lcom/google/android/exoplayer2/extractor/mp4/o;->sampleDescriptionEncryptionBoxes:[Lcom/google/android/exoplayer2/extractor/mp4/p;

    .line 20
    .line 21
    iput p12, p0, Lcom/google/android/exoplayer2/extractor/mp4/o;->nalUnitLengthFieldLength:I

    .line 22
    .line 23
    iput-object p13, p0, Lcom/google/android/exoplayer2/extractor/mp4/o;->editListDurations:[J

    .line 24
    .line 25
    iput-object p14, p0, Lcom/google/android/exoplayer2/extractor/mp4/o;->editListMediaTimes:[J

    .line 26
    return-void
.end method


# virtual methods
.method public a(I)Lcom/google/android/exoplayer2/extractor/mp4/p;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/o;->sampleDescriptionEncryptionBoxes:[Lcom/google/android/exoplayer2/extractor/mp4/p;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 p1, 0x0

    .line 6
    goto :goto_0

    .line 7
    .line 8
    :cond_0
    aget-object p1, v0, p1

    .line 9
    :goto_0
    return-object p1
.end method
