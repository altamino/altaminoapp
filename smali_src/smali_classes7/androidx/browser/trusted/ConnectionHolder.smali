.class Landroidx/browser/trusted/ConnectionHolder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/browser/trusted/ConnectionHolder$WrapperFactory;
    }
.end annotation


# static fields
.field private static final STATE_AWAITING_CONNECTION:I = 0x0

.field private static final STATE_CANCELLED:I = 0x3

.field private static final STATE_CONNECTED:I = 0x1

.field private static final STATE_DISCONNECTED:I = 0x2


# instance fields
.field private mCancellationException:Ljava/lang/Exception;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mCloseRunnable:Ljava/lang/Runnable;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private mCompleters:Ljava/util/List;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer<",
            "Landroidx/browser/trusted/TrustedWebActivityServiceConnection;",
            ">;>;"
        }
    .end annotation
.end field

.field private mService:Landroidx/browser/trusted/TrustedWebActivityServiceConnection;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mState:I

.field private final mWrapperFactory:Landroidx/browser/trusted/ConnectionHolder$WrapperFactory;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# virtual methods
.method public d(Ljava/lang/Exception;)V
    .locals 2
    .param p1    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/browser/trusted/ConnectionHolder;->mCompleters:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    check-cast v1, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->e(Ljava/lang/Throwable;)Z

    .line 22
    goto :goto_0

    .line 23
    .line 24
    :cond_0
    iget-object v0, p0, Landroidx/browser/trusted/ConnectionHolder;->mCompleters:Ljava/util/List;

    .line 25
    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 28
    .line 29
    iget-object v0, p0, Landroidx/browser/trusted/ConnectionHolder;->mCloseRunnable:Ljava/lang/Runnable;

    .line 30
    .line 31
    .line 32
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 33
    const/4 v0, 0x3

    .line 34
    .line 35
    iput v0, p0, Landroidx/browser/trusted/ConnectionHolder;->mState:I

    .line 36
    .line 37
    iput-object p1, p0, Landroidx/browser/trusted/ConnectionHolder;->mCancellationException:Ljava/lang/Exception;

    .line 38
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/browser/trusted/ConnectionHolder;->mWrapperFactory:Landroidx/browser/trusted/ConnectionHolder$WrapperFactory;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Landroidx/browser/trusted/ConnectionHolder$WrapperFactory;->a(Landroid/content/ComponentName;Landroid/os/IBinder;)Landroidx/browser/trusted/TrustedWebActivityServiceConnection;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    iput-object p1, p0, Landroidx/browser/trusted/ConnectionHolder;->mService:Landroidx/browser/trusted/TrustedWebActivityServiceConnection;

    .line 9
    .line 10
    iget-object p1, p0, Landroidx/browser/trusted/ConnectionHolder;->mCompleters:Ljava/util/List;

    .line 11
    .line 12
    .line 13
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    .line 17
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    move-result p2

    .line 19
    .line 20
    if-eqz p2, :cond_0

    .line 21
    .line 22
    .line 23
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    move-result-object p2

    .line 25
    .line 26
    check-cast p2, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 27
    .line 28
    iget-object v0, p0, Landroidx/browser/trusted/ConnectionHolder;->mService:Landroidx/browser/trusted/TrustedWebActivityServiceConnection;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2, v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->b(Ljava/lang/Object;)Z

    .line 32
    goto :goto_0

    .line 33
    .line 34
    :cond_0
    iget-object p1, p0, Landroidx/browser/trusted/ConnectionHolder;->mCompleters:Ljava/util/List;

    .line 35
    .line 36
    .line 37
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 38
    const/4 p1, 0x1

    .line 39
    .line 40
    iput p1, p0, Landroidx/browser/trusted/ConnectionHolder;->mState:I

    .line 41
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    const/4 p1, 0x0

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/browser/trusted/ConnectionHolder;->mService:Landroidx/browser/trusted/TrustedWebActivityServiceConnection;

    .line 4
    .line 5
    iget-object p1, p0, Landroidx/browser/trusted/ConnectionHolder;->mCloseRunnable:Ljava/lang/Runnable;

    .line 6
    .line 7
    .line 8
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 9
    const/4 p1, 0x2

    .line 10
    .line 11
    iput p1, p0, Landroidx/browser/trusted/ConnectionHolder;->mState:I

    .line 12
    return-void
.end method
