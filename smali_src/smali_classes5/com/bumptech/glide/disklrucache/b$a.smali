.class Lcom/bumptech/glide/disklrucache/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/disklrucache/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bumptech/glide/disklrucache/b;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/disklrucache/b;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/bumptech/glide/disklrucache/b$a;->this$0:Lcom/bumptech/glide/disklrucache/b;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/b$a;->this$0:Lcom/bumptech/glide/disklrucache/b;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/b$a;->this$0:Lcom/bumptech/glide/disklrucache/b;

    .line 6
    .line 7
    .line 8
    invoke-static {v1}, Lcom/bumptech/glide/disklrucache/b;->a(Lcom/bumptech/glide/disklrucache/b;)Ljava/io/Writer;

    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    monitor-exit v0

    .line 14
    return-object v2

    .line 15
    :catchall_0
    move-exception v1

    .line 16
    goto :goto_0

    .line 17
    .line 18
    :cond_0
    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/b$a;->this$0:Lcom/bumptech/glide/disklrucache/b;

    .line 19
    .line 20
    .line 21
    invoke-static {v1}, Lcom/bumptech/glide/disklrucache/b;->d(Lcom/bumptech/glide/disklrucache/b;)V

    .line 22
    .line 23
    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/b$a;->this$0:Lcom/bumptech/glide/disklrucache/b;

    .line 24
    .line 25
    .line 26
    invoke-static {v1}, Lcom/bumptech/glide/disklrucache/b;->g(Lcom/bumptech/glide/disklrucache/b;)Z

    .line 27
    move-result v1

    .line 28
    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/b$a;->this$0:Lcom/bumptech/glide/disklrucache/b;

    .line 32
    .line 33
    .line 34
    invoke-static {v1}, Lcom/bumptech/glide/disklrucache/b;->h(Lcom/bumptech/glide/disklrucache/b;)V

    .line 35
    .line 36
    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/b$a;->this$0:Lcom/bumptech/glide/disklrucache/b;

    .line 37
    const/4 v3, 0x0

    .line 38
    .line 39
    .line 40
    invoke-static {v1, v3}, Lcom/bumptech/glide/disklrucache/b;->i(Lcom/bumptech/glide/disklrucache/b;I)I

    .line 41
    :cond_1
    monitor-exit v0

    .line 42
    return-object v2

    .line 43
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    throw v1
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/bumptech/glide/disklrucache/b$a;->a()Ljava/lang/Void;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
