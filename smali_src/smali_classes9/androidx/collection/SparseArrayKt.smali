.class public final Landroidx/collection/SparseArrayKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Landroidx/collection/SparseArrayCompat;)Ljava/util/Iterator;
    .locals 1
    .param p0    # Landroidx/collection/SparseArrayCompat;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/collection/SparseArrayCompat<",
            "TT;>;)",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "receiver$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->k(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance v0, Landroidx/collection/SparseArrayKt$valueIterator$1;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, p0}, Landroidx/collection/SparseArrayKt$valueIterator$1;-><init>(Landroidx/collection/SparseArrayCompat;)V

    .line 11
    return-object v0
.end method
