.class public Lcom/narvii/livelayer/LiverLayerAnimationTestFragment;
.super Lcom/narvii/app/NVFragment;
.source "LiverLayerAnimationTestFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field btnCommentTest:Landroid/widget/Button;

.field btnPollTest:Landroid/widget/Button;

.field commentLiveIndicator:Lcom/narvii/widget/CommentLiveIndicator;

.field pollLiveIndicator:Lcom/narvii/widget/PollLiveIndicator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 51
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 56
    :pswitch_0
    iget-object p1, p0, Lcom/narvii/livelayer/LiverLayerAnimationTestFragment;->pollLiveIndicator:Lcom/narvii/widget/PollLiveIndicator;

    invoke-virtual {p1}, Lcom/narvii/widget/PollLiveIndicator;->startAnimation()V

    goto :goto_0

    .line 53
    :pswitch_1
    iget-object p1, p0, Lcom/narvii/livelayer/LiverLayerAnimationTestFragment;->commentLiveIndicator:Lcom/narvii/widget/CommentLiveIndicator;

    invoke-virtual {p1}, Lcom/narvii/widget/CommentLiveIndicator;->startAnimation()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7f090b59
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b02b6

    const/4 v0, 0x0

    .line 32
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 37
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f090857

    .line 38
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/PollLiveIndicator;

    iput-object p2, p0, Lcom/narvii/livelayer/LiverLayerAnimationTestFragment;->pollLiveIndicator:Lcom/narvii/widget/PollLiveIndicator;

    const p2, 0x7f090294

    .line 39
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/CommentLiveIndicator;

    iput-object p2, p0, Lcom/narvii/livelayer/LiverLayerAnimationTestFragment;->commentLiveIndicator:Lcom/narvii/widget/CommentLiveIndicator;

    const p2, 0x7f090b59

    .line 41
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/narvii/livelayer/LiverLayerAnimationTestFragment;->btnCommentTest:Landroid/widget/Button;

    .line 42
    iget-object p2, p0, Lcom/narvii/livelayer/LiverLayerAnimationTestFragment;->btnCommentTest:Landroid/widget/Button;

    invoke-virtual {p2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f090b5a

    .line 44
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/narvii/livelayer/LiverLayerAnimationTestFragment;->btnPollTest:Landroid/widget/Button;

    .line 45
    iget-object p1, p0, Lcom/narvii/livelayer/LiverLayerAnimationTestFragment;->btnPollTest:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
