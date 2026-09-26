.class public interface abstract Landroidx/work/impl/utils/taskexecutor/TaskExecutor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
.end annotation


# virtual methods
.method public abstract a(Ljava/lang/Runnable;)V
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "runnable"
        }
    .end annotation
.end method

.method public abstract b()Ljava/util/concurrent/Executor;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract c()Landroidx/work/impl/utils/taskexecutor/SerialExecutor;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method
