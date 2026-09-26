.class public final Landroidx/lifecycle/ViewModelKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final JOB_KEY:Ljava/lang/String; = "androidx.lifecycle.ViewModelCoroutineScope.JOB_KEY"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static final a(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/o0;
    .locals 4
    .param p0    # Landroidx/lifecycle/ViewModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "androidx.lifecycle.ViewModelCoroutineScope.JOB_KEY"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroidx/lifecycle/ViewModel;->getTag(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    check-cast v1, Lkotlinx/coroutines/o0;

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    return-object v1

    .line 17
    .line 18
    :cond_0
    new-instance v1, Landroidx/lifecycle/CloseableCoroutineScope;

    .line 19
    const/4 v2, 0x1

    .line 20
    const/4 v3, 0x0

    .line 21
    .line 22
    .line 23
    invoke-static {v3, v2, v3}, Lkotlinx/coroutines/y2;->b(Lkotlinx/coroutines/b2;ILjava/lang/Object;)Lkotlinx/coroutines/a0;

    .line 24
    move-result-object v2

    .line 25
    .line 26
    .line 27
    invoke-static {}, Lkotlinx/coroutines/e1;->c()Lkotlinx/coroutines/n2;

    .line 28
    move-result-object v3

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3}, Lkotlinx/coroutines/n2;->getImmediate()Lkotlinx/coroutines/n2;

    .line 32
    move-result-object v3

    .line 33
    .line 34
    .line 35
    invoke-interface {v2, v3}, Lkotlin/coroutines/g;->plus(Lkotlin/coroutines/g;)Lkotlin/coroutines/g;

    .line 36
    move-result-object v2

    .line 37
    .line 38
    .line 39
    invoke-direct {v1, v2}, Landroidx/lifecycle/CloseableCoroutineScope;-><init>(Lkotlin/coroutines/g;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v0, v1}, Landroidx/lifecycle/ViewModel;->setTagIfAbsent(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    move-result-object p0

    .line 44
    .line 45
    const-string v0, "setTagIfAbsent(\n        \u2026Main.immediate)\n        )"

    .line 46
    .line 47
    .line 48
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    .line 50
    check-cast p0, Lkotlinx/coroutines/o0;

    .line 51
    return-object p0
.end method
