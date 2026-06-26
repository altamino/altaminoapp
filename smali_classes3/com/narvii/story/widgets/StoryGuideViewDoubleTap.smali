.class public Lcom/narvii/story/widgets/StoryGuideViewDoubleTap;
.super Lcom/narvii/story/widgets/GuideViewHelper$BaseGuideView;
.source "StoryGuideViewDoubleTap.java"


# static fields
.field public static final KEY_HAS_GUIDE_SHOWN:Ljava/lang/String; = "has_story_double_tap_guide_shown"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/narvii/story/widgets/GuideViewHelper$BaseGuideView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f0b0667

    return v0
.end method

.method protected getPrefKey()Ljava/lang/String;
    .locals 1

    const-string v0, "has_story_double_tap_guide_shown"

    return-object v0
.end method

.method protected init()V
    .locals 3

    .line 34
    invoke-super {p0}, Lcom/narvii/story/widgets/GuideViewHelper$BaseGuideView;->init()V

    const v0, 0x7f090ae0

    .line 35
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVImageView;

    const-string v1, "assets://story_guide_double_tap.webp"

    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 36
    new-instance v0, Lcom/narvii/story/widgets/StoryGuideViewDoubleTap$1;

    invoke-direct {v0, p0}, Lcom/narvii/story/widgets/StoryGuideViewDoubleTap$1;-><init>(Lcom/narvii/story/widgets/StoryGuideViewDoubleTap;)V

    const-wide/16 v1, 0xbb8

    invoke-static {v0, v1, v2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method
