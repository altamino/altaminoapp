.class public Lcom/narvii/widget/RtcIndicatorView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field public rtcIndicator:Landroid/view/View;

.field rtcIndicatorIcon:Lcom/narvii/widget/NVImageView;

.field rtcIndicatorText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    .line 10
    const p2, 0x7f0d06a5

    .line 11
    .line 12
    .line 13
    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 14
    return-void
.end method


# virtual methods
.method public isIndicatorShowing()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/RtcIndicatorView;->rtcIndicator:Landroid/view/View;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 8
    move-result v0

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
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
    check-cast v0, Lcom/narvii/widget/NVImageView;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/narvii/widget/RtcIndicatorView;->rtcIndicatorIcon:Lcom/narvii/widget/NVImageView;

    .line 15
    .line 16
    .line 17
    const v0, 0x7f0a071b

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    check-cast v0, Landroid/widget/TextView;

    .line 24
    .line 25
    iput-object v0, p0, Lcom/narvii/widget/RtcIndicatorView;->rtcIndicatorText:Landroid/widget/TextView;

    .line 26
    .line 27
    .line 28
    const v0, 0x7f0a0c5a

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    iput-object v0, p0, Lcom/narvii/widget/RtcIndicatorView;->rtcIndicator:Landroid/view/View;

    .line 35
    return-void
.end method

.method public updateView()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/RtcIndicatorView;->rtcIndicator:Landroid/view/View;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/widget/RtcIndicatorView;->rtcIndicatorText:Landroid/widget/TextView;

    .line 11
    .line 12
    .line 13
    const v1, 0x7f120b9a

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/widget/RtcIndicatorView;->rtcIndicatorIcon:Lcom/narvii/widget/NVImageView;

    .line 19
    .line 20
    const-string v1, "assets://video_white.webp"

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 24
    .line 25
    iget-object v0, p0, Lcom/narvii/widget/RtcIndicatorView;->rtcIndicatorIcon:Lcom/narvii/widget/NVImageView;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    .line 32
    const v2, 0x7f010053

    .line 33
    .line 34
    .line 35
    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 36
    move-result-object v1

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 40
    :cond_0
    return-void
.end method
