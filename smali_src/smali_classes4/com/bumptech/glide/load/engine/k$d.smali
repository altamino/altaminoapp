.class public Lcom/bumptech/glide/load/engine/k$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field private final cb:Ly0/g;

.field private final engineJob:Lcom/bumptech/glide/load/engine/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/l<",
            "*>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/bumptech/glide/load/engine/k;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/engine/k;Ly0/g;Lcom/bumptech/glide/load/engine/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly0/g;",
            "Lcom/bumptech/glide/load/engine/l<",
            "*>;)V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/k$d;->this$0:Lcom/bumptech/glide/load/engine/k;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/k$d;->cb:Ly0/g;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/bumptech/glide/load/engine/k$d;->engineJob:Lcom/bumptech/glide/load/engine/l;

    .line 10
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/k$d;->this$0:Lcom/bumptech/glide/load/engine/k;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/k$d;->engineJob:Lcom/bumptech/glide/load/engine/l;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/k$d;->cb:Ly0/g;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/load/engine/l;->r(Ly0/g;)V

    .line 11
    monitor-exit v0

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception v1

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw v1
.end method
