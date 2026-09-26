.class Lcom/facebook/rebound/a$a;
.super Lcom/facebook/rebound/h;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/rebound/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final mChoreographer:Landroid/view/Choreographer;

.field private final mFrameCallback:Landroid/view/Choreographer$FrameCallback;

.field private mLastTime:J

.field private mStarted:Z


# direct methods
.method public constructor <init>(Landroid/view/Choreographer;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/facebook/rebound/h;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/facebook/rebound/a$a;->mChoreographer:Landroid/view/Choreographer;

    .line 6
    .line 7
    new-instance p1, Lcom/facebook/rebound/a$a$a;

    .line 8
    .line 9
    .line 10
    invoke-direct {p1, p0}, Lcom/facebook/rebound/a$a$a;-><init>(Lcom/facebook/rebound/a$a;)V

    .line 11
    .line 12
    iput-object p1, p0, Lcom/facebook/rebound/a$a;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    .line 13
    return-void
.end method

.method static synthetic d(Lcom/facebook/rebound/a$a;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Lcom/facebook/rebound/a$a;->mStarted:Z

    .line 3
    return p0
.end method

.method static synthetic e(Lcom/facebook/rebound/a$a;)J
    .locals 2

    .line 1
    .line 2
    iget-wide v0, p0, Lcom/facebook/rebound/a$a;->mLastTime:J

    .line 3
    return-wide v0
.end method

.method static synthetic f(Lcom/facebook/rebound/a$a;J)J
    .locals 0

    .line 1
    .line 2
    iput-wide p1, p0, Lcom/facebook/rebound/a$a;->mLastTime:J

    .line 3
    return-wide p1
.end method

.method static synthetic g(Lcom/facebook/rebound/a$a;)Landroid/view/Choreographer$FrameCallback;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/facebook/rebound/a$a;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    .line 3
    return-object p0
.end method

.method static synthetic h(Lcom/facebook/rebound/a$a;)Landroid/view/Choreographer;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/facebook/rebound/a$a;->mChoreographer:Landroid/view/Choreographer;

    .line 3
    return-object p0
.end method

.method public static i()Lcom/facebook/rebound/a$a;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/facebook/rebound/a$a;

    .line 3
    .line 4
    .line 5
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/facebook/rebound/a$a;-><init>(Landroid/view/Choreographer;)V

    .line 10
    return-object v0
.end method


# virtual methods
.method public b()V
    .locals 2

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/facebook/rebound/a$a;->mStarted:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    .line 8
    iput-boolean v0, p0, Lcom/facebook/rebound/a$a;->mStarted:Z

    .line 9
    .line 10
    .line 11
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 12
    move-result-wide v0

    .line 13
    .line 14
    iput-wide v0, p0, Lcom/facebook/rebound/a$a;->mLastTime:J

    .line 15
    .line 16
    iget-object v0, p0, Lcom/facebook/rebound/a$a;->mChoreographer:Landroid/view/Choreographer;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/facebook/rebound/a$a;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 22
    .line 23
    iget-object v0, p0, Lcom/facebook/rebound/a$a;->mChoreographer:Landroid/view/Choreographer;

    .line 24
    .line 25
    iget-object v1, p0, Lcom/facebook/rebound/a$a;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 29
    return-void
.end method

.method public c()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/facebook/rebound/a$a;->mStarted:Z

    .line 4
    .line 5
    iget-object v0, p0, Lcom/facebook/rebound/a$a;->mChoreographer:Landroid/view/Choreographer;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/facebook/rebound/a$a;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 11
    return-void
.end method
