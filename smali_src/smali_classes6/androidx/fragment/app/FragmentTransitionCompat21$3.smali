.class Landroidx/fragment/app/FragmentTransitionCompat21$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/transition/Transition$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/FragmentTransitionCompat21;->n(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/fragment/app/FragmentTransitionCompat21;

.field final synthetic val$enterTransition:Ljava/lang/Object;

.field final synthetic val$enteringViews:Ljava/util/ArrayList;

.field final synthetic val$exitTransition:Ljava/lang/Object;

.field final synthetic val$exitingViews:Ljava/util/ArrayList;

.field final synthetic val$sharedElementTransition:Ljava/lang/Object;

.field final synthetic val$sharedElementsIn:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Landroidx/fragment/app/FragmentTransitionCompat21;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Landroidx/fragment/app/FragmentTransitionCompat21$3;->this$0:Landroidx/fragment/app/FragmentTransitionCompat21;

    .line 3
    .line 4
    iput-object p2, p0, Landroidx/fragment/app/FragmentTransitionCompat21$3;->val$enterTransition:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object p3, p0, Landroidx/fragment/app/FragmentTransitionCompat21$3;->val$enteringViews:Ljava/util/ArrayList;

    .line 7
    .line 8
    iput-object p4, p0, Landroidx/fragment/app/FragmentTransitionCompat21$3;->val$exitTransition:Ljava/lang/Object;

    .line 9
    .line 10
    iput-object p5, p0, Landroidx/fragment/app/FragmentTransitionCompat21$3;->val$exitingViews:Ljava/util/ArrayList;

    .line 11
    .line 12
    iput-object p6, p0, Landroidx/fragment/app/FragmentTransitionCompat21$3;->val$sharedElementTransition:Ljava/lang/Object;

    .line 13
    .line 14
    iput-object p7, p0, Landroidx/fragment/app/FragmentTransitionCompat21$3;->val$sharedElementsIn:Ljava/util/ArrayList;

    .line 15
    .line 16
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method


# virtual methods
.method public onTransitionCancel(Landroid/transition/Transition;)V
    .locals 0

    return-void
.end method

.method public onTransitionEnd(Landroid/transition/Transition;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p1, p0}, Landroidx/fragment/app/FragmentTransitionCompat21$Api19Impl;->b(Landroid/transition/Transition;Landroid/transition/Transition$TransitionListener;)V

    .line 4
    return-void
.end method

.method public onTransitionPause(Landroid/transition/Transition;)V
    .locals 0

    return-void
.end method

.method public onTransitionResume(Landroid/transition/Transition;)V
    .locals 0

    return-void
.end method

.method public onTransitionStart(Landroid/transition/Transition;)V
    .locals 3

    .line 1
    .line 2
    iget-object p1, p0, Landroidx/fragment/app/FragmentTransitionCompat21$3;->val$enterTransition:Ljava/lang/Object;

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/fragment/app/FragmentTransitionCompat21$3;->this$0:Landroidx/fragment/app/FragmentTransitionCompat21;

    .line 8
    .line 9
    iget-object v2, p0, Landroidx/fragment/app/FragmentTransitionCompat21$3;->val$enteringViews:Ljava/util/ArrayList;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, p1, v2, v0}, Landroidx/fragment/app/FragmentTransitionCompat21;->w(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 13
    .line 14
    :cond_0
    iget-object p1, p0, Landroidx/fragment/app/FragmentTransitionCompat21$3;->val$exitTransition:Ljava/lang/Object;

    .line 15
    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    iget-object v1, p0, Landroidx/fragment/app/FragmentTransitionCompat21$3;->this$0:Landroidx/fragment/app/FragmentTransitionCompat21;

    .line 19
    .line 20
    iget-object v2, p0, Landroidx/fragment/app/FragmentTransitionCompat21$3;->val$exitingViews:Ljava/util/ArrayList;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p1, v2, v0}, Landroidx/fragment/app/FragmentTransitionCompat21;->w(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 24
    .line 25
    :cond_1
    iget-object p1, p0, Landroidx/fragment/app/FragmentTransitionCompat21$3;->val$sharedElementTransition:Ljava/lang/Object;

    .line 26
    .line 27
    if-eqz p1, :cond_2

    .line 28
    .line 29
    iget-object v1, p0, Landroidx/fragment/app/FragmentTransitionCompat21$3;->this$0:Landroidx/fragment/app/FragmentTransitionCompat21;

    .line 30
    .line 31
    iget-object v2, p0, Landroidx/fragment/app/FragmentTransitionCompat21$3;->val$sharedElementsIn:Ljava/util/ArrayList;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, p1, v2, v0}, Landroidx/fragment/app/FragmentTransitionCompat21;->w(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 35
    :cond_2
    return-void
.end method
