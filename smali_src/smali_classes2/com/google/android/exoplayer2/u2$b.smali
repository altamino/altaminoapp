.class final Lcom/google/android/exoplayer2/u2$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/u2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field public final caller:Lcom/google/android/exoplayer2/source/b0$c;

.field public final eventListener:Lcom/google/android/exoplayer2/u2$a;

.field public final mediaSource:Lcom/google/android/exoplayer2/source/b0;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/b0;Lcom/google/android/exoplayer2/source/b0$c;Lcom/google/android/exoplayer2/u2$a;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/android/exoplayer2/u2$b;->mediaSource:Lcom/google/android/exoplayer2/source/b0;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/google/android/exoplayer2/u2$b;->caller:Lcom/google/android/exoplayer2/source/b0$c;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/google/android/exoplayer2/u2$b;->eventListener:Lcom/google/android/exoplayer2/u2$a;

    .line 10
    return-void
.end method
