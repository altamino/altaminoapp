.class public Lcom/narvii/poll/post/PlainPollPostActivity;
.super Lcom/narvii/post/BasePostActivity;
.source "SourceFile"

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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/post/BasePostActivity;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method protected doPost(Lcom/narvii/poll/post/PlainPollPost;)V
    .locals 3

    .line 2
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

    .line 3
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6
    :cond_1
    new-instance v1, Lcom/narvii/post/PostHelper;

    invoke-direct {v1, p0}, Lcom/narvii/post/PostHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 7
    invoke-virtual {v1, p0}, Lcom/narvii/post/PostHelper;->setPostListener(Lcom/narvii/post/PostListener;)V

    .line 8
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    const-class v2, Lcom/narvii/poll/PollOptionResponse;

    .line 9
    invoke-virtual {v1, p1, v0, v2}, Lcom/narvii/post/PostHelper;->startPost(Lcom/narvii/post/PostObject;Lcom/narvii/util/http/ApiRequest;Ljava/lang/Class;)V

    return-void
.end method

.method protected bridge synthetic doPost(Lcom/narvii/post/PostObject;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/poll/post/PlainPollPost;

    invoke-virtual {p0, p1}, Lcom/narvii/poll/post/PlainPollPostActivity;->doPost(Lcom/narvii/poll/post/PlainPollPost;)V

    return-void
.end method

.method public isEdit()Z
    .locals 1

    .line 1
    .line 2
    const-string v0, "polloptId"

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

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 4
    move-result p1

    .line 5
    .line 6
    .line 7
    const v0, 0x7f0a06eb

    .line 8
    .line 9
    if-eq p1, v0, :cond_0

    .line 10
    goto :goto_0

    .line 11
    .line 12
    :cond_0
    iget-object p1, p0, Lcom/narvii/poll/post/PlainPollPostActivity;->photoDir:Ljava/io/File;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 16
    .line 17
    iget-object p1, p0, Lcom/narvii/post/BasePostActivity;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 18
    .line 19
    iget-object v0, p0, Lcom/narvii/poll/post/PlainPollPostActivity;->photoDir:Ljava/io/File;

    .line 20
    const/4 v1, 0x4

    .line 21
    const/4 v2, 0x0

    .line 22
    const/4 v3, 0x0

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0, v3, v1, v2}, Lcom/narvii/media/MediaPickerFragment;->pickMedia(Ljava/io/File;Landroid/os/Bundle;II)V

    .line 26
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/post/BasePostActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    new-instance v0, Ljava/io/File;

    .line 6
    .line 7
    new-instance v1, Ljava/io/File;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 11
    move-result-object v2

    .line 12
    .line 13
    const-string v3, "photo"

    .line 14
    .line 15
    .line 16
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 17
    .line 18
    const-string v2, "poll"

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 22
    .line 23
    iput-object v0, p0, Lcom/narvii/poll/post/PlainPollPostActivity;->photoDir:Ljava/io/File;

    .line 24
    .line 25
    .line 26
    const v0, 0x7f0d063b

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v0}, Lcom/narvii/app/theme/NVThemeActivity;->setContentView(I)V

    .line 30
    .line 31
    .line 32
    invoke-static {p0}, Lcom/narvii/util/AndroidBug5497Workaround;->assistActivity(Landroid/app/Activity;)V

    .line 33
    .line 34
    const-class v0, Lcom/narvii/model/Blog;

    .line 35
    .line 36
    const-string v1, "blog"

    .line 37
    .line 38
    const-class v2, Lcom/narvii/poll/post/PlainPollPost;

    .line 39
    .line 40
    const-string v3, "post"

    .line 41
    .line 42
    if-nez p1, :cond_0

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    move-result-object p1

    .line 47
    .line 48
    .line 49
    invoke-static {p1, v2}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 50
    move-result-object p1

    .line 51
    .line 52
    check-cast p1, Lcom/narvii/poll/post/PlainPollPost;

    .line 53
    .line 54
    iput-object p1, p0, Lcom/narvii/poll/post/PlainPollPostActivity;->post:Lcom/narvii/poll/post/PlainPollPost;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 58
    move-result-object p1

    .line 59
    .line 60
    .line 61
    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 62
    move-result-object p1

    .line 63
    .line 64
    check-cast p1, Lcom/narvii/model/Blog;

    .line 65
    .line 66
    iput-object p1, p0, Lcom/narvii/poll/post/PlainPollPostActivity;->blog:Lcom/narvii/model/Blog;

    .line 67
    goto :goto_0

    .line 68
    .line 69
    .line 70
    :cond_0
    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    move-result-object v3

    .line 72
    .line 73
    .line 74
    invoke-static {v3, v2}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 75
    move-result-object v2

    .line 76
    .line 77
    check-cast v2, Lcom/narvii/poll/post/PlainPollPost;

    .line 78
    .line 79
    iput-object v2, p0, Lcom/narvii/poll/post/PlainPollPostActivity;->post:Lcom/narvii/poll/post/PlainPollPost;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 83
    move-result-object p1

    .line 84
    .line 85
    .line 86
    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 87
    move-result-object p1

    .line 88
    .line 89
    check-cast p1, Lcom/narvii/model/Blog;

    .line 90
    .line 91
    iput-object p1, p0, Lcom/narvii/poll/post/PlainPollPostActivity;->blog:Lcom/narvii/model/Blog;

    .line 92
    .line 93
    .line 94
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/poll/post/PlainPollPostActivity;->isEdit()Z

    .line 95
    move-result p1

    .line 96
    .line 97
    if-eqz p1, :cond_1

    .line 98
    .line 99
    .line 100
    const p1, 0x7f120f05

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 104
    move-result-object p1

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 108
    .line 109
    :cond_1
    iget-object p1, p0, Lcom/narvii/poll/post/PlainPollPostActivity;->post:Lcom/narvii/poll/post/PlainPollPost;

    .line 110
    .line 111
    if-nez p1, :cond_2

    .line 112
    .line 113
    new-instance p1, Lcom/narvii/poll/post/PlainPollPost;

    .line 114
    .line 115
    .line 116
    invoke-direct {p1}, Lcom/narvii/poll/post/PlainPollPost;-><init>()V

    .line 117
    .line 118
    iput-object p1, p0, Lcom/narvii/poll/post/PlainPollPostActivity;->post:Lcom/narvii/poll/post/PlainPollPost;

    .line 119
    .line 120
    :cond_2
    iget-object p1, p0, Lcom/narvii/poll/post/PlainPollPostActivity;->post:Lcom/narvii/poll/post/PlainPollPost;

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0, p1}, Lcom/narvii/poll/post/PlainPollPostActivity;->updateView(Lcom/narvii/poll/post/PlainPollPost;)V

    .line 124
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

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/poll/post/PlainPollPostActivity;->savePost()Lcom/narvii/poll/post/PlainPollPost;

    .line 4
    move-result-object p2

    .line 5
    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 13
    .line 14
    iput-object v0, p2, Lcom/narvii/poll/post/PlainPollPost;->mediaList:Ljava/util/List;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/narvii/poll/post/PlainPollPostActivity;->post:Lcom/narvii/poll/post/PlainPollPost;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p2}, Lcom/narvii/poll/post/PlainPollPostActivity;->updateView(Lcom/narvii/poll/post/PlainPollPost;)V

    .line 20
    return-void
.end method

.method public onPostFinished(Lcom/narvii/post/PostHelper;Lcom/narvii/model/api/ApiResponse;)V
    .locals 3

    .line 1
    .line 2
    instance-of v0, p2, Lcom/narvii/model/api/ObjectResponse;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    move-object v0, p2

    .line 6
    .line 7
    check-cast v0, Lcom/narvii/model/api/ObjectResponse;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/narvii/model/api/ObjectResponse;->object()Lcom/narvii/model/NVObject;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    instance-of v1, v0, Lcom/narvii/model/PollOption;

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    iget-object v1, p0, Lcom/narvii/poll/post/PlainPollPostActivity;->blog:Lcom/narvii/model/Blog;

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    check-cast v0, Lcom/narvii/model/PollOption;

    .line 22
    const/4 v2, 0x1

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v0, v2}, Lcom/narvii/model/Blog;->updatePollOptions(Lcom/narvii/model/PollOption;Z)V

    .line 26
    .line 27
    new-instance v0, Lcom/narvii/notification/Notification;

    .line 28
    .line 29
    const-string v1, "edit"

    .line 30
    .line 31
    iget-object v2, p0, Lcom/narvii/poll/post/PlainPollPostActivity;->blog:Lcom/narvii/model/Blog;

    .line 32
    .line 33
    .line 34
    invoke-direct {v0, v1, v2}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 35
    .line 36
    .line 37
    invoke-static {p0, v0}, Lcom/narvii/util/NotificationUtils;->sendNotificationIncludeGlobal(Lcom/narvii/app/NVContext;Lcom/narvii/notification/Notification;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/narvii/post/BasePostActivity;->onPostFinished(Lcom/narvii/post/PostHelper;Lcom/narvii/model/api/ApiResponse;)V

    .line 41
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/post/BasePostActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/poll/post/PlainPollPostActivity;->post:Lcom/narvii/poll/post/PlainPollPost;

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    const-string v1, "post"

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    iget-object v0, p0, Lcom/narvii/poll/post/PlainPollPostActivity;->blog:Lcom/narvii/model/Blog;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    const-string v1, "blog"

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
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

    const-class v0, Lcom/narvii/poll/post/PlainPollPost;

    return-object v0
.end method

.method protected savePost()Lcom/narvii/poll/post/PlainPollPost;
    .locals 2

    const v0, 0x7f0a0e9e

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/narvii/poll/post/PlainPollPostActivity;->post:Lcom/narvii/poll/post/PlainPollPost;

    .line 3
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/narvii/poll/post/PlainPollPost;->title:Ljava/lang/String;

    iget-object v0, p0, Lcom/narvii/poll/post/PlainPollPostActivity;->post:Lcom/narvii/poll/post/PlainPollPost;

    return-object v0
.end method

.method protected bridge synthetic savePost()Lcom/narvii/post/PostObject;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/narvii/poll/post/PlainPollPostActivity;->savePost()Lcom/narvii/poll/post/PlainPollPost;

    move-result-object v0

    return-object v0
.end method

.method protected updateView(Lcom/narvii/poll/post/PlainPollPost;)V
    .locals 4

    .line 2
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
    const v2, 0x7f0a06eb

    .line 3
    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 4
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    check-cast v2, Lcom/narvii/widget/ThumbImageView;

    invoke-virtual {v2, v0}, Lcom/narvii/widget/ThumbImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    const v2, 0x7f0a0666

    .line 6
    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-nez v0, :cond_2

    const v0, 0x7f120071

    goto :goto_2

    :cond_2
    const v0, 0x7f120438

    .line 7
    :goto_2
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0a0e9e

    .line 8
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 9
    iget-object v2, p1, Lcom/narvii/poll/post/PlainPollPost;->title:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 10
    iget-object p1, p1, Lcom/narvii/poll/post/PlainPollPost;->title:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    :cond_3
    new-instance p1, Lcom/narvii/poll/post/PlainPollPostActivity$MaxCharTextWatcher;

    const v2, 0x7f0a0ead

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/16 v3, 0x1e

    invoke-direct {p1, p0, v2, v3, v1}, Lcom/narvii/poll/post/PlainPollPostActivity$MaxCharTextWatcher;-><init>(Lcom/narvii/poll/post/PlainPollPostActivity;Landroid/widget/TextView;ILcom/narvii/poll/post/a;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method protected bridge synthetic updateView(Lcom/narvii/post/PostObject;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/poll/post/PlainPollPost;

    invoke-virtual {p0, p1}, Lcom/narvii/poll/post/PlainPollPostActivity;->updateView(Lcom/narvii/poll/post/PlainPollPost;)V

    return-void
.end method

.method protected validateUpload(Lcom/narvii/poll/post/PlainPollPost;)Z
    .locals 1

    if-eqz p1, :cond_3

    .line 2
    invoke-virtual {p1}, Lcom/narvii/poll/post/PlainPollPost;->title()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/narvii/poll/post/PlainPollPost;->title()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/poll/post/PlainPollPost;->icon()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/narvii/poll/post/PlainPollPost;->icon()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 4
    :cond_1
    invoke-virtual {p1}, Lcom/narvii/poll/post/PlainPollPost;->content()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/narvii/poll/post/PlainPollPost;->content()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_0
    const p1, 0x7f120efc

    .line 5
    invoke-virtual {p0, p1}, Lcom/narvii/post/BasePostActivity;->showAlert(I)V

    const/4 p1, 0x0

    return p1
.end method

.method protected bridge synthetic validateUpload(Lcom/narvii/post/PostObject;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/poll/post/PlainPollPost;

    invoke-virtual {p0, p1}, Lcom/narvii/poll/post/PlainPollPostActivity;->validateUpload(Lcom/narvii/poll/post/PlainPollPost;)Z

    move-result p1

    return p1
.end method
