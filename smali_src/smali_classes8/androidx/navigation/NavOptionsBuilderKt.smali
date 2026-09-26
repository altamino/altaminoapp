.class public final Landroidx/navigation/NavOptionsBuilderKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Le8/l;)Landroidx/navigation/NavOptions;
    .locals 1
    .param p0    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le8/l<",
            "-",
            "Landroidx/navigation/NavOptionsBuilder;",
            "Lw7/l0;",
            ">;)",
            "Landroidx/navigation/NavOptions;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "optionsBuilder"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    new-instance v0, Landroidx/navigation/NavOptionsBuilder;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0}, Landroidx/navigation/NavOptionsBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-interface {p0, v0}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Landroidx/navigation/NavOptionsBuilder;->b()Landroidx/navigation/NavOptions;

    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method
