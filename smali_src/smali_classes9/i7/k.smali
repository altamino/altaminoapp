.class public final Li7/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nutils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 utils.kt\nio/ktor/client/request/UtilsKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,95:1\n1#2:96\n*E\n"
.end annotation


# direct methods
.method public static final a(Lio/ktor/http/r;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p0    # Lio/ktor/http/r;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "key"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    if-eqz p2, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-interface {p0}, Lio/ktor/http/r;->getHeaders()Lio/ktor/http/l;

    .line 16
    move-result-object p0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 20
    move-result-object p2

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, p1, p2}, Lio/ktor/util/v;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    sget-object p0, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 26
    :cond_0
    return-void
.end method
