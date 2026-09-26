.class public interface abstract Lkotlinx/serialization/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/h;


# virtual methods
.method public abstract b(Lkotlinx/serialization/k;Ljava/lang/Object;)Ljava/lang/String;
    .param p1    # Lkotlinx/serialization/k;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/k<",
            "-TT;>;TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract c(Lkotlinx/serialization/b;Ljava/lang/String;)Ljava/lang/Object;
    .param p1    # Lkotlinx/serialization/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/b<",
            "TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method
