.class public interface abstract Lcom/narvii/paging/source/ContinuousSource;
.super Ljava/lang/Object;
.source "ContinuousSource.kt"


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
.end method

.method public abstract loadPrevPage(Lcom/narvii/paging/source/PageRequestCallback;)Z
.end method
