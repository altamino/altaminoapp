.class public Lcom/narvii/widget/VoteIcon;
.super Lcom/narvii/widget/TintButton;
.source "VoteIcon.java"


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

    .line 31
    new-instance v0, Landroid/graphics/ColorMatrixColorFilter;

    const/16 v1, 0x14

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    invoke-direct {v0, v2}, Landroid/graphics/ColorMatrixColorFilter;-><init>([F)V

    sput-object v0, Lcom/narvii/widget/VoteIcon;->PRESSED_FILTER:Landroid/graphics/ColorFilter;

    .line 36
    new-instance v0, Landroid/graphics/ColorMatrixColorFilter;

    new-array v1, v1, [F

    fill-array-data v1, :array_1

    invoke-direct {v0, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>([F)V

    sput-object v0, Lcom/narvii/widget/VoteIcon;->TRANS_FILTER:Landroid/graphics/ColorFilter;

    return-void

    nop

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

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/TintButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 47
    iput v0, p0, Lcom/narvii/widget/VoteIcon;->noneColor:I

    .line 51
    sget-object v1, Lcom/narvii/amino/R$styleable;->VoteIcon:[I

    invoke-virtual {p1, p2, v1, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 53
    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/narvii/widget/VoteIcon;->darkTheme:Z

    .line 54
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

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

    const p0, 0x7f080560

    return p0

    :cond_0
    const p0, 0x7f08055e

    return p0

    :cond_1
    const p0, 0x7f080564

    return p0

    :cond_2
    const p0, 0x7f080563

    return p0

    :cond_3
    const p0, 0x7f080562

    return p0

    :cond_4
    const p0, 0x7f08055d

    return p0
.end method


# virtual methods
.method public getVoteIconRes(I)I
    .locals 0

    .line 117
    invoke-static {p1}, Lcom/narvii/widget/VoteIcon;->voteIconRes(I)I

    move-result p1

    return p1
.end method

.method public isDarkTheme()Z
    .locals 1

    .line 138
    iget-boolean v0, p0, Lcom/narvii/widget/VoteIcon;->darkTheme:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 70
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 72
    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 73
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 75
    invoke-virtual {p0}, Landroid/widget/ImageView;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    sget-object v1, Lcom/narvii/widget/VoteIcon;->PRESSED_FILTER:Landroid/graphics/ColorFilter;

    goto :goto_0

    .line 77
    :cond_0
    iget-boolean v1, p0, Lcom/narvii/widget/VoteIcon;->trans:Z

    if-eqz v1, :cond_1

    .line 78
    sget-object v1, Lcom/narvii/widget/VoteIcon;->TRANS_FILTER:Landroid/graphics/ColorFilter;

    goto :goto_0

    .line 79
    :cond_1
    iget v1, p0, Lcom/narvii/widget/VoteIcon;->votedValue:I

    if-nez v1, :cond_2

    .line 80
    iget-object v1, p0, Lcom/narvii/widget/VoteIcon;->noneFilter:Landroid/graphics/ColorFilter;

    goto :goto_0

    :cond_2
    move-object v1, v2

    .line 82
    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto :goto_1

    :cond_3
    move-object v0, v2

    .line 84
    :cond_4
    :goto_1
    invoke-super {p0, p1}, Lcom/narvii/widget/TintButton;->onDraw(Landroid/graphics/Canvas;)V

    if-eqz v0, :cond_5

    .line 86
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_5
    return-void
.end method

.method public setNoneColor(I)V
    .locals 0

    .line 96
    iput p1, p0, Lcom/narvii/widget/VoteIcon;->noneColor:I

    .line 97
    iget p1, p0, Lcom/narvii/widget/VoteIcon;->votedValue:I

    invoke-virtual {p0, p1}, Lcom/narvii/widget/VoteIcon;->updateView(I)V

    return-void
.end method

.method public setPressed(Z)V
    .locals 0

    .line 59
    invoke-super {p0, p1}, Lcom/narvii/widget/TintButton;->setPressed(Z)V

    .line 60
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public setTransparent(Z)V
    .locals 0

    .line 64
    iput-boolean p1, p0, Lcom/narvii/widget/VoteIcon;->trans:Z

    .line 65
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public setVotedValue(I)V
    .locals 0

    .line 91
    iput p1, p0, Lcom/narvii/widget/VoteIcon;->votedValue:I

    .line 92
    invoke-virtual {p0, p1}, Lcom/narvii/widget/VoteIcon;->updateView(I)V

    return-void
.end method

.method protected updateView(I)V
    .locals 1

    .line 101
    invoke-virtual {p0, p1}, Lcom/narvii/widget/VoteIcon;->getVoteIconRes(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    if-nez p1, :cond_2

    .line 103
    iget-boolean p1, p0, Lcom/narvii/widget/VoteIcon;->darkTheme:Z

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    .line 104
    invoke-virtual {p0, p1}, Lcom/narvii/widget/TintButton;->setTintColor(I)V

    goto :goto_0

    .line 105
    :cond_0
    iget p1, p0, Lcom/narvii/widget/VoteIcon;->noneColor:I

    if-eqz p1, :cond_1

    .line 106
    invoke-virtual {p0, p1}, Lcom/narvii/widget/TintButton;->setTintColor(I)V

    goto :goto_0

    .line 108
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/widget/TintButton;->removeTintColor()V

    goto :goto_0

    .line 111
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/widget/TintButton;->removeTintColor()V

    .line 113
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method
