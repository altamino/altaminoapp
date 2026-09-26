.class final Lcom/google/android/exoplayer2/text/webvtt/f$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/text/webvtt/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/google/android/exoplayer2/text/webvtt/f$d;",
        ">;"
    }
.end annotation


# instance fields
.field public final score:I

.field public final style:Lcom/google/android/exoplayer2/text/webvtt/d;


# direct methods
.method public constructor <init>(ILcom/google/android/exoplayer2/text/webvtt/d;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput p1, p0, Lcom/google/android/exoplayer2/text/webvtt/f$d;->score:I

    .line 6
    .line 7
    iput-object p2, p0, Lcom/google/android/exoplayer2/text/webvtt/f$d;->style:Lcom/google/android/exoplayer2/text/webvtt/d;

    .line 8
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/text/webvtt/f$d;)I
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Lcom/google/android/exoplayer2/text/webvtt/f$d;->score:I

    .line 3
    .line 4
    iget p1, p1, Lcom/google/android/exoplayer2/text/webvtt/f$d;->score:I

    .line 5
    .line 6
    .line 7
    invoke-static {v0, p1}, Ljava/lang/Integer;->compare(II)I

    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    .line 2
    check-cast p1, Lcom/google/android/exoplayer2/text/webvtt/f$d;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/text/webvtt/f$d;->a(Lcom/google/android/exoplayer2/text/webvtt/f$d;)I

    .line 6
    move-result p1

    .line 7
    return p1
.end method
