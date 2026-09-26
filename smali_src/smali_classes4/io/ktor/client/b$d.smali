.class final Lio/ktor/client/b$d;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/client/b;->h(Lio/ktor/client/plugins/m;Le8/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/l<",
        "Lio/ktor/client/a;",
        "Lw7/l0;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $plugin:Lio/ktor/client/plugins/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/client/plugins/m<",
            "TTBuilder;TTPlugin;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/ktor/client/plugins/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/client/plugins/m<",
            "+TTBuilder;TTPlugin;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/ktor/client/b$d;->$plugin:Lio/ktor/client/plugins/m;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lio/ktor/client/a;)V
    .locals 3
    .param p1    # Lio/ktor/client/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "scope"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lio/ktor/client/a;->L()Lio/ktor/util/b;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    invoke-static {}, Lio/ktor/client/plugins/n;->a()Lio/ktor/util/a;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    sget-object v2, Lio/ktor/client/b$d$a;->INSTANCE:Lio/ktor/client/b$d$a;

    .line 16
    .line 17
    .line 18
    invoke-interface {v0, v1, v2}, Lio/ktor/util/b;->g(Lio/ktor/util/a;Le8/a;)Ljava/lang/Object;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    check-cast v0, Lio/ktor/util/b;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Lio/ktor/client/a;->h()Lio/ktor/client/b;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    .line 28
    invoke-static {v1}, Lio/ktor/client/b;->a(Lio/ktor/client/b;)Ljava/util/Map;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    iget-object v2, p0, Lio/ktor/client/b$d;->$plugin:Lio/ktor/client/plugins/m;

    .line 32
    .line 33
    .line 34
    invoke-interface {v2}, Lio/ktor/client/plugins/m;->getKey()Lio/ktor/util/a;

    .line 35
    move-result-object v2

    .line 36
    .line 37
    .line 38
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    move-result-object v1

    .line 40
    .line 41
    .line 42
    invoke-static {v1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 43
    .line 44
    check-cast v1, Le8/l;

    .line 45
    .line 46
    iget-object v2, p0, Lio/ktor/client/b$d;->$plugin:Lio/ktor/client/plugins/m;

    .line 47
    .line 48
    .line 49
    invoke-interface {v2, v1}, Lio/ktor/client/plugins/m;->a(Le8/l;)Ljava/lang/Object;

    .line 50
    move-result-object v1

    .line 51
    .line 52
    iget-object v2, p0, Lio/ktor/client/b$d;->$plugin:Lio/ktor/client/plugins/m;

    .line 53
    .line 54
    .line 55
    invoke-interface {v2, v1, p1}, Lio/ktor/client/plugins/m;->b(Ljava/lang/Object;Lio/ktor/client/a;)V

    .line 56
    .line 57
    iget-object p1, p0, Lio/ktor/client/b$d;->$plugin:Lio/ktor/client/plugins/m;

    .line 58
    .line 59
    .line 60
    invoke-interface {p1}, Lio/ktor/client/plugins/m;->getKey()Lio/ktor/util/a;

    .line 61
    move-result-object p1

    .line 62
    .line 63
    .line 64
    invoke-interface {v0, p1, v1}, Lio/ktor/util/b;->a(Lio/ktor/util/a;Ljava/lang/Object;)V

    .line 65
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Lio/ktor/client/a;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lio/ktor/client/b$d;->a(Lio/ktor/client/a;)V

    .line 6
    .line 7
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 8
    return-object p1
.end method
