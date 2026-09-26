.class public Landroidx/transition/TransitionManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/transition/TransitionManager$MultiListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TransitionManager"

.field private static sDefaultTransition:Landroidx/transition/Transition;

.field static sPendingTransitions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field private static sRunningTransitions:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/collection/ArrayMap<",
            "Landroid/view/ViewGroup;",
            "Ljava/util/ArrayList<",
            "Landroidx/transition/Transition;",
            ">;>;>;>;"
        }
    .end annotation
.end field


# instance fields
.field private mScenePairTransitions:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Landroidx/transition/Scene;",
            "Landroidx/collection/ArrayMap<",
            "Landroidx/transition/Scene;",
            "Landroidx/transition/Transition;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSceneTransitions:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Landroidx/transition/Scene;",
            "Landroidx/transition/Transition;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Landroidx/transition/AutoTransition;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroidx/transition/AutoTransition;-><init>()V

    .line 6
    .line 7
    sput-object v0, Landroidx/transition/TransitionManager;->sDefaultTransition:Landroidx/transition/Transition;

    .line 8
    .line 9
    new-instance v0, Ljava/lang/ThreadLocal;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 13
    .line 14
    sput-object v0, Landroidx/transition/TransitionManager;->sRunningTransitions:Ljava/lang/ThreadLocal;

    .line 15
    .line 16
    new-instance v0, Ljava/util/ArrayList;

    .line 17
    .line 18
    .line 19
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .line 21
    sput-object v0, Landroidx/transition/TransitionManager;->sPendingTransitions:Ljava/util/ArrayList;

    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Landroidx/collection/ArrayMap;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Landroidx/transition/TransitionManager;->mSceneTransitions:Landroidx/collection/ArrayMap;

    .line 11
    .line 12
    new-instance v0, Landroidx/collection/ArrayMap;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    .line 16
    .line 17
    iput-object v0, p0, Landroidx/transition/TransitionManager;->mScenePairTransitions:Landroidx/collection/ArrayMap;

    .line 18
    return-void
.end method

.method public static a(Landroid/view/ViewGroup;)V
    .locals 1
    .param p0    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-static {p0, v0}, Landroidx/transition/TransitionManager;->b(Landroid/view/ViewGroup;Landroidx/transition/Transition;)V

    .line 5
    return-void
.end method

.method public static b(Landroid/view/ViewGroup;Landroidx/transition/Transition;)V
    .locals 1
    .param p0    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/transition/Transition;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    sget-object v0, Landroidx/transition/TransitionManager;->sPendingTransitions:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    .line 11
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->X(Landroid/view/View;)Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    sget-object v0, Landroidx/transition/TransitionManager;->sPendingTransitions:Ljava/util/ArrayList;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    .line 21
    if-nez p1, :cond_0

    .line 22
    .line 23
    sget-object p1, Landroidx/transition/TransitionManager;->sDefaultTransition:Landroidx/transition/Transition;

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-virtual {p1}, Landroidx/transition/Transition;->n()Landroidx/transition/Transition;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    .line 30
    invoke-static {p0, p1}, Landroidx/transition/TransitionManager;->e(Landroid/view/ViewGroup;Landroidx/transition/Transition;)V

    .line 31
    const/4 v0, 0x0

    .line 32
    .line 33
    .line 34
    invoke-static {p0, v0}, Landroidx/transition/Scene;->c(Landroid/view/ViewGroup;Landroidx/transition/Scene;)V

    .line 35
    .line 36
    .line 37
    invoke-static {p0, p1}, Landroidx/transition/TransitionManager;->d(Landroid/view/ViewGroup;Landroidx/transition/Transition;)V

    .line 38
    :cond_1
    return-void
.end method

.method static c()Landroidx/collection/ArrayMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/collection/ArrayMap<",
            "Landroid/view/ViewGroup;",
            "Ljava/util/ArrayList<",
            "Landroidx/transition/Transition;",
            ">;>;"
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Landroidx/transition/TransitionManager;->sRunningTransitions:Ljava/lang/ThreadLocal;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    check-cast v0, Landroidx/collection/ArrayMap;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    return-object v0

    .line 20
    .line 21
    :cond_0
    new-instance v0, Landroidx/collection/ArrayMap;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    .line 25
    .line 26
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 27
    .line 28
    .line 29
    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 30
    .line 31
    sget-object v2, Landroidx/transition/TransitionManager;->sRunningTransitions:Ljava/lang/ThreadLocal;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 35
    return-object v0
.end method

.method private static d(Landroid/view/ViewGroup;Landroidx/transition/Transition;)V
    .locals 1

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    if-eqz p0, :cond_0

    .line 5
    .line 6
    new-instance v0, Landroidx/transition/TransitionManager$MultiListener;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, p1, p0}, Landroidx/transition/TransitionManager$MultiListener;-><init>(Landroidx/transition/Transition;Landroid/view/ViewGroup;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 16
    move-result-object p0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 20
    :cond_0
    return-void
.end method

.method private static e(Landroid/view/ViewGroup;Landroidx/transition/Transition;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {}, Landroidx/transition/TransitionManager;->c()Landroidx/collection/ArrayMap;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p0}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    check-cast v0, Ljava/util/ArrayList;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 16
    move-result v1

    .line 17
    .line 18
    if-lez v1, :cond_0

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    .line 25
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    move-result v1

    .line 27
    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    .line 31
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    move-result-object v1

    .line 33
    .line 34
    check-cast v1, Landroidx/transition/Transition;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, p0}, Landroidx/transition/Transition;->R(Landroid/view/View;)V

    .line 38
    goto :goto_0

    .line 39
    .line 40
    :cond_0
    if-eqz p1, :cond_1

    .line 41
    const/4 v0, 0x1

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, p0, v0}, Landroidx/transition/Transition;->l(Landroid/view/ViewGroup;Z)V

    .line 45
    .line 46
    .line 47
    :cond_1
    invoke-static {p0}, Landroidx/transition/Scene;->b(Landroid/view/ViewGroup;)Landroidx/transition/Scene;

    .line 48
    move-result-object p0

    .line 49
    .line 50
    if-eqz p0, :cond_2

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Landroidx/transition/Scene;->a()V

    .line 54
    :cond_2
    return-void
.end method
