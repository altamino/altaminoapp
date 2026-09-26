.class public final Lio/ktor/client/plugins/o$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/ktor/client/plugins/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/client/plugins/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/ktor/client/plugins/m<",
        "Lio/ktor/client/plugins/o$a;",
        "Lio/ktor/client/plugins/o;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/ktor/client/plugins/o$b;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Le8/l;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lio/ktor/client/plugins/o$b;->d(Le8/l;)Lio/ktor/client/plugins/o;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;Lio/ktor/client/a;)V
    .locals 0

    .line 1
    .line 2
    check-cast p1, Lio/ktor/client/plugins/o;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lio/ktor/client/plugins/o$b;->c(Lio/ktor/client/plugins/o;Lio/ktor/client/a;)V

    .line 6
    return-void
.end method

.method public c(Lio/ktor/client/plugins/o;Lio/ktor/client/a;)V
    .locals 4
    .param p1    # Lio/ktor/client/plugins/o;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lio/ktor/client/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "plugin"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "scope"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2}, Lio/ktor/client/a;->n()Li7/g;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    sget-object v1, Li7/g;->Phases:Li7/g$a;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Li7/g$a;->b()Lio/ktor/util/pipeline/h;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    new-instance v2, Lio/ktor/client/plugins/o$b$a;

    .line 23
    const/4 v3, 0x0

    .line 24
    .line 25
    .line 26
    invoke-direct {v2, p1, v3}, Lio/ktor/client/plugins/o$b$a;-><init>(Lio/ktor/client/plugins/o;Lkotlin/coroutines/d;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1, v2}, Lio/ktor/util/pipeline/d;->l(Lio/ktor/util/pipeline/h;Le8/q;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2}, Lio/ktor/client/a;->o()Lio/ktor/client/statement/f;

    .line 33
    move-result-object p2

    .line 34
    .line 35
    sget-object v0, Lio/ktor/client/statement/f;->Phases:Lio/ktor/client/statement/f$a;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Lio/ktor/client/statement/f$a;->c()Lio/ktor/util/pipeline/h;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    new-instance v1, Lio/ktor/client/plugins/o$b$b;

    .line 42
    .line 43
    .line 44
    invoke-direct {v1, p1, v3}, Lio/ktor/client/plugins/o$b$b;-><init>(Lio/ktor/client/plugins/o;Lkotlin/coroutines/d;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2, v0, v1}, Lio/ktor/util/pipeline/d;->l(Lio/ktor/util/pipeline/h;Le8/q;)V

    .line 48
    return-void
.end method

.method public d(Le8/l;)Lio/ktor/client/plugins/o;
    .locals 4
    .param p1    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le8/l<",
            "-",
            "Lio/ktor/client/plugins/o$a;",
            "Lw7/l0;",
            ">;)",
            "Lio/ktor/client/plugins/o;"
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
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance v0, Lio/ktor/client/plugins/o$a;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0}, Lio/ktor/client/plugins/o$a;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-interface {p1, v0}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    new-instance p1, Lio/ktor/client/plugins/o;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lio/ktor/client/plugins/o$a;->b()Ljava/util/Set;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lio/ktor/client/plugins/o$a;->a()Ljava/util/Map;

    .line 23
    move-result-object v2

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Lio/ktor/client/plugins/o$a;->d()Ljava/nio/charset/Charset;

    .line 27
    move-result-object v3

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Lio/ktor/client/plugins/o$a;->c()Ljava/nio/charset/Charset;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    .line 34
    invoke-direct {p1, v1, v2, v3, v0}, Lio/ktor/client/plugins/o;-><init>(Ljava/util/Set;Ljava/util/Map;Ljava/nio/charset/Charset;Ljava/nio/charset/Charset;)V

    .line 35
    return-object p1
.end method

.method public getKey()Lio/ktor/util/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/ktor/util/a<",
            "Lio/ktor/client/plugins/o;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lio/ktor/client/plugins/o;->a()Lio/ktor/util/a;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
