.class public final Lio/ktor/client/utils/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Le8/l;)Lio/ktor/http/k;
    .locals 4
    .param p0    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le8/l<",
            "-",
            "Lio/ktor/http/l;",
            "Lw7/l0;",
            ">;)",
            "Lio/ktor/http/k;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "block"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance v0, Lio/ktor/http/l;

    .line 8
    const/4 v1, 0x1

    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x0

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v3, v1, v2}, Lio/ktor/http/l;-><init>(IILkotlin/jvm/internal/k;)V

    .line 14
    .line 15
    .line 16
    invoke-interface {p0, v0}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lio/ktor/http/l;->n()Lio/ktor/http/k;

    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method
