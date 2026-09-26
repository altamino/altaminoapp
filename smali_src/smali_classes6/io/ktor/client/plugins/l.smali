.class public final Lio/ktor/client/plugins/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ExpectSuccessAttributeKey:Lio/ktor/util/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/util/a<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final LOGGER:Lorg/slf4j/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    const-string v0, "io.ktor.client.plugins.HttpCallValidator"

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Ln7/a;->a(Ljava/lang/String;)Lorg/slf4j/a;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    sput-object v0, Lio/ktor/client/plugins/l;->LOGGER:Lorg/slf4j/a;

    .line 9
    .line 10
    new-instance v0, Lio/ktor/util/a;

    .line 11
    .line 12
    const-string v1, "ExpectSuccessAttributeKey"

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, v1}, Lio/ktor/util/a;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    sput-object v0, Lio/ktor/client/plugins/l;->ExpectSuccessAttributeKey:Lio/ktor/util/a;

    .line 18
    return-void
.end method

.method private static final a(Li7/d;)Lio/ktor/client/plugins/l$a;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lio/ktor/client/plugins/l$a;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lio/ktor/client/plugins/l$a;-><init>(Li7/d;)V

    .line 6
    return-object v0
.end method

.method public static final b(Lio/ktor/client/b;Le8/l;)V
    .locals 1
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
            "Lio/ktor/client/plugins/k$b;",
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
    sget-object v0, Lio/ktor/client/plugins/k;->Companion:Lio/ktor/client/plugins/k$a;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0, p1}, Lio/ktor/client/b;->h(Lio/ktor/client/plugins/m;Le8/l;)V

    .line 16
    return-void
.end method

.method public static final synthetic c(Li7/d;)Lio/ktor/client/plugins/l$a;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lio/ktor/client/plugins/l;->a(Li7/d;)Lio/ktor/client/plugins/l$a;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic d()Lorg/slf4j/a;
    .locals 1

    .line 1
    sget-object v0, Lio/ktor/client/plugins/l;->LOGGER:Lorg/slf4j/a;

    return-object v0
.end method

.method public static final e()Lio/ktor/util/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/ktor/util/a<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lio/ktor/client/plugins/l;->ExpectSuccessAttributeKey:Lio/ktor/util/a;

    return-object v0
.end method
