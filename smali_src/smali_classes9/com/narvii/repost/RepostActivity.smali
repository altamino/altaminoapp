.class public Lcom/narvii/repost/RepostActivity;
.super Lcom/narvii/post/BasePostActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/post/BasePostActivity<",
        "Lcom/narvii/repost/RepostPost;",
        ">;"
    }
.end annotation


# instance fields
.field editContent:Landroid/widget/EditText;

.field post:Lcom/narvii/repost/RepostPost;

.field previewContent:Landroid/widget/TextView;

.field previewImage:Lcom/narvii/widget/ThumbImageView;

.field previewTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/post/BasePostActivity;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method protected checkEligible()V
    .locals 2

    .line 1
    .line 2
    const-string v0, "blog"

    .line 3
    .line 4
    const-string v1, "repost"

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0, v1}, Lcom/narvii/post/BasePostActivity;->checkEligible(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    return-void
.end method

.method protected bridge synthetic doPost(Lcom/narvii/post/PostObject;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/repost/RepostPost;

    invoke-virtual {p0, p1}, Lcom/narvii/repost/RepostActivity;->doPost(Lcom/narvii/repost/RepostPost;)V

    return-void
.end method

.method protected doPost(Lcom/narvii/repost/RepostPost;)V
    .locals 3

    const-string v0, "repostBlogId"

    .line 2
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/blog"

    if-eqz v0, :cond_0

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4
    :cond_0
    new-instance v0, Lcom/narvii/post/PostHelper;

    invoke-direct {v0, p0}, Lcom/narvii/post/PostHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 5
    invoke-virtual {v0, p0}, Lcom/narvii/post/PostHelper;->setPostListener(Lcom/narvii/post/PostListener;)V

    .line 6
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v1

    const-class v2, Lcom/narvii/model/api/BlogResponse;

    .line 7
    invoke-virtual {v0, p1, v1, v2}, Lcom/narvii/post/PostHelper;->startPost(Lcom/narvii/post/PostObject;Lcom/narvii/util/http/ApiRequest;Ljava/lang/Class;)V

    return-void
.end method

.method public isEdit()Z
    .locals 1

    .line 1
    .line 2
    const-string v0, "repostBlogId"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/post/BasePostActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f0d0642

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/narvii/app/theme/NVThemeActivity;->setContentView(I)V

    .line 10
    .line 11
    .line 12
    invoke-static {p0}, Lcom/narvii/util/AndroidBug5497Workaround;->assistActivity(Landroid/app/Activity;)V

    .line 13
    .line 14
    .line 15
    const v0, 0x7f0a039d

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    check-cast v0, Landroid/widget/EditText;

    .line 22
    .line 23
    iput-object v0, p0, Lcom/narvii/repost/RepostActivity;->editContent:Landroid/widget/EditText;

    .line 24
    .line 25
    .line 26
    const v0, 0x7f0a06d5

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    check-cast v0, Lcom/narvii/widget/ThumbImageView;

    .line 33
    .line 34
    iput-object v0, p0, Lcom/narvii/repost/RepostActivity;->previewImage:Lcom/narvii/widget/ThumbImageView;

    .line 35
    .line 36
    .line 37
    const v0, 0x7f0a0e9e

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    check-cast v0, Landroid/widget/TextView;

    .line 44
    .line 45
    iput-object v0, p0, Lcom/narvii/repost/RepostActivity;->previewTitle:Landroid/widget/TextView;

    .line 46
    .line 47
    .line 48
    const v0, 0x7f0a0e53

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 52
    move-result-object v0

    .line 53
    .line 54
    check-cast v0, Landroid/widget/TextView;

    .line 55
    .line 56
    iput-object v0, p0, Lcom/narvii/repost/RepostActivity;->previewContent:Landroid/widget/TextView;

    .line 57
    .line 58
    const-class v0, Lcom/narvii/repost/RepostPost;

    .line 59
    .line 60
    const-string v1, "post"

    .line 61
    .line 62
    if-nez p1, :cond_0

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 66
    move-result-object p1

    .line 67
    .line 68
    .line 69
    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 70
    move-result-object p1

    .line 71
    .line 72
    check-cast p1, Lcom/narvii/repost/RepostPost;

    .line 73
    .line 74
    iput-object p1, p0, Lcom/narvii/repost/RepostActivity;->post:Lcom/narvii/repost/RepostPost;

    .line 75
    goto :goto_0

    .line 76
    .line 77
    .line 78
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 79
    move-result-object p1

    .line 80
    .line 81
    .line 82
    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 83
    move-result-object p1

    .line 84
    .line 85
    check-cast p1, Lcom/narvii/repost/RepostPost;

    .line 86
    .line 87
    iput-object p1, p0, Lcom/narvii/repost/RepostActivity;->post:Lcom/narvii/repost/RepostPost;

    .line 88
    .line 89
    :goto_0
    iget-object p1, p0, Lcom/narvii/repost/RepostActivity;->post:Lcom/narvii/repost/RepostPost;

    .line 90
    .line 91
    if-nez p1, :cond_1

    .line 92
    .line 93
    new-instance p1, Lcom/narvii/repost/RepostPost;

    .line 94
    .line 95
    .line 96
    invoke-direct {p1}, Lcom/narvii/repost/RepostPost;-><init>()V

    .line 97
    .line 98
    iput-object p1, p0, Lcom/narvii/repost/RepostActivity;->post:Lcom/narvii/repost/RepostPost;

    .line 99
    .line 100
    :cond_1
    const-string p1, "imageType"

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 104
    move-result-object v0

    .line 105
    .line 106
    if-eqz v0, :cond_2

    .line 107
    .line 108
    iget-object v0, p0, Lcom/narvii/repost/RepostActivity;->previewImage:Lcom/narvii/widget/ThumbImageView;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 112
    move-result-object p1

    .line 113
    .line 114
    iput-object p1, v0, Lcom/narvii/widget/NVImageView;->imageType:Ljava/lang/String;

    .line 115
    .line 116
    :cond_2
    iget-object p1, p0, Lcom/narvii/repost/RepostActivity;->post:Lcom/narvii/repost/RepostPost;

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0, p1}, Lcom/narvii/repost/RepostActivity;->updateView(Lcom/narvii/repost/RepostPost;)V

    .line 120
    return-void
.end method

.method public onPostFinished(Lcom/narvii/post/PostHelper;Lcom/narvii/model/api/ApiResponse;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/post/BasePostActivity;->onPostFinished(Lcom/narvii/post/PostHelper;Lcom/narvii/model/api/ApiResponse;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/repost/RepostActivity;->isEdit()Z

    .line 7
    move-result p1

    .line 8
    .line 9
    const-string p2, "statistics"

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p2}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    move-result-object p2

    .line 14
    .line 15
    check-cast p2, Lcom/narvii/util/statistics/StatisticsService;

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    const-string v0, "User Edits a Post"

    .line 20
    goto :goto_0

    .line 21
    .line 22
    :cond_0
    const-string v0, "Create Post"

    .line 23
    .line 24
    .line 25
    :goto_0
    invoke-interface {p2, v0}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 26
    move-result-object p2

    .line 27
    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    const-string v0, "Total Edited Posts"

    .line 31
    goto :goto_1

    .line 32
    .line 33
    :cond_1
    const-string v0, "Total New Posts"

    .line 34
    .line 35
    .line 36
    :goto_1
    invoke-virtual {p2, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    const-string v1, "post_type"

    .line 40
    .line 41
    const-string v2, "repost"

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 45
    .line 46
    const-string v0, "source"

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    move-result-object v1

    .line 51
    .line 52
    if-eqz v1, :cond_2

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 56
    move-result-object v0

    .line 57
    .line 58
    .line 59
    invoke-virtual {p2, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->source(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 60
    .line 61
    const-string v0, "User Submits a New Repost Total"

    .line 62
    .line 63
    .line 64
    invoke-virtual {p2, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 65
    .line 66
    :cond_2
    if-nez p1, :cond_3

    .line 67
    .line 68
    .line 69
    invoke-static {p0, p2}, Lcom/narvii/util/statistics/FirebaseLogManager;->logEvent(Lcom/narvii/app/NVContext;Lcom/narvii/util/statistics/StatisticsEventBuilder;)V

    .line 70
    :cond_3
    return-void
.end method

.method public postClazz()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/narvii/repost/RepostPost;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/narvii/repost/RepostPost;

    return-object v0
.end method

.method protected bridge synthetic savePost()Lcom/narvii/post/PostObject;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/narvii/repost/RepostActivity;->savePost()Lcom/narvii/repost/RepostPost;

    move-result-object v0

    return-object v0
.end method

.method protected savePost()Lcom/narvii/repost/RepostPost;
    .locals 2

    iget-object v0, p0, Lcom/narvii/repost/RepostActivity;->post:Lcom/narvii/repost/RepostPost;

    iget-object v1, p0, Lcom/narvii/repost/RepostActivity;->editContent:Landroid/widget/EditText;

    .line 2
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/narvii/repost/RepostPost;->content:Ljava/lang/String;

    iget-object v0, p0, Lcom/narvii/repost/RepostActivity;->post:Lcom/narvii/repost/RepostPost;

    return-object v0
.end method

.method protected bridge synthetic updateView(Lcom/narvii/post/PostObject;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/repost/RepostPost;

    invoke-virtual {p0, p1}, Lcom/narvii/repost/RepostActivity;->updateView(Lcom/narvii/repost/RepostPost;)V

    return-void
.end method

.method protected updateView(Lcom/narvii/repost/RepostPost;)V
    .locals 3

    iget-object v0, p0, Lcom/narvii/repost/RepostActivity;->previewImage:Lcom/narvii/widget/ThumbImageView;

    .line 2
    iget-object v1, p1, Lcom/narvii/repost/RepostPost;->previewImage:Lcom/narvii/model/Media;

    if-nez v1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/narvii/repost/RepostActivity;->previewImage:Lcom/narvii/widget/ThumbImageView;

    .line 3
    instance-of v1, v0, Lcom/narvii/widget/ISecretImage;

    if-eqz v1, :cond_1

    .line 4
    check-cast v0, Lcom/narvii/widget/ISecretImage;

    iget-object v1, p1, Lcom/narvii/repost/RepostPost;->previewImage:Lcom/narvii/model/Media;

    iget-boolean v2, p1, Lcom/narvii/repost/RepostPost;->needHidden:Z

    invoke-interface {v0, v1, v2}, Lcom/narvii/widget/ISecretImage;->setImageMedia(Lcom/narvii/model/Media;Z)Z

    goto :goto_1

    .line 5
    :cond_1
    iget-object v1, p1, Lcom/narvii/repost/RepostPost;->previewImage:Lcom/narvii/model/Media;

    invoke-virtual {v0, v1}, Lcom/narvii/widget/ThumbImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    :goto_1
    iget-object v0, p0, Lcom/narvii/repost/RepostActivity;->previewTitle:Landroid/widget/TextView;

    .line 6
    iget-object v1, p1, Lcom/narvii/repost/RepostPost;->previewTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/narvii/repost/RepostActivity;->previewContent:Landroid/widget/TextView;

    .line 7
    iget-object v1, p1, Lcom/narvii/repost/RepostPost;->previewContent:Ljava/lang/String;

    invoke-static {v1}, Lcom/narvii/model/Feed;->compactContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object v0, p1, Lcom/narvii/repost/RepostPost;->content:Ljava/lang/String;

    iget-object v1, p0, Lcom/narvii/repost/RepostActivity;->editContent:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/narvii/repost/RepostActivity;->editContent:Landroid/widget/EditText;

    .line 9
    iget-object p1, p1, Lcom/narvii/repost/RepostPost;->content:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method
