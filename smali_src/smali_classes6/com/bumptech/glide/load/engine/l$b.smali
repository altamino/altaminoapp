.class Lcom/bumptech/glide/load/engine/l$b;
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
    name = "b"
.end annotation


# instance fields
.field private final cb:Ly0/g;

.field final synthetic this$0:Lcom/bumptech/glide/load/engine/l;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/engine/l;Ly0/g;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/l$b;->this$0:Lcom/bumptech/glide/load/engine/l;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/l$b;->cb:Ly0/g;

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/l$b;->cb:Ly0/g;

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
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/l$b;->this$0:Lcom/bumptech/glide/load/engine/l;

    .line 10
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 11
    .line 12
    :try_start_1
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/l$b;->this$0:Lcom/bumptech/glide/load/engine/l;

    .line 13
    .line 14
    iget-object v2, v2, Lcom/bumptech/glide/load/engine/l;->cbs:Lcom/bumptech/glide/load/engine/l$e;

    .line 15
    .line 16
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/l$b;->cb:Ly0/g;

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
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/l$b;->this$0:Lcom/bumptech/glide/load/engine/l;

    .line 25
    .line 26
    iget-object v2, v2, Lcom/bumptech/glide/load/engine/l;->engineResource:Lcom/bumptech/glide/load/engine/p;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/p;->c()V

    .line 30
    .line 31
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/l$b;->this$0:Lcom/bumptech/glide/load/engine/l;

    .line 32
    .line 33
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/l$b;->cb:Ly0/g;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v3}, Lcom/bumptech/glide/load/engine/l;->g(Ly0/g;)V

    .line 37
    .line 38
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/l$b;->this$0:Lcom/bumptech/glide/load/engine/l;

    .line 39
    .line 40
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/l$b;->cb:Ly0/g;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, v3}, Lcom/bumptech/glide/load/engine/l;->r(Ly0/g;)V

    .line 44
    goto :goto_0

    .line 45
    :catchall_0
    move-exception v2

    .line 46
    goto :goto_1

    .line 47
    .line 48
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/l$b;->this$0:Lcom/bumptech/glide/load/engine/l;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/l;->i()V

    .line 52
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 54
    return-void

    .line 55
    :catchall_1
    move-exception v1

    .line 56
    goto :goto_2

    .line 57
    :goto_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 58
    :try_start_4
    throw v2

    .line 59
    :goto_2
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 60
    throw v1
.end method
