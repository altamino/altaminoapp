.class public Lcom/narvii/chat/video/layout/VideoAccountInfoLayout;
.super Landroid/widget/FrameLayout;
.source "VideoAccountInfoLayout.java"


# static fields
.field public static final POS_BOTTOM:I = 0x2

.field public static final POS_MIDDLE:I = 0x1

.field public static final POS_TOP:I


# instance fields
.field accountInfoLayout:Landroid/view/View;

.field private curPos:I

.field muteIndicator:Landroid/view/View;

.field topOffset:Landroid/view/View;

.field tvNickname:Landroid/widget/TextView;

.field volumeIndicatorBottom:Lcom/narvii/widget/VolumeIndicator;

.field volumeIndicatorTop:Lcom/narvii/widget/VolumeIndicator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, v0}, Lcom/narvii/chat/video/layout/VideoAccountInfoLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p2, 0x7f0b0020

    .line 41
    invoke-static {p1, p2, p0}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .line 47
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f090bbe

    .line 48
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/video/layout/VideoAccountInfoLayout;->topOffset:Landroid/view/View;

    const v0, 0x7f090cc6

    .line 49
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/VolumeIndicator;

    iput-object v0, p0, Lcom/narvii/chat/video/layout/VideoAccountInfoLayout;->volumeIndicatorTop:Lcom/narvii/widget/VolumeIndicator;

    const v0, 0x7f090cc5

    .line 50
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/VolumeIndicator;

    iput-object v0, p0, Lcom/narvii/chat/video/layout/VideoAccountInfoLayout;->volumeIndicatorBottom:Lcom/narvii/widget/VolumeIndicator;

    const v0, 0x7f090023

    .line 51
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/video/layout/VideoAccountInfoLayout;->accountInfoLayout:Landroid/view/View;

    const v0, 0x7f0900d3

    .line 52
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/video/layout/VideoAccountInfoLayout;->muteIndicator:Landroid/view/View;

    const v0, 0x7f090764

    .line 53
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/chat/video/layout/VideoAccountInfoLayout;->tvNickname:Landroid/widget/TextView;

    return-void
.end method

.method public setLayoutPosition(I)V
    .locals 5

    .line 57
    iput p1, p0, Lcom/narvii/chat/video/layout/VideoAccountInfoLayout;->curPos:I

    .line 58
    iget-object v0, p0, Lcom/narvii/chat/video/layout/VideoAccountInfoLayout;->topOffset:Landroid/view/View;

    const/4 v1, 0x0

    const/16 v2, 0x8

    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 59
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 60
    instance-of v3, v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, 0x2

    if-eqz v3, :cond_2

    .line 61
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, p0, Lcom/narvii/chat/video/layout/VideoAccountInfoLayout;->curPos:I

    if-ne v3, v4, :cond_1

    const/16 v3, 0x51

    goto :goto_1

    :cond_1
    const/16 v3, 0x31

    :goto_1
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 65
    :cond_2
    iget-object v0, p0, Lcom/narvii/chat/video/layout/VideoAccountInfoLayout;->volumeIndicatorTop:Lcom/narvii/widget/VolumeIndicator;

    if-ne p1, v4, :cond_3

    const/4 v3, 0x0

    goto :goto_2

    :cond_3
    const/16 v3, 0x8

    :goto_2
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 66
    iget-object v0, p0, Lcom/narvii/chat/video/layout/VideoAccountInfoLayout;->volumeIndicatorBottom:Lcom/narvii/widget/VolumeIndicator;

    if-ne p1, v4, :cond_4

    goto :goto_3

    :cond_4
    const/16 v1, 0x8

    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setStatus(ZZLjava/lang/String;IZZ)V
    .locals 3

    .line 70
    iget-object v0, p0, Lcom/narvii/chat/video/layout/VideoAccountInfoLayout;->muteIndicator:Landroid/view/View;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 71
    iget-object p1, p0, Lcom/narvii/chat/video/layout/VideoAccountInfoLayout;->volumeIndicatorTop:Lcom/narvii/widget/VolumeIndicator;

    int-to-float p2, p4

    const/high16 p4, 0x40800000    # 4.0f

    div-float/2addr p2, p4

    const/4 p4, 0x1

    invoke-virtual {p1, p2, p4}, Lcom/narvii/widget/VolumeIndicator;->setValue(FZ)V

    .line 72
    iget-object p1, p0, Lcom/narvii/chat/video/layout/VideoAccountInfoLayout;->volumeIndicatorBottom:Lcom/narvii/widget/VolumeIndicator;

    invoke-virtual {p1, p2, p4}, Lcom/narvii/widget/VolumeIndicator;->setValue(FZ)V

    .line 73
    iget-object p1, p0, Lcom/narvii/chat/video/layout/VideoAccountInfoLayout;->volumeIndicatorTop:Lcom/narvii/widget/VolumeIndicator;

    const/4 p2, 0x2

    if-eqz p5, :cond_1

    iget p4, p0, Lcom/narvii/chat/video/layout/VideoAccountInfoLayout;->curPos:I

    if-ne p4, p2, :cond_1

    const/4 p4, 0x0

    goto :goto_1

    :cond_1
    const/16 p4, 0x8

    :goto_1
    invoke-virtual {p1, p4}, Landroid/view/View;->setVisibility(I)V

    .line 74
    iget-object p1, p0, Lcom/narvii/chat/video/layout/VideoAccountInfoLayout;->volumeIndicatorBottom:Lcom/narvii/widget/VolumeIndicator;

    if-eqz p5, :cond_2

    iget p4, p0, Lcom/narvii/chat/video/layout/VideoAccountInfoLayout;->curPos:I

    if-eq p4, p2, :cond_2

    const/4 v1, 0x0

    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 75
    iget-object p1, p0, Lcom/narvii/chat/video/layout/VideoAccountInfoLayout;->tvNickname:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    new-instance p1, Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    const/4 p2, 0x0

    if-eqz p6, :cond_4

    .line 77
    invoke-virtual {p1}, Lcom/narvii/modulization/CommunityConfigHelper;->isPremiumFeatureEnabled()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 78
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result p1

    const/high16 p3, 0x41000000    # 8.0f

    const p4, 0x7f0802b6

    if-eqz p1, :cond_3

    .line 79
    iget-object p1, p0, Lcom/narvii/chat/video/layout/VideoAccountInfoLayout;->tvNickname:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    invoke-virtual {p5, p4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    invoke-virtual {p1, p2, p2, p4, p2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 80
    iget-object p1, p0, Lcom/narvii/chat/video/layout/VideoAccountInfoLayout;->tvNickname:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p3}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    goto :goto_2

    .line 82
    :cond_3
    iget-object p1, p0, Lcom/narvii/chat/video/layout/VideoAccountInfoLayout;->tvNickname:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    invoke-virtual {p5, p4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    invoke-virtual {p1, p4, p2, p2, p2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 83
    iget-object p1, p0, Lcom/narvii/chat/video/layout/VideoAccountInfoLayout;->tvNickname:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p3}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    goto :goto_2

    .line 86
    :cond_4
    iget-object p1, p0, Lcom/narvii/chat/video/layout/VideoAccountInfoLayout;->tvNickname:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 87
    iget-object p1, p0, Lcom/narvii/chat/video/layout/VideoAccountInfoLayout;->tvNickname:Landroid/widget/TextView;

    invoke-virtual {p1, p2, p2, p2, p2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :goto_2
    return-void
.end method
