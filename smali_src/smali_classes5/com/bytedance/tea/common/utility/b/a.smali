.class public Lcom/bytedance/tea/common/utility/b/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/concurrent/atomic/AtomicInteger;

.field private c:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/bytedance/tea/common/utility/b/a;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 11
    .line 12
    iput-object p1, p0, Lcom/bytedance/tea/common/utility/b/a;->a:Ljava/lang/String;

    .line 13
    .line 14
    iput-boolean p2, p0, Lcom/bytedance/tea/common/utility/b/a;->c:Z

    .line 15
    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/bytedance/tea/common/utility/b/a;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 6
    move-result v0

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    iget-object v2, p0, Lcom/bytedance/tea/common/utility/b/a;->a:Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v2, "-"

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    new-instance v1, Ljava/lang/Thread;

    .line 31
    .line 32
    .line 33
    invoke-direct {v1, p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 34
    .line 35
    iget-boolean p1, p0, Lcom/bytedance/tea/common/utility/b/a;->c:Z

    .line 36
    .line 37
    if-nez p1, :cond_1

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/Thread;->isDaemon()Z

    .line 41
    move-result p1

    .line 42
    .line 43
    if-eqz p1, :cond_0

    .line 44
    const/4 p1, 0x0

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, p1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 48
    .line 49
    .line 50
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Thread;->getPriority()I

    .line 51
    move-result p1

    .line 52
    const/4 v0, 0x5

    .line 53
    .line 54
    if-eq p1, v0, :cond_1

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setPriority(I)V

    .line 58
    :cond_1
    return-object v1
.end method
