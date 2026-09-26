.class public Lcom/narvii/widget/ProgressIcon;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# static fields
.field public static STATUS_HANDLED:I = 0x2

.field public static STATUS_HANDLING:I = 0x1

.field public static STATUS_NORMAL:I


# instance fields
.field private finishedDrawable:Landroid/graphics/drawable/Drawable;

.field private iconView:Landroid/view/View;

.field private normalDrawable:Landroid/graphics/drawable/Drawable;

.field private progressView:Landroid/view/View;

.field private status:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/widget/ProgressIcon;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/widget/ProgressIcon;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    sget-object p3, Lcom/narvii/amino/R$styleable;->ProgressIcon:[I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x1

    .line 5
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/widget/ProgressIcon;->normalDrawable:Landroid/graphics/drawable/Drawable;

    .line 6
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/widget/ProgressIcon;->finishedDrawable:Landroid/graphics/drawable/Drawable;

    .line 7
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public getStatus()I
    .locals 1

    iget v0, p0, Lcom/narvii/widget/ProgressIcon;->status:I

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f0a06d5

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    iput-object v0, p0, Lcom/narvii/widget/ProgressIcon;->iconView:Landroid/view/View;

    .line 13
    .line 14
    .line 15
    const v0, 0x7f0a0b8a

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    iput-object v0, p0, Lcom/narvii/widget/ProgressIcon;->progressView:Landroid/view/View;

    .line 22
    return-void
.end method

.method public updateView(I)V
    .locals 3

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/widget/ProgressIcon;->status:I

    .line 3
    .line 4
    sget v0, Lcom/narvii/widget/ProgressIcon;->STATUS_HANDLING:I

    .line 5
    const/4 v1, 0x4

    .line 6
    const/4 v2, 0x0

    .line 7
    .line 8
    if-ne p1, v0, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lcom/narvii/widget/ProgressIcon;->progressView:Landroid/view/View;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 14
    .line 15
    iget-object p1, p0, Lcom/narvii/widget/ProgressIcon;->iconView:Landroid/view/View;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 19
    goto :goto_2

    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/ProgressIcon;->progressView:Landroid/view/View;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 25
    .line 26
    iget-object v0, p0, Lcom/narvii/widget/ProgressIcon;->iconView:Landroid/view/View;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 30
    .line 31
    iget-object v0, p0, Lcom/narvii/widget/ProgressIcon;->iconView:Landroid/view/View;

    .line 32
    .line 33
    instance-of v1, v0, Landroid/widget/ImageView;

    .line 34
    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    check-cast v0, Landroid/widget/ImageView;

    .line 38
    .line 39
    sget v1, Lcom/narvii/widget/ProgressIcon;->STATUS_HANDLED:I

    .line 40
    .line 41
    if-ne p1, v1, :cond_1

    .line 42
    .line 43
    iget-object p1, p0, Lcom/narvii/widget/ProgressIcon;->finishedDrawable:Landroid/graphics/drawable/Drawable;

    .line 44
    goto :goto_0

    .line 45
    .line 46
    :cond_1
    iget-object p1, p0, Lcom/narvii/widget/ProgressIcon;->normalDrawable:Landroid/graphics/drawable/Drawable;

    .line 47
    .line 48
    .line 49
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 50
    goto :goto_2

    .line 51
    .line 52
    :cond_2
    sget v1, Lcom/narvii/widget/ProgressIcon;->STATUS_HANDLED:I

    .line 53
    .line 54
    if-ne p1, v1, :cond_3

    .line 55
    .line 56
    iget-object p1, p0, Lcom/narvii/widget/ProgressIcon;->finishedDrawable:Landroid/graphics/drawable/Drawable;

    .line 57
    goto :goto_1

    .line 58
    .line 59
    :cond_3
    iget-object p1, p0, Lcom/narvii/widget/ProgressIcon;->normalDrawable:Landroid/graphics/drawable/Drawable;

    .line 60
    .line 61
    .line 62
    :goto_1
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 63
    .line 64
    .line 65
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 66
    return-void
.end method
