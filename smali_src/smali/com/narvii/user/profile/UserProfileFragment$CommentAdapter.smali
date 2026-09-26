.class Lcom/narvii/user/profile/UserProfileFragment$CommentAdapter;
.super Lcom/narvii/comment/list/CommentListAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/user/profile/UserProfileFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CommentAdapter"
.end annotation


# instance fields
.field adViewBkp:Lai/medialab/medialabads2/banners/MediaLabAdView;

.field flHeight:I

.field final synthetic this$0:Lcom/narvii/user/profile/UserProfileFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/user/profile/UserProfileFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$CommentAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/comment/list/CommentListAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    const/4 p1, 0x0

    .line 7
    .line 8
    iput-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$CommentAdapter;->adViewBkp:Lai/medialab/medialabads2/banners/MediaLabAdView;

    .line 9
    .line 10
    const-string p1, "User Profile"

    .line 11
    .line 12
    iput-object p1, p0, Lcom/narvii/comment/list/CommentListAdapter;->source:Ljava/lang/String;

    .line 13
    .line 14
    sget-object p1, Lcom/narvii/util/logging/LoggingSource;->UserProfileView:Lcom/narvii/util/logging/LoggingSource;

    .line 15
    .line 16
    iput-object p1, p0, Lcom/narvii/comment/list/CommentListAdapter;->loggingSource:Lcom/narvii/util/logging/LoggingSource;

    .line 17
    return-void
.end method

.method private addAdOnTheLastPos(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/Comment;",
            ">;I)V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$CommentAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/user/profile/UserProfileFragment;->bioAdapter:Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    check-cast v0, Lcom/narvii/model/User;

    .line 11
    .line 12
    iget v0, v0, Lcom/narvii/model/User;->commentsCount:I

    .line 13
    .line 14
    if-ne v0, p2, :cond_0

    .line 15
    .line 16
    new-instance p2, Lcom/narvii/model/Comment;

    .line 17
    .line 18
    .line 19
    invoke-direct {p2}, Lcom/narvii/model/Comment;-><init>()V

    .line 20
    .line 21
    const/16 v0, 0xb

    .line 22
    .line 23
    iput v0, p2, Lcom/narvii/model/Comment;->type:I

    .line 24
    .line 25
    const-string v0, ""

    .line 26
    .line 27
    iput-object v0, p2, Lcom/narvii/model/Comment;->content:Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    :cond_0
    return-void
.end method

.method private getSubCommentCount(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/Comment;",
            ">;)I"
        }
    .end annotation

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    const/4 p1, 0x0

    .line 4
    return p1

    .line 5
    .line 6
    .line 7
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 8
    move-result p1

    .line 9
    const/4 v0, 0x2

    .line 10
    .line 11
    .line 12
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    .line 13
    move-result p1

    .line 14
    return p1
.end method

.method public static safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V
    .locals 1
    .param p0, "p0"    # Landroidx/fragment/app/Fragment;
    .param p1, "p1"    # Landroid/content/Intent;
    .param p2, "p2"    # I

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public enhanceList(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/Comment;",
            ">;)",
            "Ljava/util/List<",
            "+",
            "Lcom/narvii/model/Comment;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/narvii/user/profile/UserProfileFragment$CommentAdapter;->removeAds(Ljava/util/List;)Ljava/util/List;

    .line 8
    move-result-object p1

    .line 9
    const/4 v1, 0x0

    .line 10
    move v2, v1

    .line 11
    move v3, v2

    .line 12
    move v4, v3

    .line 13
    .line 14
    .line 15
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 16
    move-result v5

    .line 17
    .line 18
    if-ge v2, v5, :cond_1

    .line 19
    .line 20
    .line 21
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 22
    move-result-object v5

    .line 23
    .line 24
    check-cast v5, Lcom/narvii/model/Comment;

    .line 25
    .line 26
    iget v5, v5, Lcom/narvii/model/Comment;->type:I

    .line 27
    .line 28
    const/16 v6, 0xb

    .line 29
    .line 30
    if-eq v5, v6, :cond_0

    .line 31
    .line 32
    add-int/lit8 v3, v3, 0x1

    .line 33
    .line 34
    .line 35
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 36
    move-result-object v5

    .line 37
    .line 38
    check-cast v5, Lcom/narvii/model/Comment;

    .line 39
    .line 40
    iget-object v5, v5, Lcom/narvii/model/Comment;->subcommentsPreview:Ljava/util/List;

    .line 41
    .line 42
    .line 43
    invoke-direct {p0, v5}, Lcom/narvii/user/profile/UserProfileFragment$CommentAdapter;->getSubCommentCount(Ljava/util/List;)I

    .line 44
    move-result v5

    .line 45
    add-int/2addr v4, v5

    .line 46
    .line 47
    add-int v5, v3, v4

    .line 48
    .line 49
    const/16 v7, 0x9

    .line 50
    .line 51
    if-lt v5, v7, :cond_0

    .line 52
    .line 53
    new-instance v3, Lcom/narvii/model/Comment;

    .line 54
    .line 55
    .line 56
    invoke-direct {v3}, Lcom/narvii/model/Comment;-><init>()V

    .line 57
    .line 58
    iput v6, v3, Lcom/narvii/model/Comment;->type:I

    .line 59
    .line 60
    const-string v4, ""

    .line 61
    .line 62
    iput-object v4, v3, Lcom/narvii/model/Comment;->content:Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    invoke-interface {p1, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 66
    move v3, v1

    .line 67
    move v4, v3

    .line 68
    .line 69
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 70
    goto :goto_0

    .line 71
    .line 72
    .line 73
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/narvii/user/profile/UserProfileFragment$CommentAdapter;->addAdOnTheLastPos(Ljava/util/List;I)V

    .line 74
    return-object p1
.end method

.method protected firstLoadingHeight()I
    .locals 1

    iget v0, p0, Lcom/narvii/user/profile/UserProfileFragment$CommentAdapter;->flHeight:I

    return v0
.end method

.method public getCount()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$CommentAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/user/profile/UserProfileFragment;->bioAdapter:Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    check-cast v0, Lcom/narvii/model/User;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/narvii/model/User;->isModerator()Z

    .line 16
    move-result v0

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    const/4 v0, 0x0

    .line 20
    goto :goto_0

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-super {p0}, Lcom/narvii/comment/list/CommentListAdapter;->getCount()I

    .line 24
    move-result v0

    .line 25
    :goto_0
    return v0
.end method

.method protected getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/comment/list/CommentListAdapter;->getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    const p2, 0x7f0a0d1a

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 11
    move-result-object p2

    .line 12
    .line 13
    instance-of p3, p2, Lai/medialab/medialabads2/banners/MediaLabAdView;

    .line 14
    .line 15
    if-eqz p3, :cond_2

    .line 16
    .line 17
    iget-object p3, p0, Lcom/narvii/user/profile/UserProfileFragment$CommentAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 18
    .line 19
    .line 20
    invoke-static {p3}, Lcom/narvii/user/profile/UserProfileFragment;->access$1400(Lcom/narvii/user/profile/UserProfileFragment;)Lai/medialab/medialabads2/banners/MediaLabAdView;

    .line 21
    move-result-object p3

    .line 22
    .line 23
    if-eqz p3, :cond_0

    .line 24
    .line 25
    iget-object p3, p0, Lcom/narvii/user/profile/UserProfileFragment$CommentAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 26
    .line 27
    .line 28
    invoke-static {p3}, Lcom/narvii/user/profile/UserProfileFragment;->access$1500(Lcom/narvii/user/profile/UserProfileFragment;)Lai/medialab/medialabads2/banners/MediaLabAdView;

    .line 29
    move-result-object p3

    .line 30
    .line 31
    .line 32
    invoke-virtual {p3}, Lai/medialab/medialabads2/banners/MediaLabAdView;->showPreloadedAd()Z

    .line 33
    move-result p3

    .line 34
    .line 35
    if-eqz p3, :cond_0

    .line 36
    .line 37
    const-string p1, "FeedDetailFrag ment"

    .line 38
    .line 39
    const-string p2, "MediaLab MedRect - New ad view ready"

    .line 40
    .line 41
    .line 42
    invoke-static {p1, p2}, Lcom/narvii/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 46
    move-result-object p1

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 50
    move-result-object p1

    .line 51
    .line 52
    .line 53
    const p2, 0x7f070056

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 57
    move-result p1

    .line 58
    .line 59
    new-instance p2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 60
    .line 61
    mul-int/lit8 p1, p1, 0x2

    .line 62
    .line 63
    sget-object p3, Lai/medialab/medialabads2/data/AdSize;->MEDIUM_RECTANGLE:Lai/medialab/medialabads2/data/AdSize;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 67
    move-result-object v0

    .line 68
    .line 69
    .line 70
    invoke-virtual {p3, v0}, Lai/medialab/medialabads2/data/AdSize;->getHeightPx(Landroid/content/Context;)I

    .line 71
    move-result p3

    .line 72
    add-int/2addr p1, p3

    .line 73
    const/4 p3, -0x1

    .line 74
    .line 75
    .line 76
    invoke-direct {p2, p3, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 77
    .line 78
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$CommentAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 79
    .line 80
    .line 81
    invoke-static {p1}, Lcom/narvii/user/profile/UserProfileFragment;->access$1600(Lcom/narvii/user/profile/UserProfileFragment;)Lai/medialab/medialabads2/banners/MediaLabAdView;

    .line 82
    move-result-object p1

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    .line 87
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$CommentAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 88
    .line 89
    .line 90
    invoke-static {p1}, Lcom/narvii/user/profile/UserProfileFragment;->access$1700(Lcom/narvii/user/profile/UserProfileFragment;)Lai/medialab/medialabads2/banners/MediaLabAdView;

    .line 91
    move-result-object p1

    .line 92
    .line 93
    .line 94
    invoke-static {p1}, Lcom/narvii/util/MLUtilsKt;->centerMRECView(Lai/medialab/medialabads2/banners/MediaLabAdView;)Lw7/l0;

    .line 95
    .line 96
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$CommentAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 97
    .line 98
    .line 99
    invoke-static {p1}, Lcom/narvii/user/profile/UserProfileFragment;->access$1800(Lcom/narvii/user/profile/UserProfileFragment;)Lai/medialab/medialabads2/banners/MediaLabAdView;

    .line 100
    move-result-object p1

    .line 101
    .line 102
    iput-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$CommentAdapter;->adViewBkp:Lai/medialab/medialabads2/banners/MediaLabAdView;

    .line 103
    .line 104
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$CommentAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 105
    .line 106
    .line 107
    invoke-static {p1}, Lcom/narvii/user/profile/UserProfileFragment;->access$1900(Lcom/narvii/user/profile/UserProfileFragment;)Lai/medialab/medialabads2/banners/MediaLabAdView;

    .line 108
    move-result-object p1

    .line 109
    return-object p1

    .line 110
    .line 111
    :cond_0
    iget-object p3, p0, Lcom/narvii/user/profile/UserProfileFragment$CommentAdapter;->adViewBkp:Lai/medialab/medialabads2/banners/MediaLabAdView;

    .line 112
    .line 113
    if-eqz p3, :cond_1

    .line 114
    return-object p3

    .line 115
    .line 116
    :cond_1
    const/16 p3, 0x8

    .line 117
    .line 118
    .line 119
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 120
    :cond_2
    return-object p1
.end method

.method protected getParent()Lcom/narvii/model/NVObject;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$CommentAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/user/profile/UserProfileFragment;->bioAdapter:Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    const/4 v0, 0x0

    .line 8
    goto :goto_0

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 12
    move-result-object v0

    .line 13
    :goto_0
    return-object v0
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/comment/list/CommentListAdapter;->onNotification(Lcom/narvii/notification/Notification;)V

    .line 4
    return-void
.end method

.method protected onViewStickerClicked(Landroid/content/Intent;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$CommentAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 3
    .line 4
    const/16 v1, 0x6f

    .line 5
    .line 6
    .line 7
    invoke-static {v0, p1, v1}, Lcom/narvii/user/profile/UserProfileFragment$CommentAdapter;->safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V

    .line 8
    return-void
.end method

.method public removeAds(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/Comment;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/narvii/model/Comment;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    .line 12
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v1

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    .line 18
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    check-cast v1, Lcom/narvii/model/Comment;

    .line 22
    .line 23
    iget v2, v1, Lcom/narvii/model/Comment;->type:I

    .line 24
    .line 25
    const/16 v3, 0xb

    .line 26
    .line 27
    if-eq v2, v3, :cond_0

    .line 28
    .line 29
    .line 30
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    return-object v0
.end method
