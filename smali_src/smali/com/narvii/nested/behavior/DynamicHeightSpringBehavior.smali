.class public Lcom/narvii/nested/behavior/DynamicHeightSpringBehavior;
.super Lcom/narvii/nested/behavior/SpringBehavior;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/nested/behavior/DynamicHeightSpringBehavior$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/nested/behavior/DynamicHeightSpringBehavior$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "DynamicHeightSpringBehavior"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private oldDynamicChildHeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/nested/behavior/DynamicHeightSpringBehavior$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/nested/behavior/DynamicHeightSpringBehavior$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Lcom/narvii/nested/behavior/DynamicHeightSpringBehavior;->Companion:Lcom/narvii/nested/behavior/DynamicHeightSpringBehavior$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/nested/behavior/SpringBehavior;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/narvii/nested/behavior/SpringBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private final correctedHeight(Lcom/narvii/nested/NVAppBarLayout;)V
    .locals 3

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/nested/behavior/SpringBehavior;->mPreHeadHeight:I

    .line 3
    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    if-eqz p1, :cond_3

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 10
    move-result v0

    .line 11
    .line 12
    iget v1, p0, Lcom/narvii/nested/behavior/SpringBehavior;->mPreHeadHeight:I

    .line 13
    .line 14
    if-lt v0, v1, :cond_3

    .line 15
    .line 16
    iget v0, p0, Lcom/narvii/nested/behavior/SpringBehavior;->mOffsetSpring:I

    .line 17
    .line 18
    if-ltz v0, :cond_3

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/narvii/nested/behavior/DynamicHeightSpringBehavior;->dynamicChildId()I

    .line 22
    move-result v0

    .line 23
    .line 24
    if-nez v0, :cond_0

    .line 25
    goto :goto_1

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/nested/behavior/DynamicHeightSpringBehavior;->dynamicChildId()I

    .line 29
    move-result v0

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    if-eqz p1, :cond_3

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 42
    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 47
    move-result-object v0

    .line 48
    .line 49
    const-string v1, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    .line 50
    .line 51
    .line 52
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    .line 54
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 58
    move-result p1

    .line 59
    .line 60
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 61
    add-int/2addr p1, v1

    .line 62
    .line 63
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 64
    add-int/2addr p1, v0

    .line 65
    goto :goto_0

    .line 66
    .line 67
    .line 68
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 69
    move-result p1

    .line 70
    .line 71
    :goto_0
    iget v0, p0, Lcom/narvii/nested/behavior/DynamicHeightSpringBehavior;->oldDynamicChildHeight:I

    .line 72
    .line 73
    if-eqz v0, :cond_2

    .line 74
    .line 75
    if-eq v0, p1, :cond_2

    .line 76
    .line 77
    iget v1, p0, Lcom/narvii/nested/behavior/SpringBehavior;->mPreHeadHeight:I

    .line 78
    .line 79
    sub-int v0, p1, v0

    .line 80
    add-int/2addr v0, v1

    .line 81
    .line 82
    iput v0, p0, Lcom/narvii/nested/behavior/SpringBehavior;->mPreHeadHeight:I

    .line 83
    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .line 89
    const-string v2, "correctPreHeadHeight :  "

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    const-string v1, "  >>>  "

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    iget v1, p0, Lcom/narvii/nested/behavior/SpringBehavior;->mPreHeadHeight:I

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    move-result-object v0

    .line 110
    .line 111
    const-string v1, "DynamicHeightSpringBehavior"

    .line 112
    .line 113
    .line 114
    invoke-static {v1, v0}, Lcom/narvii/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .line 116
    :cond_2
    iput p1, p0, Lcom/narvii/nested/behavior/DynamicHeightSpringBehavior;->oldDynamicChildHeight:I

    .line 117
    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public dynamicChildId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic onMeasureChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;IIII)Z
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/nested/NVAppBarLayout;

    invoke-virtual/range {p0 .. p6}, Lcom/narvii/nested/behavior/DynamicHeightSpringBehavior;->onMeasureChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;IIII)Z

    move-result p1

    return p1
.end method

.method public onMeasureChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;IIII)Z
    .locals 1
    .param p1    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/nested/NVAppBarLayout;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "child"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-super/range {p0 .. p6}, Lcom/narvii/nested/behavior/SpringBehavior;->onMeasureChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;IIII)Z

    move-result p1

    .line 3
    invoke-direct {p0, p2}, Lcom/narvii/nested/behavior/DynamicHeightSpringBehavior;->correctedHeight(Lcom/narvii/nested/NVAppBarLayout;)V

    return p1
.end method
