.class Lcom/google/android/exoplayer2/w1$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/w1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field public final fromIndex:I

.field public final newFromIndex:I

.field public final shuffleOrder:Lcom/google/android/exoplayer2/source/y0;

.field public final toIndex:I


# direct methods
.method public constructor <init>(IIILcom/google/android/exoplayer2/source/y0;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput p1, p0, Lcom/google/android/exoplayer2/w1$c;->fromIndex:I

    .line 6
    .line 7
    iput p2, p0, Lcom/google/android/exoplayer2/w1$c;->toIndex:I

    .line 8
    .line 9
    iput p3, p0, Lcom/google/android/exoplayer2/w1$c;->newFromIndex:I

    .line 10
    .line 11
    iput-object p4, p0, Lcom/google/android/exoplayer2/w1$c;->shuffleOrder:Lcom/google/android/exoplayer2/source/y0;

    .line 12
    return-void
.end method
