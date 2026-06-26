.class public abstract Lcom/narvii/livelayer/detailview/LiveLayerDetailBasePostFragment$BasePostListAdapter;
.super Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$BaseListAdapter;
.source "LiveLayerDetailBasePostFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/livelayer/detailview/LiveLayerDetailBasePostFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "BasePostListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$BaseListAdapter<",
        "Lcom/narvii/livelayer/detailview/OnlineBlog;",
        "Lcom/narvii/model/api/ListResponse<",
        "+",
        "Lcom/narvii/livelayer/detailview/OnlineBlog;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/livelayer/detailview/LiveLayerDetailBasePostFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/livelayer/detailview/LiveLayerDetailBasePostFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBasePostFragment$BasePostListAdapter;->this$0:Lcom/narvii/livelayer/detailview/LiveLayerDetailBasePostFragment;

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$BaseListAdapter;-><init>(Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method protected dataType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/narvii/livelayer/detailview/OnlineBlog;",
            ">;"
        }
    .end annotation

    .line 46
    const-class v0, Lcom/narvii/livelayer/detailview/OnlineBlog;

    return-object v0
.end method

.method public getAreaName()Ljava/lang/String;
    .locals 1

    const-string v0, "FeedsList"

    return-object v0
.end method

.method public onAttach()V
    .locals 2

    .line 55
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->onAttach()V

    .line 56
    new-instance v0, Lcom/narvii/logging/Impression/LinearImpressionCollector;

    const-class v1, Lcom/narvii/model/Feed;

    invoke-direct {v0, v1}, Lcom/narvii/logging/Impression/LinearImpressionCollector;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->addImpressionCollector(Lcom/narvii/logging/Impression/ImpressionCollector;)V

    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 66
    invoke-virtual/range {v0 .. v6}, Lcom/narvii/livelayer/detailview/LiveLayerDetailBasePostFragment$BasePostListAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;Z)Z

    move-result p1

    return p1
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;Z)Z
    .locals 1

    .line 71
    instance-of v0, p3, Lcom/narvii/model/Feed;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/narvii/model/Feed;

    invoke-virtual {p0, v0, p2, p6}, Lcom/narvii/livelayer/detailview/LiveLayerDetailBasePostFragment$BasePostListAdapter;->openFeed(Lcom/narvii/model/Feed;IZ)Z

    move-result p6

    if-eqz p6, :cond_0

    const/4 p1, 0x1

    return p1

    .line 74
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVPagedAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method protected openFeed(Lcom/narvii/model/Feed;IZ)Z
    .locals 7

    const-string v0, "account"

    .line 159
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Lcom/narvii/model/Feed;->isiModeDisableForUser(Lcom/narvii/model/User;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 161
    new-instance p1, Lcom/narvii/util/dialog/AlertDialog;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 162
    iget-object p2, p0, Lcom/narvii/list/NVAdapter;->inflater:Landroid/view/LayoutInflater;

    const p3, 0x7f0b021c

    invoke-virtual {p2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f09002c

    .line 163
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 164
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    new-instance v0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBasePostFragment$BasePostListAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/narvii/livelayer/detailview/LiveLayerDetailBasePostFragment$BasePostListAdapter$1;-><init>(Lcom/narvii/livelayer/detailview/LiveLayerDetailBasePostFragment$BasePostListAdapter;Lcom/narvii/util/dialog/AlertDialog;)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    :cond_1
    invoke-virtual {p1, p2}, Lcom/narvii/util/dialog/AlertDialog;->setContentView(Landroid/view/View;)V

    .line 172
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    goto :goto_3

    .line 175
    :cond_2
    sget-object v0, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {p0, p1, v0}, Lcom/narvii/list/NVAdapter;->logClickEvent(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)V

    if-eqz p3, :cond_3

    .line 177
    iget-object v1, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    iget-object v3, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$BaseListAdapter;->recommendList:Ljava/util/List;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$BaseListAdapter;->timestamp:Ljava/lang/String;

    move-object v2, p1

    move v6, p2

    invoke-static/range {v1 .. v6}, Lcom/narvii/detail/FeedDetailFragment;->intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/Feed;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    goto :goto_2

    .line 179
    :cond_3
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    move-result-object p3

    if-eqz p3, :cond_4

    .line 181
    iget-object v0, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$BaseListAdapter;->recommendList:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 182
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 183
    invoke-interface {v0, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 184
    iget-object p3, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$BaseListAdapter;->recommendList:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object v3, v0

    goto :goto_1

    :cond_4
    move-object v3, p3

    .line 186
    :goto_1
    iget-object v1, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$BaseListAdapter;->timestamp:Ljava/lang/String;

    move-object v2, p1

    move v6, p2

    invoke-static/range {v1 .. v6}, Lcom/narvii/detail/FeedDetailFragment;->intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/Feed;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    .line 188
    :goto_2
    iget-object p2, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBasePostFragment$BasePostListAdapter;->this$0:Lcom/narvii/livelayer/detailview/LiveLayerDetailBasePostFragment;

    iget-object p2, p2, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;->source:Ljava/lang/String;

    const-string p3, "Source"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 189
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    :goto_3
    const/4 p1, 0x1

    return p1
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/narvii/model/api/ListResponse<",
            "+",
            "Lcom/narvii/livelayer/detailview/OnlineBlog;",
            ">;>;"
        }
    .end annotation

    .line 50
    const-class v0, Lcom/narvii/livelayer/detailview/OnlineBlogListResponse;

    return-object v0
.end method

.method protected setFootToolbar(Lcom/narvii/model/Feed;Landroid/view/View;)V
    .locals 2

    if-eqz p1, :cond_2

    const v0, 0x7f090451

    .line 139
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/feed/FeedToolbarLayout;

    if-eqz p2, :cond_2

    .line 141
    invoke-virtual {p2, p1}, Lcom/narvii/feed/FeedToolbarLayout;->setFeed(Lcom/narvii/model/Feed;)V

    const/4 v0, 0x1

    .line 142
    invoke-virtual {p2, v0}, Lcom/narvii/feed/FeedToolbarLayout;->setDarkTheme(Z)V

    const v0, 0x7f090458

    .line 143
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/narvii/model/Feed;->getTotalVotesCount()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p1}, Lcom/narvii/model/Feed;->getTotalVotesCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f090459

    .line 145
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/TintButton;

    .line 146
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isGlobalInteractionScope()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/narvii/model/Feed;->getVotedValue(Z)I

    move-result v1

    if-nez v1, :cond_1

    .line 147
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f08055e

    invoke-static {p1, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, -0x1

    .line 148
    invoke-virtual {v0, p1}, Lcom/narvii/widget/TintButton;->setTintColor(I)V

    goto :goto_1

    .line 150
    :cond_1
    invoke-virtual {p2, p1}, Lcom/narvii/feed/FeedToolbarLayout;->setFeed(Lcom/narvii/model/Feed;)V

    :goto_1
    const/4 p1, 0x0

    .line 153
    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method protected setTitleAndImgFromFeed(Ljava/lang/Object;Landroid/view/View;)Lcom/narvii/model/Feed;
    .locals 7

    .line 79
    instance-of v0, p1, Lcom/narvii/model/Blog;

    if-eqz v0, :cond_9

    .line 80
    check-cast p1, Lcom/narvii/model/Blog;

    .line 82
    iget v0, p1, Lcom/narvii/model/Blog;->type:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x8

    const v4, 0x7f090425

    const v5, 0x7f090b9a

    const v6, 0x7f090571

    if-ne v0, v1, :cond_4

    iget-object v0, p1, Lcom/narvii/model/Blog;->refObject:Lcom/narvii/model/Feed;

    instance-of v1, v0, Lcom/narvii/model/Item;

    if-eqz v1, :cond_4

    .line 83
    move-object p1, v0

    check-cast p1, Lcom/narvii/model/Item;

    .line 86
    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVImageView;

    if-eqz v0, :cond_1

    .line 88
    invoke-static {p1}, Lcom/narvii/util/LiveLayerUtils;->getCoverMedia(Lcom/narvii/model/Feed;)Lcom/narvii/model/Media;

    move-result-object v1

    .line 89
    instance-of v6, v0, Lcom/narvii/widget/SecretImageView;

    if-eqz v6, :cond_0

    .line 90
    iget-boolean v6, p1, Lcom/narvii/model/Feed;->needHidden:Z

    .line 91
    check-cast v0, Lcom/narvii/widget/SecretImageView;

    invoke-virtual {v0, v1, v6}, Lcom/narvii/widget/SecretImageView;->setImageMedia(Lcom/narvii/model/Media;Z)Z

    goto :goto_0

    .line 93
    :cond_0
    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 97
    :cond_1
    :goto_0
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 99
    invoke-virtual {p1}, Lcom/narvii/model/Item;->title()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    :cond_2
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_a

    .line 104
    invoke-virtual {p1}, Lcom/narvii/model/Feed;->isFansOnly()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 110
    :cond_4
    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVImageView;

    if-eqz v0, :cond_6

    .line 112
    invoke-static {p1}, Lcom/narvii/util/LiveLayerUtils;->getCoverMedia(Lcom/narvii/model/Feed;)Lcom/narvii/model/Media;

    move-result-object v1

    .line 113
    instance-of v6, v0, Lcom/narvii/widget/SecretImageView;

    if-eqz v6, :cond_5

    .line 114
    iget-boolean v6, p1, Lcom/narvii/model/Feed;->needHidden:Z

    .line 115
    check-cast v0, Lcom/narvii/widget/SecretImageView;

    invoke-virtual {v0, v1, v6}, Lcom/narvii/widget/SecretImageView;->setImageMedia(Lcom/narvii/model/Media;Z)Z

    goto :goto_2

    .line 117
    :cond_5
    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 121
    :cond_6
    :goto_2
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_7

    .line 123
    iget-object v1, p1, Lcom/narvii/model/Blog;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    :cond_7
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_a

    .line 128
    invoke-virtual {p1}, Lcom/narvii/model/Feed;->isFansOnly()Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_3

    :cond_8
    const/16 v2, 0x8

    :goto_3
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    :cond_9
    const/4 p1, 0x0

    :cond_a
    :goto_4
    return-object p1
.end method
