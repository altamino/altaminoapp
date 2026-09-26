.class final synthetic Lcoil/compose/b$d$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/h;
.implements Lkotlin/jvm/internal/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcoil/compose/b$d;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1000
    name = null
.end annotation


# instance fields
.field final synthetic $tmp0:Lcoil/compose/b;


# direct methods
.method constructor <init>(Lcoil/compose/b;)V
    .locals 0

    iput-object p1, p0, Lcoil/compose/b$d$c;->$tmp0:Lcoil/compose/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final e(Lcoil/compose/b$c;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lcoil/compose/b$c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcoil/compose/b$c;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcoil/compose/b$d$c;->$tmp0:Lcoil/compose/b;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p1, p2}, Lcoil/compose/b$d;->f(Lcoil/compose/b;Lcoil/compose/b$c;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 10
    move-result-object p2

    .line 11
    .line 12
    if-ne p1, p2, :cond_0

    .line 13
    return-object p1

    .line 14
    .line 15
    :cond_0
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 16
    return-object p1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Lcoil/compose/b$c;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcoil/compose/b$d$c;->e(Lcoil/compose/b$c;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    instance-of v0, p1, Lkotlinx/coroutines/flow/h;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    instance-of v0, p1, Lkotlin/jvm/internal/n;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcoil/compose/b$d$c;->getFunctionDelegate()Lw7/g;

    move-result-object v0

    check-cast p1, Lkotlin/jvm/internal/n;

    invoke-interface {p1}, Lkotlin/jvm/internal/n;->getFunctionDelegate()Lw7/g;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    :cond_0
    return v1
.end method

.method public final getFunctionDelegate()Lw7/g;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lw7/g<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v7, Lkotlin/jvm/internal/a;

    const/4 v1, 0x2

    iget-object v2, p0, Lcoil/compose/b$d$c;->$tmp0:Lcoil/compose/b;

    const-class v3, Lcoil/compose/b;

    const-string/jumbo v4, "updateState"

    const-string/jumbo v5, "updateState(Lcoil/compose/AsyncImagePainter$State;)V"

    const/4 v6, 0x4

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/a;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v7
.end method

.method public final hashCode()I
    .locals 1

    invoke-virtual {p0}, Lcoil/compose/b$d$c;->getFunctionDelegate()Lw7/g;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
