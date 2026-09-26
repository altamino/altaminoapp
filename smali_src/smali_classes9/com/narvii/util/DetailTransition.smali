.class public Lcom/narvii/util/DetailTransition;
.super Landroid/transition/TransitionSet;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroid/transition/TransitionSet;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/transition/TransitionSet;->setOrdering(I)Landroid/transition/TransitionSet;

    .line 8
    .line 9
    new-instance v0, Landroid/transition/ChangeTransform;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0}, Landroid/transition/ChangeTransform;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 16
    .line 17
    new-instance v0, Landroid/transition/ChangeBounds;

    .line 18
    .line 19
    .line 20
    invoke-direct {v0}, Landroid/transition/ChangeBounds;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v0}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 24
    .line 25
    new-instance v0, Landroid/transition/ChangeClipBounds;

    .line 26
    .line 27
    .line 28
    invoke-direct {v0}, Landroid/transition/ChangeClipBounds;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v0}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 32
    return-void
.end method
