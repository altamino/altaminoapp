.class public interface abstract Lcom/narvii/services/ServiceProvider;
.super Ljava/lang/Object;
.source "ServiceProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract destroy(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            "TT;)V"
        }
    .end annotation
.end method

.method public abstract pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            "TT;)V"
        }
    .end annotation
.end method

.method public abstract resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            "TT;)V"
        }
    .end annotation
.end method

.method public abstract start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            "TT;)V"
        }
    .end annotation
.end method

.method public abstract stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            "TT;)V"
        }
    .end annotation
.end method
