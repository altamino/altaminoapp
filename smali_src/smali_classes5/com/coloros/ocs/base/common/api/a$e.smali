.class public interface abstract Lcom/coloros/ocs/base/common/api/a$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/ocs/base/common/api/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "e"
.end annotation


# virtual methods
.method public abstract a()V
.end method

.method public abstract b(Lcom/coloros/ocs/base/common/api/g;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/coloros/ocs/base/common/api/g<",
            "TT;>;)V"
        }
    .end annotation
.end method

.method public abstract c(Lcom/coloros/ocs/base/common/api/f;Landroid/os/Handler;)V
    .param p2    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract d(Lcom/coloros/ocs/base/common/api/l;)V
.end method

.method public abstract disconnect()V
.end method

.method public abstract e()Lcom/coloros/ocs/base/common/AuthResult;
.end method

.method public abstract isConnected()Z
.end method
