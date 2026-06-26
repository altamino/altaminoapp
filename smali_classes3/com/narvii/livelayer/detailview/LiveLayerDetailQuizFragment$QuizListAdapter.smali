.class public Lcom/narvii/livelayer/detailview/LiveLayerDetailQuizFragment$QuizListAdapter;
.super Lcom/narvii/livelayer/detailview/LiveLayerDetailBasePostFragment$BasePostListAdapter;
.source "LiveLayerDetailQuizFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/livelayer/detailview/LiveLayerDetailQuizFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "QuizListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/livelayer/detailview/LiveLayerDetailQuizFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/livelayer/detailview/LiveLayerDetailQuizFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailQuizFragment$QuizListAdapter;->this$0:Lcom/narvii/livelayer/detailview/LiveLayerDetailQuizFragment;

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/narvii/livelayer/detailview/LiveLayerDetailBasePostFragment$BasePostListAdapter;-><init>(Lcom/narvii/livelayer/detailview/LiveLayerDetailBasePostFragment;Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getAreaName()Ljava/lang/String;
    .locals 1

    .line 75
    invoke-super {p0}, Lcom/narvii/livelayer/detailview/LiveLayerDetailBasePostFragment$BasePostListAdapter;->getAreaName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 1

    .line 89
    invoke-super {p0, p1, p2, p3, p4}, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$BaseListAdapter;->getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 91
    instance-of p3, p1, Lcom/narvii/model/Blog;

    if-eqz p3, :cond_4

    .line 92
    check-cast p1, Lcom/narvii/model/Blog;

    const p3, 0x7f090571

    .line 94
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/widget/NVImageView;

    if-eqz p3, :cond_1

    .line 96
    invoke-static {p1}, Lcom/narvii/util/LiveLayerUtils;->getCoverMedia(Lcom/narvii/model/Feed;)Lcom/narvii/model/Media;

    move-result-object p4

    .line 97
    instance-of v0, p3, Lcom/narvii/widget/SecretImageView;

    if-eqz v0, :cond_0

    .line 98
    iget-boolean v0, p1, Lcom/narvii/model/Feed;->needHidden:Z

    .line 99
    check-cast p3, Lcom/narvii/widget/SecretImageView;

    invoke-virtual {p3, p4, v0}, Lcom/narvii/widget/SecretImageView;->setImageMedia(Lcom/narvii/model/Media;Z)Z

    goto :goto_0

    .line 101
    :cond_0
    invoke-virtual {p3, p4}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    :cond_1
    :goto_0
    const p3, 0x7f090b9a

    .line 105
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    if-eqz p3, :cond_2

    .line 107
    iget-object p4, p1, Lcom/narvii/model/Blog;->title:Ljava/lang/String;

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    const p3, 0x7f090a91

    .line 110
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iget-object p4, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p3, p4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p3, 0x7f090a93

    .line 112
    invoke-virtual {p0, p2, p3}, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$BaseListAdapter;->alignOnlineBar(Landroid/view/View;I)V

    const p3, 0x7f090425

    .line 114
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_4

    .line 116
    invoke-virtual {p1}, Lcom/narvii/model/Feed;->isFansOnly()Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    const/16 p1, 0x8

    :goto_1
    invoke-virtual {p3, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    return-object p2
.end method

.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f0b04d1

    return v0
.end method

.method public bridge synthetic onAttach()V
    .locals 0

    .line 75
    invoke-super {p0}, Lcom/narvii/livelayer/detailview/LiveLayerDetailBasePostFragment$BasePostListAdapter;->onAttach()V

    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    if-eqz p5, :cond_0

    .line 125
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f090a91

    if-ne v0, v1, :cond_0

    instance-of v0, p3, Lcom/narvii/model/Blog;

    if-eqz v0, :cond_0

    .line 126
    new-instance p1, Lcom/narvii/feed/FeedHelper;

    iget-object p2, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    invoke-direct {p1, p2}, Lcom/narvii/feed/FeedHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 127
    sget-object p2, Lcom/narvii/util/logging/LoggingSource;->FeedList:Lcom/narvii/util/logging/LoggingSource;

    iput-object p2, p1, Lcom/narvii/feed/FeedHelper;->loggingSource:Lcom/narvii/util/logging/LoggingSource;

    .line 128
    iget-object p2, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailQuizFragment$QuizListAdapter;->this$0:Lcom/narvii/livelayer/detailview/LiveLayerDetailQuizFragment;

    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    .line 129
    check-cast p3, Lcom/narvii/model/Blog;

    invoke-virtual {p1, p3, p2}, Lcom/narvii/feed/FeedHelper;->startQuiz(Lcom/narvii/model/Blog;Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1

    .line 134
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/livelayer/detailview/LiveLayerDetailBasePostFragment$BasePostListAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;Z)Z
    .locals 0

    .line 75
    invoke-super/range {p0 .. p6}, Lcom/narvii/livelayer/detailview/LiveLayerDetailBasePostFragment$BasePostListAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;Z)Z

    move-result p1

    return p1
.end method
