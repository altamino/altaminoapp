.class Lcom/bumptech/glide/load/engine/l$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field private final cb:Ly0/g;

.field final synthetic this$0:Lcom/bumptech/glide/load/engine/l;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/engine/l;Ly0/g;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/l$a;->this$0:Lcom/bumptech/glide/load/engine/l;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/l$a;->cb:Ly0/g;

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/l$a;->cb:Ly0/g;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ly0/g;->g()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    monitor-enter v0

    .line 8
    .line 9
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/l$a;->this$0:Lcom/bumptech/glide/load/engine/l;

    .line 10
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 11
    .line 12
    :try_start_1
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/l$a;->this$0:Lcom/bumptech/glide/load/engine/l;

    .line 13
    .line 14
    iget-object v2, v2, Lcom/bumptech/glide/load/engine/l;->cbs:Lcom/bumptech/glide/load/engine/l$e;

    .line 15
    .line 16
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/l$a;->cb:Ly0/g;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2, v3}, Lcom/bumptech/glide/load/engine/l$e;->b(Ly0/g;)Z

    .line 20
    move-result v2

    .line 21
    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/l$a;->this$0:Lcom/bumptech/glide/load/engine/l;

    .line 25
    .line 26
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/l$a;->cb:Ly0/g;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v3}, Lcom/bumptech/glide/load/engine/l;->f(Ly0/g;)V

    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception v2

    .line 32
    goto :goto_1

    .line 33
    .line 34
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/l$a;->this$0:Lcom/bumptech/glide/load/engine/l;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/l;->i()V

    .line 38
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 40
    return-void

    .line 41
    :catchall_1
    move-exception v1

    .line 42
    goto :goto_2

    .line 43
    :goto_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 44
    :try_start_4
    throw v2

    .line 45
    :goto_2
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 46
    throw v1
.end method
