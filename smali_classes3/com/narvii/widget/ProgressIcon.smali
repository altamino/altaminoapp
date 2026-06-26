.class public Lcom/narvii/widget/ProgressIcon;
.super Landroid/widget/FrameLayout;
.source "ProgressIcon.java"


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

    .line 31
    invoke-direct {p0, p1, v0}, Lcom/narvii/widget/ProgressIcon;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/widget/ProgressIcon;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    sget-object p3, Lcom/narvii/amino/R$styleable;->ProgressIcon:[I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x1

    .line 43
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/widget/ProgressIcon;->normalDrawable:Landroid/graphics/drawable/Drawable;

    .line 44
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/widget/ProgressIcon;->finishedDrawable:Landroid/graphics/drawable/Drawable;

    .line 45
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public getStatus()I
    .locals 1

    .line 73
    iget v0, p0, Lcom/narvii/widget/ProgressIcon;->status:I

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 50
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f090562

    .line 51
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/widget/ProgressIcon;->iconView:Landroid/view/View;

    const v0, 0x7f0908cb

    .line 52
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/widget/ProgressIcon;->progressView:Landroid/view/View;

    return-void
.end method

.method public updateView(I)V
    .locals 3

    .line 56
    iput p1, p0, Lcom/narvii/widget/ProgressIcon;->status:I

    .line 57
    sget v0, Lcom/narvii/widget/ProgressIcon;->STATUS_HANDLING:I

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-ne p1, v0, :cond_0

    .line 58
    iget-object p1, p0, Lcom/narvii/widget/ProgressIcon;->progressView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 59
    iget-object p1, p0, Lcom/narvii/widget/ProgressIcon;->iconView:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/ProgressIcon;->progressView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 62
    iget-object v0, p0, Lcom/narvii/widget/ProgressIcon;->iconView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 63
    iget-object v0, p0, Lcom/narvii/widget/ProgressIcon;->iconView:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    .line 64
    check-cast v0, Landroid/widget/ImageView;

    sget v1, Lcom/narvii/widget/ProgressIcon;->STATUS_HANDLED:I

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/narvii/widget/ProgressIcon;->finishedDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/narvii/widget/ProgressIcon;->normalDrawable:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 66
    :cond_2
    sget v1, Lcom/narvii/widget/ProgressIcon;->STATUS_HANDLED:I

    if-ne p1, v1, :cond_3

    iget-object p1, p0, Lcom/narvii/widget/ProgressIcon;->finishedDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/narvii/widget/ProgressIcon;->normalDrawable:Landroid/graphics/drawable/Drawable;

    :goto_1
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 69
    :goto_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method
