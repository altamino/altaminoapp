.class public final Lkotlinx/coroutines/flow/internal/u;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final emitFun:Le8/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/q<",
            "Lkotlinx/coroutines/flow/h<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lkotlinx/coroutines/flow/internal/u$a;->INSTANCE:Lkotlinx/coroutines/flow/internal/u$a;

    .line 3
    .line 4
    const-string v1, "null cannot be cast to non-null type kotlin.Function3<kotlinx.coroutines.flow.FlowCollector<kotlin.Any?>, kotlin.Any?, kotlin.coroutines.Continuation<kotlin.Unit>, kotlin.Any?>"

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    const/4 v1, 0x3

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/v0;->e(Ljava/lang/Object;I)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    check-cast v0, Le8/q;

    .line 15
    .line 16
    sput-object v0, Lkotlinx/coroutines/flow/internal/u;->emitFun:Le8/q;

    .line 17
    return-void
.end method

.method public static final synthetic a()Le8/q;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/flow/internal/u;->emitFun:Le8/q;

    return-object v0
.end method
