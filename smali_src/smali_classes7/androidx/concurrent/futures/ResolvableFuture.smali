.class public final Landroidx/concurrent/futures/ResolvableFuture;
.super Landroidx/concurrent/futures/AbstractResolvableFuture;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/concurrent/futures/AbstractResolvableFuture<",
        "TV;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/concurrent/futures/AbstractResolvableFuture;-><init>()V

    .line 4
    return-void
.end method

.method public static u()Landroidx/concurrent/futures/ResolvableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">()",
            "Landroidx/concurrent/futures/ResolvableFuture<",
            "TV;>;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroidx/concurrent/futures/ResolvableFuture;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroidx/concurrent/futures/ResolvableFuture;-><init>()V

    .line 6
    return-object v0
.end method


# virtual methods
.method public q(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroidx/concurrent/futures/AbstractResolvableFuture;->q(Ljava/lang/Object;)Z

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public r(Ljava/lang/Throwable;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroidx/concurrent/futures/AbstractResolvableFuture;->r(Ljava/lang/Throwable;)Z

    .line 4
    move-result p1

    .line 5
    return p1
.end method
