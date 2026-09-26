.class final Lcom/google/android/exoplayer2/analytics/r1$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/analytics/r1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field public final format:Lcom/google/android/exoplayer2/a2;

.field public final selectionReason:I

.field public final sessionId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/a2;ILjava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/android/exoplayer2/analytics/r1$b;->format:Lcom/google/android/exoplayer2/a2;

    .line 6
    .line 7
    iput p2, p0, Lcom/google/android/exoplayer2/analytics/r1$b;->selectionReason:I

    .line 8
    .line 9
    iput-object p3, p0, Lcom/google/android/exoplayer2/analytics/r1$b;->sessionId:Ljava/lang/String;

    .line 10
    return-void
.end method
