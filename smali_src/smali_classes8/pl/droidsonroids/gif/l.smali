.class abstract Lpl/droidsonroids/gif/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final mGifDrawable:Lpl/droidsonroids/gif/b;


# direct methods
.method constructor <init>(Lpl/droidsonroids/gif/b;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lpl/droidsonroids/gif/l;->mGifDrawable:Lpl/droidsonroids/gif/b;

    .line 6
    return-void
.end method


# virtual methods
.method abstract a()V
.end method

.method public final run()V
    .locals 3

    .line 1
    .line 2
    :try_start_0
    iget-object v0, p0, Lpl/droidsonroids/gif/l;->mGifDrawable:Lpl/droidsonroids/gif/b;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lpl/droidsonroids/gif/b;->e()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lpl/droidsonroids/gif/l;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception v0

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    :goto_0
    return-void

    .line 16
    .line 17
    .line 18
    :goto_1
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    .line 24
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 25
    move-result-object v2

    .line 26
    .line 27
    .line 28
    invoke-interface {v1, v2, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 29
    :cond_1
    throw v0
.end method
