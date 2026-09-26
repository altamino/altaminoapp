.class Lcom/bumptech/glide/load/engine/executor/a$b$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bumptech/glide/load/engine/executor/a$b;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bumptech/glide/load/engine/executor/a$b;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/engine/executor/a$b;Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/executor/a$b$a;->this$0:Lcom/bumptech/glide/load/engine/executor/a$b;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    .line 2
    const/16 v0, 0x9

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/executor/a$b$a;->this$0:Lcom/bumptech/glide/load/engine/executor/a$b;

    .line 8
    .line 9
    iget-boolean v0, v0, Lcom/bumptech/glide/load/engine/executor/a$b;->preventNetworkOperations:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    new-instance v0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 14
    .line 15
    .line 16
    invoke-direct {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectNetwork()Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyDeath()Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    .line 31
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    :try_start_0
    invoke-super {p0}, Ljava/lang/Thread;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception v0

    .line 37
    .line 38
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/executor/a$b$a;->this$0:Lcom/bumptech/glide/load/engine/executor/a$b;

    .line 39
    .line 40
    iget-object v1, v1, Lcom/bumptech/glide/load/engine/executor/a$b;->uncaughtThrowableStrategy:Lcom/bumptech/glide/load/engine/executor/a$c;

    .line 41
    .line 42
    .line 43
    invoke-interface {v1, v0}, Lcom/bumptech/glide/load/engine/executor/a$c;->a(Ljava/lang/Throwable;)V

    .line 44
    :goto_0
    return-void
.end method
