.class Landroidx/browser/trusted/TrustedWebActivityServiceConnectionPool$BindToServiceAsyncTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/browser/trusted/TrustedWebActivityServiceConnectionPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BindToServiceAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Exception;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAppContext:Landroid/content/Context;

.field private final mConnection:Landroidx/browser/trusted/ConnectionHolder;

.field private final mIntent:Landroid/content/Intent;


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Exception;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    :try_start_0
    iget-object p1, p0, Landroidx/browser/trusted/TrustedWebActivityServiceConnectionPool$BindToServiceAsyncTask;->mAppContext:Landroid/content/Context;

    .line 3
    .line 4
    iget-object v0, p0, Landroidx/browser/trusted/TrustedWebActivityServiceConnectionPool$BindToServiceAsyncTask;->mIntent:Landroid/content/Intent;

    .line 5
    .line 6
    iget-object v1, p0, Landroidx/browser/trusted/TrustedWebActivityServiceConnectionPool$BindToServiceAsyncTask;->mConnection:Landroidx/browser/trusted/ConnectionHolder;

    .line 7
    .line 8
    const/16 v2, 0x1001

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 12
    move-result p1

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    const/4 p1, 0x0

    .line 16
    return-object p1

    .line 17
    .line 18
    :cond_0
    iget-object p1, p0, Landroidx/browser/trusted/TrustedWebActivityServiceConnectionPool$BindToServiceAsyncTask;->mAppContext:Landroid/content/Context;

    .line 19
    .line 20
    iget-object v0, p0, Landroidx/browser/trusted/TrustedWebActivityServiceConnectionPool$BindToServiceAsyncTask;->mConnection:Landroidx/browser/trusted/ConnectionHolder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 24
    .line 25
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 26
    .line 27
    const-string v0, "Could not bind to the service"

    .line 28
    .line 29
    .line 30
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    return-object p1

    .line 32
    :catch_0
    move-exception p1

    .line 33
    .line 34
    const-string v0, "TWAConnectionPool"

    .line 35
    .line 36
    const-string v1, "SecurityException while binding."

    .line 37
    .line 38
    .line 39
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 40
    return-object p1
.end method

.method protected b(Ljava/lang/Exception;)V
    .locals 1

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iget-object v0, p0, Landroidx/browser/trusted/TrustedWebActivityServiceConnectionPool$BindToServiceAsyncTask;->mConnection:Landroidx/browser/trusted/ConnectionHolder;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroidx/browser/trusted/ConnectionHolder;->d(Ljava/lang/Exception;)V

    .line 8
    :cond_0
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    check-cast p1, [Ljava/lang/Void;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroidx/browser/trusted/TrustedWebActivityServiceConnectionPool$BindToServiceAsyncTask;->a([Ljava/lang/Void;)Ljava/lang/Exception;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    check-cast p1, Ljava/lang/Exception;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroidx/browser/trusted/TrustedWebActivityServiceConnectionPool$BindToServiceAsyncTask;->b(Ljava/lang/Exception;)V

    .line 6
    return-void
.end method
