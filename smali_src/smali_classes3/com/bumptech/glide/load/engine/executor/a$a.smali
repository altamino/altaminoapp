.class public final Lcom/bumptech/glide/load/engine/executor/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/executor/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final NO_THREAD_TIMEOUT:J


# instance fields
.field private corePoolSize:I

.field private maximumPoolSize:I

.field private name:Ljava/lang/String;

.field private final preventNetworkOperations:Z

.field private threadTimeoutMillis:J

.field private uncaughtThrowableStrategy:Lcom/bumptech/glide/load/engine/executor/a$c;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Z)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    sget-object v0, Lcom/bumptech/glide/load/engine/executor/a$c;->DEFAULT:Lcom/bumptech/glide/load/engine/executor/a$c;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/executor/a$a;->uncaughtThrowableStrategy:Lcom/bumptech/glide/load/engine/executor/a$c;

    .line 8
    .line 9
    iput-boolean p1, p0, Lcom/bumptech/glide/load/engine/executor/a$a;->preventNetworkOperations:Z

    .line 10
    return-void
.end method


# virtual methods
.method public a()Lcom/bumptech/glide/load/engine/executor/a;
    .locals 11

    .line 1
    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/executor/a$a;->name:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 11
    .line 12
    iget v2, p0, Lcom/bumptech/glide/load/engine/executor/a$a;->corePoolSize:I

    .line 13
    .line 14
    iget v3, p0, Lcom/bumptech/glide/load/engine/executor/a$a;->maximumPoolSize:I

    .line 15
    .line 16
    iget-wide v4, p0, Lcom/bumptech/glide/load/engine/executor/a$a;->threadTimeoutMillis:J

    .line 17
    .line 18
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 19
    .line 20
    new-instance v7, Ljava/util/concurrent/PriorityBlockingQueue;

    .line 21
    .line 22
    .line 23
    invoke-direct {v7}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    .line 24
    .line 25
    new-instance v8, Lcom/bumptech/glide/load/engine/executor/a$b;

    .line 26
    .line 27
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/executor/a$a;->name:Ljava/lang/String;

    .line 28
    .line 29
    iget-object v9, p0, Lcom/bumptech/glide/load/engine/executor/a$a;->uncaughtThrowableStrategy:Lcom/bumptech/glide/load/engine/executor/a$c;

    .line 30
    .line 31
    iget-boolean v10, p0, Lcom/bumptech/glide/load/engine/executor/a$a;->preventNetworkOperations:Z

    .line 32
    .line 33
    .line 34
    invoke-direct {v8, v1, v9, v10}, Lcom/bumptech/glide/load/engine/executor/a$b;-><init>(Ljava/lang/String;Lcom/bumptech/glide/load/engine/executor/a$c;Z)V

    .line 35
    move-object v1, v0

    .line 36
    .line 37
    .line 38
    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 39
    .line 40
    iget-wide v1, p0, Lcom/bumptech/glide/load/engine/executor/a$a;->threadTimeoutMillis:J

    .line 41
    .line 42
    const-wide/16 v3, 0x0

    .line 43
    .line 44
    cmp-long v1, v1, v3

    .line 45
    .line 46
    if-eqz v1, :cond_0

    .line 47
    const/4 v1, 0x1

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 51
    .line 52
    :cond_0
    new-instance v1, Lcom/bumptech/glide/load/engine/executor/a;

    .line 53
    .line 54
    .line 55
    invoke-direct {v1, v0}, Lcom/bumptech/glide/load/engine/executor/a;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 56
    return-object v1

    .line 57
    .line 58
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 59
    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    const-string v2, "Name must be non-null and non-empty, but given: "

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/executor/a$a;->name:Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    move-result-object v1

    .line 78
    .line 79
    .line 80
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 81
    throw v0
.end method

.method public b(Ljava/lang/String;)Lcom/bumptech/glide/load/engine/executor/a$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/executor/a$a;->name:Ljava/lang/String;

    return-object p0
.end method

.method public c(I)Lcom/bumptech/glide/load/engine/executor/a$a;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/bumptech/glide/load/engine/executor/a$a;->corePoolSize:I

    iput p1, p0, Lcom/bumptech/glide/load/engine/executor/a$a;->maximumPoolSize:I

    return-object p0
.end method
