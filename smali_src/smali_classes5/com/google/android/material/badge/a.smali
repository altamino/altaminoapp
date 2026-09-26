.class public Lcom/google/android/material/badge/a;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/internal/p$b;


# static fields
.field public static final BOTTOM_END:I = 0x800055

.field public static final BOTTOM_START:I = 0x800053

.field static final DEFAULT_EXCEED_MAX_BADGE_NUMBER_SUFFIX:Ljava/lang/String; = "+"

.field private static final DEFAULT_STYLE:I
    .annotation build Landroidx/annotation/StyleRes;
    .end annotation
.end field

.field private static final DEFAULT_THEME_ATTR:I
    .annotation build Landroidx/annotation/AttrRes;
    .end annotation
.end field

.field private static final MAX_CIRCULAR_BADGE_NUMBER_COUNT:I = 0x9

.field public static final TOP_END:I = 0x800035

.field public static final TOP_START:I = 0x800033


# instance fields
.field private anchorViewRef:Ljava/lang/ref/WeakReference;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final badgeBounds:Landroid/graphics/Rect;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private badgeCenterX:F

.field private badgeCenterY:F

.field private final contextRef:Ljava/lang/ref/WeakReference;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private cornerRadius:F

.field private customBadgeParentRef:Ljava/lang/ref/WeakReference;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/FrameLayout;",
            ">;"
        }
    .end annotation
.end field

.field private halfBadgeHeight:F

.field private halfBadgeWidth:F

.field private maxBadgeNumber:I

.field private final shapeDrawable:Lcom/google/android/material/shape/g;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final state:Lcom/google/android/material/badge/BadgeState;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final textDrawableHelper:Lcom/google/android/material/internal/p;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Ld3/k;->Widget_MaterialComponents_Badge:I

    sput v0, Lcom/google/android/material/badge/a;->DEFAULT_STYLE:I

    sget v0, Ld3/b;->badgeStyle:I

    sput v0, Lcom/google/android/material/badge/a;->DEFAULT_THEME_ATTR:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;IIILcom/google/android/material/badge/BadgeState$State;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/XmlRes;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param
    .param p5    # Lcom/google/android/material/badge/BadgeState$State;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/google/android/material/badge/a;->contextRef:Ljava/lang/ref/WeakReference;

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lcom/google/android/material/internal/s;->c(Landroid/content/Context;)V

    .line 14
    .line 15
    new-instance v0, Landroid/graphics/Rect;

    .line 16
    .line 17
    .line 18
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 19
    .line 20
    iput-object v0, p0, Lcom/google/android/material/badge/a;->badgeBounds:Landroid/graphics/Rect;

    .line 21
    .line 22
    new-instance v0, Lcom/google/android/material/shape/g;

    .line 23
    .line 24
    .line 25
    invoke-direct {v0}, Lcom/google/android/material/shape/g;-><init>()V

    .line 26
    .line 27
    iput-object v0, p0, Lcom/google/android/material/badge/a;->shapeDrawable:Lcom/google/android/material/shape/g;

    .line 28
    .line 29
    new-instance v0, Lcom/google/android/material/internal/p;

    .line 30
    .line 31
    .line 32
    invoke-direct {v0, p0}, Lcom/google/android/material/internal/p;-><init>(Lcom/google/android/material/internal/p$b;)V

    .line 33
    .line 34
    iput-object v0, p0, Lcom/google/android/material/badge/a;->textDrawableHelper:Lcom/google/android/material/internal/p;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/google/android/material/internal/p;->e()Landroid/text/TextPaint;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 44
    .line 45
    sget v0, Ld3/k;->TextAppearance_MaterialComponents_Badge:I

    .line 46
    .line 47
    .line 48
    invoke-direct {p0, v0}, Lcom/google/android/material/badge/a;->x(I)V

    .line 49
    .line 50
    new-instance v0, Lcom/google/android/material/badge/BadgeState;

    .line 51
    move-object v1, v0

    .line 52
    move-object v2, p1

    .line 53
    move v3, p2

    .line 54
    move v4, p3

    .line 55
    move v5, p4

    .line 56
    move-object v6, p5

    .line 57
    .line 58
    .line 59
    invoke-direct/range {v1 .. v6}, Lcom/google/android/material/badge/BadgeState;-><init>(Landroid/content/Context;IIILcom/google/android/material/badge/BadgeState$State;)V

    .line 60
    .line 61
    iput-object v0, p0, Lcom/google/android/material/badge/a;->state:Lcom/google/android/material/badge/BadgeState;

    .line 62
    .line 63
    .line 64
    invoke-direct {p0}, Lcom/google/android/material/badge/a;->v()V

    .line 65
    return-void
.end method

.method private B()V
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/badge/a;->contextRef:Ljava/lang/ref/WeakReference;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroid/content/Context;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/google/android/material/badge/a;->anchorViewRef:Ljava/lang/ref/WeakReference;

    .line 11
    const/4 v2, 0x0

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    check-cast v1, Landroid/view/View;

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move-object v1, v2

    .line 22
    .line 23
    :goto_0
    if-eqz v0, :cond_6

    .line 24
    .line 25
    if-nez v1, :cond_1

    .line 26
    goto :goto_1

    .line 27
    .line 28
    :cond_1
    new-instance v3, Landroid/graphics/Rect;

    .line 29
    .line 30
    .line 31
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 32
    .line 33
    iget-object v4, p0, Lcom/google/android/material/badge/a;->badgeBounds:Landroid/graphics/Rect;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 37
    .line 38
    new-instance v4, Landroid/graphics/Rect;

    .line 39
    .line 40
    .line 41
    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v4}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 45
    .line 46
    iget-object v5, p0, Lcom/google/android/material/badge/a;->customBadgeParentRef:Ljava/lang/ref/WeakReference;

    .line 47
    .line 48
    if-eqz v5, :cond_2

    .line 49
    .line 50
    .line 51
    invoke-virtual {v5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 52
    move-result-object v2

    .line 53
    .line 54
    check-cast v2, Landroid/widget/FrameLayout;

    .line 55
    .line 56
    :cond_2
    if-nez v2, :cond_3

    .line 57
    .line 58
    sget-boolean v5, Lcom/google/android/material/badge/c;->USE_COMPAT_PARENT:Z

    .line 59
    .line 60
    if-eqz v5, :cond_5

    .line 61
    .line 62
    :cond_3
    if-nez v2, :cond_4

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 66
    move-result-object v2

    .line 67
    .line 68
    check-cast v2, Landroid/view/ViewGroup;

    .line 69
    .line 70
    .line 71
    :cond_4
    invoke-virtual {v2, v1, v4}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 72
    .line 73
    .line 74
    :cond_5
    invoke-direct {p0, v0, v4, v1}, Lcom/google/android/material/badge/a;->b(Landroid/content/Context;Landroid/graphics/Rect;Landroid/view/View;)V

    .line 75
    .line 76
    iget-object v0, p0, Lcom/google/android/material/badge/a;->badgeBounds:Landroid/graphics/Rect;

    .line 77
    .line 78
    iget v1, p0, Lcom/google/android/material/badge/a;->badgeCenterX:F

    .line 79
    .line 80
    iget v2, p0, Lcom/google/android/material/badge/a;->badgeCenterY:F

    .line 81
    .line 82
    iget v4, p0, Lcom/google/android/material/badge/a;->halfBadgeWidth:F

    .line 83
    .line 84
    iget v5, p0, Lcom/google/android/material/badge/a;->halfBadgeHeight:F

    .line 85
    .line 86
    .line 87
    invoke-static {v0, v1, v2, v4, v5}, Lcom/google/android/material/badge/c;->f(Landroid/graphics/Rect;FFFF)V

    .line 88
    .line 89
    iget-object v0, p0, Lcom/google/android/material/badge/a;->shapeDrawable:Lcom/google/android/material/shape/g;

    .line 90
    .line 91
    iget v1, p0, Lcom/google/android/material/badge/a;->cornerRadius:F

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/g;->W(F)V

    .line 95
    .line 96
    iget-object v0, p0, Lcom/google/android/material/badge/a;->badgeBounds:Landroid/graphics/Rect;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 100
    move-result v0

    .line 101
    .line 102
    if-nez v0, :cond_6

    .line 103
    .line 104
    iget-object v0, p0, Lcom/google/android/material/badge/a;->shapeDrawable:Lcom/google/android/material/shape/g;

    .line 105
    .line 106
    iget-object v1, p0, Lcom/google/android/material/badge/a;->badgeBounds:Landroid/graphics/Rect;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 110
    :cond_6
    :goto_1
    return-void
.end method

.method private C()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/badge/a;->i()I

    .line 4
    move-result v0

    .line 5
    int-to-double v0, v0

    .line 6
    .line 7
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 8
    sub-double/2addr v0, v2

    .line 9
    .line 10
    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    .line 11
    .line 12
    .line 13
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    .line 14
    move-result-wide v0

    .line 15
    double-to-int v0, v0

    .line 16
    .line 17
    add-int/lit8 v0, v0, -0x1

    .line 18
    .line 19
    iput v0, p0, Lcom/google/android/material/badge/a;->maxBadgeNumber:I

    .line 20
    return-void
.end method

.method private b(Landroid/content/Context;Landroid/graphics/Rect;Landroid/view/View;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/material/badge/a;->m()I

    .line 4
    move-result v0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/material/badge/a;->state:Lcom/google/android/material/badge/BadgeState;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/google/android/material/badge/BadgeState;->f()I

    .line 10
    move-result v1

    .line 11
    .line 12
    .line 13
    const v2, 0x800053

    .line 14
    .line 15
    if-eq v1, v2, :cond_0

    .line 16
    .line 17
    .line 18
    const v3, 0x800055

    .line 19
    .line 20
    if-eq v1, v3, :cond_0

    .line 21
    .line 22
    iget v1, p2, Landroid/graphics/Rect;->top:I

    .line 23
    add-int/2addr v1, v0

    .line 24
    int-to-float v0, v1

    .line 25
    .line 26
    iput v0, p0, Lcom/google/android/material/badge/a;->badgeCenterY:F

    .line 27
    goto :goto_0

    .line 28
    .line 29
    :cond_0
    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    .line 30
    sub-int/2addr v1, v0

    .line 31
    int-to-float v0, v1

    .line 32
    .line 33
    iput v0, p0, Lcom/google/android/material/badge/a;->badgeCenterY:F

    .line 34
    .line 35
    .line 36
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/badge/a;->j()I

    .line 37
    move-result v0

    .line 38
    .line 39
    const/16 v1, 0x9

    .line 40
    .line 41
    if-gt v0, v1, :cond_2

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/google/android/material/badge/a;->n()Z

    .line 45
    move-result v0

    .line 46
    .line 47
    if-nez v0, :cond_1

    .line 48
    .line 49
    iget-object v0, p0, Lcom/google/android/material/badge/a;->state:Lcom/google/android/material/badge/BadgeState;

    .line 50
    .line 51
    iget v0, v0, Lcom/google/android/material/badge/BadgeState;->badgeRadius:F

    .line 52
    goto :goto_1

    .line 53
    .line 54
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/badge/a;->state:Lcom/google/android/material/badge/BadgeState;

    .line 55
    .line 56
    iget v0, v0, Lcom/google/android/material/badge/BadgeState;->badgeWithTextRadius:F

    .line 57
    .line 58
    :goto_1
    iput v0, p0, Lcom/google/android/material/badge/a;->cornerRadius:F

    .line 59
    .line 60
    iput v0, p0, Lcom/google/android/material/badge/a;->halfBadgeHeight:F

    .line 61
    .line 62
    iput v0, p0, Lcom/google/android/material/badge/a;->halfBadgeWidth:F

    .line 63
    goto :goto_2

    .line 64
    .line 65
    :cond_2
    iget-object v0, p0, Lcom/google/android/material/badge/a;->state:Lcom/google/android/material/badge/BadgeState;

    .line 66
    .line 67
    iget v0, v0, Lcom/google/android/material/badge/BadgeState;->badgeWithTextRadius:F

    .line 68
    .line 69
    iput v0, p0, Lcom/google/android/material/badge/a;->cornerRadius:F

    .line 70
    .line 71
    iput v0, p0, Lcom/google/android/material/badge/a;->halfBadgeHeight:F

    .line 72
    .line 73
    .line 74
    invoke-direct {p0}, Lcom/google/android/material/badge/a;->e()Ljava/lang/String;

    .line 75
    move-result-object v0

    .line 76
    .line 77
    iget-object v1, p0, Lcom/google/android/material/badge/a;->textDrawableHelper:Lcom/google/android/material/internal/p;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1, v0}, Lcom/google/android/material/internal/p;->f(Ljava/lang/String;)F

    .line 81
    move-result v0

    .line 82
    .line 83
    const/high16 v1, 0x40000000    # 2.0f

    .line 84
    div-float/2addr v0, v1

    .line 85
    .line 86
    iget-object v1, p0, Lcom/google/android/material/badge/a;->state:Lcom/google/android/material/badge/BadgeState;

    .line 87
    .line 88
    iget v1, v1, Lcom/google/android/material/badge/BadgeState;->badgeWidePadding:F

    .line 89
    add-float/2addr v0, v1

    .line 90
    .line 91
    iput v0, p0, Lcom/google/android/material/badge/a;->halfBadgeWidth:F

    .line 92
    .line 93
    .line 94
    :goto_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 95
    move-result-object p1

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0}, Lcom/google/android/material/badge/a;->n()Z

    .line 99
    move-result v0

    .line 100
    .line 101
    if-eqz v0, :cond_3

    .line 102
    .line 103
    sget v0, Ld3/d;->mtrl_badge_text_horizontal_edge_offset:I

    .line 104
    goto :goto_3

    .line 105
    .line 106
    :cond_3
    sget v0, Ld3/d;->mtrl_badge_horizontal_edge_offset:I

    .line 107
    .line 108
    .line 109
    :goto_3
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 110
    move-result p1

    .line 111
    .line 112
    .line 113
    invoke-direct {p0}, Lcom/google/android/material/badge/a;->l()I

    .line 114
    move-result v0

    .line 115
    .line 116
    iget-object v1, p0, Lcom/google/android/material/badge/a;->state:Lcom/google/android/material/badge/BadgeState;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v1}, Lcom/google/android/material/badge/BadgeState;->f()I

    .line 120
    move-result v1

    .line 121
    .line 122
    .line 123
    const v3, 0x800033

    .line 124
    .line 125
    if-eq v1, v3, :cond_5

    .line 126
    .line 127
    if-eq v1, v2, :cond_5

    .line 128
    .line 129
    .line 130
    invoke-static {p3}, Landroidx/core/view/ViewCompat;->D(Landroid/view/View;)I

    .line 131
    move-result p3

    .line 132
    .line 133
    if-nez p3, :cond_4

    .line 134
    .line 135
    iget p2, p2, Landroid/graphics/Rect;->right:I

    .line 136
    int-to-float p2, p2

    .line 137
    .line 138
    iget p3, p0, Lcom/google/android/material/badge/a;->halfBadgeWidth:F

    .line 139
    add-float/2addr p2, p3

    .line 140
    int-to-float p1, p1

    .line 141
    sub-float/2addr p2, p1

    .line 142
    int-to-float p1, v0

    .line 143
    sub-float/2addr p2, p1

    .line 144
    goto :goto_4

    .line 145
    .line 146
    :cond_4
    iget p2, p2, Landroid/graphics/Rect;->left:I

    .line 147
    int-to-float p2, p2

    .line 148
    .line 149
    iget p3, p0, Lcom/google/android/material/badge/a;->halfBadgeWidth:F

    .line 150
    sub-float/2addr p2, p3

    .line 151
    int-to-float p1, p1

    .line 152
    add-float/2addr p2, p1

    .line 153
    int-to-float p1, v0

    .line 154
    add-float/2addr p2, p1

    .line 155
    .line 156
    :goto_4
    iput p2, p0, Lcom/google/android/material/badge/a;->badgeCenterX:F

    .line 157
    goto :goto_6

    .line 158
    .line 159
    .line 160
    :cond_5
    invoke-static {p3}, Landroidx/core/view/ViewCompat;->D(Landroid/view/View;)I

    .line 161
    move-result p3

    .line 162
    .line 163
    if-nez p3, :cond_6

    .line 164
    .line 165
    iget p2, p2, Landroid/graphics/Rect;->left:I

    .line 166
    int-to-float p2, p2

    .line 167
    .line 168
    iget p3, p0, Lcom/google/android/material/badge/a;->halfBadgeWidth:F

    .line 169
    sub-float/2addr p2, p3

    .line 170
    int-to-float p1, p1

    .line 171
    add-float/2addr p2, p1

    .line 172
    int-to-float p1, v0

    .line 173
    add-float/2addr p2, p1

    .line 174
    goto :goto_5

    .line 175
    .line 176
    :cond_6
    iget p2, p2, Landroid/graphics/Rect;->right:I

    .line 177
    int-to-float p2, p2

    .line 178
    .line 179
    iget p3, p0, Lcom/google/android/material/badge/a;->halfBadgeWidth:F

    .line 180
    add-float/2addr p2, p3

    .line 181
    int-to-float p1, p1

    .line 182
    sub-float/2addr p2, p1

    .line 183
    int-to-float p1, v0

    .line 184
    sub-float/2addr p2, p1

    .line 185
    .line 186
    :goto_5
    iput p2, p0, Lcom/google/android/material/badge/a;->badgeCenterX:F

    .line 187
    :goto_6
    return-void
.end method

.method static c(Landroid/content/Context;Lcom/google/android/material/badge/BadgeState$State;)Lcom/google/android/material/badge/a;
    .locals 7
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/google/android/material/badge/BadgeState$State;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    new-instance v6, Lcom/google/android/material/badge/a;

    .line 3
    const/4 v2, 0x0

    .line 4
    .line 5
    sget v3, Lcom/google/android/material/badge/a;->DEFAULT_THEME_ATTR:I

    .line 6
    .line 7
    sget v4, Lcom/google/android/material/badge/a;->DEFAULT_STYLE:I

    .line 8
    move-object v0, v6

    .line 9
    move-object v1, p0

    .line 10
    move-object v5, p1

    .line 11
    .line 12
    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/google/android/material/badge/a;-><init>(Landroid/content/Context;IIILcom/google/android/material/badge/BadgeState$State;)V

    .line 14
    return-object v6
.end method

.method private d(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1
    .line 2
    new-instance v0, Landroid/graphics/Rect;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/google/android/material/badge/a;->e()Ljava/lang/String;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    iget-object v2, p0, Lcom/google/android/material/badge/a;->textDrawableHelper:Lcom/google/android/material/internal/p;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2}, Lcom/google/android/material/internal/p;->e()Landroid/text/TextPaint;

    .line 15
    move-result-object v2

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 19
    move-result v3

    .line 20
    const/4 v4, 0x0

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, v1, v4, v3, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 24
    .line 25
    iget v2, p0, Lcom/google/android/material/badge/a;->badgeCenterX:F

    .line 26
    .line 27
    iget v3, p0, Lcom/google/android/material/badge/a;->badgeCenterY:F

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 31
    move-result v0

    .line 32
    .line 33
    div-int/lit8 v0, v0, 0x2

    .line 34
    int-to-float v0, v0

    .line 35
    add-float/2addr v3, v0

    .line 36
    .line 37
    iget-object v0, p0, Lcom/google/android/material/badge/a;->textDrawableHelper:Lcom/google/android/material/internal/p;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/google/android/material/internal/p;->e()Landroid/text/TextPaint;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 45
    return-void
.end method

.method private e()Ljava/lang/String;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/badge/a;->j()I

    .line 4
    move-result v0

    .line 5
    .line 6
    iget v1, p0, Lcom/google/android/material/badge/a;->maxBadgeNumber:I

    .line 7
    .line 8
    if-gt v0, v1, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/android/material/badge/a;->state:Lcom/google/android/material/badge/BadgeState;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeState;->o()Ljava/util/Locale;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/google/android/material/badge/a;->j()I

    .line 22
    move-result v1

    .line 23
    int-to-long v1, v1

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    .line 27
    move-result-object v0

    .line 28
    return-object v0

    .line 29
    .line 30
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/badge/a;->contextRef:Ljava/lang/ref/WeakReference;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    check-cast v0, Landroid/content/Context;

    .line 37
    .line 38
    if-nez v0, :cond_1

    .line 39
    .line 40
    const-string v0, ""

    .line 41
    return-object v0

    .line 42
    .line 43
    :cond_1
    iget-object v1, p0, Lcom/google/android/material/badge/a;->state:Lcom/google/android/material/badge/BadgeState;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Lcom/google/android/material/badge/BadgeState;->o()Ljava/util/Locale;

    .line 47
    move-result-object v1

    .line 48
    .line 49
    sget v2, Ld3/j;->mtrl_exceed_max_badge_number_suffix:I

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 53
    move-result-object v0

    .line 54
    const/4 v2, 0x2

    .line 55
    .line 56
    new-array v2, v2, [Ljava/lang/Object;

    .line 57
    .line 58
    iget v3, p0, Lcom/google/android/material/badge/a;->maxBadgeNumber:I

    .line 59
    .line 60
    .line 61
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    move-result-object v3

    .line 63
    const/4 v4, 0x0

    .line 64
    .line 65
    aput-object v3, v2, v4

    .line 66
    const/4 v3, 0x1

    .line 67
    .line 68
    const-string v4, "+"

    .line 69
    .line 70
    aput-object v4, v2, v3

    .line 71
    .line 72
    .line 73
    invoke-static {v1, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 74
    move-result-object v0

    .line 75
    return-object v0
.end method

.method private l()I
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/badge/a;->n()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/material/badge/a;->state:Lcom/google/android/material/badge/BadgeState;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeState;->k()I

    .line 12
    move-result v0

    .line 13
    goto :goto_0

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/badge/a;->state:Lcom/google/android/material/badge/BadgeState;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeState;->l()I

    .line 19
    move-result v0

    .line 20
    .line 21
    :goto_0
    iget-object v1, p0, Lcom/google/android/material/badge/a;->state:Lcom/google/android/material/badge/BadgeState;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/google/android/material/badge/BadgeState;->b()I

    .line 25
    move-result v1

    .line 26
    add-int/2addr v0, v1

    .line 27
    return v0
.end method

.method private m()I
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/badge/a;->n()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/material/badge/a;->state:Lcom/google/android/material/badge/BadgeState;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeState;->q()I

    .line 12
    move-result v0

    .line 13
    goto :goto_0

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/badge/a;->state:Lcom/google/android/material/badge/BadgeState;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeState;->r()I

    .line 19
    move-result v0

    .line 20
    .line 21
    :goto_0
    iget-object v1, p0, Lcom/google/android/material/badge/a;->state:Lcom/google/android/material/badge/BadgeState;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/google/android/material/badge/BadgeState;->c()I

    .line 25
    move-result v1

    .line 26
    add-int/2addr v0, v1

    .line 27
    return v0
.end method

.method private o()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/badge/a;->textDrawableHelper:Lcom/google/android/material/internal/p;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/material/internal/p;->e()Landroid/text/TextPaint;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/android/material/badge/a;->getAlpha()I

    .line 10
    move-result v1

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 17
    return-void
.end method

.method private p()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/badge/a;->state:Lcom/google/android/material/badge/BadgeState;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeState;->e()I

    .line 6
    move-result v0

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    iget-object v1, p0, Lcom/google/android/material/badge/a;->shapeDrawable:Lcom/google/android/material/shape/g;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/google/android/material/shape/g;->x()Landroid/content/res/ColorStateList;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    if-eq v1, v0, :cond_0

    .line 19
    .line 20
    iget-object v1, p0, Lcom/google/android/material/badge/a;->shapeDrawable:Lcom/google/android/material/shape/g;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v0}, Lcom/google/android/material/shape/g;->Z(Landroid/content/res/ColorStateList;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 27
    :cond_0
    return-void
.end method

.method private q()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/badge/a;->anchorViewRef:Ljava/lang/ref/WeakReference;

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
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/google/android/material/badge/a;->anchorViewRef:Ljava/lang/ref/WeakReference;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    check-cast v0, Landroid/view/View;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/google/android/material/badge/a;->customBadgeParentRef:Ljava/lang/ref/WeakReference;

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    check-cast v1, Landroid/widget/FrameLayout;

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v1, 0x0

    .line 31
    .line 32
    .line 33
    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/google/android/material/badge/a;->A(Landroid/view/View;Landroid/widget/FrameLayout;)V

    .line 34
    :cond_1
    return-void
.end method

.method private r()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/badge/a;->textDrawableHelper:Lcom/google/android/material/internal/p;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/material/internal/p;->e()Landroid/text/TextPaint;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/google/android/material/badge/a;->state:Lcom/google/android/material/badge/BadgeState;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/google/android/material/badge/BadgeState;->g()I

    .line 12
    move-result v1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 19
    return-void
.end method

.method private s()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/material/badge/a;->C()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/material/badge/a;->textDrawableHelper:Lcom/google/android/material/internal/p;

    .line 6
    const/4 v1, 0x1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/google/android/material/internal/p;->i(Z)V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lcom/google/android/material/badge/a;->B()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 16
    return-void
.end method

.method private t()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/badge/a;->textDrawableHelper:Lcom/google/android/material/internal/p;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Lcom/google/android/material/internal/p;->i(Z)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/google/android/material/badge/a;->B()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 13
    return-void
.end method

.method private u()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/badge/a;->state:Lcom/google/android/material/badge/BadgeState;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeState;->t()Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 11
    .line 12
    sget-boolean v1, Lcom/google/android/material/badge/c;->USE_COMPAT_PARENT:Z

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/google/android/material/badge/a;->g()Landroid/widget/FrameLayout;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/google/android/material/badge/a;->g()Landroid/widget/FrameLayout;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    check-cast v0, Landroid/view/ViewGroup;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 36
    :cond_0
    return-void
.end method

.method private v()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/material/badge/a;->s()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/google/android/material/badge/a;->t()V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/google/android/material/badge/a;->o()V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lcom/google/android/material/badge/a;->p()V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Lcom/google/android/material/badge/a;->r()V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Lcom/google/android/material/badge/a;->q()V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Lcom/google/android/material/badge/a;->B()V

    .line 22
    .line 23
    .line 24
    invoke-direct {p0}, Lcom/google/android/material/badge/a;->u()V

    .line 25
    return-void
.end method

.method private w(Lcom/google/android/material/resources/d;)V
    .locals 2
    .param p1    # Lcom/google/android/material/resources/d;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/badge/a;->textDrawableHelper:Lcom/google/android/material/internal/p;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/material/internal/p;->d()Lcom/google/android/material/resources/d;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-ne v0, p1, :cond_0

    .line 9
    return-void

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/badge/a;->contextRef:Ljava/lang/ref/WeakReference;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    check-cast v0, Landroid/content/Context;

    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    return-void

    .line 21
    .line 22
    :cond_1
    iget-object v1, p0, Lcom/google/android/material/badge/a;->textDrawableHelper:Lcom/google/android/material/internal/p;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, p1, v0}, Lcom/google/android/material/internal/p;->h(Lcom/google/android/material/resources/d;Landroid/content/Context;)V

    .line 26
    .line 27
    .line 28
    invoke-direct {p0}, Lcom/google/android/material/badge/a;->B()V

    .line 29
    return-void
.end method

.method private x(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/badge/a;->contextRef:Ljava/lang/ref/WeakReference;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroid/content/Context;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    return-void

    .line 12
    .line 13
    :cond_0
    new-instance v1, Lcom/google/android/material/resources/d;

    .line 14
    .line 15
    .line 16
    invoke-direct {v1, v0, p1}, Lcom/google/android/material/resources/d;-><init>(Landroid/content/Context;I)V

    .line 17
    .line 18
    .line 19
    invoke-direct {p0, v1}, Lcom/google/android/material/badge/a;->w(Lcom/google/android/material/resources/d;)V

    .line 20
    return-void
.end method

.method private y(Landroid/view/View;)V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    check-cast v0, Landroid/view/ViewGroup;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    .line 12
    move-result v1

    .line 13
    .line 14
    sget v2, Ld3/f;->mtrl_anchor_parent:I

    .line 15
    .line 16
    if-eq v1, v2, :cond_1

    .line 17
    .line 18
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/badge/a;->customBadgeParentRef:Ljava/lang/ref/WeakReference;

    .line 19
    .line 20
    if-eqz v1, :cond_2

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    if-ne v1, v0, :cond_2

    .line 27
    :cond_1
    return-void

    .line 28
    .line 29
    .line 30
    :cond_2
    invoke-static {p1}, Lcom/google/android/material/badge/a;->z(Landroid/view/View;)V

    .line 31
    .line 32
    new-instance v1, Landroid/widget/FrameLayout;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 36
    move-result-object v2

    .line 37
    .line 38
    .line 39
    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 40
    .line 41
    sget v2, Ld3/f;->mtrl_anchor_parent:I

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v2}, Landroid/view/View;->setId(I)V

    .line 45
    const/4 v2, 0x0

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 55
    move-result-object v2

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 62
    move-result v2

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, v2}, Landroid/view/View;->setMinimumWidth(I)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 69
    move-result v2

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, v2}, Landroid/view/View;->setMinimumHeight(I)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 76
    move-result v2

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 80
    .line 81
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 82
    const/4 v4, -0x1

    .line 83
    .line 84
    .line 85
    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 95
    .line 96
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 97
    .line 98
    .line 99
    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 100
    .line 101
    iput-object v0, p0, Lcom/google/android/material/badge/a;->customBadgeParentRef:Ljava/lang/ref/WeakReference;

    .line 102
    .line 103
    new-instance v0, Lcom/google/android/material/badge/a$a;

    .line 104
    .line 105
    .line 106
    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/material/badge/a$a;-><init>(Lcom/google/android/material/badge/a;Landroid/view/View;Landroid/widget/FrameLayout;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 110
    return-void
.end method

.method private static z(Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    check-cast p0, Landroid/view/ViewGroup;

    .line 7
    const/4 v0, 0x0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 14
    return-void
.end method


# virtual methods
.method public A(Landroid/view/View;Landroid/widget/FrameLayout;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 6
    .line 7
    iput-object v0, p0, Lcom/google/android/material/badge/a;->anchorViewRef:Ljava/lang/ref/WeakReference;

    .line 8
    .line 9
    sget-boolean v0, Lcom/google/android/material/badge/c;->USE_COMPAT_PARENT:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    if-nez p2, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, p1}, Lcom/google/android/material/badge/a;->y(Landroid/view/View;)V

    .line 17
    goto :goto_0

    .line 18
    .line 19
    :cond_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 20
    .line 21
    .line 22
    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 23
    .line 24
    iput-object v1, p0, Lcom/google/android/material/badge/a;->customBadgeParentRef:Ljava/lang/ref/WeakReference;

    .line 25
    .line 26
    :goto_0
    if-nez v0, :cond_1

    .line 27
    .line 28
    .line 29
    invoke-static {p1}, Lcom/google/android/material/badge/a;->z(Landroid/view/View;)V

    .line 30
    .line 31
    .line 32
    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/badge/a;->B()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 36
    return-void
.end method

.method public a()V
    .locals 0
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 4
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/google/android/material/badge/a;->getAlpha()I

    .line 14
    move-result v0

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    .line 20
    move-result v0

    .line 21
    .line 22
    if-nez v0, :cond_0

    .line 23
    goto :goto_0

    .line 24
    .line 25
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/badge/a;->shapeDrawable:Lcom/google/android/material/shape/g;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/g;->draw(Landroid/graphics/Canvas;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/google/android/material/badge/a;->n()Z

    .line 32
    move-result v0

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    .line 37
    invoke-direct {p0, p1}, Lcom/google/android/material/badge/a;->d(Landroid/graphics/Canvas;)V

    .line 38
    :cond_1
    :goto_0
    return-void
.end method

.method public f()Ljava/lang/CharSequence;
    .locals 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    return-object v1

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/badge/a;->n()Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-eqz v0, :cond_4

    .line 15
    .line 16
    iget-object v0, p0, Lcom/google/android/material/badge/a;->state:Lcom/google/android/material/badge/BadgeState;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeState;->j()I

    .line 20
    move-result v0

    .line 21
    .line 22
    if-eqz v0, :cond_3

    .line 23
    .line 24
    iget-object v0, p0, Lcom/google/android/material/badge/a;->contextRef:Ljava/lang/ref/WeakReference;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    check-cast v0, Landroid/content/Context;

    .line 31
    .line 32
    if-nez v0, :cond_1

    .line 33
    return-object v1

    .line 34
    .line 35
    .line 36
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/badge/a;->j()I

    .line 37
    move-result v1

    .line 38
    .line 39
    iget v2, p0, Lcom/google/android/material/badge/a;->maxBadgeNumber:I

    .line 40
    const/4 v3, 0x0

    .line 41
    const/4 v4, 0x1

    .line 42
    .line 43
    if-gt v1, v2, :cond_2

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 47
    move-result-object v0

    .line 48
    .line 49
    iget-object v1, p0, Lcom/google/android/material/badge/a;->state:Lcom/google/android/material/badge/BadgeState;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Lcom/google/android/material/badge/BadgeState;->j()I

    .line 53
    move-result v1

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/google/android/material/badge/a;->j()I

    .line 57
    move-result v2

    .line 58
    .line 59
    new-array v4, v4, [Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/google/android/material/badge/a;->j()I

    .line 63
    move-result v5

    .line 64
    .line 65
    .line 66
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 67
    move-result-object v5

    .line 68
    .line 69
    aput-object v5, v4, v3

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v1, v2, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 73
    move-result-object v0

    .line 74
    return-object v0

    .line 75
    .line 76
    :cond_2
    iget-object v1, p0, Lcom/google/android/material/badge/a;->state:Lcom/google/android/material/badge/BadgeState;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1}, Lcom/google/android/material/badge/BadgeState;->h()I

    .line 80
    move-result v1

    .line 81
    .line 82
    new-array v2, v4, [Ljava/lang/Object;

    .line 83
    .line 84
    iget v4, p0, Lcom/google/android/material/badge/a;->maxBadgeNumber:I

    .line 85
    .line 86
    .line 87
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 88
    move-result-object v4

    .line 89
    .line 90
    aput-object v4, v2, v3

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 94
    move-result-object v0

    .line 95
    return-object v0

    .line 96
    :cond_3
    return-object v1

    .line 97
    .line 98
    :cond_4
    iget-object v0, p0, Lcom/google/android/material/badge/a;->state:Lcom/google/android/material/badge/BadgeState;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeState;->i()Ljava/lang/CharSequence;

    .line 102
    move-result-object v0

    .line 103
    return-object v0
.end method

.method public g()Landroid/widget/FrameLayout;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/badge/a;->customBadgeParentRef:Ljava/lang/ref/WeakReference;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    check-cast v0, Landroid/widget/FrameLayout;

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    return-object v0
.end method

.method public getAlpha()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/badge/a;->state:Lcom/google/android/material/badge/BadgeState;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeState;->d()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/badge/a;->badgeBounds:Landroid/graphics/Rect;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/badge/a;->badgeBounds:Landroid/graphics/Rect;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public h()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/badge/a;->state:Lcom/google/android/material/badge/BadgeState;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeState;->l()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public i()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/badge/a;->state:Lcom/google/android/material/badge/BadgeState;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeState;->m()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isStateful()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public j()I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/badge/a;->n()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/material/badge/a;->state:Lcom/google/android/material/badge/BadgeState;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeState;->n()I

    .line 12
    move-result v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    return v0
.end method

.method k()Lcom/google/android/material/badge/BadgeState$State;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/badge/a;->state:Lcom/google/android/material/badge/BadgeState;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeState;->p()Lcom/google/android/material/badge/BadgeState$State;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public n()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/badge/a;->state:Lcom/google/android/material/badge/BadgeState;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeState;->s()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public onStateChange([I)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onStateChange([I)Z

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public setAlpha(I)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/badge/a;->state:Lcom/google/android/material/badge/BadgeState;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/material/badge/BadgeState;->v(I)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/google/android/material/badge/a;->o()V

    .line 9
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
