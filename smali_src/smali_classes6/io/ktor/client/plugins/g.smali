.class public final Lio/ktor/client/plugins/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LOGGER:Lorg/slf4j/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    const-string v0, "io.ktor.client.plugins.defaultTransformers"

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Ln7/a;->a(Ljava/lang/String;)Lorg/slf4j/a;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    sput-object v0, Lio/ktor/client/plugins/g;->LOGGER:Lorg/slf4j/a;

    .line 9
    return-void
.end method

.method public static final synthetic a()Lorg/slf4j/a;
    .locals 1

    .line 1
    sget-object v0, Lio/ktor/client/plugins/g;->LOGGER:Lorg/slf4j/a;

    return-object v0
.end method

.method public static final b(Lio/ktor/client/a;)V
    .locals 4
    .param p0    # Lio/ktor/client/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
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
    .line 8
    invoke-virtual {p0}, Lio/ktor/client/a;->n()Li7/g;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    sget-object v1, Li7/g;->Phases:Li7/g$a;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Li7/g$a;->b()Lio/ktor/util/pipeline/h;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    new-instance v2, Lio/ktor/client/plugins/g$a;

    .line 18
    const/4 v3, 0x0

    .line 19
    .line 20
    .line 21
    invoke-direct {v2, v3}, Lio/ktor/client/plugins/g$a;-><init>(Lkotlin/coroutines/d;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1, v2}, Lio/ktor/util/pipeline/d;->l(Lio/ktor/util/pipeline/h;Le8/q;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lio/ktor/client/a;->o()Lio/ktor/client/statement/f;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    sget-object v1, Lio/ktor/client/statement/f;->Phases:Lio/ktor/client/statement/f$a;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Lio/ktor/client/statement/f$a;->a()Lio/ktor/util/pipeline/h;

    .line 34
    move-result-object v1

    .line 35
    .line 36
    new-instance v2, Lio/ktor/client/plugins/g$b;

    .line 37
    .line 38
    .line 39
    invoke-direct {v2, v3}, Lio/ktor/client/plugins/g$b;-><init>(Lkotlin/coroutines/d;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1, v2}, Lio/ktor/util/pipeline/d;->l(Lio/ktor/util/pipeline/h;Le8/q;)V

    .line 43
    .line 44
    .line 45
    invoke-static {p0}, Lio/ktor/client/plugins/h;->b(Lio/ktor/client/a;)V

    .line 46
    return-void
.end method
