.class public Lcom/narvii/poll/post/PlainPollPostActivity;
.super Lcom/narvii/post/BasePostActivity;
.source "PlainPollPostActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/poll/post/PlainPollPostActivity$MaxCharTextWatcher;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/post/BasePostActivity<",
        "Lcom/narvii/poll/post/PlainPollPost;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field blog:Lcom/narvii/model/Blog;

.field photoDir:Ljava/io/File;

.field post:Lcom/narvii/poll/post/PlainPollPost;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/narvii/post/BasePostActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected doPost(Lcom/narvii/poll/post/PlainPollPost;)V
    .locals 3

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/blog/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/narvii/poll/post/PlainPollPostActivity;->blog:Lcom/narvii/model/Blog;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/narvii/model/Blog;->id()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/poll/option"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "polloptId"

    .line 149
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 150
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 151
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 153
    :cond_1
    new-instance v1, Lcom/narvii/post/PostHelper;

    invoke-direct {v1, p0}, Lcom/narvii/post/PostHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 154
    invoke-virtual {v1, p0}, Lcom/narvii/post/PostHelper;->setPostListener(Lcom/narvii/post/PostListener;)V

    .line 155
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    .line 156
    const-class v2, Lcom/narvii/poll/PollOptionResponse;

    invoke-virtual {v1, p1, v0, v2}, Lcom/narvii/post/PostHelper;->startPost(Lcom/narvii/post/PostObject;Lcom/narvii/util/http/ApiRequest;Ljava/lang/Class;)V

    return-void
.end method

.method protected bridge synthetic doPost(Lcom/narvii/post/PostObject;)V
    .locals 0

    .line 39
    check-cast p1, Lcom/narvii/poll/post/PlainPollPost;

    invoke-virtual {p0, p1}, Lcom/narvii/poll/post/PlainPollPostActivity;->doPost(Lcom/narvii/poll/post/PlainPollPost;)V

    return-void
.end method

.method public isEdit()Z
    .locals 1

    const-string v0, "polloptId"

    .line 51
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

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 89
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090571

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 91
    :cond_0
    iget-object p1, p0, Lcom/narvii/poll/post/PlainPollPostActivity;->photoDir:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 92
    iget-object p1, p0, Lcom/narvii/post/BasePostActivity;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    iget-object v0, p0, Lcom/narvii/poll/post/PlainPollPostActivity;->photoDir:Ljava/io/File;

    const/4 v1, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/narvii/media/MediaPickerFragment;->pickMedia(Ljava/io/File;Landroid/os/Bundle;II)V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 56
    const-class v0, Lcom/narvii/poll/post/PlainPollPost;

    invoke-super {p0, p1}, Lcom/narvii/post/BasePostActivity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "photo"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v3, "poll"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/narvii/poll/post/PlainPollPostActivity;->photoDir:Ljava/io/File;

    const v1, 0x7f0b0593

    .line 59
    invoke-virtual {p0, v1}, Lcom/narvii/app/theme/NVThemeActivity;->setContentView(I)V

    .line 60
    invoke-static {p0}, Lcom/narvii/util/AndroidBug5497Workaround;->assistActivity(Landroid/app/Activity;)V

    const-string v1, "blog"

    const-string v2, "post"

    if-nez p1, :cond_0

    .line 63
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/poll/post/PlainPollPost;

    iput-object p1, p0, Lcom/narvii/poll/post/PlainPollPostActivity;->post:Lcom/narvii/poll/post/PlainPollPost;

    .line 64
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/narvii/model/Blog;

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Blog;

    iput-object p1, p0, Lcom/narvii/poll/post/PlainPollPostActivity;->blog:Lcom/narvii/model/Blog;

    goto :goto_0

    .line 66
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/poll/post/PlainPollPost;

    iput-object v0, p0, Lcom/narvii/poll/post/PlainPollPostActivity;->post:Lcom/narvii/poll/post/PlainPollPost;

    .line 67
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/narvii/model/Blog;

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Blog;

    iput-object p1, p0, Lcom/narvii/poll/post/PlainPollPostActivity;->blog:Lcom/narvii/model/Blog;

    .line 69
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/poll/post/PlainPollPostActivity;->isEdit()Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0f0dda

    .line 70
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 72
    :cond_1
    iget-object p1, p0, Lcom/narvii/poll/post/PlainPollPostActivity;->post:Lcom/narvii/poll/post/PlainPollPost;

    if-nez p1, :cond_2

    .line 73
    new-instance p1, Lcom/narvii/poll/post/PlainPollPost;

    invoke-direct {p1}, Lcom/narvii/poll/post/PlainPollPost;-><init>()V

    iput-object p1, p0, Lcom/narvii/poll/post/PlainPollPostActivity;->post:Lcom/narvii/poll/post/PlainPollPost;

    .line 75
    :cond_2
    iget-object p1, p0, Lcom/narvii/poll/post/PlainPollPostActivity;->post:Lcom/narvii/poll/post/PlainPollPost;

    invoke-virtual {p0, p1}, Lcom/narvii/poll/post/PlainPollPostActivity;->updateView(Lcom/narvii/poll/post/PlainPollPost;)V

    return-void
.end method

.method public onPickMediaResult(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/Media;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 100
    invoke-virtual {p0}, Lcom/narvii/poll/post/PlainPollPostActivity;->savePost()Lcom/narvii/poll/post/PlainPollPost;

    move-result-object p2

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 102
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 103
    iput-object v0, p2, Lcom/narvii/poll/post/PlainPollPost;->mediaList:Ljava/util/List;

    .line 104
    iput-object p2, p0, Lcom/narvii/poll/post/PlainPollPostActivity;->post:Lcom/narvii/poll/post/PlainPollPost;

    .line 105
    invoke-virtual {p0, p2}, Lcom/narvii/poll/post/PlainPollPostActivity;->updateView(Lcom/narvii/poll/post/PlainPollPost;)V

    return-void
.end method

.method public onPostFinished(Lcom/narvii/post/PostHelper;Lcom/narvii/model/api/ApiResponse;)V
    .locals 3

    .line 161
    instance-of v0, p2, Lcom/narvii/model/api/ObjectResponse;

    if-eqz v0, :cond_0

    .line 162
    move-object v0, p2

    check-cast v0, Lcom/narvii/model/api/ObjectResponse;

    invoke-virtual {v0}, Lcom/narvii/model/api/ObjectResponse;->object()Lcom/narvii/model/NVObject;

    move-result-object v0

    .line 164
    instance-of v1, v0, Lcom/narvii/model/PollOption;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/narvii/poll/post/PlainPollPostActivity;->blog:Lcom/narvii/model/Blog;

    if-eqz v1, :cond_0

    .line 165
    check-cast v0, Lcom/narvii/model/PollOption;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/narvii/model/Blog;->updatePollOptions(Lcom/narvii/model/PollOption;Z)V

    .line 166
    new-instance v0, Lcom/narvii/notification/Notification;

    iget-object v1, p0, Lcom/narvii/poll/post/PlainPollPostActivity;->blog:Lcom/narvii/model/Blog;

    const-string v2, "edit"

    invoke-direct {v0, v2, v1}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 167
    invoke-static {p0, v0}, Lcom/narvii/util/NotificationUtils;->sendNotificationIncludeGlobal(Lcom/narvii/app/NVContext;Lcom/narvii/notification/Notification;)V

    .line 171
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/narvii/post/BasePostActivity;->onPostFinished(Lcom/narvii/post/PostHelper;Lcom/narvii/model/api/ApiResponse;)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 80
    invoke-super {p0, p1}, Lcom/narvii/post/BasePostActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 81
    iget-object v0, p0, Lcom/narvii/poll/post/PlainPollPostActivity;->post:Lcom/narvii/poll/post/PlainPollPost;

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "post"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/narvii/poll/post/PlainPollPostActivity;->blog:Lcom/narvii/model/Blog;

    if-eqz v0, :cond_0

    .line 83
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "blog"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public postClazz()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/narvii/poll/post/PlainPollPost;",
            ">;"
        }
    .end annotation

    .line 46
    const-class v0, Lcom/narvii/poll/post/PlainPollPost;

    return-object v0
.end method

.method protected savePost()Lcom/narvii/poll/post/PlainPollPost;
    .locals 2

    const v0, 0x7f090b9a

    .line 129
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 130
    iget-object v1, p0, Lcom/narvii/poll/post/PlainPollPostActivity;->post:Lcom/narvii/poll/post/PlainPollPost;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/narvii/poll/post/PlainPollPost;->title:Ljava/lang/String;

    .line 131
    iget-object v0, p0, Lcom/narvii/poll/post/PlainPollPostActivity;->post:Lcom/narvii/poll/post/PlainPollPost;

    return-object v0
.end method

.method protected bridge synthetic savePost()Lcom/narvii/post/PostObject;
    .locals 1

    .line 39
    invoke-virtual {p0}, Lcom/narvii/poll/post/PlainPollPostActivity;->savePost()Lcom/narvii/poll/post/PlainPollPost;

    move-result-object v0

    return-object v0
.end method

.method protected updateView(Lcom/narvii/poll/post/PlainPollPost;)V
    .locals 4

    .line 111
    iget-object v0, p1, Lcom/narvii/poll/post/PlainPollPost;->mediaList:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/narvii/poll/post/PlainPollPost;->mediaList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Media;

    goto :goto_1

    :cond_1
    :goto_0
    move-object v0, v1

    :goto_1
    const v2, 0x7f090571

    .line 112
    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 113
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    check-cast v2, Lcom/narvii/widget/ThumbImageView;

    invoke-virtual {v2, v0}, Lcom/narvii/widget/ThumbImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    const v2, 0x7f09050e

    .line 116
    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-nez v0, :cond_2

    const v0, 0x7f0f0068

    goto :goto_2

    :cond_2
    const v0, 0x7f0f03cd

    .line 117
    :goto_2
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f090b9a

    .line 120
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 121
    iget-object v2, p1, Lcom/narvii/poll/post/PlainPollPost;->title:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 122
    iget-object p1, p1, Lcom/narvii/poll/post/PlainPollPost;->title:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    :cond_3
    new-instance p1, Lcom/narvii/poll/post/PlainPollPostActivity$MaxCharTextWatcher;

    const v2, 0x7f090b9f

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/16 v3, 0x1e

    invoke-direct {p1, p0, v2, v3, v1}, Lcom/narvii/poll/post/PlainPollPostActivity$MaxCharTextWatcher;-><init>(Lcom/narvii/poll/post/PlainPollPostActivity;Landroid/widget/TextView;ILcom/narvii/poll/post/PlainPollPostActivity$1;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method protected bridge synthetic updateView(Lcom/narvii/post/PostObject;)V
    .locals 0

    .line 39
    check-cast p1, Lcom/narvii/poll/post/PlainPollPost;

    invoke-virtual {p0, p1}, Lcom/narvii/poll/post/PlainPollPostActivity;->updateView(Lcom/narvii/poll/post/PlainPollPost;)V

    return-void
.end method

.method protected validateUpload(Lcom/narvii/poll/post/PlainPollPost;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    .line 136
    invoke-virtual {p1}, Lcom/narvii/poll/post/PlainPollPost;->title()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/narvii/poll/post/PlainPollPost;->title()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 137
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/poll/post/PlainPollPost;->icon()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/narvii/poll/post/PlainPollPost;->icon()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 138
    :cond_1
    invoke-virtual {p1}, Lcom/narvii/poll/post/PlainPollPost;->content()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lcom/narvii/poll/post/PlainPollPost;->content()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_4

    const p1, 0x7f0f0dd1

    .line 140
    invoke-virtual {p0, p1}, Lcom/narvii/post/BasePostActivity;->showAlert(I)V

    return v0

    :cond_4
    return v1
.end method

.method protected bridge synthetic validateUpload(Lcom/narvii/post/PostObject;)Z
    .locals 0

    .line 39
    check-cast p1, Lcom/narvii/poll/post/PlainPollPost;

    invoke-virtual {p0, p1}, Lcom/narvii/poll/post/PlainPollPostActivity;->validateUpload(Lcom/narvii/poll/post/PlainPollPost;)Z

    move-result p1

    return p1
.end method
