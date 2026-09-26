.class public interface abstract Lcom/narvii/paging/source/ContinuousSource;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/paging/source/ContinuousSource$DefaultImpls;
    }
.end annotation


# virtual methods
.method public abstract loadAround(I)V
.end method

.method public abstract loadNextPage(Lcom/narvii/paging/source/PageRequestCallback;)Z
    .param p1    # Lcom/narvii/paging/source/PageRequestCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract loadPrevPage(Lcom/narvii/paging/source/PageRequestCallback;)Z
    .param p1    # Lcom/narvii/paging/source/PageRequestCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method
