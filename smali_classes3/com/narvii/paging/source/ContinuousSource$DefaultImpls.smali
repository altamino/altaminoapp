.class public final Lcom/narvii/paging/source/ContinuousSource$DefaultImpls;
.super Ljava/lang/Object;
.source "ContinuousSource.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/paging/source/ContinuousSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static synthetic loadNextPage$default(Lcom/narvii/paging/source/ContinuousSource;Lcom/narvii/paging/source/PageRequestCallback;ILjava/lang/Object;)Z
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 9
    :cond_0
    invoke-interface {p0, p1}, Lcom/narvii/paging/source/ContinuousSource;->loadNextPage(Lcom/narvii/paging/source/PageRequestCallback;)Z

    move-result p0

    return p0

    .line 0
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: loadNextPage"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic loadPrevPage$default(Lcom/narvii/paging/source/ContinuousSource;Lcom/narvii/paging/source/PageRequestCallback;ILjava/lang/Object;)Z
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 11
    :cond_0
    invoke-interface {p0, p1}, Lcom/narvii/paging/source/ContinuousSource;->loadPrevPage(Lcom/narvii/paging/source/PageRequestCallback;)Z

    move-result p0

    return p0

    .line 0
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: loadPrevPage"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
