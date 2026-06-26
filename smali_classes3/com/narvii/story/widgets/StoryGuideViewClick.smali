.class public Lcom/narvii/story/widgets/StoryGuideViewClick;
.super Lcom/narvii/story/widgets/GuideViewHelper$BaseGuideView;
.source "StoryGuideViewClick.java"


# static fields
.field public static final KEY_HAS_GUIDE_SHOWN:Ljava/lang/String; = "has_story_guide_click_shown"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/narvii/story/widgets/GuideViewHelper$BaseGuideView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private setDashLineHeight()V
    .locals 4

    .line 46
    iget-object v0, p0, Lcom/narvii/story/widgets/GuideViewHelper$BaseGuideView;->info:Landroid/os/Bundle;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v0, 0x7f090adf

    .line 50
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 55
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, 0x0

    .line 58
    instance-of v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_2

    .line 59
    iget-object v1, p0, Lcom/narvii/story/widgets/GuideViewHelper$BaseGuideView;->info:Landroid/os/Bundle;

    const-string v2, "top"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 60
    move-object v2, v0

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :cond_2
    if-eqz v0, :cond_4

    .line 64
    iget-object v2, p0, Lcom/narvii/story/widgets/GuideViewHelper$BaseGuideView;->info:Landroid/os/Bundle;

    const-string v3, "height"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3

    const/4 v1, -0x1

    goto :goto_0

    :cond_3
    sub-int v1, v2, v1

    .line 65
    :goto_0
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_4
    return-void
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f0b0666

    return v0
.end method

.method protected getPrefKey()Ljava/lang/String;
    .locals 1

    const-string v0, "has_story_guide_click_shown"

    return-object v0
.end method

.method protected init()V
    .locals 2

    .line 34
    invoke-super {p0}, Lcom/narvii/story/widgets/GuideViewHelper$BaseGuideView;->init()V

    const v0, 0x7f090adc

    .line 35
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVImageView;

    const-string v1, "assets://story_guide_click.webp"

    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    const v0, 0x7f090add

    .line 36
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVImageView;

    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    return-void
.end method

.method public showGuide()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/narvii/story/widgets/StoryGuideViewClick;->setDashLineHeight()V

    .line 42
    invoke-super {p0}, Lcom/narvii/story/widgets/GuideViewHelper$BaseGuideView;->showGuide()V

    return-void
.end method
