.class public final La0/b$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La0/b;->p(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/io/File;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, La0/b$a;->a:Landroid/content/Context;

    .line 3
    .line 4
    iput-object p2, p0, La0/b$a;->b:Ljava/io/File;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-static {}, La0/b;->d()Ljava/util/concurrent/locks/ReentrantLock;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget-object v1, p0, La0/b$a;->a:Landroid/content/Context;

    .line 7
    .line 8
    iget-object v2, p0, La0/b$a;->b:Ljava/io/File;

    .line 9
    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 12
    .line 13
    .line 14
    :try_start_0
    invoke-static {}, La0/b;->c()Ljava/lang/String;

    .line 15
    move-result-object v3

    .line 16
    .line 17
    if-nez v3, :cond_0

    .line 18
    .line 19
    sget-object v3, La0/b;->a:La0/b;

    .line 20
    .line 21
    .line 22
    invoke-static {v3, v1}, La0/b;->a(La0/b;Landroid/content/Context;)Ljava/lang/String;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    .line 26
    invoke-static {v1}, La0/b;->f(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-static {}, La0/b;->b()Ljava/util/concurrent/locks/Condition;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    .line 33
    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 37
    .line 38
    sget-object v1, La0/c;->a:La0/c;

    .line 39
    .line 40
    .line 41
    invoke-static {}, La0/b;->c()Ljava/lang/String;

    .line 42
    move-result-object v3

    .line 43
    .line 44
    .line 45
    invoke-static {v3}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v2, v3}, La0/c;->c(Ljava/io/File;Ljava/lang/String;)Z

    .line 49
    goto :goto_0

    .line 50
    :catchall_0
    move-exception v1

    .line 51
    goto :goto_1

    .line 52
    .line 53
    :cond_0
    :goto_0
    sget-object v1, Lw7/l0;->INSTANCE:Lw7/l0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    .line 55
    .line 56
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 57
    return-void

    .line 58
    .line 59
    .line 60
    :goto_1
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 61
    throw v1
.end method
