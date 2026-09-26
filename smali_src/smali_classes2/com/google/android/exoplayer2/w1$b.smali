.class final Lcom/google/android/exoplayer2/w1$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/w1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final mediaSourceHolders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/u2$c;",
            ">;"
        }
    .end annotation
.end field

.field private final positionUs:J

.field private final shuffleOrder:Lcom/google/android/exoplayer2/source/y0;

.field private final windowIndex:I


# direct methods
.method private constructor <init>(Ljava/util/List;Lcom/google/android/exoplayer2/source/y0;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/u2$c;",
            ">;",
            "Lcom/google/android/exoplayer2/source/y0;",
            "IJ)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/w1$b;->mediaSourceHolders:Ljava/util/List;

    iput-object p2, p0, Lcom/google/android/exoplayer2/w1$b;->shuffleOrder:Lcom/google/android/exoplayer2/source/y0;

    iput p3, p0, Lcom/google/android/exoplayer2/w1$b;->windowIndex:I

    iput-wide p4, p0, Lcom/google/android/exoplayer2/w1$b;->positionUs:J

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Lcom/google/android/exoplayer2/source/y0;IJLcom/google/android/exoplayer2/w1$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/google/android/exoplayer2/w1$b;-><init>(Ljava/util/List;Lcom/google/android/exoplayer2/source/y0;IJ)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/w1$b;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lcom/google/android/exoplayer2/w1$b;->windowIndex:I

    .line 3
    return p0
.end method

.method static synthetic b(Lcom/google/android/exoplayer2/w1$b;)Ljava/util/List;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/w1$b;->mediaSourceHolders:Ljava/util/List;

    .line 3
    return-object p0
.end method

.method static synthetic c(Lcom/google/android/exoplayer2/w1$b;)Lcom/google/android/exoplayer2/source/y0;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/w1$b;->shuffleOrder:Lcom/google/android/exoplayer2/source/y0;

    .line 3
    return-object p0
.end method

.method static synthetic d(Lcom/google/android/exoplayer2/w1$b;)J
    .locals 2

    .line 1
    .line 2
    iget-wide v0, p0, Lcom/google/android/exoplayer2/w1$b;->positionUs:J

    .line 3
    return-wide v0
.end method
