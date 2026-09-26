.class public final Lio/ktor/client/plugins/s$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/ktor/client/plugins/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/client/plugins/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/ktor/client/plugins/m<",
        "Lw7/l0;",
        "Lio/ktor/client/plugins/s;",
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
    invoke-direct {p0}, Lio/ktor/client/plugins/s$a;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Le8/l;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lio/ktor/client/plugins/s$a;->d(Le8/l;)Lio/ktor/client/plugins/s;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;Lio/ktor/client/a;)V
    .locals 0

    .line 1
    .line 2
    check-cast p1, Lio/ktor/client/plugins/s;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lio/ktor/client/plugins/s$a;->c(Lio/ktor/client/plugins/s;Lio/ktor/client/a;)V

    .line 6
    return-void
.end method

.method public c(Lio/ktor/client/plugins/s;Lio/ktor/client/a;)V
    .locals 3
    .param p1    # Lio/ktor/client/plugins/s;
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
    const-string p1, "scope"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2}, Lio/ktor/client/a;->n()Li7/g;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    sget-object v0, Li7/g;->Phases:Li7/g$a;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Li7/g$a;->a()Lio/ktor/util/pipeline/h;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    new-instance v1, Lio/ktor/client/plugins/s$a$a;

    .line 23
    const/4 v2, 0x0

    .line 24
    .line 25
    .line 26
    invoke-direct {v1, p2, v2}, Lio/ktor/client/plugins/s$a$a;-><init>(Lio/ktor/client/a;Lkotlin/coroutines/d;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v0, v1}, Lio/ktor/util/pipeline/d;->l(Lio/ktor/util/pipeline/h;Le8/q;)V

    .line 30
    return-void
.end method

.method public d(Le8/l;)Lio/ktor/client/plugins/s;
    .locals 1
    .param p1    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le8/l<",
            "-",
            "Lw7/l0;",
            "Lw7/l0;",
            ">;)",
            "Lio/ktor/client/plugins/s;"
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
    new-instance p1, Lio/ktor/client/plugins/s;

    .line 8
    const/4 v0, 0x0

    .line 9
    .line 10
    .line 11
    invoke-direct {p1, v0}, Lio/ktor/client/plugins/s;-><init>(Lkotlin/jvm/internal/k;)V

    .line 12
    return-object p1
.end method

.method public getKey()Lio/ktor/util/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/ktor/util/a<",
            "Lio/ktor/client/plugins/s;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lio/ktor/client/plugins/s;->a()Lio/ktor/util/a;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
