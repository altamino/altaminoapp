.class public final Lio/ktor/client/plugins/e;
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
    const-string v0, "io.ktor.client.plugins.DefaultRequest"

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Ln7/a;->a(Ljava/lang/String;)Lorg/slf4j/a;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    sput-object v0, Lio/ktor/client/plugins/e;->LOGGER:Lorg/slf4j/a;

    .line 9
    return-void
.end method

.method public static final synthetic a()Lorg/slf4j/a;
    .locals 1

    .line 1
    sget-object v0, Lio/ktor/client/plugins/e;->LOGGER:Lorg/slf4j/a;

    return-object v0
.end method

.method public static final b(Lio/ktor/client/b;Le8/l;)V
    .locals 2
    .param p0    # Lio/ktor/client/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/client/b<",
            "*>;",
            "Le8/l<",
            "-",
            "Lio/ktor/client/plugins/d$a;",
            "Lw7/l0;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "block"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    sget-object v0, Lio/ktor/client/plugins/d;->Plugin:Lio/ktor/client/plugins/d$b;

    .line 13
    .line 14
    new-instance v1, Lio/ktor/client/plugins/e$a;

    .line 15
    .line 16
    .line 17
    invoke-direct {v1, p1}, Lio/ktor/client/plugins/e$a;-><init>(Le8/l;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0, v1}, Lio/ktor/client/b;->h(Lio/ktor/client/plugins/m;Le8/l;)V

    .line 21
    return-void
.end method
