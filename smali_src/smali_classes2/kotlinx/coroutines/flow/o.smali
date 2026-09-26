.class final synthetic Lkotlinx/coroutines/flow/o;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 2 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n+ 3 Exceptions.kt\nkotlinx/coroutines/ExceptionsKt\n*L\n1#1,222:1\n107#2:223\n107#2:224\n107#2:225\n107#2:226\n75#3:227\n*S KotlinDebug\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n*L\n50#1:223\n76#1:224\n146#1:225\n181#1:226\n218#1:227\n*E\n"
.end annotation


# direct methods
.method public static final synthetic a(Lkotlinx/coroutines/flow/h;Le8/q;Ljava/lang/Throwable;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2, p3}, Lkotlinx/coroutines/flow/o;->c(Lkotlinx/coroutines/flow/h;Le8/q;Ljava/lang/Throwable;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final b(Lkotlinx/coroutines/flow/h;)V
    .locals 1
    .param p0    # Lkotlinx/coroutines/flow/h;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/h<",
            "*>;)V"
        }
    .end annotation

    .line 1
    .line 2
    instance-of v0, p0, Lkotlinx/coroutines/flow/r0;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    check-cast p0, Lkotlinx/coroutines/flow/r0;

    .line 8
    .line 9
    iget-object p0, p0, Lkotlinx/coroutines/flow/r0;->e:Ljava/lang/Throwable;

    .line 10
    throw p0
.end method

.method private static final c(Lkotlinx/coroutines/flow/h;Le8/q;Ljava/lang/Throwable;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/flow/h<",
            "-TT;>;",
            "Le8/q<",
            "-",
            "Lkotlinx/coroutines/flow/h<",
            "-TT;>;-",
            "Ljava/lang/Throwable;",
            "-",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Throwable;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    .line 2
    instance-of v0, p3, Lkotlinx/coroutines/flow/o$a;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    move-object v0, p3

    .line 6
    .line 7
    check-cast v0, Lkotlinx/coroutines/flow/o$a;

    .line 8
    .line 9
    iget v1, v0, Lkotlinx/coroutines/flow/o$a;->label:I

    .line 10
    .line 11
    const/high16 v2, -0x80000000

    .line 12
    .line 13
    and-int v3, v1, v2

    .line 14
    .line 15
    if-eqz v3, :cond_0

    .line 16
    sub-int/2addr v1, v2

    .line 17
    .line 18
    iput v1, v0, Lkotlinx/coroutines/flow/o$a;->label:I

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    new-instance v0, Lkotlinx/coroutines/flow/o$a;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, p3}, Lkotlinx/coroutines/flow/o$a;-><init>(Lkotlin/coroutines/d;)V

    .line 25
    .line 26
    :goto_0
    iget-object p3, v0, Lkotlinx/coroutines/flow/o$a;->result:Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    iget v2, v0, Lkotlinx/coroutines/flow/o$a;->label:I

    .line 33
    const/4 v3, 0x1

    .line 34
    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    if-ne v2, v3, :cond_1

    .line 38
    .line 39
    iget-object p0, v0, Lkotlinx/coroutines/flow/o$a;->L$0:Ljava/lang/Object;

    .line 40
    move-object p2, p0

    .line 41
    .line 42
    check-cast p2, Ljava/lang/Throwable;

    .line 43
    .line 44
    .line 45
    :try_start_0
    invoke-static {p3}, Lw7/w;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    goto :goto_1

    .line 47
    :catchall_0
    move-exception p0

    .line 48
    goto :goto_2

    .line 49
    .line 50
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 51
    .line 52
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 53
    .line 54
    .line 55
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 56
    throw p0

    .line 57
    .line 58
    .line 59
    :cond_2
    invoke-static {p3}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 60
    .line 61
    :try_start_1
    iput-object p2, v0, Lkotlinx/coroutines/flow/o$a;->L$0:Ljava/lang/Object;

    .line 62
    .line 63
    iput v3, v0, Lkotlinx/coroutines/flow/o$a;->label:I

    .line 64
    .line 65
    .line 66
    invoke-interface {p1, p0, p2, v0}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    .line 69
    if-ne p0, v1, :cond_3

    .line 70
    return-object v1

    .line 71
    .line 72
    :cond_3
    :goto_1
    sget-object p0, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 73
    return-object p0

    .line 74
    .line 75
    :goto_2
    if-eqz p2, :cond_4

    .line 76
    .line 77
    if-eq p2, p0, :cond_4

    .line 78
    .line 79
    .line 80
    invoke-static {p0, p2}, Lw7/e;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 81
    :cond_4
    throw p0
.end method

.method public static final d(Lkotlinx/coroutines/flow/g;Le8/q;)Lkotlinx/coroutines/flow/g;
    .locals 1
    .param p0    # Lkotlinx/coroutines/flow/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Le8/q;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/flow/g<",
            "+TT;>;",
            "Le8/q<",
            "-",
            "Lkotlinx/coroutines/flow/h<",
            "-TT;>;-",
            "Ljava/lang/Throwable;",
            "-",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lkotlinx/coroutines/flow/g<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lkotlinx/coroutines/flow/o$b;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0, p1}, Lkotlinx/coroutines/flow/o$b;-><init>(Lkotlinx/coroutines/flow/g;Le8/q;)V

    .line 6
    return-object v0
.end method

.method public static final e(Lkotlinx/coroutines/flow/g;Le8/p;)Lkotlinx/coroutines/flow/g;
    .locals 1
    .param p0    # Lkotlinx/coroutines/flow/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/flow/g<",
            "+TT;>;",
            "Le8/p<",
            "-",
            "Lkotlinx/coroutines/flow/h<",
            "-TT;>;-",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lkotlinx/coroutines/flow/g<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lkotlinx/coroutines/flow/o$c;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p1, p0}, Lkotlinx/coroutines/flow/o$c;-><init>(Le8/p;Lkotlinx/coroutines/flow/g;)V

    .line 6
    return-object v0
.end method
