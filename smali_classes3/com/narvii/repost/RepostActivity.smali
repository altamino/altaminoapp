.class public Lcom/narvii/repost/RepostActivity;
.super Lcom/narvii/post/BasePostActivity;
.source "RepostActivity.java"


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

    .line 30
    invoke-direct {p0}, Lcom/narvii/post/BasePostActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected checkEligible()V
    .locals 2

    const-string v0, "blog"

    const-string v1, "repost"

    .line 98
    invoke-virtual {p0, v0, v1}, Lcom/narvii/post/BasePostActivity;->checkEligible(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected bridge synthetic doPost(Lcom/narvii/post/PostObject;)V
    .locals 0

    .line 30
    check-cast p1, Lcom/narvii/repost/RepostPost;

    invoke-virtual {p0, p1}, Lcom/narvii/repost/RepostActivity;->doPost(Lcom/narvii/repost/RepostPost;)V

    return-void
.end method

.method protected doPost(Lcom/narvii/repost/RepostPost;)V
    .locals 3

    const-string v0, "repostBlogId"

    .line 104
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/blog"

    if-eqz v0, :cond_0

    .line 106
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 109
    :cond_0
    new-instance v0, Lcom/narvii/post/PostHelper;

    invoke-direct {v0, p0}, Lcom/narvii/post/PostHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 110
    invoke-virtual {v0, p0}, Lcom/narvii/post/PostHelper;->setPostListener(Lcom/narvii/post/PostListener;)V

    .line 111
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v1

    .line 112
    const-class v2, Lcom/narvii/model/api/BlogResponse;

    invoke-virtual {v0, p1, v1, v2}, Lcom/narvii/post/PostHelper;->startPost(Lcom/narvii/post/PostObject;Lcom/narvii/util/http/ApiRequest;Ljava/lang/Class;)V

    return-void
.end method

.method public isEdit()Z
    .locals 1

    const-string v0, "repostBlogId"

    .line 45
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 50
    const-class v0, Lcom/narvii/repost/RepostPost;

    invoke-super {p0, p1}, Lcom/narvii/post/BasePostActivity;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f0b059a

    .line 52
    invoke-virtual {p0, v1}, Lcom/narvii/app/theme/NVThemeActivity;->setContentView(I)V

    .line 53
    invoke-static {p0}, Lcom/narvii/util/AndroidBug5497Workaround;->assistActivity(Landroid/app/Activity;)V

    const v1, 0x7f0902d0

    .line 55
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/narvii/repost/RepostActivity;->editContent:Landroid/widget/EditText;

    const v1, 0x7f090562

    .line 56
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/narvii/widget/ThumbImageView;

    iput-object v1, p0, Lcom/narvii/repost/RepostActivity;->previewImage:Lcom/narvii/widget/ThumbImageView;

    const v1, 0x7f090b9a

    .line 57
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/narvii/repost/RepostActivity;->previewTitle:Landroid/widget/TextView;

    const v1, 0x7f090b5d

    .line 58
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/narvii/repost/RepostActivity;->previewContent:Landroid/widget/TextView;

    const-string v1, "post"

    if-nez p1, :cond_0

    .line 61
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/repost/RepostPost;

    iput-object p1, p0, Lcom/narvii/repost/RepostActivity;->post:Lcom/narvii/repost/RepostPost;

    goto :goto_0

    .line 63
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/repost/RepostPost;

    iput-object p1, p0, Lcom/narvii/repost/RepostActivity;->post:Lcom/narvii/repost/RepostPost;

    .line 65
    :goto_0
    iget-object p1, p0, Lcom/narvii/repost/RepostActivity;->post:Lcom/narvii/repost/RepostPost;

    if-nez p1, :cond_1

    .line 66
    new-instance p1, Lcom/narvii/repost/RepostPost;

    invoke-direct {p1}, Lcom/narvii/repost/RepostPost;-><init>()V

    iput-object p1, p0, Lcom/narvii/repost/RepostActivity;->post:Lcom/narvii/repost/RepostPost;

    :cond_1
    const-string p1, "imageType"

    .line 68
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 69
    iget-object v0, p0, Lcom/narvii/repost/RepostActivity;->previewImage:Lcom/narvii/widget/ThumbImageView;

    invoke-virtual {p0, p1}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/narvii/widget/NVImageView;->imageType:Ljava/lang/String;

    .line 71
    :cond_2
    iget-object p1, p0, Lcom/narvii/repost/RepostActivity;->post:Lcom/narvii/repost/RepostPost;

    invoke-virtual {p0, p1}, Lcom/narvii/repost/RepostActivity;->updateView(Lcom/narvii/repost/RepostPost;)V

    return-void
.end method

.method public onPostFinished(Lcom/narvii/post/PostHelper;Lcom/narvii/model/api/ApiResponse;)V
    .locals 2

    .line 117
    invoke-super {p0, p1, p2}, Lcom/narvii/post/BasePostActivity;->onPostFinished(Lcom/narvii/post/PostHelper;Lcom/narvii/model/api/ApiResponse;)V

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

    .line 40
    const-class v0, Lcom/narvii/repost/RepostPost;

    return-object v0
.end method

.method protected bridge synthetic savePost()Lcom/narvii/post/PostObject;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lcom/narvii/repost/RepostActivity;->savePost()Lcom/narvii/repost/RepostPost;

    move-result-object v0

    return-object v0
.end method

.method protected savePost()Lcom/narvii/repost/RepostPost;
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/narvii/repost/RepostActivity;->post:Lcom/narvii/repost/RepostPost;

    iget-object v1, p0, Lcom/narvii/repost/RepostActivity;->editContent:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/narvii/repost/RepostPost;->content:Ljava/lang/String;

    .line 93
    iget-object v0, p0, Lcom/narvii/repost/RepostActivity;->post:Lcom/narvii/repost/RepostPost;

    return-object v0
.end method

.method protected bridge synthetic updateView(Lcom/narvii/post/PostObject;)V
    .locals 0

    .line 30
    check-cast p1, Lcom/narvii/repost/RepostPost;

    invoke-virtual {p0, p1}, Lcom/narvii/repost/RepostActivity;->updateView(Lcom/narvii/repost/RepostPost;)V

    return-void
.end method

.method protected updateView(Lcom/narvii/repost/RepostPost;)V
    .locals 3

    .line 76
    iget-object v0, p0, Lcom/narvii/repost/RepostActivity;->previewImage:Lcom/narvii/widget/ThumbImageView;

    iget-object v1, p1, Lcom/narvii/repost/RepostPost;->previewImage:Lcom/narvii/model/Media;

    if-nez v1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 77
    iget-object v0, p0, Lcom/narvii/repost/RepostActivity;->previewImage:Lcom/narvii/widget/ThumbImageView;

    instance-of v1, v0, Lcom/narvii/widget/ISecretImage;

    if-eqz v1, :cond_1

    .line 78
    check-cast v0, Lcom/narvii/widget/ISecretImage;

    iget-object v1, p1, Lcom/narvii/repost/RepostPost;->previewImage:Lcom/narvii/model/Media;

    iget-boolean v2, p1, Lcom/narvii/repost/RepostPost;->needHidden:Z

    invoke-interface {v0, v1, v2}, Lcom/narvii/widget/ISecretImage;->setImageMedia(Lcom/narvii/model/Media;Z)Z

    goto :goto_1

    .line 80
    :cond_1
    iget-object v1, p1, Lcom/narvii/repost/RepostPost;->previewImage:Lcom/narvii/model/Media;

    invoke-virtual {v0, v1}, Lcom/narvii/widget/ThumbImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 82
    :goto_1
    iget-object v0, p0, Lcom/narvii/repost/RepostActivity;->previewTitle:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/narvii/repost/RepostPost;->previewTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v0, p0, Lcom/narvii/repost/RepostActivity;->previewContent:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/narvii/repost/RepostPost;->previewContent:Ljava/lang/String;

    invoke-static {v1}, Lcom/narvii/model/Feed;->compactContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v0, p1, Lcom/narvii/repost/RepostPost;->content:Ljava/lang/String;

    iget-object v1, p0, Lcom/narvii/repost/RepostActivity;->editContent:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 86
    iget-object v0, p0, Lcom/narvii/repost/RepostActivity;->editContent:Landroid/widget/EditText;

    iget-object p1, p1, Lcom/narvii/repost/RepostPost;->content:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method
