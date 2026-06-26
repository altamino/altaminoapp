.class public Lcom/narvii/story/widgets/StoryGuideViewSwipe;
.super Lcom/narvii/story/widgets/GuideViewHelper$BaseGuideView;
.source "StoryGuideViewSwipe.java"


# static fields
.field public static final KEY_HAS_GUIDE_SHOWN:Ljava/lang/String; = "has_story_guide_shown"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/narvii/story/widgets/GuideViewHelper$BaseGuideView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f0b0668

    return v0
.end method

.method protected getPrefKey()Ljava/lang/String;
    .locals 1

    const-string v0, "has_story_guide_shown"

    return-object v0
.end method

.method protected init()V
    .locals 3

    .line 33
    invoke-super {p0}, Lcom/narvii/story/widgets/GuideViewHelper$BaseGuideView;->init()V

    const v0, 0x7f090ae1

    .line 34
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/narvii/widget/NVImageView;

    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/narvii/widget/NVImageView;->makeWebpRtl(Z)V

    .line 35
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVImageView;

    const-string v1, "assets://story_guide_swipe.webp"

    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    return-void
.end method
