.class final Lio/ktor/http/k0$a;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/http/k0;->i(Lio/ktor/http/f0;Ljava/lang/String;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/p<",
        "Ljava/lang/String;",
        "Ljava/util/List<",
        "+",
        "Ljava/lang/String;",
        ">;",
        "Lw7/l0;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $this_parseQuery:Lio/ktor/http/f0;


# direct methods
.method constructor <init>(Lio/ktor/http/f0;)V
    .locals 0

    iput-object p1, p0, Lio/ktor/http/k0$a;->$this_parseQuery:Lio/ktor/http/f0;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "key"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "values"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    iget-object v0, p0, Lio/ktor/http/k0$a;->$this_parseQuery:Lio/ktor/http/f0;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lio/ktor/http/f0;->e()Lio/ktor/http/a0;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    check-cast p2, Ljava/lang/Iterable;

    .line 19
    .line 20
    .line 21
    invoke-interface {v0, p1, p2}, Lio/ktor/util/u;->d(Ljava/lang/String;Ljava/lang/Iterable;)V

    .line 22
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Ljava/lang/String;

    .line 3
    .line 4
    check-cast p2, Ljava/util/List;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1, p2}, Lio/ktor/http/k0$a;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 8
    .line 9
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 10
    return-object p1
.end method
