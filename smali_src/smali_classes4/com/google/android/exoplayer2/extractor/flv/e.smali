.class abstract Lcom/google/android/exoplayer2/extractor/flv/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/flv/e$a;
    }
.end annotation


# instance fields
.field protected final output:Lcom/google/android/exoplayer2/extractor/e0;


# direct methods
.method protected constructor <init>(Lcom/google/android/exoplayer2/extractor/e0;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/flv/e;->output:Lcom/google/android/exoplayer2/extractor/e0;

    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/exoplayer2/util/c0;J)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/v2;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/extractor/flv/e;->b(Lcom/google/android/exoplayer2/util/c0;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/flv/e;->c(Lcom/google/android/exoplayer2/util/c0;J)Z

    .line 10
    move-result p1

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    const/4 p1, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    :goto_0
    return p1
.end method

.method protected abstract b(Lcom/google/android/exoplayer2/util/c0;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/v2;
        }
    .end annotation
.end method

.method protected abstract c(Lcom/google/android/exoplayer2/util/c0;J)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/v2;
        }
    .end annotation
.end method
