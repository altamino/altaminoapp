.class final Lcom/google/android/exoplayer2/source/g$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final caller:Lcom/google/android/exoplayer2/source/b0$c;

.field public final eventListener:Lcom/google/android/exoplayer2/source/g$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/source/g<",
            "TT;>.a;"
        }
    .end annotation
.end field

.field public final mediaSource:Lcom/google/android/exoplayer2/source/b0;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/b0;Lcom/google/android/exoplayer2/source/b0$c;Lcom/google/android/exoplayer2/source/g$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/b0;",
            "Lcom/google/android/exoplayer2/source/b0$c;",
            "Lcom/google/android/exoplayer2/source/g<",
            "TT;>.a;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/g$b;->mediaSource:Lcom/google/android/exoplayer2/source/b0;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/g$b;->caller:Lcom/google/android/exoplayer2/source/b0$c;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/g$b;->eventListener:Lcom/google/android/exoplayer2/source/g$a;

    .line 10
    return-void
.end method
