.class Landroidx/transition/TranslationAnimationCreator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method static a(Landroid/view/View;Landroidx/transition/TransitionValues;IIFFFFLandroid/animation/TimeInterpolator;Landroidx/transition/Transition;)Landroid/animation/Animator;
    .locals 14
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/transition/TransitionValues;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Landroid/animation/TimeInterpolator;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p9    # Landroidx/transition/Transition;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p1

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getTranslationX()F

    .line 6
    move-result v2

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    .line 10
    move-result v3

    .line 11
    .line 12
    iget-object v4, v1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    .line 13
    .line 14
    sget v5, Landroidx/transition/R$id;->transition_position:I

    .line 15
    .line 16
    .line 17
    invoke-virtual {v4, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 18
    move-result-object v4

    .line 19
    .line 20
    check-cast v4, [I

    .line 21
    const/4 v5, 0x1

    .line 22
    const/4 v6, 0x0

    .line 23
    .line 24
    if-eqz v4, :cond_0

    .line 25
    .line 26
    aget v7, v4, v6

    .line 27
    .line 28
    sub-int v7, v7, p2

    .line 29
    int-to-float v7, v7

    .line 30
    add-float/2addr v7, v2

    .line 31
    .line 32
    aget v4, v4, v5

    .line 33
    .line 34
    sub-int v4, v4, p3

    .line 35
    int-to-float v4, v4

    .line 36
    add-float/2addr v4, v3

    .line 37
    goto :goto_0

    .line 38
    .line 39
    :cond_0
    move/from16 v7, p4

    .line 40
    .line 41
    move/from16 v4, p5

    .line 42
    .line 43
    :goto_0
    sub-float v8, v7, v2

    .line 44
    .line 45
    .line 46
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    .line 47
    move-result v8

    .line 48
    .line 49
    add-int v8, p2, v8

    .line 50
    .line 51
    sub-float v9, v4, v3

    .line 52
    .line 53
    .line 54
    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    .line 55
    move-result v9

    .line 56
    .line 57
    add-int v9, p3, v9

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, v7}, Landroid/view/View;->setTranslationX(F)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 64
    .line 65
    cmpl-float v10, v7, p6

    .line 66
    .line 67
    if-nez v10, :cond_1

    .line 68
    .line 69
    cmpl-float v10, v4, p7

    .line 70
    .line 71
    if-nez v10, :cond_1

    .line 72
    const/4 v0, 0x0

    .line 73
    return-object v0

    .line 74
    :cond_1
    const/4 v10, 0x2

    .line 75
    .line 76
    new-array v11, v10, [Landroid/animation/PropertyValuesHolder;

    .line 77
    .line 78
    sget-object v12, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    .line 79
    .line 80
    new-array v13, v10, [F

    .line 81
    .line 82
    aput v7, v13, v6

    .line 83
    .line 84
    aput p6, v13, v5

    .line 85
    .line 86
    .line 87
    invoke-static {v12, v13}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    .line 88
    move-result-object v7

    .line 89
    .line 90
    aput-object v7, v11, v6

    .line 91
    .line 92
    sget-object v7, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    .line 93
    .line 94
    new-array v10, v10, [F

    .line 95
    .line 96
    aput v4, v10, v6

    .line 97
    .line 98
    aput p7, v10, v5

    .line 99
    .line 100
    .line 101
    invoke-static {v7, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    .line 102
    move-result-object v4

    .line 103
    .line 104
    aput-object v4, v11, v5

    .line 105
    .line 106
    .line 107
    invoke-static {p0, v11}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    .line 108
    move-result-object v4

    .line 109
    .line 110
    new-instance v5, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;

    .line 111
    .line 112
    iget-object v1, v1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    .line 113
    move-object p1, v5

    .line 114
    .line 115
    move-object/from16 p2, p0

    .line 116
    .line 117
    move-object/from16 p3, v1

    .line 118
    .line 119
    move/from16 p4, v8

    .line 120
    .line 121
    move/from16 p5, v9

    .line 122
    .line 123
    move/from16 p6, v2

    .line 124
    .line 125
    move/from16 p7, v3

    .line 126
    .line 127
    .line 128
    invoke-direct/range {p1 .. p7}, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;-><init>(Landroid/view/View;Landroid/view/View;IIFF)V

    .line 129
    .line 130
    move-object/from16 v0, p9

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0, v5}, Landroidx/transition/Transition;->b(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v4, v5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 137
    .line 138
    .line 139
    invoke-static {v4, v5}, Landroidx/transition/AnimatorUtils;->a(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V

    .line 140
    .line 141
    move-object/from16 v0, p8

    .line 142
    .line 143
    .line 144
    invoke-virtual {v4, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 145
    return-object v4
.end method
