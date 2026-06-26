.class public interface abstract Lcom/narvii/app/NVContext;
.super Ljava/lang/Object;
.source "NVContext.java"


# virtual methods
.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getContextId()J
.end method

.method public abstract getParentContext()Lcom/narvii/app/NVContext;
.end method

.method public abstract getService(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract startActivity(Landroid/content/Intent;)V
.end method
