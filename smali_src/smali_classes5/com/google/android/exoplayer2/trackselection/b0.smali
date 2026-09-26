.class public abstract Lcom/google/android/exoplayer2/trackselection/b0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/trackselection/b0$a;
    }
.end annotation


# instance fields
.field private bandwidthMeter:Lcom/google/android/exoplayer2/upstream/e;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private listener:Lcom/google/android/exoplayer2/trackselection/b0$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method protected final a()Lcom/google/android/exoplayer2/upstream/e;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/b0;->bandwidthMeter:Lcom/google/android/exoplayer2/upstream/e;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/google/android/exoplayer2/upstream/e;

    .line 9
    return-object v0
.end method

.method public b()Lcom/google/android/exoplayer2/trackselection/z;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/google/android/exoplayer2/trackselection/z;->DEFAULT_WITHOUT_CONTEXT:Lcom/google/android/exoplayer2/trackselection/z;

    .line 3
    return-object v0
.end method

.method public c(Lcom/google/android/exoplayer2/trackselection/b0$a;Lcom/google/android/exoplayer2/upstream/e;)V
    .locals 0
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/trackselection/b0;->listener:Lcom/google/android/exoplayer2/trackselection/b0$a;

    iput-object p2, p0, Lcom/google/android/exoplayer2/trackselection/b0;->bandwidthMeter:Lcom/google/android/exoplayer2/upstream/e;

    return-void
.end method

.method protected final d()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/b0;->listener:Lcom/google/android/exoplayer2/trackselection/b0$a;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Lcom/google/android/exoplayer2/trackselection/b0$a;->onTrackSelectionsInvalidated()V

    .line 8
    :cond_0
    return-void
.end method

.method public e()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public abstract f(Ljava/lang/Object;)V
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public g()V
    .locals 1
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/b0;->listener:Lcom/google/android/exoplayer2/trackselection/b0$a;

    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/b0;->bandwidthMeter:Lcom/google/android/exoplayer2/upstream/e;

    return-void
.end method

.method public abstract h([Lcom/google/android/exoplayer2/o3;Lcom/google/android/exoplayer2/source/h1;Lcom/google/android/exoplayer2/source/b0$b;Lcom/google/android/exoplayer2/z3;)Lcom/google/android/exoplayer2/trackselection/c0;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/q;
        }
    .end annotation
.end method

.method public i(Lcom/google/android/exoplayer2/audio/e;)V
    .locals 0

    .line 1
    return-void
.end method

.method public j(Lcom/google/android/exoplayer2/trackselection/z;)V
    .locals 0

    .line 1
    return-void
.end method
