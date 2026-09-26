.class Lcom/google/android/exoplayer2/drm/h$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/drm/x$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/drm/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "f"
.end annotation


# instance fields
.field private final eventDispatcher:Lcom/google/android/exoplayer2/drm/v$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private isReleased:Z

.field private session:Lcom/google/android/exoplayer2/drm/n;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/android/exoplayer2/drm/h;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/drm/h;Lcom/google/android/exoplayer2/drm/v$a;)V
    .locals 0
    .param p1    # Lcom/google/android/exoplayer2/drm/h;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/h$f;->this$0:Lcom/google/android/exoplayer2/drm/h;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    iput-object p2, p0, Lcom/google/android/exoplayer2/drm/h$f;->eventDispatcher:Lcom/google/android/exoplayer2/drm/v$a;

    .line 8
    return-void
.end method

.method public static synthetic a(Lcom/google/android/exoplayer2/drm/h$f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/drm/h$f;->e()V

    return-void
.end method

.method public static synthetic b(Lcom/google/android/exoplayer2/drm/h$f;Lcom/google/android/exoplayer2/a2;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/drm/h$f;->d(Lcom/google/android/exoplayer2/a2;)V

    return-void
.end method

.method private synthetic d(Lcom/google/android/exoplayer2/a2;)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/h$f;->this$0:Lcom/google/android/exoplayer2/drm/h;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/exoplayer2/drm/h;->p(Lcom/google/android/exoplayer2/drm/h;)I

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/drm/h$f;->isReleased:Z

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    goto :goto_0

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/h$f;->this$0:Lcom/google/android/exoplayer2/drm/h;

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Lcom/google/android/exoplayer2/drm/h;->j(Lcom/google/android/exoplayer2/drm/h;)Landroid/os/Looper;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    .line 22
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    check-cast v1, Landroid/os/Looper;

    .line 26
    .line 27
    iget-object v2, p0, Lcom/google/android/exoplayer2/drm/h$f;->eventDispatcher:Lcom/google/android/exoplayer2/drm/v$a;

    .line 28
    const/4 v3, 0x0

    .line 29
    .line 30
    .line 31
    invoke-static {v0, v1, v2, p1, v3}, Lcom/google/android/exoplayer2/drm/h;->k(Lcom/google/android/exoplayer2/drm/h;Landroid/os/Looper;Lcom/google/android/exoplayer2/drm/v$a;Lcom/google/android/exoplayer2/a2;Z)Lcom/google/android/exoplayer2/drm/n;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/h$f;->session:Lcom/google/android/exoplayer2/drm/n;

    .line 35
    .line 36
    iget-object p1, p0, Lcom/google/android/exoplayer2/drm/h$f;->this$0:Lcom/google/android/exoplayer2/drm/h;

    .line 37
    .line 38
    .line 39
    invoke-static {p1}, Lcom/google/android/exoplayer2/drm/h;->i(Lcom/google/android/exoplayer2/drm/h;)Ljava/util/Set;

    .line 40
    move-result-object p1

    .line 41
    .line 42
    .line 43
    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 44
    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic e()V
    .locals 2

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/drm/h$f;->isReleased:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/h$f;->session:Lcom/google/android/exoplayer2/drm/n;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/h$f;->eventDispatcher:Lcom/google/android/exoplayer2/drm/v$a;

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/drm/n;->e(Lcom/google/android/exoplayer2/drm/v$a;)V

    .line 15
    .line 16
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/h$f;->this$0:Lcom/google/android/exoplayer2/drm/h;

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Lcom/google/android/exoplayer2/drm/h;->i(Lcom/google/android/exoplayer2/drm/h;)Ljava/util/Set;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    .line 23
    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 24
    const/4 v0, 0x1

    .line 25
    .line 26
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/drm/h$f;->isReleased:Z

    .line 27
    return-void
.end method


# virtual methods
.method public c(Lcom/google/android/exoplayer2/a2;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/h$f;->this$0:Lcom/google/android/exoplayer2/drm/h;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/exoplayer2/drm/h;->o(Lcom/google/android/exoplayer2/drm/h;)Landroid/os/Handler;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Landroid/os/Handler;

    .line 13
    .line 14
    new-instance v1, Lcom/google/android/exoplayer2/drm/j;

    .line 15
    .line 16
    .line 17
    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/drm/j;-><init>(Lcom/google/android/exoplayer2/drm/h$f;Lcom/google/android/exoplayer2/a2;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 21
    return-void
.end method

.method public release()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/h$f;->this$0:Lcom/google/android/exoplayer2/drm/h;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/exoplayer2/drm/h;->o(Lcom/google/android/exoplayer2/drm/h;)Landroid/os/Handler;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Landroid/os/Handler;

    .line 13
    .line 14
    new-instance v1, Lcom/google/android/exoplayer2/drm/i;

    .line 15
    .line 16
    .line 17
    invoke-direct {v1, p0}, Lcom/google/android/exoplayer2/drm/i;-><init>(Lcom/google/android/exoplayer2/drm/h$f;)V

    .line 18
    .line 19
    .line 20
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/o0;->C0(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    .line 21
    return-void
.end method
