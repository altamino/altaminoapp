.class public final Lcom/bumptech/glide/disklrucache/b$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/disklrucache/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field private committed:Z

.field private final entry:Lcom/bumptech/glide/disklrucache/b$d;

.field final synthetic this$0:Lcom/bumptech/glide/disklrucache/b;

.field private final written:[Z


# direct methods
.method private constructor <init>(Lcom/bumptech/glide/disklrucache/b;Lcom/bumptech/glide/disklrucache/b$d;)V
    .locals 0

    iput-object p1, p0, Lcom/bumptech/glide/disklrucache/b$c;->this$0:Lcom/bumptech/glide/disklrucache/b;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/bumptech/glide/disklrucache/b$c;->entry:Lcom/bumptech/glide/disklrucache/b$d;

    .line 3
    invoke-static {p2}, Lcom/bumptech/glide/disklrucache/b$d;->e(Lcom/bumptech/glide/disklrucache/b$d;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/bumptech/glide/disklrucache/b;->b(Lcom/bumptech/glide/disklrucache/b;)I

    move-result p1

    new-array p1, p1, [Z

    :goto_0
    iput-object p1, p0, Lcom/bumptech/glide/disklrucache/b$c;->written:[Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/bumptech/glide/disklrucache/b;Lcom/bumptech/glide/disklrucache/b$d;Lcom/bumptech/glide/disklrucache/b$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/bumptech/glide/disklrucache/b$c;-><init>(Lcom/bumptech/glide/disklrucache/b;Lcom/bumptech/glide/disklrucache/b$d;)V

    return-void
.end method

.method static synthetic c(Lcom/bumptech/glide/disklrucache/b$c;)Lcom/bumptech/glide/disklrucache/b$d;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/bumptech/glide/disklrucache/b$c;->entry:Lcom/bumptech/glide/disklrucache/b$d;

    .line 3
    return-object p0
.end method

.method static synthetic d(Lcom/bumptech/glide/disklrucache/b$c;)[Z
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/bumptech/glide/disklrucache/b$c;->written:[Z

    .line 3
    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/b$c;->this$0:Lcom/bumptech/glide/disklrucache/b;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-static {v0, p0, v1}, Lcom/bumptech/glide/disklrucache/b;->f(Lcom/bumptech/glide/disklrucache/b;Lcom/bumptech/glide/disklrucache/b$c;Z)V

    .line 7
    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/bumptech/glide/disklrucache/b$c;->committed:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    .line 7
    :try_start_0
    invoke-virtual {p0}, Lcom/bumptech/glide/disklrucache/b$c;->a()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    :catch_0
    :cond_0
    return-void
.end method

.method public e()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/b$c;->this$0:Lcom/bumptech/glide/disklrucache/b;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    .line 6
    invoke-static {v0, p0, v1}, Lcom/bumptech/glide/disklrucache/b;->f(Lcom/bumptech/glide/disklrucache/b;Lcom/bumptech/glide/disklrucache/b$c;Z)V

    .line 7
    .line 8
    iput-boolean v1, p0, Lcom/bumptech/glide/disklrucache/b$c;->committed:Z

    .line 9
    return-void
.end method

.method public f(I)Ljava/io/File;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/b$c;->this$0:Lcom/bumptech/glide/disklrucache/b;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/b$c;->entry:Lcom/bumptech/glide/disklrucache/b$d;

    .line 6
    .line 7
    .line 8
    invoke-static {v1}, Lcom/bumptech/glide/disklrucache/b$d;->g(Lcom/bumptech/glide/disklrucache/b$d;)Lcom/bumptech/glide/disklrucache/b$c;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    if-ne v1, p0, :cond_2

    .line 12
    .line 13
    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/b$c;->entry:Lcom/bumptech/glide/disklrucache/b$d;

    .line 14
    .line 15
    .line 16
    invoke-static {v1}, Lcom/bumptech/glide/disklrucache/b$d;->e(Lcom/bumptech/glide/disklrucache/b$d;)Z

    .line 17
    move-result v1

    .line 18
    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/b$c;->written:[Z

    .line 22
    const/4 v2, 0x1

    .line 23
    .line 24
    aput-boolean v2, v1, p1

    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception p1

    .line 27
    goto :goto_1

    .line 28
    .line 29
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/b$c;->entry:Lcom/bumptech/glide/disklrucache/b$d;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, p1}, Lcom/bumptech/glide/disklrucache/b$d;->k(I)Ljava/io/File;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/b$c;->this$0:Lcom/bumptech/glide/disklrucache/b;

    .line 36
    .line 37
    .line 38
    invoke-static {v1}, Lcom/bumptech/glide/disklrucache/b;->e(Lcom/bumptech/glide/disklrucache/b;)Ljava/io/File;

    .line 39
    move-result-object v1

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 43
    move-result v1

    .line 44
    .line 45
    if-nez v1, :cond_1

    .line 46
    .line 47
    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/b$c;->this$0:Lcom/bumptech/glide/disklrucache/b;

    .line 48
    .line 49
    .line 50
    invoke-static {v1}, Lcom/bumptech/glide/disklrucache/b;->e(Lcom/bumptech/glide/disklrucache/b;)Ljava/io/File;

    .line 51
    move-result-object v1

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 55
    :cond_1
    monitor-exit v0

    .line 56
    return-object p1

    .line 57
    .line 58
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 59
    .line 60
    .line 61
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 62
    throw p1

    .line 63
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    throw p1
.end method
