.class public final Lio/ktor/client/plugins/t;
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
    const-string v0, "io.ktor.client.plugins.HttpRequestLifecycle"

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Ln7/a;->a(Ljava/lang/String;)Lorg/slf4j/a;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    sput-object v0, Lio/ktor/client/plugins/t;->LOGGER:Lorg/slf4j/a;

    .line 9
    return-void
.end method

.method public static final synthetic a(Lkotlinx/coroutines/a0;Lkotlinx/coroutines/b2;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Lio/ktor/client/plugins/t;->c(Lkotlinx/coroutines/a0;Lkotlinx/coroutines/b2;)V

    .line 4
    return-void
.end method

.method public static final synthetic b()Lorg/slf4j/a;
    .locals 1

    .line 1
    sget-object v0, Lio/ktor/client/plugins/t;->LOGGER:Lorg/slf4j/a;

    return-object v0
.end method

.method private static final c(Lkotlinx/coroutines/a0;Lkotlinx/coroutines/b2;)V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lio/ktor/client/plugins/t$b;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lio/ktor/client/plugins/t$b;-><init>(Lkotlinx/coroutines/a0;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p1, v0}, Lkotlinx/coroutines/b2;->U(Le8/l;)Lkotlinx/coroutines/g1;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    new-instance v0, Lio/ktor/client/plugins/t$a;

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, p1}, Lio/ktor/client/plugins/t$a;-><init>(Lkotlinx/coroutines/g1;)V

    .line 15
    .line 16
    .line 17
    invoke-interface {p0, v0}, Lkotlinx/coroutines/b2;->U(Le8/l;)Lkotlinx/coroutines/g1;

    .line 18
    return-void
.end method
