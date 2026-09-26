.class public Lcom/google/android/material/card/a;
.super Landroidx/cardview/widget/CardView;
.source "SourceFile"

# interfaces
.implements Landroid/widget/Checkable;
.implements Lcom/google/android/material/shape/o;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/card/a$a;
    }
.end annotation


# static fields
.field private static final ACCESSIBILITY_CLASS_NAME:Ljava/lang/String; = "androidx.cardview.widget.CardView"

.field private static final CHECKABLE_STATE_SET:[I

.field public static final CHECKED_ICON_GRAVITY_BOTTOM_END:I = 0x800055

.field public static final CHECKED_ICON_GRAVITY_BOTTOM_START:I = 0x800053

.field public static final CHECKED_ICON_GRAVITY_TOP_END:I = 0x800035

.field public static final CHECKED_ICON_GRAVITY_TOP_START:I = 0x800033

.field private static final CHECKED_STATE_SET:[I

.field private static final DEF_STYLE_RES:I

.field private static final DRAGGED_STATE_SET:[I

.field private static final LOG_TAG:Ljava/lang/String; = "MaterialCardView"


# instance fields
.field private final cardViewHelper:Lcom/google/android/material/card/b;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private checked:Z

.field private dragged:Z

.field private isParentCardViewDoneInitializing:Z

.field private onCheckedChangeListener:Lcom/google/android/material/card/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x101009f

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/material/card/a;->CHECKABLE_STATE_SET:[I

    const v0, 0x10100a0

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/material/card/a;->CHECKED_STATE_SET:[I

    sget v0, Ld3/b;->state_dragged:I

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/material/card/a;->DRAGGED_STATE_SET:[I

    sget v0, Ld3/k;->Widget_MaterialComponents_CardView:I

    sput v0, Lcom/google/android/material/card/a;->DEF_STYLE_RES:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/card/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Ld3/b;->materialCardViewStyle:I

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/card/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    sget v6, Lcom/google/android/material/card/a;->DEF_STYLE_RES:I

    .line 3
    invoke-static {p1, p2, p3, v6}, Lr3/a;->c(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroidx/cardview/widget/CardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/material/card/a;->checked:Z

    iput-boolean p1, p0, Lcom/google/android/material/card/a;->dragged:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/card/a;->isParentCardViewDoneInitializing:Z

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 5
    sget-object v2, Ld3/l;->MaterialCardView:[I

    new-array v5, p1, [I

    move-object v1, p2

    move v3, p3

    move v4, v6

    .line 6
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/s;->h(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 7
    new-instance v0, Lcom/google/android/material/card/b;

    invoke-direct {v0, p0, p2, p3, v6}, Lcom/google/android/material/card/b;-><init>(Lcom/google/android/material/card/a;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Lcom/google/android/material/card/a;->cardViewHelper:Lcom/google/android/material/card/b;

    .line 8
    invoke-super {p0}, Landroidx/cardview/widget/CardView;->getCardBackgroundColor()Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/google/android/material/card/b;->J(Landroid/content/res/ColorStateList;)V

    .line 9
    invoke-super {p0}, Landroidx/cardview/widget/CardView;->getContentPaddingLeft()I

    move-result p2

    .line 10
    invoke-super {p0}, Landroidx/cardview/widget/CardView;->getContentPaddingTop()I

    move-result p3

    .line 11
    invoke-super {p0}, Landroidx/cardview/widget/CardView;->getContentPaddingRight()I

    move-result v1

    .line 12
    invoke-super {p0}, Landroidx/cardview/widget/CardView;->getContentPaddingBottom()I

    move-result v2

    .line 13
    invoke-virtual {v0, p2, p3, v1, v2}, Lcom/google/android/material/card/b;->Y(IIII)V

    .line 14
    invoke-virtual {v0, p1}, Lcom/google/android/material/card/b;->G(Landroid/content/res/TypedArray;)V

    .line 15
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private getBoundsAsRectF()Landroid/graphics/RectF;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroid/graphics/RectF;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 6
    .line 7
    iget-object v1, p0, Lcom/google/android/material/card/a;->cardViewHelper:Lcom/google/android/material/card/b;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/google/android/material/card/b;->j()Lcom/google/android/material/shape/g;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 19
    return-object v0
.end method

.method static synthetic i(Lcom/google/android/material/card/a;)F
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroidx/cardview/widget/CardView;->getRadius()F

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private j()V
    .locals 2

    .line 1
    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    .line 4
    const/16 v1, 0x1a

    .line 5
    .line 6
    if-le v0, v1, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/material/card/a;->cardViewHelper:Lcom/google/android/material/card/b;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/google/android/material/card/b;->i()V

    .line 12
    :cond_0
    return-void
.end method


# virtual methods
.method public getCardBackgroundColor()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/card/a;->cardViewHelper:Lcom/google/android/material/card/b;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/material/card/b;->k()Landroid/content/res/ColorStateList;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getCardForegroundColor()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/card/a;->cardViewHelper:Lcom/google/android/material/card/b;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/material/card/b;->l()Landroid/content/res/ColorStateList;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method getCardViewRadius()F
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/google/android/material/card/a;->i(Lcom/google/android/material/card/a;)F

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public getCheckedIcon()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/card/a;->cardViewHelper:Lcom/google/android/material/card/b;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/material/card/b;->m()Landroid/graphics/drawable/Drawable;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getCheckedIconGravity()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/card/a;->cardViewHelper:Lcom/google/android/material/card/b;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/material/card/b;->n()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getCheckedIconMargin()I
    .locals 1
    .annotation build Landroidx/annotation/Dimension;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/card/a;->cardViewHelper:Lcom/google/android/material/card/b;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/material/card/b;->o()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getCheckedIconSize()I
    .locals 1
    .annotation build Landroidx/annotation/Dimension;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/card/a;->cardViewHelper:Lcom/google/android/material/card/b;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/material/card/b;->p()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getCheckedIconTint()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/card/a;->cardViewHelper:Lcom/google/android/material/card/b;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/material/card/b;->q()Landroid/content/res/ColorStateList;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getContentPaddingBottom()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/card/a;->cardViewHelper:Lcom/google/android/material/card/b;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/material/card/b;->A()Landroid/graphics/Rect;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 9
    return v0
.end method

.method public getContentPaddingLeft()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/card/a;->cardViewHelper:Lcom/google/android/material/card/b;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/material/card/b;->A()Landroid/graphics/Rect;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 9
    return v0
.end method

.method public getContentPaddingRight()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/card/a;->cardViewHelper:Lcom/google/android/material/card/b;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/material/card/b;->A()Landroid/graphics/Rect;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iget v0, v0, Landroid/graphics/Rect;->right:I

    .line 9
    return v0
.end method

.method public getContentPaddingTop()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/card/a;->cardViewHelper:Lcom/google/android/material/card/b;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/material/card/b;->A()Landroid/graphics/Rect;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 9
    return v0
.end method

.method public getProgress()F
    .locals 1
    .annotation build Landroidx/annotation/FloatRange;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/card/a;->cardViewHelper:Lcom/google/android/material/card/b;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/material/card/b;->u()F

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getRadius()F
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/card/a;->cardViewHelper:Lcom/google/android/material/card/b;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/material/card/b;->s()F

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getRippleColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/card/a;->cardViewHelper:Lcom/google/android/material/card/b;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/material/card/b;->v()Landroid/content/res/ColorStateList;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getShapeAppearanceModel()Lcom/google/android/material/shape/k;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/card/a;->cardViewHelper:Lcom/google/android/material/card/b;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/material/card/b;->w()Lcom/google/android/material/shape/k;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getStrokeColor()I
    .locals 1
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/card/a;->cardViewHelper:Lcom/google/android/material/card/b;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/material/card/b;->x()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getStrokeColorStateList()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/card/a;->cardViewHelper:Lcom/google/android/material/card/b;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/material/card/b;->y()Landroid/content/res/ColorStateList;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getStrokeWidth()I
    .locals 1
    .annotation build Landroidx/annotation/Dimension;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/card/a;->cardViewHelper:Lcom/google/android/material/card/b;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/material/card/b;->z()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isChecked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/card/a;->checked:Z

    return v0
.end method

.method public k()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/card/a;->cardViewHelper:Lcom/google/android/material/card/b;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/google/android/material/card/b;->D()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method public l()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/card/a;->dragged:Z

    return v0
.end method

.method m(IIII)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/cardview/widget/CardView;->h(IIII)V

    .line 4
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/material/card/a;->cardViewHelper:Lcom/google/android/material/card/b;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/google/android/material/card/b;->j()Lcom/google/android/material/shape/g;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    invoke-static {p0, v0}, Lcom/google/android/material/shape/h;->f(Landroid/view/View;Lcom/google/android/material/shape/g;)V

    .line 13
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 1

    .line 1
    .line 2
    add-int/lit8 p1, p1, 0x3

    .line 3
    .line 4
    .line 5
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onCreateDrawableState(I)[I

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/android/material/card/a;->k()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    sget-object v0, Lcom/google/android/material/card/a;->CHECKABLE_STATE_SET:[I

    .line 15
    .line 16
    .line 17
    invoke-static {p1, v0}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/card/a;->isChecked()Z

    .line 21
    move-result v0

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    sget-object v0, Lcom/google/android/material/card/a;->CHECKED_STATE_SET:[I

    .line 26
    .line 27
    .line 28
    invoke-static {p1, v0}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    .line 29
    .line 30
    .line 31
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/card/a;->l()Z

    .line 32
    move-result v0

    .line 33
    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    sget-object v0, Lcom/google/android/material/card/a;->DRAGGED_STATE_SET:[I

    .line 37
    .line 38
    .line 39
    invoke-static {p1, v0}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    .line 40
    :cond_2
    return-object p1
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1    # Landroid/view/accessibility/AccessibilityEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 4
    .line 5
    const-string v0, "androidx.cardview.widget.CardView"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/google/android/material/card/a;->isChecked()Z

    .line 12
    move-result v0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setChecked(Z)V

    .line 16
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1    # Landroid/view/accessibility/AccessibilityNodeInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 4
    .line 5
    const-string v0, "androidx.cardview.widget.CardView"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/google/android/material/card/a;->k()Z

    .line 12
    move-result v0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    .line 19
    move-result v0

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/google/android/material/card/a;->isChecked()Z

    .line 26
    move-result v0

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    .line 30
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Landroidx/cardview/widget/CardView;->onMeasure(II)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/google/android/material/card/a;->cardViewHelper:Lcom/google/android/material/card/b;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 9
    move-result p2

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 13
    move-result v0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, p2, v0}, Lcom/google/android/material/card/b;->H(II)V

    .line 17
    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/material/card/a;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/google/android/material/card/a;->isParentCardViewDoneInitializing:Z

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/material/card/a;->cardViewHelper:Lcom/google/android/material/card/b;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/android/material/card/b;->C()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    const-string v0, "MaterialCardView"

    .line 15
    .line 16
    const-string v1, "Setting a custom background is not supported."

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    iget-object v0, p0, Lcom/google/android/material/card/a;->cardViewHelper:Lcom/google/android/material/card/b;

    .line 22
    const/4 v1, 0x1

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lcom/google/android/material/card/b;->I(Z)V

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 29
    :cond_1
    return-void
.end method

.method setBackgroundInternal(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4
    return-void
.end method

.method public setCardBackgroundColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/material/card/a;->cardViewHelper:Lcom/google/android/material/card/b;

    .line 1
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/card/b;->J(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setCardBackgroundColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/material/card/a;->cardViewHelper:Lcom/google/android/material/card/b;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/material/card/b;->J(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setCardElevation(F)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroidx/cardview/widget/CardView;->setCardElevation(F)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/google/android/material/card/a;->cardViewHelper:Lcom/google/android/material/card/b;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/google/android/material/card/b;->d0()V

    .line 9
    return-void
.end method

.method public setCardForegroundColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/card/a;->cardViewHelper:Lcom/google/android/material/card/b;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/material/card/b;->K(Landroid/content/res/ColorStateList;)V

    .line 6
    return-void
.end method

.method public setCheckable(Z)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/card/a;->cardViewHelper:Lcom/google/android/material/card/b;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/material/card/b;->L(Z)V

    .line 6
    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/google/android/material/card/a;->checked:Z

    .line 3
    .line 4
    if-eq v0, p1, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/material/card/a;->toggle()V

    .line 8
    :cond_0
    return-void
.end method

.method public setCheckedIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/card/a;->cardViewHelper:Lcom/google/android/material/card/b;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/material/card/b;->N(Landroid/graphics/drawable/Drawable;)V

    .line 6
    return-void
.end method

.method public setCheckedIconGravity(I)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/card/a;->cardViewHelper:Lcom/google/android/material/card/b;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/material/card/b;->n()I

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eq v0, p1, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/android/material/card/a;->cardViewHelper:Lcom/google/android/material/card/b;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lcom/google/android/material/card/b;->O(I)V

    .line 14
    :cond_0
    return-void
.end method

.method public setCheckedIconMargin(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/card/a;->cardViewHelper:Lcom/google/android/material/card/b;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/material/card/b;->P(I)V

    .line 6
    return-void
.end method

.method public setCheckedIconMarginResource(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    .line 1
    const/4 v0, -0x1

    .line 2
    .line 3
    if-eq p1, v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/material/card/a;->cardViewHelper:Lcom/google/android/material/card/b;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 13
    move-result p1

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Lcom/google/android/material/card/b;->P(I)V

    .line 17
    :cond_0
    return-void
.end method

.method public setCheckedIconResource(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/card/a;->cardViewHelper:Lcom/google/android/material/card/b;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-static {v1, p1}, Landroidx/appcompat/content/res/AppCompatResources;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lcom/google/android/material/card/b;->N(Landroid/graphics/drawable/Drawable;)V

    .line 14
    return-void
.end method

.method public setCheckedIconSize(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/card/a;->cardViewHelper:Lcom/google/android/material/card/b;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/material/card/b;->Q(I)V

    .line 6
    return-void
.end method

.method public setCheckedIconSizeResource(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/material/card/a;->cardViewHelper:Lcom/google/android/material/card/b;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 12
    move-result p1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lcom/google/android/material/card/b;->Q(I)V

    .line 16
    :cond_0
    return-void
.end method

.method public setCheckedIconTint(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/card/a;->cardViewHelper:Lcom/google/android/material/card/b;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/material/card/b;->R(Landroid/content/res/ColorStateList;)V

    .line 6
    return-void
.end method

.method public setClickable(Z)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/google/android/material/card/a;->cardViewHelper:Lcom/google/android/material/card/b;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/google/android/material/card/b;->b0()V

    .line 11
    :cond_0
    return-void
.end method

.method public setDragged(Z)V
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/google/android/material/card/a;->dragged:Z

    .line 3
    .line 4
    if-eq v0, p1, :cond_0

    .line 5
    .line 6
    iput-boolean p1, p0, Lcom/google/android/material/card/a;->dragged:Z

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lcom/google/android/material/card/a;->j()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 16
    :cond_0
    return-void
.end method

.method public setMaxCardElevation(F)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroidx/cardview/widget/CardView;->setMaxCardElevation(F)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/google/android/material/card/a;->cardViewHelper:Lcom/google/android/material/card/b;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/google/android/material/card/b;->f0()V

    .line 9
    return-void
.end method

.method public setOnCheckedChangeListener(Lcom/google/android/material/card/a$a;)V
    .locals 0
    .param p1    # Lcom/google/android/material/card/a$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public setPreventCornerOverlap(Z)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroidx/cardview/widget/CardView;->setPreventCornerOverlap(Z)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/google/android/material/card/a;->cardViewHelper:Lcom/google/android/material/card/b;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/google/android/material/card/b;->f0()V

    .line 9
    .line 10
    iget-object p1, p0, Lcom/google/android/material/card/a;->cardViewHelper:Lcom/google/android/material/card/b;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/google/android/material/card/b;->c0()V

    .line 14
    return-void
.end method

.method public setProgress(F)V
    .locals 1
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/card/a;->cardViewHelper:Lcom/google/android/material/card/b;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/material/card/b;->T(F)V

    .line 6
    return-void
.end method

.method public setRadius(F)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroidx/cardview/widget/CardView;->setRadius(F)V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/material/card/a;->cardViewHelper:Lcom/google/android/material/card/b;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/google/android/material/card/b;->S(F)V

    .line 9
    return-void
.end method

.method public setRippleColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/card/a;->cardViewHelper:Lcom/google/android/material/card/b;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/material/card/b;->U(Landroid/content/res/ColorStateList;)V

    .line 6
    return-void
.end method

.method public setRippleColorResource(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/card/a;->cardViewHelper:Lcom/google/android/material/card/b;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-static {v1, p1}, Landroidx/appcompat/content/res/AppCompatResources;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lcom/google/android/material/card/b;->U(Landroid/content/res/ColorStateList;)V

    .line 14
    return-void
.end method

.method public setShapeAppearanceModel(Lcom/google/android/material/shape/k;)V
    .locals 1
    .param p1    # Lcom/google/android/material/shape/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/material/card/a;->getBoundsAsRectF()Landroid/graphics/RectF;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, v0}, Lcom/google/android/material/shape/k;->u(Landroid/graphics/RectF;)Z

    .line 8
    move-result v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Landroid/view/View;->setClipToOutline(Z)V

    .line 12
    .line 13
    iget-object v0, p0, Lcom/google/android/material/card/a;->cardViewHelper:Lcom/google/android/material/card/b;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Lcom/google/android/material/card/b;->V(Lcom/google/android/material/shape/k;)V

    .line 17
    return-void
.end method

.method public setStrokeColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/card/a;->setStrokeColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setStrokeColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/card/a;->cardViewHelper:Lcom/google/android/material/card/b;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/material/card/b;->W(Landroid/content/res/ColorStateList;)V

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setStrokeWidth(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/card/a;->cardViewHelper:Lcom/google/android/material/card/b;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/material/card/b;->X(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 9
    return-void
.end method

.method public setUseCompatPadding(Z)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroidx/cardview/widget/CardView;->setUseCompatPadding(Z)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/google/android/material/card/a;->cardViewHelper:Lcom/google/android/material/card/b;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/google/android/material/card/b;->f0()V

    .line 9
    .line 10
    iget-object p1, p0, Lcom/google/android/material/card/a;->cardViewHelper:Lcom/google/android/material/card/b;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/google/android/material/card/b;->c0()V

    .line 14
    return-void
.end method

.method public toggle()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/card/a;->k()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-boolean v0, p0, Lcom/google/android/material/card/a;->checked:Z

    .line 15
    .line 16
    xor-int/lit8 v0, v0, 0x1

    .line 17
    .line 18
    iput-boolean v0, p0, Lcom/google/android/material/card/a;->checked:Z

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 22
    .line 23
    .line 24
    invoke-direct {p0}, Lcom/google/android/material/card/a;->j()V

    .line 25
    .line 26
    iget-object v0, p0, Lcom/google/android/material/card/a;->cardViewHelper:Lcom/google/android/material/card/b;

    .line 27
    .line 28
    iget-boolean v1, p0, Lcom/google/android/material/card/a;->checked:Z

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Lcom/google/android/material/card/b;->M(Z)V

    .line 32
    :cond_0
    return-void
.end method
