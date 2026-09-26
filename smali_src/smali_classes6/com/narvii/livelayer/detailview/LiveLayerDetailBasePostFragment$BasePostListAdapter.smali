.class public abstract Lcom/narvii/livelayer/detailview/LiveLayerDetailBasePostFragment$BasePostListAdapter;
.super Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$BaseListAdapter;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBasePostFragment$BasePostListAdapter;->this$0:Lcom/narvii/livelayer/detailview/LiveLayerDetailBasePostFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1, p2}, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$BaseListAdapter;-><init>(Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;Lcom/narvii/app/NVContext;)V

    .line 6
    return-void
.end method

.method public static safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/list/NVAdapter;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

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

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->onAttach()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/logging/Impression/LinearImpressionCollector;

    .line 6
    .line 7
    const-class v1, Lcom/narvii/model/Feed;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Lcom/narvii/logging/Impression/LinearImpressionCollector;-><init>(Ljava/lang/Class;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->addImpressionCollector(Lcom/narvii/logging/Impression/ImpressionCollector;)V

    .line 14
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

    .line 1
    invoke-virtual/range {v0 .. v6}, Lcom/narvii/livelayer/detailview/LiveLayerDetailBasePostFragment$BasePostListAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;Z)Z

    move-result p1

    return p1
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;Z)Z
    .locals 1

    .line 2
    instance-of v0, p3, Lcom/narvii/model/Feed;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/narvii/model/Feed;

    invoke-virtual {p0, v0, p2, p6}, Lcom/narvii/livelayer/detailview/LiveLayerDetailBasePostFragment$BasePostListAdapter;->openFeed(Lcom/narvii/model/Feed;IZ)Z

    move-result p6

    if-eqz p6, :cond_0

    const/4 p1, 0x1

    return p1

    .line 3
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVPagedAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method protected openFeed(Lcom/narvii/model/Feed;IZ)Z
    .locals 7

    .line 1
    .line 2
    const-string v0, "account"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 9
    const/4 v1, 0x0

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 15
    move-result-object v0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move-object v0, v1

    .line 18
    .line 19
    .line 20
    :goto_0
    invoke-virtual {p1, v0}, Lcom/narvii/model/Feed;->isiModeDisableForUser(Lcom/narvii/model/User;)Z

    .line 21
    move-result v0

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    new-instance p1, Lcom/narvii/util/dialog/AlertDialog;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 29
    move-result-object p2

    .line 30
    .line 31
    .line 32
    invoke-direct {p1, p2}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 33
    .line 34
    iget-object p2, p0, Lcom/narvii/list/NVAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 35
    .line 36
    .line 37
    const p3, 0x7f0d024a

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 41
    move-result-object p2

    .line 42
    .line 43
    .line 44
    const p3, 0x7f0a0059

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 48
    move-result-object v0

    .line 49
    .line 50
    if-eqz v0, :cond_1

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 54
    move-result-object p3

    .line 55
    .line 56
    new-instance v0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBasePostFragment$BasePostListAdapter$1;

    .line 57
    .line 58
    .line 59
    invoke-direct {v0, p0, p1}, Lcom/narvii/livelayer/detailview/LiveLayerDetailBasePostFragment$BasePostListAdapter$1;-><init>(Lcom/narvii/livelayer/detailview/LiveLayerDetailBasePostFragment$BasePostListAdapter;Lcom/narvii/util/dialog/AlertDialog;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    .line 64
    .line 65
    :cond_1
    invoke-virtual {p1, p2}, Lcom/narvii/util/dialog/AlertDialog;->setContentView(Landroid/view/View;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    .line 69
    goto :goto_3

    .line 70
    .line 71
    :cond_2
    sget-object v0, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, p1, v0}, Lcom/narvii/list/NVAdapter;->logClickEvent(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)V

    .line 75
    .line 76
    if-eqz p3, :cond_3

    .line 77
    .line 78
    iget-object v1, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    .line 79
    .line 80
    iget-object v3, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$BaseListAdapter;->recommendList:Ljava/util/List;

    .line 81
    const/4 v4, 0x0

    .line 82
    .line 83
    iget-object v5, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$BaseListAdapter;->timestamp:Ljava/lang/String;

    .line 84
    move-object v2, p1

    .line 85
    move v6, p2

    .line 86
    .line 87
    .line 88
    invoke-static/range {v1 .. v6}, Lcom/narvii/detail/FeedDetailFragment;->intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/Feed;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    .line 89
    move-result-object p1

    .line 90
    goto :goto_2

    .line 91
    .line 92
    .line 93
    :cond_3
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    .line 94
    move-result-object p3

    .line 95
    .line 96
    if-eqz p3, :cond_4

    .line 97
    .line 98
    iget-object v0, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$BaseListAdapter;->recommendList:Ljava/util/List;

    .line 99
    .line 100
    if-eqz v0, :cond_4

    .line 101
    .line 102
    new-instance v0, Ljava/util/ArrayList;

    .line 103
    .line 104
    .line 105
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 106
    .line 107
    .line 108
    invoke-interface {v0, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 109
    .line 110
    iget-object p3, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$BaseListAdapter;->recommendList:Ljava/util/List;

    .line 111
    .line 112
    .line 113
    invoke-interface {v0, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 114
    move-object v3, v0

    .line 115
    goto :goto_1

    .line 116
    :cond_4
    move-object v3, p3

    .line 117
    .line 118
    :goto_1
    iget-object v1, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    .line 119
    const/4 v4, 0x0

    .line 120
    .line 121
    iget-object v5, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$BaseListAdapter;->timestamp:Ljava/lang/String;

    .line 122
    move-object v2, p1

    .line 123
    move v6, p2

    .line 124
    .line 125
    .line 126
    invoke-static/range {v1 .. v6}, Lcom/narvii/detail/FeedDetailFragment;->intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/Feed;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    .line 127
    move-result-object p1

    .line 128
    .line 129
    :goto_2
    iget-object p2, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBasePostFragment$BasePostListAdapter;->this$0:Lcom/narvii/livelayer/detailview/LiveLayerDetailBasePostFragment;

    .line 130
    .line 131
    iget-object p2, p2, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;->source:Ljava/lang/String;

    .line 132
    .line 133
    const-string p3, "Source"

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    .line 138
    .line 139
    invoke-static {p0, p1}, Lcom/narvii/livelayer/detailview/LiveLayerDetailBasePostFragment$BasePostListAdapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    .line 140
    :goto_3
    const/4 p1, 0x1

    .line 141
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

    const-class v0, Lcom/narvii/livelayer/detailview/OnlineBlogListResponse;

    return-object v0
.end method

.method protected setFootToolbar(Lcom/narvii/model/Feed;Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    if-eqz p1, :cond_2

    .line 3
    .line 4
    .line 5
    const v0, 0x7f0a0588

    .line 6
    .line 7
    .line 8
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    move-result-object p2

    .line 10
    .line 11
    check-cast p2, Lcom/narvii/feed/FeedToolbarLayout;

    .line 12
    .line 13
    if-eqz p2, :cond_2

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2, p1}, Lcom/narvii/feed/FeedToolbarLayout;->setFeed(Lcom/narvii/model/Feed;)V

    .line 17
    const/4 v0, 0x1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2, v0}, Lcom/narvii/feed/FeedToolbarLayout;->setDarkTheme(Z)V

    .line 21
    .line 22
    .line 23
    const v0, 0x7f0a058f

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    check-cast v0, Landroid/widget/TextView;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/narvii/model/Feed;->getTotalVotesCount()I

    .line 33
    move-result v1

    .line 34
    .line 35
    if-lez v1, :cond_0

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/narvii/model/Feed;->getTotalVotesCount()I

    .line 39
    move-result v1

    .line 40
    .line 41
    .line 42
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 43
    move-result-object v1

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    const/4 v1, 0x0

    .line 46
    .line 47
    .line 48
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    .line 50
    .line 51
    const v0, 0x7f0a0590

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 55
    move-result-object v0

    .line 56
    .line 57
    check-cast v0, Lcom/narvii/widget/TintButton;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isGlobalInteractionScope()Z

    .line 61
    move-result v1

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, v1}, Lcom/narvii/model/Feed;->getVotedValue(Z)I

    .line 65
    move-result v1

    .line 66
    .line 67
    if-nez v1, :cond_1

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 71
    move-result-object p1

    .line 72
    .line 73
    .line 74
    const v1, 0x7f080687

    .line 75
    .line 76
    .line 77
    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 78
    move-result-object p1

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 82
    const/4 p1, -0x1

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, p1}, Lcom/narvii/widget/TintButton;->setTintColor(I)V

    .line 86
    goto :goto_1

    .line 87
    .line 88
    .line 89
    :cond_1
    invoke-virtual {p2, p1}, Lcom/narvii/feed/FeedToolbarLayout;->setFeed(Lcom/narvii/model/Feed;)V

    .line 90
    :goto_1
    const/4 p1, 0x0

    .line 91
    .line 92
    .line 93
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 94
    :cond_2
    return-void
.end method

.method protected setTitleAndImgFromFeed(Ljava/lang/Object;Landroid/view/View;)Lcom/narvii/model/Feed;
    .locals 7

    .line 1
    .line 2
    instance-of v0, p1, Lcom/narvii/model/Blog;

    .line 3
    .line 4
    if-eqz v0, :cond_9

    .line 5
    .line 6
    check-cast p1, Lcom/narvii/model/Blog;

    .line 7
    .line 8
    iget v0, p1, Lcom/narvii/model/Blog;->type:I

    .line 9
    const/4 v1, 0x1

    .line 10
    .line 11
    const/16 v2, 0x8

    .line 12
    const/4 v3, 0x0

    .line 13
    .line 14
    .line 15
    const v4, 0x7f0a055e

    .line 16
    .line 17
    .line 18
    const v5, 0x7f0a0e9e

    .line 19
    .line 20
    .line 21
    const v6, 0x7f0a06eb

    .line 22
    .line 23
    if-ne v0, v1, :cond_4

    .line 24
    .line 25
    iget-object v0, p1, Lcom/narvii/model/Blog;->refObject:Lcom/narvii/model/Feed;

    .line 26
    .line 27
    instance-of v1, v0, Lcom/narvii/model/Item;

    .line 28
    .line 29
    if-eqz v1, :cond_4

    .line 30
    move-object p1, v0

    .line 31
    .line 32
    check-cast p1, Lcom/narvii/model/Item;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    check-cast v0, Lcom/narvii/widget/NVImageView;

    .line 39
    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    .line 43
    invoke-static {p1}, Lcom/narvii/util/LiveLayerUtils;->getCoverMedia(Lcom/narvii/model/Feed;)Lcom/narvii/model/Media;

    .line 44
    move-result-object v1

    .line 45
    .line 46
    instance-of v6, v0, Lcom/narvii/widget/SecretImageView;

    .line 47
    .line 48
    if-eqz v6, :cond_0

    .line 49
    .line 50
    iget-boolean v6, p1, Lcom/narvii/model/Feed;->needHidden:Z

    .line 51
    .line 52
    check-cast v0, Lcom/narvii/widget/SecretImageView;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v1, v6}, Lcom/narvii/widget/SecretImageView;->setImageMedia(Lcom/narvii/model/Media;Z)Z

    .line 56
    goto :goto_0

    .line 57
    .line 58
    .line 59
    :cond_0
    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 60
    .line 61
    .line 62
    :cond_1
    :goto_0
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 63
    move-result-object v0

    .line 64
    .line 65
    check-cast v0, Landroid/widget/TextView;

    .line 66
    .line 67
    if-eqz v0, :cond_2

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1}, Lcom/narvii/model/Item;->title()Ljava/lang/String;

    .line 71
    move-result-object v1

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    .line 76
    .line 77
    :cond_2
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 78
    move-result-object p2

    .line 79
    .line 80
    if-eqz p2, :cond_a

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1}, Lcom/narvii/model/Feed;->isFansOnly()Z

    .line 84
    move-result v0

    .line 85
    .line 86
    if-eqz v0, :cond_3

    .line 87
    move v2, v3

    .line 88
    .line 89
    .line 90
    :cond_3
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 91
    goto :goto_2

    .line 92
    .line 93
    .line 94
    :cond_4
    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 95
    move-result-object v0

    .line 96
    .line 97
    check-cast v0, Lcom/narvii/widget/NVImageView;

    .line 98
    .line 99
    if-eqz v0, :cond_6

    .line 100
    .line 101
    .line 102
    invoke-static {p1}, Lcom/narvii/util/LiveLayerUtils;->getCoverMedia(Lcom/narvii/model/Feed;)Lcom/narvii/model/Media;

    .line 103
    move-result-object v1

    .line 104
    .line 105
    instance-of v6, v0, Lcom/narvii/widget/SecretImageView;

    .line 106
    .line 107
    if-eqz v6, :cond_5

    .line 108
    .line 109
    iget-boolean v6, p1, Lcom/narvii/model/Feed;->needHidden:Z

    .line 110
    .line 111
    check-cast v0, Lcom/narvii/widget/SecretImageView;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, v1, v6}, Lcom/narvii/widget/SecretImageView;->setImageMedia(Lcom/narvii/model/Media;Z)Z

    .line 115
    goto :goto_1

    .line 116
    .line 117
    .line 118
    :cond_5
    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 119
    .line 120
    .line 121
    :cond_6
    :goto_1
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 122
    move-result-object v0

    .line 123
    .line 124
    check-cast v0, Landroid/widget/TextView;

    .line 125
    .line 126
    if-eqz v0, :cond_7

    .line 127
    .line 128
    iget-object v1, p1, Lcom/narvii/model/Blog;->title:Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    .line 133
    .line 134
    :cond_7
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 135
    move-result-object p2

    .line 136
    .line 137
    if-eqz p2, :cond_a

    .line 138
    .line 139
    .line 140
    invoke-virtual {p1}, Lcom/narvii/model/Feed;->isFansOnly()Z

    .line 141
    move-result v0

    .line 142
    .line 143
    if-eqz v0, :cond_8

    .line 144
    move v2, v3

    .line 145
    .line 146
    .line 147
    :cond_8
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 148
    goto :goto_2

    .line 149
    :cond_9
    const/4 p1, 0x0

    .line 150
    :cond_a
    :goto_2
    return-object p1
.end method
