.class public Lcom/bytedance/tea/common/utility/b/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field protected static final a:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final b:Ljava/util/concurrent/ExecutorService;

.field private static final c:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private d:Ljava/lang/Runnable;

.field private final e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/bytedance/tea/common/utility/b/a;

    .line 3
    .line 4
    const-string v1, "ThreadPlus-cached"

    .line 5
    const/4 v2, 0x1

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1, v2}, Lcom/bytedance/tea/common/utility/b/a;-><init>(Ljava/lang/String;Z)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    sput-object v0, Lcom/bytedance/tea/common/utility/b/b;->b:Ljava/util/concurrent/ExecutorService;

    .line 15
    .line 16
    new-instance v0, Lcom/bytedance/tea/common/utility/b/a;

    .line 17
    .line 18
    const-string v1, "ThreadPlus-fixed"

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, v1, v2}, Lcom/bytedance/tea/common/utility/b/a;-><init>(Ljava/lang/String;Z)V

    .line 22
    const/4 v1, 0x5

    .line 23
    .line 24
    .line 25
    invoke-static {v1, v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    sput-object v0, Lcom/bytedance/tea/common/utility/b/b;->c:Ljava/util/concurrent/ExecutorService;

    .line 29
    .line 30
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 31
    .line 32
    .line 33
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 34
    .line 35
    sput-object v0, Lcom/bytedance/tea/common/utility/b/b;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 36
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/bytedance/tea/common/utility/b/b;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/tea/common/utility/b/b;->d:Ljava/lang/Runnable;

    iput-boolean p3, p0, Lcom/bytedance/tea/common/utility/b/b;->e:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/bytedance/tea/common/utility/b/b;->e:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/bytedance/tea/common/utility/Logger;->debug()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Lcom/bytedance/tea/common/utility/b/b$1;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, p0}, Lcom/bytedance/tea/common/utility/b/b$1;-><init>(Lcom/bytedance/tea/common/utility/b/b;)V

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object v0, p0

    .line 14
    .line 15
    :goto_0
    iget-boolean v1, p0, Lcom/bytedance/tea/common/utility/b/b;->e:Z

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    sget-object v1, Lcom/bytedance/tea/common/utility/b/b;->c:Ljava/util/concurrent/ExecutorService;

    .line 20
    .line 21
    .line 22
    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 23
    goto :goto_1

    .line 24
    .line 25
    :cond_1
    sget-object v1, Lcom/bytedance/tea/common/utility/b/b;->b:Ljava/util/concurrent/ExecutorService;

    .line 26
    .line 27
    .line 28
    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 29
    :goto_1
    return-void
.end method

.method public run()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/bytedance/tea/common/utility/b/b;->d:Ljava/lang/Runnable;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 8
    :cond_0
    return-void
.end method
