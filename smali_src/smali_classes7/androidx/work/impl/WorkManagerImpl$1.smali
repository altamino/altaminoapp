.class Landroidx/work/impl/WorkManagerImpl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Landroidx/work/impl/WorkManagerImpl;

.field final synthetic val$future:Landroidx/work/impl/utils/futures/SettableFuture;

.field final synthetic val$preferenceUtils:Landroidx/work/impl/utils/PreferenceUtils;


# virtual methods
.method public run()V
    .locals 3

    .line 1
    .line 2
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/WorkManagerImpl$1;->val$future:Landroidx/work/impl/utils/futures/SettableFuture;

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/work/impl/WorkManagerImpl$1;->val$preferenceUtils:Landroidx/work/impl/utils/PreferenceUtils;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1}, Landroidx/work/impl/utils/PreferenceUtils;->a()J

    .line 8
    move-result-wide v1

    .line 9
    .line 10
    .line 11
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroidx/work/impl/utils/futures/SettableFuture;->o(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception v0

    .line 18
    .line 19
    iget-object v1, p0, Landroidx/work/impl/WorkManagerImpl$1;->val$future:Landroidx/work/impl/utils/futures/SettableFuture;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v0}, Landroidx/work/impl/utils/futures/SettableFuture;->p(Ljava/lang/Throwable;)Z

    .line 23
    :goto_0
    return-void
.end method
