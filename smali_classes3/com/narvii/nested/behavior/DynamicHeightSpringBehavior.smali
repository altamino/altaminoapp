.class public Lcom/narvii/nested/behavior/DynamicHeightSpringBehavior;
.super Lcom/narvii/nested/behavior/SpringBehavior;
.source "DynamicHeightSpringBehavior.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/nested/behavior/DynamicHeightSpringBehavior$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/nested/behavior/DynamicHeightSpringBehavior$Companion;

.field public static final TAG:Ljava/lang/String; = "DynamicHeightSpringBehavior"


# instance fields
.field private oldDynamicChildHeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/nested/behavior/DynamicHeightSpringBehavior$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/nested/behavior/DynamicHeightSpringBehavior$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/narvii/nested/behavior/DynamicHeightSpringBehavior;->Companion:Lcom/narvii/nested/behavior/DynamicHeightSpringBehavior$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/narvii/nested/behavior/SpringBehavior;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/narvii/nested/behavior/SpringBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final correctedHeight(Lcom/narvii/nested/NVAppBarLayout;)V
    .locals 3

    .line 29
    iget v0, p0, Lcom/narvii/nested/behavior/SpringBehavior;->mPreHeadHeight:I

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/narvii/nested/behavior/SpringBehavior;->mPreHeadHeight:I

    if-lt v0, v1, :cond_4

    iget v0, p0, Lcom/narvii/nested/behavior/SpringBehavior;->mOffsetSpring:I

    if-ltz v0, :cond_4

    invoke-virtual {p0}, Lcom/narvii/nested/behavior/DynamicHeightSpringBehavior;->dynamicChildId()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 32
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/nested/behavior/DynamicHeightSpringBehavior;->dynamicChildId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 34
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_2

    .line 35
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 36
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p1, v1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p1, v0

    goto :goto_0

    .line 35
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 38
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    .line 40
    :goto_0
    iget v0, p0, Lcom/narvii/nested/behavior/DynamicHeightSpringBehavior;->oldDynamicChildHeight:I

    if-eqz v0, :cond_3

    if-eq v0, p1, :cond_3

    .line 41
    iget v1, p0, Lcom/narvii/nested/behavior/SpringBehavior;->mPreHeadHeight:I

    sub-int v0, p1, v0

    add-int/2addr v0, v1

    .line 42
    iput v0, p0, Lcom/narvii/nested/behavior/SpringBehavior;->mPreHeadHeight:I

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "correctPreHeadHeight :  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  >>>  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/narvii/nested/behavior/SpringBehavior;->mPreHeadHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DynamicHeightSpringBehavior"

    invoke-static {v1, v0}, Lcom/narvii/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    :cond_3
    iput p1, p0, Lcom/narvii/nested/behavior/DynamicHeightSpringBehavior;->oldDynamicChildHeight:I

    :cond_4
    :goto_1
    return-void
.end method

.method public dynamicChildId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getOldDynamicChildHeight()I
    .locals 1

    .line 13
    iget v0, p0, Lcom/narvii/nested/behavior/DynamicHeightSpringBehavior;->oldDynamicChildHeight:I

    return v0
.end method

.method public bridge synthetic onMeasureChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;IIII)Z
    .locals 0

    .line 11
    check-cast p2, Lcom/narvii/nested/NVAppBarLayout;

    invoke-virtual/range {p0 .. p6}, Lcom/narvii/nested/behavior/DynamicHeightSpringBehavior;->onMeasureChild(Landroid/support/design/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;IIII)Z

    move-result p1

    return p1
.end method

.method public onMeasureChild(Landroid/support/design/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;IIII)Z
    .locals 0

    .line 23
    invoke-super/range {p0 .. p6}, Lcom/narvii/nested/behavior/SpringBehavior;->onMeasureChild(Landroid/support/design/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;IIII)Z

    move-result p1

    .line 24
    invoke-virtual {p0, p2}, Lcom/narvii/nested/behavior/DynamicHeightSpringBehavior;->correctedHeight(Lcom/narvii/nested/NVAppBarLayout;)V

    return p1
.end method

.method public final setOldDynamicChildHeight(I)V
    .locals 0

    .line 13
    iput p1, p0, Lcom/narvii/nested/behavior/DynamicHeightSpringBehavior;->oldDynamicChildHeight:I

    return-void
.end method
