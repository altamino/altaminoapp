.class public Landroidx/transition/FragmentTransitionSupport;
.super Landroidx/fragment/app/FragmentTransitionImpl;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "RestrictedApi"
    }
.end annotation

.annotation build Landroidx/annotation/RestrictTo;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/fragment/app/FragmentTransitionImpl;-><init>()V

    .line 4
    return-void
.end method

.method private static v(Landroidx/transition/Transition;)Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/transition/Transition;->B()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Landroidx/fragment/app/FragmentTransitionImpl;->i(Ljava/util/List;)Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/transition/Transition;->C()Ljava/util/List;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Landroidx/fragment/app/FragmentTransitionImpl;->i(Ljava/util/List;)Z

    .line 18
    move-result v0

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroidx/transition/Transition;->D()Ljava/util/List;

    .line 24
    move-result-object p0

    .line 25
    .line 26
    .line 27
    invoke-static {p0}, Landroidx/fragment/app/FragmentTransitionImpl;->i(Ljava/util/List;)Z

    .line 28
    move-result p0

    .line 29
    .line 30
    if-nez p0, :cond_0

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 p0, 0x0

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 35
    :goto_1
    return p0
.end method


# virtual methods
.method public a(Ljava/lang/Object;Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    check-cast p1, Landroidx/transition/Transition;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p2}, Landroidx/transition/Transition;->c(Landroid/view/View;)Landroidx/transition/Transition;

    .line 8
    :cond_0
    return-void
.end method

.method public b(Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    check-cast p1, Landroidx/transition/Transition;

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    instance-of v0, p1, Landroidx/transition/TransitionSet;

    .line 8
    const/4 v1, 0x0

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    check-cast p1, Landroidx/transition/TransitionSet;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Landroidx/transition/TransitionSet;->m0()I

    .line 16
    move-result v0

    .line 17
    .line 18
    :goto_0
    if-ge v1, v0, :cond_2

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v1}, Landroidx/transition/TransitionSet;->l0(I)Landroidx/transition/Transition;

    .line 22
    move-result-object v2

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v2, p2}, Landroidx/transition/FragmentTransitionSupport;->b(Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 26
    .line 27
    add-int/lit8 v1, v1, 0x1

    .line 28
    goto :goto_0

    .line 29
    .line 30
    .line 31
    :cond_1
    invoke-static {p1}, Landroidx/transition/FragmentTransitionSupport;->v(Landroidx/transition/Transition;)Z

    .line 32
    move-result v0

    .line 33
    .line 34
    if-nez v0, :cond_2

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Landroidx/transition/Transition;->E()Ljava/util/List;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    .line 41
    invoke-static {v0}, Landroidx/fragment/app/FragmentTransitionImpl;->i(Ljava/util/List;)Z

    .line 42
    move-result v0

    .line 43
    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 48
    move-result v0

    .line 49
    .line 50
    :goto_1
    if-ge v1, v0, :cond_2

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 54
    move-result-object v2

    .line 55
    .line 56
    check-cast v2, Landroid/view/View;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v2}, Landroidx/transition/Transition;->c(Landroid/view/View;)Landroidx/transition/Transition;

    .line 60
    .line 61
    add-int/lit8 v1, v1, 0x1

    .line 62
    goto :goto_1

    .line 63
    :cond_2
    return-void
.end method

.method public c(Landroid/view/ViewGroup;Ljava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    check-cast p2, Landroidx/transition/Transition;

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p2}, Landroidx/transition/TransitionManager;->b(Landroid/view/ViewGroup;Landroidx/transition/Transition;)V

    .line 6
    return-void
.end method

.method public e(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    .line 2
    instance-of p1, p1, Landroidx/transition/Transition;

    .line 3
    return p1
.end method

.method public f(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    check-cast p1, Landroidx/transition/Transition;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroidx/transition/Transition;->n()Landroidx/transition/Transition;

    .line 8
    move-result-object p1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    :goto_0
    return-object p1
.end method

.method public j(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    check-cast p1, Landroidx/transition/Transition;

    .line 3
    .line 4
    check-cast p2, Landroidx/transition/Transition;

    .line 5
    .line 6
    check-cast p3, Landroidx/transition/Transition;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    if-eqz p2, :cond_0

    .line 11
    .line 12
    new-instance v0, Landroidx/transition/TransitionSet;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Landroidx/transition/TransitionSet;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Landroidx/transition/TransitionSet;->j0(Landroidx/transition/Transition;)Landroidx/transition/TransitionSet;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, p2}, Landroidx/transition/TransitionSet;->j0(Landroidx/transition/Transition;)Landroidx/transition/TransitionSet;

    .line 23
    move-result-object p1

    .line 24
    const/4 p2, 0x1

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, p2}, Landroidx/transition/TransitionSet;->r0(I)Landroidx/transition/TransitionSet;

    .line 28
    move-result-object p1

    .line 29
    goto :goto_0

    .line 30
    .line 31
    :cond_0
    if-eqz p1, :cond_1

    .line 32
    goto :goto_0

    .line 33
    .line 34
    :cond_1
    if-eqz p2, :cond_2

    .line 35
    move-object p1, p2

    .line 36
    goto :goto_0

    .line 37
    :cond_2
    const/4 p1, 0x0

    .line 38
    .line 39
    :goto_0
    if-eqz p3, :cond_4

    .line 40
    .line 41
    new-instance p2, Landroidx/transition/TransitionSet;

    .line 42
    .line 43
    .line 44
    invoke-direct {p2}, Landroidx/transition/TransitionSet;-><init>()V

    .line 45
    .line 46
    if-eqz p1, :cond_3

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2, p1}, Landroidx/transition/TransitionSet;->j0(Landroidx/transition/Transition;)Landroidx/transition/TransitionSet;

    .line 50
    .line 51
    .line 52
    :cond_3
    invoke-virtual {p2, p3}, Landroidx/transition/TransitionSet;->j0(Landroidx/transition/Transition;)Landroidx/transition/TransitionSet;

    .line 53
    return-object p2

    .line 54
    :cond_4
    return-object p1
.end method

.method public k(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Landroidx/transition/TransitionSet;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroidx/transition/TransitionSet;-><init>()V

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    check-cast p1, Landroidx/transition/Transition;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Landroidx/transition/TransitionSet;->j0(Landroidx/transition/Transition;)Landroidx/transition/TransitionSet;

    .line 13
    .line 14
    :cond_0
    if-eqz p2, :cond_1

    .line 15
    .line 16
    check-cast p2, Landroidx/transition/Transition;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p2}, Landroidx/transition/TransitionSet;->j0(Landroidx/transition/Transition;)Landroidx/transition/TransitionSet;

    .line 20
    .line 21
    :cond_1
    if-eqz p3, :cond_2

    .line 22
    .line 23
    check-cast p3, Landroidx/transition/Transition;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p3}, Landroidx/transition/TransitionSet;->j0(Landroidx/transition/Transition;)Landroidx/transition/TransitionSet;

    .line 27
    :cond_2
    return-object v0
.end method

.method public m(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/view/View;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    check-cast p1, Landroidx/transition/Transition;

    .line 3
    .line 4
    new-instance v0, Landroidx/transition/FragmentTransitionSupport$2;

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, p0, p2, p3}, Landroidx/transition/FragmentTransitionSupport$2;-><init>(Landroidx/transition/FragmentTransitionSupport;Landroid/view/View;Ljava/util/ArrayList;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroidx/transition/Transition;->b(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    .line 11
    return-void
.end method

.method public n(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1
    move-object v0, p1

    .line 2
    .line 3
    check-cast v0, Landroidx/transition/Transition;

    .line 4
    .line 5
    new-instance v9, Landroidx/transition/FragmentTransitionSupport$3;

    .line 6
    move-object v1, v9

    .line 7
    move-object v2, p0

    .line 8
    move-object v3, p2

    .line 9
    move-object v4, p3

    .line 10
    move-object v5, p4

    .line 11
    move-object v6, p5

    .line 12
    .line 13
    move-object/from16 v7, p6

    .line 14
    .line 15
    move-object/from16 v8, p7

    .line 16
    .line 17
    .line 18
    invoke-direct/range {v1 .. v8}, Landroidx/transition/FragmentTransitionSupport$3;-><init>(Landroidx/transition/FragmentTransitionSupport;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v9}, Landroidx/transition/Transition;->b(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    .line 22
    return-void
.end method

.method public o(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 1

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    check-cast p1, Landroidx/transition/Transition;

    .line 5
    .line 6
    new-instance v0, Landroidx/transition/FragmentTransitionSupport$6;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, p0, p2}, Landroidx/transition/FragmentTransitionSupport$6;-><init>(Landroidx/transition/FragmentTransitionSupport;Landroid/graphics/Rect;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroidx/transition/Transition;->Z(Landroidx/transition/Transition$EpicenterCallback;)V

    .line 13
    :cond_0
    return-void
.end method

.method public p(Ljava/lang/Object;Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    check-cast p1, Landroidx/transition/Transition;

    .line 5
    .line 6
    new-instance v0, Landroid/graphics/Rect;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p2, v0}, Landroidx/fragment/app/FragmentTransitionImpl;->h(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 13
    .line 14
    new-instance p2, Landroidx/transition/FragmentTransitionSupport$1;

    .line 15
    .line 16
    .line 17
    invoke-direct {p2, p0, v0}, Landroidx/transition/FragmentTransitionSupport$1;-><init>(Landroidx/transition/FragmentTransitionSupport;Landroid/graphics/Rect;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, p2}, Landroidx/transition/Transition;->Z(Landroidx/transition/Transition$EpicenterCallback;)V

    .line 21
    :cond_0
    return-void
.end method

.method public q(Landroidx/fragment/app/Fragment;Ljava/lang/Object;Landroidx/core/os/CancellationSignal;Ljava/lang/Runnable;)V
    .locals 0
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/core/os/CancellationSignal;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    check-cast p2, Landroidx/transition/Transition;

    .line 3
    .line 4
    new-instance p1, Landroidx/transition/FragmentTransitionSupport$4;

    .line 5
    .line 6
    .line 7
    invoke-direct {p1, p0, p2}, Landroidx/transition/FragmentTransitionSupport$4;-><init>(Landroidx/transition/FragmentTransitionSupport;Landroidx/transition/Transition;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p3, p1}, Landroidx/core/os/CancellationSignal;->c(Landroidx/core/os/CancellationSignal$OnCancelListener;)V

    .line 11
    .line 12
    new-instance p1, Landroidx/transition/FragmentTransitionSupport$5;

    .line 13
    .line 14
    .line 15
    invoke-direct {p1, p0, p4}, Landroidx/transition/FragmentTransitionSupport$5;-><init>(Landroidx/transition/FragmentTransitionSupport;Ljava/lang/Runnable;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2, p1}, Landroidx/transition/Transition;->b(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    .line 19
    return-void
.end method

.method public s(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/view/View;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    check-cast p1, Landroidx/transition/TransitionSet;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroidx/transition/Transition;->E()Ljava/util/List;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x0

    .line 15
    .line 16
    :goto_0
    if-ge v2, v1, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    move-result-object v3

    .line 21
    .line 22
    check-cast v3, Landroid/view/View;

    .line 23
    .line 24
    .line 25
    invoke-static {v0, v3}, Landroidx/fragment/app/FragmentTransitionImpl;->d(Ljava/util/List;Landroid/view/View;)V

    .line 26
    .line 27
    add-int/lit8 v2, v2, 0x1

    .line 28
    goto :goto_0

    .line 29
    .line 30
    .line 31
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, p1, p3}, Landroidx/transition/FragmentTransitionSupport;->b(Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 38
    return-void
.end method

.method public t(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    check-cast p1, Landroidx/transition/TransitionSet;

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroidx/transition/Transition;->E()Ljava/util/List;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Landroidx/transition/Transition;->E()Ljava/util/List;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    .line 18
    invoke-interface {v0, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p1, p2, p3}, Landroidx/transition/FragmentTransitionSupport;->w(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 22
    :cond_0
    return-void
.end method

.method public u(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1

    .line 5
    .line 6
    :cond_0
    new-instance v0, Landroidx/transition/TransitionSet;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0}, Landroidx/transition/TransitionSet;-><init>()V

    .line 10
    .line 11
    check-cast p1, Landroidx/transition/Transition;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Landroidx/transition/TransitionSet;->j0(Landroidx/transition/Transition;)Landroidx/transition/TransitionSet;

    .line 15
    return-object v0
.end method

.method public w(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    check-cast p1, Landroidx/transition/Transition;

    .line 3
    .line 4
    instance-of v0, p1, Landroidx/transition/TransitionSet;

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    check-cast p1, Landroidx/transition/TransitionSet;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Landroidx/transition/TransitionSet;->m0()I

    .line 13
    move-result v0

    .line 14
    .line 15
    :goto_0
    if-ge v1, v0, :cond_3

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v1}, Landroidx/transition/TransitionSet;->l0(I)Landroidx/transition/Transition;

    .line 19
    move-result-object v2

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v2, p2, p3}, Landroidx/transition/FragmentTransitionSupport;->w(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 23
    .line 24
    add-int/lit8 v1, v1, 0x1

    .line 25
    goto :goto_0

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-static {p1}, Landroidx/transition/FragmentTransitionSupport;->v(Landroidx/transition/Transition;)Z

    .line 29
    move-result v0

    .line 30
    .line 31
    if-nez v0, :cond_3

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Landroidx/transition/Transition;->E()Ljava/util/List;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    .line 38
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 39
    move-result v2

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 43
    move-result v3

    .line 44
    .line 45
    if-ne v2, v3, :cond_3

    .line 46
    .line 47
    .line 48
    invoke-interface {v0, p2}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    .line 49
    move-result v0

    .line 50
    .line 51
    if-eqz v0, :cond_3

    .line 52
    .line 53
    if-nez p3, :cond_1

    .line 54
    move v0, v1

    .line 55
    goto :goto_1

    .line 56
    .line 57
    .line 58
    :cond_1
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 59
    move-result v0

    .line 60
    .line 61
    :goto_1
    if-ge v1, v0, :cond_2

    .line 62
    .line 63
    .line 64
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 65
    move-result-object v2

    .line 66
    .line 67
    check-cast v2, Landroid/view/View;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, v2}, Landroidx/transition/Transition;->c(Landroid/view/View;)Landroidx/transition/Transition;

    .line 71
    .line 72
    add-int/lit8 v1, v1, 0x1

    .line 73
    goto :goto_1

    .line 74
    .line 75
    .line 76
    :cond_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 77
    move-result p3

    .line 78
    .line 79
    add-int/lit8 p3, p3, -0x1

    .line 80
    .line 81
    :goto_2
    if-ltz p3, :cond_3

    .line 82
    .line 83
    .line 84
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 85
    move-result-object v0

    .line 86
    .line 87
    check-cast v0, Landroid/view/View;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, v0}, Landroidx/transition/Transition;->U(Landroid/view/View;)Landroidx/transition/Transition;

    .line 91
    .line 92
    add-int/lit8 p3, p3, -0x1

    .line 93
    goto :goto_2

    .line 94
    :cond_3
    return-void
.end method
