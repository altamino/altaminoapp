.class Lcom/bumptech/glide/load/engine/h$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private encoder:Lcom/bumptech/glide/load/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/l<",
            "TZ;>;"
        }
    .end annotation
.end field

.field private key:Lcom/bumptech/glide/load/g;

.field private toEncode:Lcom/bumptech/glide/load/engine/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/u<",
            "TZ;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/h$d;->key:Lcom/bumptech/glide/load/g;

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/h$d;->encoder:Lcom/bumptech/glide/load/l;

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/h$d;->toEncode:Lcom/bumptech/glide/load/engine/u;

    return-void
.end method

.method b(Lcom/bumptech/glide/load/engine/h$e;Lcom/bumptech/glide/load/i;)V
    .locals 4

    .line 1
    .line 2
    const-string v0, "DecodeJob.encode"

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, La1/b;->a(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/h$e;->a()Lcom/bumptech/glide/load/engine/cache/a;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/h$d;->key:Lcom/bumptech/glide/load/g;

    .line 12
    .line 13
    new-instance v1, Lcom/bumptech/glide/load/engine/e;

    .line 14
    .line 15
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/h$d;->encoder:Lcom/bumptech/glide/load/l;

    .line 16
    .line 17
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/h$d;->toEncode:Lcom/bumptech/glide/load/engine/u;

    .line 18
    .line 19
    .line 20
    invoke-direct {v1, v2, v3, p2}, Lcom/bumptech/glide/load/engine/e;-><init>(Lcom/bumptech/glide/load/d;Ljava/lang/Object;Lcom/bumptech/glide/load/i;)V

    .line 21
    .line 22
    .line 23
    invoke-interface {p1, v0, v1}, Lcom/bumptech/glide/load/engine/cache/a;->a(Lcom/bumptech/glide/load/g;Lcom/bumptech/glide/load/engine/cache/a$b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/h$d;->toEncode:Lcom/bumptech/glide/load/engine/u;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/bumptech/glide/load/engine/u;->g()V

    .line 29
    .line 30
    .line 31
    invoke-static {}, La1/b;->d()V

    .line 32
    return-void

    .line 33
    :catchall_0
    move-exception p1

    .line 34
    .line 35
    iget-object p2, p0, Lcom/bumptech/glide/load/engine/h$d;->toEncode:Lcom/bumptech/glide/load/engine/u;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2}, Lcom/bumptech/glide/load/engine/u;->g()V

    .line 39
    .line 40
    .line 41
    invoke-static {}, La1/b;->d()V

    .line 42
    throw p1
.end method

.method c()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/h$d;->toEncode:Lcom/bumptech/glide/load/engine/u;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method d(Lcom/bumptech/glide/load/g;Lcom/bumptech/glide/load/l;Lcom/bumptech/glide/load/engine/u;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/g;",
            "Lcom/bumptech/glide/load/l<",
            "TX;>;",
            "Lcom/bumptech/glide/load/engine/u<",
            "TX;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/h$d;->key:Lcom/bumptech/glide/load/g;

    iput-object p2, p0, Lcom/bumptech/glide/load/engine/h$d;->encoder:Lcom/bumptech/glide/load/l;

    iput-object p3, p0, Lcom/bumptech/glide/load/engine/h$d;->toEncode:Lcom/bumptech/glide/load/engine/u;

    return-void
.end method
