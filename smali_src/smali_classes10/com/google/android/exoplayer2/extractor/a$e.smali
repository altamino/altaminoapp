.class public final Lcom/google/android/exoplayer2/extractor/a$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# static fields
.field public static final NO_TIMESTAMP_IN_RANGE_RESULT:Lcom/google/android/exoplayer2/extractor/a$e;

.field public static final TYPE_NO_TIMESTAMP:I = -0x3

.field public static final TYPE_POSITION_OVERESTIMATED:I = -0x1

.field public static final TYPE_POSITION_UNDERESTIMATED:I = -0x2

.field public static final TYPE_TARGET_TIMESTAMP_FOUND:I


# instance fields
.field private final bytePositionToUpdate:J

.field private final timestampToUpdate:J

.field private final type:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    .line 2
    new-instance v6, Lcom/google/android/exoplayer2/extractor/a$e;

    .line 3
    const/4 v1, -0x3

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 9
    .line 10
    const-wide/16 v4, -0x1

    .line 11
    move-object v0, v6

    .line 12
    .line 13
    .line 14
    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/extractor/a$e;-><init>(IJJ)V

    .line 15
    .line 16
    sput-object v6, Lcom/google/android/exoplayer2/extractor/a$e;->NO_TIMESTAMP_IN_RANGE_RESULT:Lcom/google/android/exoplayer2/extractor/a$e;

    .line 17
    return-void
.end method

.method private constructor <init>(IJJ)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/a$e;->type:I

    .line 6
    .line 7
    iput-wide p2, p0, Lcom/google/android/exoplayer2/extractor/a$e;->timestampToUpdate:J

    .line 8
    .line 9
    iput-wide p4, p0, Lcom/google/android/exoplayer2/extractor/a$e;->bytePositionToUpdate:J

    .line 10
    return-void
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/extractor/a$e;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lcom/google/android/exoplayer2/extractor/a$e;->type:I

    .line 3
    return p0
.end method

.method static synthetic b(Lcom/google/android/exoplayer2/extractor/a$e;)J
    .locals 2

    .line 1
    .line 2
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/a$e;->timestampToUpdate:J

    .line 3
    return-wide v0
.end method

.method static synthetic c(Lcom/google/android/exoplayer2/extractor/a$e;)J
    .locals 2

    .line 1
    .line 2
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/a$e;->bytePositionToUpdate:J

    .line 3
    return-wide v0
.end method

.method public static d(JJ)Lcom/google/android/exoplayer2/extractor/a$e;
    .locals 7

    .line 1
    .line 2
    new-instance v6, Lcom/google/android/exoplayer2/extractor/a$e;

    .line 3
    const/4 v1, -0x1

    .line 4
    move-object v0, v6

    .line 5
    move-wide v2, p0

    .line 6
    move-wide v4, p2

    .line 7
    .line 8
    .line 9
    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/extractor/a$e;-><init>(IJJ)V

    .line 10
    return-object v6
.end method

.method public static e(J)Lcom/google/android/exoplayer2/extractor/a$e;
    .locals 7

    .line 1
    .line 2
    new-instance v6, Lcom/google/android/exoplayer2/extractor/a$e;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 9
    move-object v0, v6

    .line 10
    move-wide v4, p0

    .line 11
    .line 12
    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/extractor/a$e;-><init>(IJJ)V

    .line 14
    return-object v6
.end method

.method public static f(JJ)Lcom/google/android/exoplayer2/extractor/a$e;
    .locals 7

    .line 1
    .line 2
    new-instance v6, Lcom/google/android/exoplayer2/extractor/a$e;

    .line 3
    const/4 v1, -0x2

    .line 4
    move-object v0, v6

    .line 5
    move-wide v2, p0

    .line 6
    move-wide v4, p2

    .line 7
    .line 8
    .line 9
    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/extractor/a$e;-><init>(IJJ)V

    .line 10
    return-object v6
.end method
