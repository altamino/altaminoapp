.class final Lio/ktor/client/plugins/f$a;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/client/plugins/f;->c(Lio/ktor/client/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/l<",
        "Lio/ktor/client/plugins/k$b;",
        "Lw7/l0;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $this_addDefaultResponseValidation:Lio/ktor/client/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/client/b<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/ktor/client/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/client/b<",
            "*>;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/ktor/client/plugins/f$a;->$this_addDefaultResponseValidation:Lio/ktor/client/b;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lio/ktor/client/plugins/k$b;)V
    .locals 2
    .param p1    # Lio/ktor/client/plugins/k$b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "$this$HttpResponseValidator"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lio/ktor/client/plugins/f$a;->$this_addDefaultResponseValidation:Lio/ktor/client/b;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lio/ktor/client/b;->d()Z

    .line 11
    move-result v0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v0}, Lio/ktor/client/plugins/k$b;->d(Z)V

    .line 15
    .line 16
    new-instance v0, Lio/ktor/client/plugins/f$a$a;

    .line 17
    const/4 v1, 0x0

    .line 18
    .line 19
    .line 20
    invoke-direct {v0, v1}, Lio/ktor/client/plugins/f$a$a;-><init>(Lkotlin/coroutines/d;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0}, Lio/ktor/client/plugins/k$b;->e(Le8/p;)V

    .line 24
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Lio/ktor/client/plugins/k$b;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lio/ktor/client/plugins/f$a;->a(Lio/ktor/client/plugins/k$b;)V

    .line 6
    .line 7
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 8
    return-object p1
.end method
