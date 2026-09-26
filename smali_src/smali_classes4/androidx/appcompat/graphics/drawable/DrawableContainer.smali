.class Landroidx/appcompat/graphics/drawable/DrawableContainer;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/graphics/drawable/DrawableContainer$Api21Impl;,
        Landroidx/appcompat/graphics/drawable/DrawableContainer$BlockInvalidateCallback;,
        Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEFAULT_DITHER:Z = true

.field private static final TAG:Ljava/lang/String; = "DrawableContainer"


# instance fields
.field private mAlpha:I

.field private mAnimationRunnable:Ljava/lang/Runnable;

.field private mBlockInvalidateCallback:Landroidx/appcompat/graphics/drawable/DrawableContainer$BlockInvalidateCallback;

.field private mCurIndex:I

.field private mCurrDrawable:Landroid/graphics/drawable/Drawable;

.field private mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

.field private mEnterAnimationEnd:J

.field private mExitAnimationEnd:J

.field private mHasAlpha:Z

.field private mHotspotBounds:Landroid/graphics/Rect;

.field private mLastDrawable:Landroid/graphics/drawable/Drawable;

.field private mMutated:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 4
    .line 5
    const/16 v0, 0xff

    .line 6
    .line 7
    iput v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mAlpha:I

    .line 8
    const/4 v0, -0x1

    .line 9
    .line 10
    iput v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurIndex:I

    .line 11
    return-void
.end method

.method private d(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mBlockInvalidateCallback:Landroidx/appcompat/graphics/drawable/DrawableContainer$BlockInvalidateCallback;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Landroidx/appcompat/graphics/drawable/DrawableContainer$BlockInvalidateCallback;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0}, Landroidx/appcompat/graphics/drawable/DrawableContainer$BlockInvalidateCallback;-><init>()V

    .line 10
    .line 11
    iput-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mBlockInvalidateCallback:Landroidx/appcompat/graphics/drawable/DrawableContainer$BlockInvalidateCallback;

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mBlockInvalidateCallback:Landroidx/appcompat/graphics/drawable/DrawableContainer$BlockInvalidateCallback;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroidx/appcompat/graphics/drawable/DrawableContainer$BlockInvalidateCallback;->b(Landroid/graphics/drawable/Drawable$Callback;)Landroidx/appcompat/graphics/drawable/DrawableContainer$BlockInvalidateCallback;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 25
    .line 26
    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    .line 27
    .line 28
    iget v0, v0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mEnterFadeDuration:I

    .line 29
    .line 30
    if-gtz v0, :cond_1

    .line 31
    .line 32
    iget-boolean v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mHasAlpha:Z

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    iget v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mAlpha:I

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception v0

    .line 42
    goto :goto_2

    .line 43
    .line 44
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    .line 45
    .line 46
    iget-boolean v1, v0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mHasColorFilter:Z

    .line 47
    .line 48
    if-eqz v1, :cond_2

    .line 49
    .line 50
    iget-object v0, v0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 54
    goto :goto_1

    .line 55
    .line 56
    :cond_2
    iget-boolean v1, v0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mHasTintList:Z

    .line 57
    .line 58
    if-eqz v1, :cond_3

    .line 59
    .line 60
    iget-object v0, v0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mTintList:Landroid/content/res/ColorStateList;

    .line 61
    .line 62
    .line 63
    invoke-static {p1, v0}, Landroidx/core/graphics/drawable/DrawableCompat;->o(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 64
    .line 65
    :cond_3
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    .line 66
    .line 67
    iget-boolean v1, v0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mHasTintMode:Z

    .line 68
    .line 69
    if-eqz v1, :cond_4

    .line 70
    .line 71
    iget-object v0, v0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 72
    .line 73
    .line 74
    invoke-static {p1, v0}, Landroidx/core/graphics/drawable/DrawableCompat;->p(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 75
    .line 76
    .line 77
    :cond_4
    :goto_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    .line 78
    move-result v0

    .line 79
    const/4 v1, 0x1

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 83
    .line 84
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    .line 85
    .line 86
    iget-boolean v0, v0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDither:Z

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    .line 93
    move-result-object v0

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getLevel()I

    .line 100
    move-result v0

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 107
    move-result-object v0

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 111
    .line 112
    .line 113
    invoke-static {p0}, Landroidx/core/graphics/drawable/DrawableCompat;->f(Landroid/graphics/drawable/Drawable;)I

    .line 114
    move-result v0

    .line 115
    .line 116
    .line 117
    invoke-static {p1, v0}, Landroidx/core/graphics/drawable/DrawableCompat;->m(Landroid/graphics/drawable/Drawable;I)Z

    .line 118
    .line 119
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    .line 120
    .line 121
    iget-boolean v0, v0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mAutoMirrored:Z

    .line 122
    .line 123
    .line 124
    invoke-static {p1, v0}, Landroidx/core/graphics/drawable/DrawableCompat;->j(Landroid/graphics/drawable/Drawable;Z)V

    .line 125
    .line 126
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mHotspotBounds:Landroid/graphics/Rect;

    .line 127
    .line 128
    if-eqz v0, :cond_5

    .line 129
    .line 130
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 131
    .line 132
    iget v2, v0, Landroid/graphics/Rect;->top:I

    .line 133
    .line 134
    iget v3, v0, Landroid/graphics/Rect;->right:I

    .line 135
    .line 136
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 137
    .line 138
    .line 139
    invoke-static {p1, v1, v2, v3, v0}, Landroidx/core/graphics/drawable/DrawableCompat;->l(Landroid/graphics/drawable/Drawable;IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    .line 141
    :cond_5
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mBlockInvalidateCallback:Landroidx/appcompat/graphics/drawable/DrawableContainer$BlockInvalidateCallback;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0}, Landroidx/appcompat/graphics/drawable/DrawableContainer$BlockInvalidateCallback;->a()Landroid/graphics/drawable/Drawable$Callback;

    .line 145
    move-result-object v0

    .line 146
    .line 147
    .line 148
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 149
    return-void

    .line 150
    .line 151
    :goto_2
    iget-object v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mBlockInvalidateCallback:Landroidx/appcompat/graphics/drawable/DrawableContainer$BlockInvalidateCallback;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v1}, Landroidx/appcompat/graphics/drawable/DrawableContainer$BlockInvalidateCallback;->a()Landroid/graphics/drawable/Drawable$Callback;

    .line 155
    move-result-object v1

    .line 156
    .line 157
    .line 158
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 159
    throw v0
.end method

.method private e()Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainer;->isAutoMirrored()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-static {p0}, Landroidx/core/graphics/drawable/DrawableCompat;->f(Landroid/graphics/drawable/Drawable;)I

    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x1

    .line 12
    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v1, 0x0

    .line 16
    :goto_0
    return v1
.end method

.method static f(Landroid/content/res/Resources;I)I
    .locals 0
    .param p0    # Landroid/content/res/Resources;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-nez p0, :cond_0

    .line 3
    goto :goto_0

    .line 4
    .line 5
    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 7
    move-result-object p0

    .line 8
    .line 9
    iget p1, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 10
    .line 11
    :goto_0
    if-nez p1, :cond_1

    .line 12
    .line 13
    const/16 p1, 0xa0

    .line 14
    :cond_1
    return p1
.end method


# virtual methods
.method a(Z)V
    .locals 13

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    iput-boolean v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mHasAlpha:Z

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 7
    move-result-wide v1

    .line 8
    .line 9
    iget-object v3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    .line 10
    .line 11
    const-wide/16 v4, 0xff

    .line 12
    .line 13
    const-wide/16 v6, 0x0

    .line 14
    const/4 v8, 0x0

    .line 15
    .line 16
    if-eqz v3, :cond_1

    .line 17
    .line 18
    iget-wide v9, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mEnterAnimationEnd:J

    .line 19
    .line 20
    cmp-long v11, v9, v6

    .line 21
    .line 22
    if-eqz v11, :cond_2

    .line 23
    .line 24
    cmp-long v11, v9, v1

    .line 25
    .line 26
    if-gtz v11, :cond_0

    .line 27
    .line 28
    iget v9, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mAlpha:I

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 32
    .line 33
    iput-wide v6, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mEnterAnimationEnd:J

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    sub-long/2addr v9, v1

    .line 36
    mul-long/2addr v9, v4

    .line 37
    long-to-int v9, v9

    .line 38
    .line 39
    iget-object v10, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    .line 40
    .line 41
    iget v10, v10, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mEnterFadeDuration:I

    .line 42
    div-int/2addr v9, v10

    .line 43
    .line 44
    rsub-int v9, v9, 0xff

    .line 45
    .line 46
    iget v10, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mAlpha:I

    .line 47
    mul-int/2addr v9, v10

    .line 48
    .line 49
    div-int/lit16 v9, v9, 0xff

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 53
    move v3, v0

    .line 54
    goto :goto_1

    .line 55
    .line 56
    :cond_1
    iput-wide v6, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mEnterAnimationEnd:J

    .line 57
    :cond_2
    :goto_0
    move v3, v8

    .line 58
    .line 59
    :goto_1
    iget-object v9, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    .line 60
    .line 61
    if-eqz v9, :cond_4

    .line 62
    .line 63
    iget-wide v10, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mExitAnimationEnd:J

    .line 64
    .line 65
    cmp-long v12, v10, v6

    .line 66
    .line 67
    if-eqz v12, :cond_5

    .line 68
    .line 69
    cmp-long v12, v10, v1

    .line 70
    .line 71
    if-gtz v12, :cond_3

    .line 72
    .line 73
    .line 74
    invoke-virtual {v9, v8, v8}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 75
    const/4 v0, 0x0

    .line 76
    .line 77
    iput-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    .line 78
    .line 79
    iput-wide v6, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mExitAnimationEnd:J

    .line 80
    goto :goto_2

    .line 81
    :cond_3
    sub-long/2addr v10, v1

    .line 82
    mul-long/2addr v10, v4

    .line 83
    long-to-int v3, v10

    .line 84
    .line 85
    iget-object v4, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    .line 86
    .line 87
    iget v4, v4, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mExitFadeDuration:I

    .line 88
    div-int/2addr v3, v4

    .line 89
    .line 90
    iget v4, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mAlpha:I

    .line 91
    mul-int/2addr v3, v4

    .line 92
    .line 93
    div-int/lit16 v3, v3, 0xff

    .line 94
    .line 95
    .line 96
    invoke-virtual {v9, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 97
    goto :goto_3

    .line 98
    .line 99
    :cond_4
    iput-wide v6, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mExitAnimationEnd:J

    .line 100
    :cond_5
    :goto_2
    move v0, v3

    .line 101
    .line 102
    :goto_3
    if-eqz p1, :cond_6

    .line 103
    .line 104
    if-eqz v0, :cond_6

    .line 105
    .line 106
    iget-object p1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mAnimationRunnable:Ljava/lang/Runnable;

    .line 107
    .line 108
    const-wide/16 v3, 0x10

    .line 109
    add-long/2addr v1, v3

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0, p1, v1, v2}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 113
    :cond_6
    return-void
.end method

.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 1
    .param p1    # Landroid/content/res/Resources$Theme;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->b(Landroid/content/res/Resources$Theme;)V

    .line 6
    return-void
.end method

.method b()Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    return-object v0
.end method

.method c()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurIndex:I

    return v0
.end method

.method public canApplyTheme()Z
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->canApplyTheme()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 15
    :cond_1
    return-void
.end method

.method g(I)Z
    .locals 9

    .line 1
    .line 2
    iget v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurIndex:I

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-ne p1, v0, :cond_0

    .line 6
    return v1

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 10
    move-result-wide v2

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    .line 13
    .line 14
    iget v0, v0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mExitFadeDuration:I

    .line 15
    const/4 v4, 0x0

    .line 16
    .line 17
    const-wide/16 v5, 0x0

    .line 18
    .line 19
    if-lez v0, :cond_3

    .line 20
    .line 21
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 27
    .line 28
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    iput-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    .line 33
    .line 34
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    .line 35
    .line 36
    iget v0, v0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mExitFadeDuration:I

    .line 37
    int-to-long v0, v0

    .line 38
    add-long/2addr v0, v2

    .line 39
    .line 40
    iput-wide v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mExitAnimationEnd:J

    .line 41
    goto :goto_0

    .line 42
    .line 43
    :cond_2
    iput-object v4, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    .line 44
    .line 45
    iput-wide v5, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mExitAnimationEnd:J

    .line 46
    goto :goto_0

    .line 47
    .line 48
    :cond_3
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    .line 49
    .line 50
    if-eqz v0, :cond_4

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 54
    .line 55
    :cond_4
    :goto_0
    if-ltz p1, :cond_6

    .line 56
    .line 57
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    .line 58
    .line 59
    iget v1, v0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    .line 60
    .line 61
    if-ge p1, v1, :cond_6

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, p1}, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->g(I)Landroid/graphics/drawable/Drawable;

    .line 65
    move-result-object v0

    .line 66
    .line 67
    iput-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    .line 68
    .line 69
    iput p1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurIndex:I

    .line 70
    .line 71
    if-eqz v0, :cond_7

    .line 72
    .line 73
    iget-object p1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    .line 74
    .line 75
    iget p1, p1, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mEnterFadeDuration:I

    .line 76
    .line 77
    if-lez p1, :cond_5

    .line 78
    int-to-long v7, p1

    .line 79
    add-long/2addr v2, v7

    .line 80
    .line 81
    iput-wide v2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mEnterAnimationEnd:J

    .line 82
    .line 83
    .line 84
    :cond_5
    invoke-direct {p0, v0}, Landroidx/appcompat/graphics/drawable/DrawableContainer;->d(Landroid/graphics/drawable/Drawable;)V

    .line 85
    goto :goto_1

    .line 86
    .line 87
    :cond_6
    iput-object v4, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    .line 88
    const/4 p1, -0x1

    .line 89
    .line 90
    iput p1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurIndex:I

    .line 91
    .line 92
    :cond_7
    :goto_1
    iget-wide v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mEnterAnimationEnd:J

    .line 93
    .line 94
    cmp-long p1, v0, v5

    .line 95
    const/4 v0, 0x1

    .line 96
    .line 97
    if-nez p1, :cond_8

    .line 98
    .line 99
    iget-wide v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mExitAnimationEnd:J

    .line 100
    .line 101
    cmp-long p1, v1, v5

    .line 102
    .line 103
    if-eqz p1, :cond_a

    .line 104
    .line 105
    :cond_8
    iget-object p1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mAnimationRunnable:Ljava/lang/Runnable;

    .line 106
    .line 107
    if-nez p1, :cond_9

    .line 108
    .line 109
    new-instance p1, Landroidx/appcompat/graphics/drawable/DrawableContainer$1;

    .line 110
    .line 111
    .line 112
    invoke-direct {p1, p0}, Landroidx/appcompat/graphics/drawable/DrawableContainer$1;-><init>(Landroidx/appcompat/graphics/drawable/DrawableContainer;)V

    .line 113
    .line 114
    iput-object p1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mAnimationRunnable:Ljava/lang/Runnable;

    .line 115
    goto :goto_2

    .line 116
    .line 117
    .line 118
    :cond_9
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 119
    .line 120
    .line 121
    :goto_2
    invoke-virtual {p0, v0}, Landroidx/appcompat/graphics/drawable/DrawableContainer;->a(Z)V

    .line 122
    .line 123
    .line 124
    :cond_a
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 125
    return v0
.end method

.method public getAlpha()I
    .locals 1

    iget v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mAlpha:I

    return v0
.end method

.method public getChangingConfigurations()I
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    .line 4
    move-result v0

    .line 5
    .line 6
    iget-object v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1}, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->getChangingConfigurations()I

    .line 10
    move-result v1

    .line 11
    or-int/2addr v0, v1

    .line 12
    return v0
.end method

.method public final getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->c()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainer;->getChangingConfigurations()I

    .line 14
    move-result v1

    .line 15
    .line 16
    iput v1, v0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mChangingConfigurations:I

    .line 17
    .line 18
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    .line 19
    return-object v0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    return-object v0
.end method

.method public getCurrent()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getHotspotBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mHotspotBounds:Landroid/graphics/Rect;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 8
    goto :goto_0

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getHotspotBounds(Landroid/graphics/Rect;)V

    .line 12
    :goto_0
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->q()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->i()I

    .line 14
    move-result v0

    .line 15
    return v0

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 23
    move-result v0

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const/4 v0, -0x1

    .line 26
    :goto_0
    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->q()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->m()I

    .line 14
    move-result v0

    .line 15
    return v0

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 23
    move-result v0

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const/4 v0, -0x1

    .line 26
    :goto_0
    return v0
.end method

.method public getMinimumHeight()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->q()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->j()I

    .line 14
    move-result v0

    .line 15
    return v0

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    .line 23
    move-result v0

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const/4 v0, 0x0

    .line 26
    :goto_0
    return v0
.end method

.method public getMinimumWidth()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->q()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->k()I

    .line 14
    move-result v0

    .line 15
    return v0

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    .line 23
    move-result v0

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const/4 v0, 0x0

    .line 26
    :goto_0
    return v0
.end method

.method public getOpacity()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->n()I

    .line 17
    move-result v0

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    :goto_0
    const/4 v0, -0x2

    .line 20
    :goto_1
    return v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 1
    .param p1    # Landroid/graphics/Outline;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-static {v0, p1}, Landroidx/appcompat/graphics/drawable/DrawableContainer$Api21Impl;->b(Landroid/graphics/drawable/Drawable;Landroid/graphics/Outline;)V

    .line 8
    :cond_0
    return-void
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 3
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->l()Landroid/graphics/Rect;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 12
    .line 13
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 14
    .line 15
    iget v2, v0, Landroid/graphics/Rect;->top:I

    .line 16
    or-int/2addr v1, v2

    .line 17
    .line 18
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 19
    or-int/2addr v1, v2

    .line 20
    .line 21
    iget v0, v0, Landroid/graphics/Rect;->right:I

    .line 22
    or-int/2addr v0, v1

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    const/4 v0, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v0, 0x0

    .line 28
    goto :goto_0

    .line 29
    .line 30
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    .line 31
    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 36
    move-result v0

    .line 37
    goto :goto_0

    .line 38
    .line 39
    .line 40
    :cond_2
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 41
    move-result v0

    .line 42
    .line 43
    .line 44
    :goto_0
    invoke-direct {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainer;->e()Z

    .line 45
    move-result v1

    .line 46
    .line 47
    if-eqz v1, :cond_3

    .line 48
    .line 49
    iget v1, p1, Landroid/graphics/Rect;->left:I

    .line 50
    .line 51
    iget v2, p1, Landroid/graphics/Rect;->right:I

    .line 52
    .line 53
    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 54
    .line 55
    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 56
    :cond_3
    return v0
.end method

.method h(Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;)V
    .locals 1

    .line 1
    .line 2
    iput-object p1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    .line 3
    .line 4
    iget v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurIndex:I

    .line 5
    .line 6
    if-ltz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->g(I)Landroid/graphics/drawable/Drawable;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    iput-object p1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-direct {p0, p1}, Landroidx/appcompat/graphics/drawable/DrawableContainer;->d(Landroid/graphics/drawable/Drawable;)V

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    .line 20
    iput-object p1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    .line 21
    return-void
.end method

.method final i(Landroid/content/res/Resources;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->z(Landroid/content/res/Resources;)V

    .line 6
    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->p()V

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    .line 10
    .line 11
    if-ne p1, v0, :cond_1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    .line 24
    invoke-interface {p1, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 25
    :cond_1
    return-void
.end method

.method public isAutoMirrored()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    .line 3
    .line 4
    iget-boolean v0, v0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mAutoMirrored:Z

    .line 5
    return v0
.end method

.method public isStateful()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->r()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public jumpToCurrentState()V
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 9
    const/4 v0, 0x0

    .line 10
    .line 11
    iput-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    .line 12
    move v0, v1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    .line 16
    :goto_0
    iget-object v2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    .line 17
    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 22
    .line 23
    iget-boolean v2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mHasAlpha:Z

    .line 24
    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    iget-object v2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    .line 28
    .line 29
    iget v3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mAlpha:I

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 33
    .line 34
    :cond_1
    iget-wide v2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mExitAnimationEnd:J

    .line 35
    .line 36
    const-wide/16 v4, 0x0

    .line 37
    .line 38
    cmp-long v2, v2, v4

    .line 39
    .line 40
    if-eqz v2, :cond_2

    .line 41
    .line 42
    iput-wide v4, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mExitAnimationEnd:J

    .line 43
    goto :goto_1

    .line 44
    :cond_2
    move v1, v0

    .line 45
    .line 46
    :goto_1
    iget-wide v2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mEnterAnimationEnd:J

    .line 47
    .line 48
    cmp-long v0, v2, v4

    .line 49
    .line 50
    if-eqz v0, :cond_3

    .line 51
    .line 52
    iput-wide v4, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mEnterAnimationEnd:J

    .line 53
    goto :goto_2

    .line 54
    .line 55
    :cond_3
    if-eqz v1, :cond_4

    .line 56
    .line 57
    .line 58
    :goto_2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 59
    :cond_4
    return-void
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mMutated:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    if-ne v0, p0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainer;->b()Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->s()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0}, Landroidx/appcompat/graphics/drawable/DrawableContainer;->h(Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;)V

    .line 21
    const/4 v0, 0x1

    .line 22
    .line 23
    iput-boolean v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mMutated:Z

    .line 24
    :cond_0
    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 15
    :cond_1
    return-void
.end method

.method public onLayoutDirectionChanged(I)Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainer;->c()I

    .line 6
    move-result v1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->x(II)Z

    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method protected onLevelChange(I)Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 17
    move-result p1

    .line 18
    return p1

    .line 19
    :cond_1
    const/4 p1, 0x0

    .line 20
    return p1
.end method

.method protected onStateChange([I)Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 17
    move-result p1

    .line 18
    return p1

    .line 19
    :cond_1
    const/4 p1, 0x0

    .line 20
    return p1
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    .line 3
    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    .line 17
    invoke-interface {p1, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    .line 18
    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 5

    .line 1
    .line 2
    iget-boolean v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mHasAlpha:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mAlpha:I

    .line 7
    .line 8
    if-eq v0, p1, :cond_2

    .line 9
    :cond_0
    const/4 v0, 0x1

    .line 10
    .line 11
    iput-boolean v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mHasAlpha:Z

    .line 12
    .line 13
    iput p1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mAlpha:I

    .line 14
    .line 15
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    iget-wide v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mEnterAnimationEnd:J

    .line 20
    .line 21
    const-wide/16 v3, 0x0

    .line 22
    .line 23
    cmp-long v1, v1, v3

    .line 24
    .line 25
    if-nez v1, :cond_1

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/4 p1, 0x0

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, p1}, Landroidx/appcompat/graphics/drawable/DrawableContainer;->a(Z)V

    .line 34
    :cond_2
    :goto_0
    return-void
.end method

.method public setAutoMirrored(Z)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    .line 3
    .line 4
    iget-boolean v1, v0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mAutoMirrored:Z

    .line 5
    .line 6
    if-eq v1, p1, :cond_0

    .line 7
    .line 8
    iput-boolean p1, v0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mAutoMirrored:Z

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/DrawableCompat;->j(Landroid/graphics/drawable/Drawable;Z)V

    .line 16
    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    iput-boolean v1, v0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mHasColorFilter:Z

    .line 6
    .line 7
    iget-object v1, v0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 8
    .line 9
    if-eq v1, p1, :cond_0

    .line 10
    .line 11
    iput-object p1, v0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 12
    .line 13
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 19
    :cond_0
    return-void
.end method

.method public setDither(Z)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    .line 3
    .line 4
    iget-boolean v1, v0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDither:Z

    .line 5
    .line 6
    if-eq v1, p1, :cond_0

    .line 7
    .line 8
    iput-boolean p1, v0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDither:Z

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 16
    :cond_0
    return-void
.end method

.method public setHotspot(FF)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-static {v0, p1, p2}, Landroidx/core/graphics/drawable/DrawableCompat;->k(Landroid/graphics/drawable/Drawable;FF)V

    .line 8
    :cond_0
    return-void
.end method

.method public setHotspotBounds(IIII)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mHotspotBounds:Landroid/graphics/Rect;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Landroid/graphics/Rect;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 10
    .line 11
    iput-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mHotspotBounds:Landroid/graphics/Rect;

    .line 12
    goto :goto_0

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 16
    .line 17
    :goto_0
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-static {v0, p1, p2, p3, p4}, Landroidx/core/graphics/drawable/DrawableCompat;->l(Landroid/graphics/drawable/Drawable;IIII)V

    .line 23
    :cond_1
    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    iput-boolean v1, v0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mHasTintList:Z

    .line 6
    .line 7
    iget-object v1, v0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mTintList:Landroid/content/res/ColorStateList;

    .line 8
    .line 9
    if-eq v1, p1, :cond_0

    .line 10
    .line 11
    iput-object p1, v0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mTintList:Landroid/content/res/ColorStateList;

    .line 12
    .line 13
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    .line 14
    .line 15
    .line 16
    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/DrawableCompat;->o(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 17
    :cond_0
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2
    .param p1    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    iput-boolean v1, v0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mHasTintMode:Z

    .line 6
    .line 7
    iget-object v1, v0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 8
    .line 9
    if-eq v1, p1, :cond_0

    .line 10
    .line 11
    iput-object p1, v0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 12
    .line 13
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    .line 14
    .line 15
    .line 16
    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/DrawableCompat;->p(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 17
    :cond_0
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    iget-object v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 12
    .line 13
    :cond_0
    iget-object v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 19
    :cond_1
    return v0
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    .line 3
    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    .line 17
    invoke-interface {p1, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    .line 18
    :cond_0
    return-void
.end method
