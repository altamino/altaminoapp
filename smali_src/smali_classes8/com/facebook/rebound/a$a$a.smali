.class Lcom/facebook/rebound/a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/rebound/a$a;-><init>(Landroid/view/Choreographer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/rebound/a$a;


# direct methods
.method constructor <init>(Lcom/facebook/rebound/a$a;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/facebook/rebound/a$a$a;->this$0:Lcom/facebook/rebound/a$a;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 4

    .line 1
    .line 2
    iget-object p1, p0, Lcom/facebook/rebound/a$a$a;->this$0:Lcom/facebook/rebound/a$a;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/facebook/rebound/a$a;->d(Lcom/facebook/rebound/a$a;)Z

    .line 6
    move-result p1

    .line 7
    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    iget-object p1, p0, Lcom/facebook/rebound/a$a$a;->this$0:Lcom/facebook/rebound/a$a;

    .line 11
    .line 12
    iget-object p1, p1, Lcom/facebook/rebound/h;->mSpringSystem:Lcom/facebook/rebound/b;

    .line 13
    .line 14
    if-nez p1, :cond_0

    .line 15
    goto :goto_0

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 19
    move-result-wide p1

    .line 20
    .line 21
    iget-object v0, p0, Lcom/facebook/rebound/a$a$a;->this$0:Lcom/facebook/rebound/a$a;

    .line 22
    .line 23
    iget-object v1, v0, Lcom/facebook/rebound/h;->mSpringSystem:Lcom/facebook/rebound/b;

    .line 24
    .line 25
    .line 26
    invoke-static {v0}, Lcom/facebook/rebound/a$a;->e(Lcom/facebook/rebound/a$a;)J

    .line 27
    move-result-wide v2

    .line 28
    .line 29
    sub-long v2, p1, v2

    .line 30
    long-to-double v2, v2

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v2, v3}, Lcom/facebook/rebound/b;->e(D)V

    .line 34
    .line 35
    iget-object v0, p0, Lcom/facebook/rebound/a$a$a;->this$0:Lcom/facebook/rebound/a$a;

    .line 36
    .line 37
    .line 38
    invoke-static {v0, p1, p2}, Lcom/facebook/rebound/a$a;->f(Lcom/facebook/rebound/a$a;J)J

    .line 39
    .line 40
    iget-object p1, p0, Lcom/facebook/rebound/a$a$a;->this$0:Lcom/facebook/rebound/a$a;

    .line 41
    .line 42
    .line 43
    invoke-static {p1}, Lcom/facebook/rebound/a$a;->h(Lcom/facebook/rebound/a$a;)Landroid/view/Choreographer;

    .line 44
    move-result-object p1

    .line 45
    .line 46
    iget-object p2, p0, Lcom/facebook/rebound/a$a$a;->this$0:Lcom/facebook/rebound/a$a;

    .line 47
    .line 48
    .line 49
    invoke-static {p2}, Lcom/facebook/rebound/a$a;->g(Lcom/facebook/rebound/a$a;)Landroid/view/Choreographer$FrameCallback;

    .line 50
    move-result-object p2

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, p2}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 54
    :cond_1
    :goto_0
    return-void
.end method
