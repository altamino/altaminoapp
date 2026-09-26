.class final Lcom/narvii/util/debug/viewmodel/ToggleOptionsViewModel$fetchToggleOptions$1;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/util/debug/viewmodel/ToggleOptionsViewModel;->fetchToggleOptions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/l;",
        "Le8/p<",
        "Lkotlinx/coroutines/o0;",
        "Lkotlin/coroutines/d<",
        "-",
        "Lw7/l0;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/f;
    c = "com.narvii.util.debug.viewmodel.ToggleOptionsViewModel$fetchToggleOptions$1"
    f = "ToggleOptionsViewModel.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/narvii/util/debug/viewmodel/ToggleOptionsViewModel;


# direct methods
.method constructor <init>(Lcom/narvii/util/debug/viewmodel/ToggleOptionsViewModel;Lkotlin/coroutines/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/debug/viewmodel/ToggleOptionsViewModel;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lcom/narvii/util/debug/viewmodel/ToggleOptionsViewModel$fetchToggleOptions$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/narvii/util/debug/viewmodel/ToggleOptionsViewModel$fetchToggleOptions$1;->this$0:Lcom/narvii/util/debug/viewmodel/ToggleOptionsViewModel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/l;-><init>(ILkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;
    .locals 1
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

    new-instance p1, Lcom/narvii/util/debug/viewmodel/ToggleOptionsViewModel$fetchToggleOptions$1;

    iget-object v0, p0, Lcom/narvii/util/debug/viewmodel/ToggleOptionsViewModel$fetchToggleOptions$1;->this$0:Lcom/narvii/util/debug/viewmodel/ToggleOptionsViewModel;

    invoke-direct {p1, v0, p2}, Lcom/narvii/util/debug/viewmodel/ToggleOptionsViewModel$fetchToggleOptions$1;-><init>(Lcom/narvii/util/debug/viewmodel/ToggleOptionsViewModel;Lkotlin/coroutines/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/o0;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/util/debug/viewmodel/ToggleOptionsViewModel$fetchToggleOptions$1;->invoke(Lkotlinx/coroutines/o0;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/o0;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lkotlinx/coroutines/o0;
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
            "Lkotlinx/coroutines/o0;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/narvii/util/debug/viewmodel/ToggleOptionsViewModel$fetchToggleOptions$1;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/debug/viewmodel/ToggleOptionsViewModel$fetchToggleOptions$1;

    sget-object p2, Lw7/l0;->INSTANCE:Lw7/l0;

    invoke-virtual {p1, p2}, Lcom/narvii/util/debug/viewmodel/ToggleOptionsViewModel$fetchToggleOptions$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    .line 5
    iget v0, p0, Lcom/narvii/util/debug/viewmodel/ToggleOptionsViewModel$fetchToggleOptions$1;->label:I

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 11
    .line 12
    iget-object p1, p0, Lcom/narvii/util/debug/viewmodel/ToggleOptionsViewModel$fetchToggleOptions$1;->this$0:Lcom/narvii/util/debug/viewmodel/ToggleOptionsViewModel;

    .line 13
    .line 14
    .line 15
    invoke-static {p1}, Lcom/narvii/util/debug/viewmodel/ToggleOptionsViewModel;->access$get_toggleViewState$p(Lcom/narvii/util/debug/viewmodel/ToggleOptionsViewModel;)Landroidx/lifecycle/MutableLiveData;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    sget-object v0, Lcom/narvii/util/debug/viewmodel/DebugToggleOptionsViewState$Loading;->INSTANCE:Lcom/narvii/util/debug/viewmodel/DebugToggleOptionsViewState$Loading;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->p(Ljava/lang/Object;)V

    .line 22
    .line 23
    :try_start_0
    iget-object p1, p0, Lcom/narvii/util/debug/viewmodel/ToggleOptionsViewModel$fetchToggleOptions$1;->this$0:Lcom/narvii/util/debug/viewmodel/ToggleOptionsViewModel;

    .line 24
    .line 25
    .line 26
    invoke-static {p1}, Lcom/narvii/util/debug/viewmodel/ToggleOptionsViewModel;->access$getToggleOptionsRepository$p(Lcom/narvii/util/debug/viewmodel/ToggleOptionsViewModel;)Lcom/narvii/util/debug/model/ToggleOptionsRepository;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/narvii/util/debug/model/ToggleOptionsRepository;->shouldAttestationFailure()Z

    .line 31
    move-result p1

    .line 32
    .line 33
    iget-object v0, p0, Lcom/narvii/util/debug/viewmodel/ToggleOptionsViewModel$fetchToggleOptions$1;->this$0:Lcom/narvii/util/debug/viewmodel/ToggleOptionsViewModel;

    .line 34
    .line 35
    .line 36
    invoke-static {v0}, Lcom/narvii/util/debug/viewmodel/ToggleOptionsViewModel;->access$get_toggleViewState$p(Lcom/narvii/util/debug/viewmodel/ToggleOptionsViewModel;)Landroidx/lifecycle/MutableLiveData;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    new-instance v1, Lcom/narvii/util/debug/viewmodel/DebugToggleOptionsViewState$Success;

    .line 40
    .line 41
    new-instance v2, Lcom/narvii/util/debug/model/FailAttestation;

    .line 42
    .line 43
    .line 44
    invoke-direct {v2, p1}, Lcom/narvii/util/debug/model/FailAttestation;-><init>(Z)V

    .line 45
    .line 46
    .line 47
    invoke-direct {v1, v2}, Lcom/narvii/util/debug/viewmodel/DebugToggleOptionsViewState$Success;-><init>(Lcom/narvii/util/debug/model/FailAttestation;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->p(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    goto :goto_0

    .line 52
    :catch_0
    move-exception p1

    .line 53
    .line 54
    iget-object v0, p0, Lcom/narvii/util/debug/viewmodel/ToggleOptionsViewModel$fetchToggleOptions$1;->this$0:Lcom/narvii/util/debug/viewmodel/ToggleOptionsViewModel;

    .line 55
    .line 56
    .line 57
    invoke-static {v0}, Lcom/narvii/util/debug/viewmodel/ToggleOptionsViewModel;->access$get_toggleViewState$p(Lcom/narvii/util/debug/viewmodel/ToggleOptionsViewModel;)Landroidx/lifecycle/MutableLiveData;

    .line 58
    move-result-object v0

    .line 59
    .line 60
    new-instance v1, Lcom/narvii/util/debug/viewmodel/DebugToggleOptionsViewState$Error;

    .line 61
    .line 62
    .line 63
    invoke-direct {v1, p1}, Lcom/narvii/util/debug/viewmodel/DebugToggleOptionsViewState$Error;-><init>(Ljava/lang/Throwable;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->p(Ljava/lang/Object;)V

    .line 67
    .line 68
    :goto_0
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 69
    return-object p1

    .line 70
    .line 71
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 72
    .line 73
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 74
    .line 75
    .line 76
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 77
    throw p1
.end method
