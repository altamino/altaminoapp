.class final Lio/ktor/client/engine/b$a$c$a;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/client/engine/b$a$c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/l<",
        "Ljava/lang/Throwable;",
        "Lw7/l0;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $client:Lio/ktor/client/a;

.field final synthetic $response:Lio/ktor/client/statement/c;


# direct methods
.method constructor <init>(Lio/ktor/client/a;Lio/ktor/client/statement/c;)V
    .locals 0

    iput-object p1, p0, Lio/ktor/client/engine/b$a$c$a;->$client:Lio/ktor/client/a;

    iput-object p2, p0, Lio/ktor/client/engine/b$a$c$a;->$response:Lio/ktor/client/statement/c;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lio/ktor/client/engine/b$a$c$a;->invoke(Ljava/lang/Throwable;)V

    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Throwable;)V
    .locals 2
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    iget-object p1, p0, Lio/ktor/client/engine/b$a$c$a;->$client:Lio/ktor/client/a;

    .line 2
    invoke-virtual {p1}, Lio/ktor/client/a;->l()Lj7/b;

    move-result-object p1

    invoke-static {}, Lio/ktor/client/utils/b;->c()Lj7/a;

    move-result-object v0

    iget-object v1, p0, Lio/ktor/client/engine/b$a$c$a;->$response:Lio/ktor/client/statement/c;

    invoke-virtual {p1, v0, v1}, Lj7/b;->a(Lj7/a;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
