.class public Lcom/narvii/widget/VoteIcon;
.super Lcom/narvii/widget/TintButton;
.source "SourceFile"


# static fields
.field public static final FROWN:I = -0x1

.field public static final HEART:I = 0x4

.field public static final NONE:I = 0x0

.field static PRESSED_FILTER:Landroid/graphics/ColorFilter; = null

.field public static final SMILE:I = 0x1

.field public static final SURPRISE:I = 0x2

.field static TRANS_FILTER:Landroid/graphics/ColorFilter; = null

.field public static final UNDECIDED:I = 0x3


# instance fields
.field private darkTheme:Z

.field private noneColor:I

.field public noneFilter:Landroid/graphics/ColorFilter;

.field private trans:Z

.field private votedValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Landroid/graphics/ColorMatrixColorFilter;

    .line 3
    .line 4
    const/16 v1, 0x14

    .line 5
    .line 6
    new-array v2, v1, [F

    .line 7
    .line 8
    .line 9
    fill-array-data v2, :array_0

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v2}, Landroid/graphics/ColorMatrixColorFilter;-><init>([F)V

    .line 13
    .line 14
    sput-object v0, Lcom/narvii/widget/VoteIcon;->PRESSED_FILTER:Landroid/graphics/ColorFilter;

    .line 15
    .line 16
    new-instance v0, Landroid/graphics/ColorMatrixColorFilter;

    .line 17
    .line 18
    new-array v1, v1, [F

    .line 19
    .line 20
    .line 21
    fill-array-data v1, :array_1

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>([F)V

    .line 25
    .line 26
    sput-object v0, Lcom/narvii/widget/VoteIcon;->TRANS_FILTER:Landroid/graphics/ColorFilter;

    .line 27
    return-void

    .line 28
    nop

    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        -0x3db80000    # -50.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        -0x3db80000    # -50.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        -0x3db80000    # -50.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f000000    # 0.5f
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/TintButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput v0, p0, Lcom/narvii/widget/VoteIcon;->noneColor:I

    .line 7
    .line 8
    sget-object v1, Lcom/narvii/amino/R$styleable;->VoteIcon:[I

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p2, v1, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 16
    move-result p2

    .line 17
    .line 18
    iput-boolean p2, p0, Lcom/narvii/widget/VoteIcon;->darkTheme:Z

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 22
    return-void
.end method

.method public static voteIconRes(I)I
    .locals 1

    const/4 v0, -0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const p0, 0x7f080688

    return p0

    :cond_0
    const p0, 0x7f080687

    return p0

    :cond_1
    const p0, 0x7f08068b

    return p0

    :cond_2
    const p0, 0x7f08068a

    return p0

    :cond_3
    const p0, 0x7f080689

    return p0

    :cond_4
    const p0, 0x7f080686

    return p0
.end method


# virtual methods
.method public getVoteIconRes(I)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lcom/narvii/widget/VoteIcon;->voteIconRes(I)I

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public isDarkTheme()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/widget/VoteIcon;->darkTheme:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 7
    const/4 v2, 0x0

    .line 8
    .line 9
    if-eqz v1, :cond_3

    .line 10
    .line 11
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    if-eqz v0, :cond_4

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    .line 21
    move-result v1

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    sget-object v1, Lcom/narvii/widget/VoteIcon;->PRESSED_FILTER:Landroid/graphics/ColorFilter;

    .line 26
    goto :goto_0

    .line 27
    .line 28
    :cond_0
    iget-boolean v1, p0, Lcom/narvii/widget/VoteIcon;->trans:Z

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    sget-object v1, Lcom/narvii/widget/VoteIcon;->TRANS_FILTER:Landroid/graphics/ColorFilter;

    .line 33
    goto :goto_0

    .line 34
    .line 35
    :cond_1
    iget v1, p0, Lcom/narvii/widget/VoteIcon;->votedValue:I

    .line 36
    .line 37
    if-nez v1, :cond_2

    .line 38
    .line 39
    iget-object v1, p0, Lcom/narvii/widget/VoteIcon;->noneFilter:Landroid/graphics/ColorFilter;

    .line 40
    goto :goto_0

    .line 41
    :cond_2
    move-object v1, v2

    .line 42
    .line 43
    .line 44
    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 45
    goto :goto_1

    .line 46
    :cond_3
    move-object v0, v2

    .line 47
    .line 48
    .line 49
    :cond_4
    :goto_1
    invoke-super {p0, p1}, Lcom/narvii/widget/TintButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 50
    .line 51
    if-eqz v0, :cond_5

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 55
    :cond_5
    return-void
.end method

.method public setNoneColor(I)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/widget/VoteIcon;->noneColor:I

    .line 3
    .line 4
    iget p1, p0, Lcom/narvii/widget/VoteIcon;->votedValue:I

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/narvii/widget/VoteIcon;->updateView(I)V

    .line 8
    return-void
.end method

.method public setPressed(Z)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/widget/TintButton;->setPressed(Z)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 7
    return-void
.end method

.method public setTransparent(Z)V
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/widget/VoteIcon;->trans:Z

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 6
    return-void
.end method

.method public setVotedValue(I)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/widget/VoteIcon;->votedValue:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/narvii/widget/VoteIcon;->updateView(I)V

    .line 6
    return-void
.end method

.method protected updateView(I)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/widget/VoteIcon;->getVoteIconRes(I)I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 8
    .line 9
    if-nez p1, :cond_2

    .line 10
    .line 11
    iget-boolean p1, p0, Lcom/narvii/widget/VoteIcon;->darkTheme:Z

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    const/4 p1, -0x1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lcom/narvii/widget/TintButton;->setTintColor(I)V

    .line 18
    goto :goto_0

    .line 19
    .line 20
    :cond_0
    iget p1, p0, Lcom/narvii/widget/VoteIcon;->noneColor:I

    .line 21
    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, p1}, Lcom/narvii/widget/TintButton;->setTintColor(I)V

    .line 26
    goto :goto_0

    .line 27
    .line 28
    .line 29
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/widget/TintButton;->removeTintColor()V

    .line 30
    goto :goto_0

    .line 31
    .line 32
    .line 33
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/widget/TintButton;->removeTintColor()V

    .line 34
    .line 35
    .line 36
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 37
    return-void
.end method
