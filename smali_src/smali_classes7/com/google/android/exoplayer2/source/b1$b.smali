.class public final Lcom/google/android/exoplayer2/source/b1$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/b1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final dataSourceFactory:Lcom/google/android/exoplayer2/upstream/k$a;

.field private loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/f0;

.field private tag:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private trackId:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private treatLoadErrorsAsEndOfStream:Z


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/k$a;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    check-cast p1, Lcom/google/android/exoplayer2/upstream/k$a;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/b1$b;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/k$a;

    .line 12
    .line 13
    new-instance p1, Lcom/google/android/exoplayer2/upstream/w;

    .line 14
    .line 15
    .line 16
    invoke-direct {p1}, Lcom/google/android/exoplayer2/upstream/w;-><init>()V

    .line 17
    .line 18
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/b1$b;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/f0;

    .line 19
    const/4 p1, 0x1

    .line 20
    .line 21
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/b1$b;->treatLoadErrorsAsEndOfStream:Z

    .line 22
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/i2$l;J)Lcom/google/android/exoplayer2/source/b1;
    .locals 11

    .line 1
    .line 2
    new-instance v10, Lcom/google/android/exoplayer2/source/b1;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/b1$b;->trackId:Ljava/lang/String;

    .line 5
    .line 6
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/b1$b;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/k$a;

    .line 7
    .line 8
    iget-object v6, p0, Lcom/google/android/exoplayer2/source/b1$b;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/f0;

    .line 9
    .line 10
    iget-boolean v7, p0, Lcom/google/android/exoplayer2/source/b1$b;->treatLoadErrorsAsEndOfStream:Z

    .line 11
    .line 12
    iget-object v8, p0, Lcom/google/android/exoplayer2/source/b1$b;->tag:Ljava/lang/Object;

    .line 13
    const/4 v9, 0x0

    .line 14
    move-object v0, v10

    .line 15
    move-object v2, p1

    .line 16
    move-wide v4, p2

    .line 17
    .line 18
    .line 19
    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer2/source/b1;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/i2$l;Lcom/google/android/exoplayer2/upstream/k$a;JLcom/google/android/exoplayer2/upstream/f0;ZLjava/lang/Object;Lcom/google/android/exoplayer2/source/b1$a;)V

    .line 20
    return-object v10
.end method

.method public b(Lcom/google/android/exoplayer2/upstream/f0;)Lcom/google/android/exoplayer2/source/b1$b;
    .locals 0
    .param p1    # Lcom/google/android/exoplayer2/upstream/f0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    goto :goto_0

    .line 4
    .line 5
    :cond_0
    new-instance p1, Lcom/google/android/exoplayer2/upstream/w;

    .line 6
    .line 7
    .line 8
    invoke-direct {p1}, Lcom/google/android/exoplayer2/upstream/w;-><init>()V

    .line 9
    .line 10
    :goto_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/b1$b;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/f0;

    .line 11
    return-object p0
.end method
