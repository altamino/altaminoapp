.class public final Landroidx/activity/OnBackPressedDispatcher;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/activity/OnBackPressedDispatcher$Api33Impl;,
        Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;,
        Landroidx/activity/OnBackPressedDispatcher$OnBackPressedCancellable;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOnBackPressedDispatcher.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OnBackPressedDispatcher.kt\nandroidx/activity/OnBackPressedDispatcher\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,317:1\n1747#2,3:318\n533#2,6:321\n*S KotlinDebug\n*F\n+ 1 OnBackPressedDispatcher.kt\nandroidx/activity/OnBackPressedDispatcher\n*L\n194#1:318,3\n209#1:321,6\n*E\n"
.end annotation


# instance fields
.field private backInvokedCallbackRegistered:Z

.field private enabledChangedCallback:Le8/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/a<",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final fallbackOnBackPressed:Ljava/lang/Runnable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private invokedDispatcher:Landroid/window/OnBackInvokedDispatcher;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private onBackInvokedCallback:Landroid/window/OnBackInvokedCallback;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final onBackPressedCallbacks:Lkotlin/collections/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/collections/k<",
            "Landroidx/activity/OnBackPressedCallback;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Landroidx/activity/OnBackPressedDispatcher;-><init>(Ljava/lang/Runnable;ILkotlin/jvm/internal/k;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 1
    .param p1    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/activity/OnBackPressedDispatcher;->fallbackOnBackPressed:Ljava/lang/Runnable;

    .line 3
    new-instance p1, Lkotlin/collections/k;

    invoke-direct {p1}, Lkotlin/collections/k;-><init>()V

    iput-object p1, p0, Landroidx/activity/OnBackPressedDispatcher;->onBackPressedCallbacks:Lkotlin/collections/k;

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x21

    if-lt p1, v0, :cond_0

    .line 4
    new-instance p1, Landroidx/activity/OnBackPressedDispatcher$1;

    invoke-direct {p1, p0}, Landroidx/activity/OnBackPressedDispatcher$1;-><init>(Landroidx/activity/OnBackPressedDispatcher;)V

    iput-object p1, p0, Landroidx/activity/OnBackPressedDispatcher;->enabledChangedCallback:Le8/a;

    .line 5
    sget-object p1, Landroidx/activity/OnBackPressedDispatcher$Api33Impl;->INSTANCE:Landroidx/activity/OnBackPressedDispatcher$Api33Impl;

    new-instance v0, Landroidx/activity/OnBackPressedDispatcher$2;

    invoke-direct {v0, p0}, Landroidx/activity/OnBackPressedDispatcher$2;-><init>(Landroidx/activity/OnBackPressedDispatcher;)V

    invoke-virtual {p1, v0}, Landroidx/activity/OnBackPressedDispatcher$Api33Impl;->b(Le8/a;)Landroid/window/OnBackInvokedCallback;

    move-result-object p1

    iput-object p1, p0, Landroidx/activity/OnBackPressedDispatcher;->onBackInvokedCallback:Landroid/window/OnBackInvokedCallback;

    :cond_0
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Runnable;ILkotlin/jvm/internal/k;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 6
    :cond_0
    invoke-direct {p0, p1}, Landroidx/activity/OnBackPressedDispatcher;-><init>(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static final synthetic a(Landroidx/activity/OnBackPressedDispatcher;)Lkotlin/collections/k;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/activity/OnBackPressedDispatcher;->onBackPressedCallbacks:Lkotlin/collections/k;

    .line 3
    return-object p0
.end method


# virtual methods
.method public final b(Landroidx/lifecycle/LifecycleOwner;Landroidx/activity/OnBackPressedCallback;)V
    .locals 2
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/activity/OnBackPressedCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    .line 2
    const-string v0, "owner"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "onBackPressedCallback"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Landroidx/lifecycle/Lifecycle;->b()Landroidx/lifecycle/Lifecycle$State;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    .line 21
    .line 22
    if-ne v0, v1, :cond_0

    .line 23
    return-void

    .line 24
    .line 25
    :cond_0
    new-instance v0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;

    .line 26
    .line 27
    .line 28
    invoke-direct {v0, p0, p1, p2}, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;-><init>(Landroidx/activity/OnBackPressedDispatcher;Landroidx/lifecycle/Lifecycle;Landroidx/activity/OnBackPressedCallback;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2, v0}, Landroidx/activity/OnBackPressedCallback;->d(Landroidx/activity/Cancellable;)V

    .line 32
    .line 33
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 34
    .line 35
    const/16 v0, 0x21

    .line 36
    .line 37
    if-lt p1, v0, :cond_1

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Landroidx/activity/OnBackPressedDispatcher;->g()V

    .line 41
    .line 42
    iget-object p1, p0, Landroidx/activity/OnBackPressedDispatcher;->enabledChangedCallback:Le8/a;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2, p1}, Landroidx/activity/OnBackPressedCallback;->j(Le8/a;)V

    .line 46
    :cond_1
    return-void
.end method

.method public final c(Landroidx/activity/OnBackPressedCallback;)Landroidx/activity/Cancellable;
    .locals 3
    .param p1    # Landroidx/activity/OnBackPressedCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "onBackPressedCallback"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/activity/OnBackPressedDispatcher;->onBackPressedCallbacks:Lkotlin/collections/k;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lkotlin/collections/k;->add(Ljava/lang/Object;)Z

    .line 11
    .line 12
    new-instance v0, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedCancellable;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, p0, p1}, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedCancellable;-><init>(Landroidx/activity/OnBackPressedDispatcher;Landroidx/activity/OnBackPressedCallback;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroidx/activity/OnBackPressedCallback;->d(Landroidx/activity/Cancellable;)V

    .line 19
    .line 20
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 21
    .line 22
    const/16 v2, 0x21

    .line 23
    .line 24
    if-lt v1, v2, :cond_0

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Landroidx/activity/OnBackPressedDispatcher;->g()V

    .line 28
    .line 29
    iget-object v1, p0, Landroidx/activity/OnBackPressedDispatcher;->enabledChangedCallback:Le8/a;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v1}, Landroidx/activity/OnBackPressedCallback;->j(Le8/a;)V

    .line 33
    :cond_0
    return-object v0
.end method

.method public final d()Z
    .locals 3
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/activity/OnBackPressedDispatcher;->onBackPressedCallbacks:Lkotlin/collections/k;

    .line 3
    .line 4
    instance-of v1, v0, Ljava/util/Collection;

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 11
    move-result v1

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    goto :goto_0

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    move-result v1

    .line 23
    .line 24
    if-eqz v1, :cond_2

    .line 25
    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    check-cast v1, Landroidx/activity/OnBackPressedCallback;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Landroidx/activity/OnBackPressedCallback;->f()Z

    .line 34
    move-result v1

    .line 35
    .line 36
    if-eqz v1, :cond_1

    .line 37
    const/4 v2, 0x1

    .line 38
    :cond_2
    :goto_0
    return v2
.end method

.method public final e()V
    .locals 3
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/activity/OnBackPressedDispatcher;->onBackPressedCallbacks:Lkotlin/collections/k;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    move-result v1

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 14
    move-result v1

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    move-object v2, v1

    .line 22
    .line 23
    check-cast v2, Landroidx/activity/OnBackPressedCallback;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Landroidx/activity/OnBackPressedCallback;->f()Z

    .line 27
    move-result v2

    .line 28
    .line 29
    if-eqz v2, :cond_0

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 v1, 0x0

    .line 32
    .line 33
    :goto_0
    check-cast v1, Landroidx/activity/OnBackPressedCallback;

    .line 34
    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Landroidx/activity/OnBackPressedCallback;->e()V

    .line 39
    return-void

    .line 40
    .line 41
    :cond_2
    iget-object v0, p0, Landroidx/activity/OnBackPressedDispatcher;->fallbackOnBackPressed:Ljava/lang/Runnable;

    .line 42
    .line 43
    if-eqz v0, :cond_3

    .line 44
    .line 45
    .line 46
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 47
    :cond_3
    return-void
.end method

.method public final f(Landroid/window/OnBackInvokedDispatcher;)V
    .locals 1
    .param p1    # Landroid/window/OnBackInvokedDispatcher;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    .line 1
    .line 2
    const-string v0, "invoker"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iput-object p1, p0, Landroidx/activity/OnBackPressedDispatcher;->invokedDispatcher:Landroid/window/OnBackInvokedDispatcher;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/activity/OnBackPressedDispatcher;->g()V

    .line 11
    return-void
.end method

.method public final g()V
    .locals 5
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/activity/OnBackPressedDispatcher;->d()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    iget-object v1, p0, Landroidx/activity/OnBackPressedDispatcher;->invokedDispatcher:Landroid/window/OnBackInvokedDispatcher;

    .line 7
    .line 8
    iget-object v2, p0, Landroidx/activity/OnBackPressedDispatcher;->onBackInvokedCallback:Landroid/window/OnBackInvokedCallback;

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    if-eqz v2, :cond_1

    .line 13
    const/4 v3, 0x0

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-boolean v4, p0, Landroidx/activity/OnBackPressedDispatcher;->backInvokedCallbackRegistered:Z

    .line 18
    .line 19
    if-nez v4, :cond_0

    .line 20
    .line 21
    sget-object v0, Landroidx/activity/OnBackPressedDispatcher$Api33Impl;->INSTANCE:Landroidx/activity/OnBackPressedDispatcher$Api33Impl;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1, v3, v2}, Landroidx/activity/OnBackPressedDispatcher$Api33Impl;->d(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 25
    const/4 v0, 0x1

    .line 26
    .line 27
    iput-boolean v0, p0, Landroidx/activity/OnBackPressedDispatcher;->backInvokedCallbackRegistered:Z

    .line 28
    goto :goto_0

    .line 29
    .line 30
    :cond_0
    if-nez v0, :cond_1

    .line 31
    .line 32
    iget-boolean v0, p0, Landroidx/activity/OnBackPressedDispatcher;->backInvokedCallbackRegistered:Z

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    sget-object v0, Landroidx/activity/OnBackPressedDispatcher$Api33Impl;->INSTANCE:Landroidx/activity/OnBackPressedDispatcher$Api33Impl;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1, v2}, Landroidx/activity/OnBackPressedDispatcher$Api33Impl;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 40
    .line 41
    iput-boolean v3, p0, Landroidx/activity/OnBackPressedDispatcher;->backInvokedCallbackRegistered:Z

    .line 42
    :cond_1
    :goto_0
    return-void
.end method
