.class public Lcom/narvii/livelayer/LiverLayerAnimationTestFragment;
.super Lcom/narvii/app/NVFragment;
.source "SourceFile"

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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 4
    move-result p1

    .line 5
    .line 6
    .line 7
    packed-switch p1, :pswitch_data_0

    .line 8
    goto :goto_0

    .line 9
    .line 10
    :pswitch_0
    iget-object p1, p0, Lcom/narvii/livelayer/LiverLayerAnimationTestFragment;->pollLiveIndicator:Lcom/narvii/widget/PollLiveIndicator;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/narvii/widget/PollLiveIndicator;->startAnimation()V

    .line 14
    goto :goto_0

    .line 15
    .line 16
    :pswitch_1
    iget-object p1, p0, Lcom/narvii/livelayer/LiverLayerAnimationTestFragment;->commentLiveIndicator:Lcom/narvii/widget/CommentLiveIndicator;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/narvii/widget/CommentLiveIndicator;->startAnimation()V

    .line 20
    :goto_0
    return-void

    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    :pswitch_data_0
    .packed-switch 0x7f0a0e4b
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    const p3, 0x7f0d02e7

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const p2, 0x7f0a0b0d

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object p2

    .line 11
    .line 12
    check-cast p2, Lcom/narvii/widget/PollLiveIndicator;

    .line 13
    .line 14
    iput-object p2, p0, Lcom/narvii/livelayer/LiverLayerAnimationTestFragment;->pollLiveIndicator:Lcom/narvii/widget/PollLiveIndicator;

    .line 15
    .line 16
    .line 17
    const p2, 0x7f0a035c

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    move-result-object p2

    .line 22
    .line 23
    check-cast p2, Lcom/narvii/widget/CommentLiveIndicator;

    .line 24
    .line 25
    iput-object p2, p0, Lcom/narvii/livelayer/LiverLayerAnimationTestFragment;->commentLiveIndicator:Lcom/narvii/widget/CommentLiveIndicator;

    .line 26
    .line 27
    .line 28
    const p2, 0x7f0a0e4b

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    move-result-object p2

    .line 33
    .line 34
    check-cast p2, Landroid/widget/Button;

    .line 35
    .line 36
    iput-object p2, p0, Lcom/narvii/livelayer/LiverLayerAnimationTestFragment;->btnCommentTest:Landroid/widget/Button;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    .line 41
    .line 42
    const p2, 0x7f0a0e4c

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 46
    move-result-object p1

    .line 47
    .line 48
    check-cast p1, Landroid/widget/Button;

    .line 49
    .line 50
    iput-object p1, p0, Lcom/narvii/livelayer/LiverLayerAnimationTestFragment;->btnPollTest:Landroid/widget/Button;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    return-void
.end method
