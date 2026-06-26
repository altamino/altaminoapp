.class public Lcom/narvii/widget/RtcIndicatorView;
.super Landroid/widget/FrameLayout;
.source "RtcIndicatorView.java"


# instance fields
.field public rtcIndicator:Landroid/view/View;

.field rtcIndicatorIcon:Lcom/narvii/widget/NVImageView;

.field rtcIndicatorText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0b05f1

    invoke-static {p1, p2, p0}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method


# virtual methods
.method public isIndicatorShowing()Z
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/narvii/widget/RtcIndicatorView;->rtcIndicator:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 31
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f090562

    .line 32
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVImageView;

    iput-object v0, p0, Lcom/narvii/widget/RtcIndicatorView;->rtcIndicatorIcon:Lcom/narvii/widget/NVImageView;

    const v0, 0x7f090594

    .line 33
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/widget/RtcIndicatorView;->rtcIndicatorText:Landroid/widget/TextView;

    const v0, 0x7f090994

    .line 34
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/widget/RtcIndicatorView;->rtcIndicator:Landroid/view/View;

    return-void
.end method

.method public updateView()V
    .locals 3

    .line 43
    iget-object v0, p0, Lcom/narvii/widget/RtcIndicatorView;->rtcIndicator:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 44
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 45
    iget-object v0, p0, Lcom/narvii/widget/RtcIndicatorView;->rtcIndicatorText:Landroid/widget/TextView;

    const v1, 0x7f0f0aef

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 46
    iget-object v0, p0, Lcom/narvii/widget/RtcIndicatorView;->rtcIndicatorIcon:Lcom/narvii/widget/NVImageView;

    const-string v1, "assets://video_white.webp"

    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 47
    iget-object v0, p0, Lcom/narvii/widget/RtcIndicatorView;->rtcIndicatorIcon:Lcom/narvii/widget/NVImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f010035

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method
