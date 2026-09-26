.class final Lkotlinx/coroutines/flow/t$a$b;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/flow/t$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/flow/t$a$b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/l;",
        "Le8/p<",
        "Lkotlinx/coroutines/flow/f0;",
        "Lkotlin/coroutines/d<",
        "-",
        "Lw7/l0;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/f;
    c = "kotlinx.coroutines.flow.FlowKt__ShareKt$launchSharing$1$2"
    f = "Share.kt"
    l = {
        0xe3
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $initialValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final synthetic $shared:Lkotlinx/coroutines/flow/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/w<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic $upstream:Lkotlinx/coroutines/flow/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/g<",
            "TT;>;"
        }
    .end annotation
.end field

.field synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lkotlinx/coroutines/flow/g;Lkotlinx/coroutines/flow/w;Ljava/lang/Object;Lkotlin/coroutines/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/g<",
            "+TT;>;",
            "Lkotlinx/coroutines/flow/w<",
            "TT;>;TT;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lkotlinx/coroutines/flow/t$a$b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lkotlinx/coroutines/flow/t$a$b;->$upstream:Lkotlinx/coroutines/flow/g;

    iput-object p2, p0, Lkotlinx/coroutines/flow/t$a$b;->$shared:Lkotlinx/coroutines/flow/w;

    iput-object p3, p0, Lkotlinx/coroutines/flow/t$a$b;->$initialValue:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/l;-><init>(ILkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/d<",
            "*>;)",
            "Lkotlin/coroutines/d<",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lkotlinx/coroutines/flow/t$a$b;

    iget-object v1, p0, Lkotlinx/coroutines/flow/t$a$b;->$upstream:Lkotlinx/coroutines/flow/g;

    iget-object v2, p0, Lkotlinx/coroutines/flow/t$a$b;->$shared:Lkotlinx/coroutines/flow/w;

    iget-object v3, p0, Lkotlinx/coroutines/flow/t$a$b;->$initialValue:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3, p2}, Lkotlinx/coroutines/flow/t$a$b;-><init>(Lkotlinx/coroutines/flow/g;Lkotlinx/coroutines/flow/w;Ljava/lang/Object;Lkotlin/coroutines/d;)V

    iput-object p1, v0, Lkotlinx/coroutines/flow/t$a$b;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final f(Lkotlinx/coroutines/flow/f0;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lkotlinx/coroutines/flow/f0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/f0;",
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
    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/flow/t$a$b;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/flow/t$a$b;

    sget-object p2, Lw7/l0;->INSTANCE:Lw7/l0;

    invoke-virtual {p1, p2}, Lkotlinx/coroutines/flow/t$a$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/flow/f0;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/flow/t$a$b;->f(Lkotlinx/coroutines/flow/f0;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget v1, p0, Lkotlinx/coroutines/flow/t$a$b;->label:I

    .line 7
    const/4 v2, 0x1

    .line 8
    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    if-ne v1, v2, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 15
    goto :goto_0

    .line 16
    .line 17
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 18
    .line 19
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 20
    .line 21
    .line 22
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 23
    throw p1

    .line 24
    .line 25
    .line 26
    :cond_1
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 27
    .line 28
    iget-object p1, p0, Lkotlinx/coroutines/flow/t$a$b;->L$0:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast p1, Lkotlinx/coroutines/flow/f0;

    .line 31
    .line 32
    sget-object v1, Lkotlinx/coroutines/flow/t$a$b$a;->$EnumSwitchMapping$0:[I

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 36
    move-result p1

    .line 37
    .line 38
    aget p1, v1, p1

    .line 39
    .line 40
    if-eq p1, v2, :cond_4

    .line 41
    const/4 v0, 0x3

    .line 42
    .line 43
    if-eq p1, v0, :cond_2

    .line 44
    goto :goto_0

    .line 45
    .line 46
    :cond_2
    iget-object p1, p0, Lkotlinx/coroutines/flow/t$a$b;->$initialValue:Ljava/lang/Object;

    .line 47
    .line 48
    sget-object v0, Lkotlinx/coroutines/flow/d0;->NO_VALUE:Lkotlinx/coroutines/internal/i0;

    .line 49
    .line 50
    if-ne p1, v0, :cond_3

    .line 51
    .line 52
    iget-object p1, p0, Lkotlinx/coroutines/flow/t$a$b;->$shared:Lkotlinx/coroutines/flow/w;

    .line 53
    .line 54
    .line 55
    invoke-interface {p1}, Lkotlinx/coroutines/flow/w;->b()V

    .line 56
    goto :goto_0

    .line 57
    .line 58
    :cond_3
    iget-object v0, p0, Lkotlinx/coroutines/flow/t$a$b;->$shared:Lkotlinx/coroutines/flow/w;

    .line 59
    .line 60
    .line 61
    invoke-interface {v0, p1}, Lkotlinx/coroutines/flow/w;->c(Ljava/lang/Object;)Z

    .line 62
    goto :goto_0

    .line 63
    .line 64
    :cond_4
    iget-object p1, p0, Lkotlinx/coroutines/flow/t$a$b;->$upstream:Lkotlinx/coroutines/flow/g;

    .line 65
    .line 66
    iget-object v1, p0, Lkotlinx/coroutines/flow/t$a$b;->$shared:Lkotlinx/coroutines/flow/w;

    .line 67
    .line 68
    iput v2, p0, Lkotlinx/coroutines/flow/t$a$b;->label:I

    .line 69
    .line 70
    .line 71
    invoke-interface {p1, v1, p0}, Lkotlinx/coroutines/flow/g;->collect(Lkotlinx/coroutines/flow/h;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 72
    move-result-object p1

    .line 73
    .line 74
    if-ne p1, v0, :cond_5

    .line 75
    return-object v0

    .line 76
    .line 77
    :cond_5
    :goto_0
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 78
    return-object p1
.end method
