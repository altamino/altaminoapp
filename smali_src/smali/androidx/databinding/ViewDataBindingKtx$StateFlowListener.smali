.class public final Landroidx/databinding/ViewDataBindingKtx$StateFlowListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/databinding/ObservableReference;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/databinding/ViewDataBindingKtx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StateFlowListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/databinding/ObservableReference<",
        "Lkotlinx/coroutines/flow/g<",
        "+",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field private _lifecycleOwnerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/lifecycle/LifecycleOwner;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final listener:Landroidx/databinding/WeakListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/WeakListener<",
            "Lkotlinx/coroutines/flow/g<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private observerJob:Lkotlinx/coroutines/b2;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/databinding/ViewDataBinding;ILjava/lang/ref/ReferenceQueue;)V
    .locals 1
    .param p1    # Landroidx/databinding/ViewDataBinding;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/ref/ReferenceQueue;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/databinding/ViewDataBinding;",
            "I",
            "Ljava/lang/ref/ReferenceQueue<",
            "Landroidx/databinding/ViewDataBinding;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "referenceQueue"

    .line 3
    .line 4
    .line 5
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    new-instance v0, Landroidx/databinding/WeakListener;

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, p1, p2, p0, p3}, Landroidx/databinding/WeakListener;-><init>(Landroidx/databinding/ViewDataBinding;ILandroidx/databinding/ObservableReference;Ljava/lang/ref/ReferenceQueue;)V

    .line 14
    .line 15
    iput-object v0, p0, Landroidx/databinding/ViewDataBindingKtx$StateFlowListener;->listener:Landroidx/databinding/WeakListener;

    .line 16
    return-void
.end method

.method public static final synthetic a(Landroidx/databinding/ViewDataBindingKtx$StateFlowListener;)Landroidx/databinding/WeakListener;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/databinding/ViewDataBindingKtx$StateFlowListener;->listener:Landroidx/databinding/WeakListener;

    .line 3
    return-object p0
.end method

.method private final h(Landroidx/lifecycle/LifecycleOwner;Lkotlinx/coroutines/flow/g;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Lkotlinx/coroutines/flow/g<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/databinding/ViewDataBindingKtx$StateFlowListener;->observerJob:Lkotlinx/coroutines/b2;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    const/4 v2, 0x1

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/b2$a;->a(Lkotlinx/coroutines/b2;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-static {p1}, Landroidx/lifecycle/LifecycleOwnerKt;->a(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 13
    move-result-object v3

    .line 14
    const/4 v4, 0x0

    .line 15
    const/4 v5, 0x0

    .line 16
    .line 17
    new-instance v6, Landroidx/databinding/ViewDataBindingKtx$StateFlowListener$startCollection$1;

    .line 18
    .line 19
    .line 20
    invoke-direct {v6, p1, p2, p0, v1}, Landroidx/databinding/ViewDataBindingKtx$StateFlowListener$startCollection$1;-><init>(Landroidx/lifecycle/LifecycleOwner;Lkotlinx/coroutines/flow/g;Landroidx/databinding/ViewDataBindingKtx$StateFlowListener;Lkotlin/coroutines/d;)V

    .line 21
    const/4 v7, 0x3

    .line 22
    const/4 v8, 0x0

    .line 23
    .line 24
    .line 25
    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/o0;Lkotlin/coroutines/g;Lkotlinx/coroutines/q0;Le8/p;ILjava/lang/Object;)Lkotlinx/coroutines/b2;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    iput-object p1, p0, Landroidx/databinding/ViewDataBindingKtx$StateFlowListener;->observerJob:Lkotlinx/coroutines/b2;

    .line 29
    return-void
.end method


# virtual methods
.method public b(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 3
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/databinding/ViewDataBindingKtx$StateFlowListener;->_lifecycleOwnerRef:Ljava/lang/ref/WeakReference;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object v0, v1

    .line 14
    .line 15
    :goto_0
    if-ne v0, p1, :cond_1

    .line 16
    return-void

    .line 17
    .line 18
    :cond_1
    iget-object v0, p0, Landroidx/databinding/ViewDataBindingKtx$StateFlowListener;->observerJob:Lkotlinx/coroutines/b2;

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    const/4 v2, 0x1

    .line 22
    .line 23
    .line 24
    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/b2$a;->a(Lkotlinx/coroutines/b2;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 25
    .line 26
    :cond_2
    if-nez p1, :cond_3

    .line 27
    .line 28
    iput-object v1, p0, Landroidx/databinding/ViewDataBindingKtx$StateFlowListener;->_lifecycleOwnerRef:Ljava/lang/ref/WeakReference;

    .line 29
    return-void

    .line 30
    .line 31
    :cond_3
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 32
    .line 33
    .line 34
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 35
    .line 36
    iput-object v0, p0, Landroidx/databinding/ViewDataBindingKtx$StateFlowListener;->_lifecycleOwnerRef:Ljava/lang/ref/WeakReference;

    .line 37
    .line 38
    iget-object v0, p0, Landroidx/databinding/ViewDataBindingKtx$StateFlowListener;->listener:Landroidx/databinding/WeakListener;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Landroidx/databinding/WeakListener;->b()Ljava/lang/Object;

    .line 42
    move-result-object v0

    .line 43
    .line 44
    check-cast v0, Lkotlinx/coroutines/flow/g;

    .line 45
    .line 46
    if-eqz v0, :cond_4

    .line 47
    .line 48
    .line 49
    invoke-direct {p0, p1, v0}, Landroidx/databinding/ViewDataBindingKtx$StateFlowListener;->h(Landroidx/lifecycle/LifecycleOwner;Lkotlinx/coroutines/flow/g;)V

    .line 50
    :cond_4
    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    check-cast p1, Lkotlinx/coroutines/flow/g;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroidx/databinding/ViewDataBindingKtx$StateFlowListener;->g(Lkotlinx/coroutines/flow/g;)V

    .line 6
    return-void
.end method

.method public bridge synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    check-cast p1, Lkotlinx/coroutines/flow/g;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroidx/databinding/ViewDataBindingKtx$StateFlowListener;->e(Lkotlinx/coroutines/flow/g;)V

    .line 6
    return-void
.end method

.method public e(Lkotlinx/coroutines/flow/g;)V
    .locals 1
    .param p1    # Lkotlinx/coroutines/flow/g;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/g<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/databinding/ViewDataBindingKtx$StateFlowListener;->_lifecycleOwnerRef:Ljava/lang/ref/WeakReference;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    goto :goto_0

    .line 14
    .line 15
    :cond_0
    if-eqz p1, :cond_1

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, v0, p1}, Landroidx/databinding/ViewDataBindingKtx$StateFlowListener;->h(Landroidx/lifecycle/LifecycleOwner;Lkotlinx/coroutines/flow/g;)V

    .line 19
    :cond_1
    :goto_0
    return-void
.end method

.method public f()Landroidx/databinding/WeakListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/databinding/WeakListener<",
            "Lkotlinx/coroutines/flow/g<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/databinding/ViewDataBindingKtx$StateFlowListener;->listener:Landroidx/databinding/WeakListener;

    return-object v0
.end method

.method public g(Lkotlinx/coroutines/flow/g;)V
    .locals 2
    .param p1    # Lkotlinx/coroutines/flow/g;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/g<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object p1, p0, Landroidx/databinding/ViewDataBindingKtx$StateFlowListener;->observerJob:Lkotlinx/coroutines/b2;

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    const/4 v1, 0x1

    .line 7
    .line 8
    .line 9
    invoke-static {p1, v0, v1, v0}, Lkotlinx/coroutines/b2$a;->a(Lkotlinx/coroutines/b2;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 10
    .line 11
    :cond_0
    iput-object v0, p0, Landroidx/databinding/ViewDataBindingKtx$StateFlowListener;->observerJob:Lkotlinx/coroutines/b2;

    .line 12
    return-void
.end method
