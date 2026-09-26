.class final Lcom/google/android/exoplayer2/extractor/ogg/j$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/ogg/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field public final commentHeader:Lcom/google/android/exoplayer2/extractor/h0$b;

.field public final iLogModes:I

.field public final idHeader:Lcom/google/android/exoplayer2/extractor/h0$d;

.field public final modes:[Lcom/google/android/exoplayer2/extractor/h0$c;

.field public final setupHeaderData:[B


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/h0$d;Lcom/google/android/exoplayer2/extractor/h0$b;[B[Lcom/google/android/exoplayer2/extractor/h0$c;I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/j$a;->idHeader:Lcom/google/android/exoplayer2/extractor/h0$d;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/ogg/j$a;->commentHeader:Lcom/google/android/exoplayer2/extractor/h0$b;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/google/android/exoplayer2/extractor/ogg/j$a;->setupHeaderData:[B

    .line 10
    .line 11
    iput-object p4, p0, Lcom/google/android/exoplayer2/extractor/ogg/j$a;->modes:[Lcom/google/android/exoplayer2/extractor/h0$c;

    .line 12
    .line 13
    iput p5, p0, Lcom/google/android/exoplayer2/extractor/ogg/j$a;->iLogModes:I

    .line 14
    return-void
.end method
