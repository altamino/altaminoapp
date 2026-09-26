.class public Lcom/narvii/catalog/category/CategoryPostActivity;
.super Lcom/narvii/post/BasePostActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/post/BasePostActivity<",
        "Lcom/narvii/catalog/category/CategoryPost;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field photoDir:Ljava/io/File;

.field post:Lcom/narvii/catalog/category/CategoryPost;


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
.method delete()V
    .locals 5

    .line 1
    .line 2
    const-string v0, "category"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-class v1, Lcom/narvii/model/ItemCategory;

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    check-cast v0, Lcom/narvii/model/ItemCategory;

    .line 15
    .line 16
    new-instance v1, Lcom/narvii/util/dialog/ProgressDialog;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    .line 20
    move-result-object v2

    .line 21
    .line 22
    .line 23
    invoke-direct {v1, v2}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 24
    .line 25
    .line 26
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 27
    move-result-object v2

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->delete()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 31
    move-result-object v2

    .line 32
    .line 33
    new-instance v3, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    const-string v4, "/item-category/"

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    iget-object v4, v0, Lcom/narvii/model/ItemCategory;->categoryId:Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    move-result-object v3

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 54
    move-result-object v2

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 58
    move-result-object v2

    .line 59
    .line 60
    new-instance v3, Lcom/narvii/catalog/category/CategoryPostActivity$1;

    .line 61
    .line 62
    .line 63
    invoke-direct {v3, p0, v0}, Lcom/narvii/catalog/category/CategoryPostActivity$1;-><init>(Lcom/narvii/catalog/category/CategoryPostActivity;Lcom/narvii/model/ItemCategory;)V

    .line 64
    .line 65
    iput-object v3, v1, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 69
    .line 70
    const-string v0, "api"

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 74
    move-result-object v0

    .line 75
    .line 76
    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 77
    .line 78
    iget-object v1, v1, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 82
    return-void
.end method

.method protected doPost(Lcom/narvii/catalog/category/CategoryPost;)V
    .locals 3

    const-string v0, "categoryId"

    .line 2
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "/item-category"

    goto :goto_0

    .line 3
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/item-category/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    :goto_0
    new-instance v1, Lcom/narvii/post/PostHelper;

    invoke-direct {v1, p0}, Lcom/narvii/post/PostHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 5
    invoke-virtual {v1, p0}, Lcom/narvii/post/PostHelper;->setPostListener(Lcom/narvii/post/PostListener;)V

    .line 6
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    const-class v2, Lcom/narvii/catalog/category/CategoryResponse;

    .line 7
    invoke-virtual {v1, p1, v0, v2}, Lcom/narvii/post/PostHelper;->startPost(Lcom/narvii/post/PostObject;Lcom/narvii/util/http/ApiRequest;Ljava/lang/Class;)V

    return-void
.end method

.method protected bridge synthetic doPost(Lcom/narvii/post/PostObject;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/catalog/category/CategoryPost;

    invoke-virtual {p0, p1}, Lcom/narvii/catalog/category/CategoryPostActivity;->doPost(Lcom/narvii/catalog/category/CategoryPost;)V

    return-void
.end method

.method public isEdit()Z
    .locals 1

    .line 1
    .line 2
    const-string v0, "categoryId"

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
    invoke-virtual {p0}, Lcom/narvii/catalog/category/CategoryPostActivity;->savePost()Lcom/narvii/catalog/category/CategoryPost;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 7
    move-result p1

    .line 8
    .line 9
    .line 10
    const v0, 0x7f0a0255

    .line 11
    .line 12
    if-eq p1, v0, :cond_1

    .line 13
    .line 14
    .line 15
    const v0, 0x7f0a06eb

    .line 16
    .line 17
    if-eq p1, v0, :cond_0

    .line 18
    goto :goto_0

    .line 19
    .line 20
    :cond_0
    iget-object p1, p0, Lcom/narvii/catalog/category/CategoryPostActivity;->photoDir:Ljava/io/File;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 24
    .line 25
    iget-object p1, p0, Lcom/narvii/post/BasePostActivity;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 26
    .line 27
    iget-object v0, p0, Lcom/narvii/catalog/category/CategoryPostActivity;->photoDir:Ljava/io/File;

    .line 28
    .line 29
    const/16 v1, 0x46

    .line 30
    const/4 v2, 0x0

    .line 31
    const/4 v3, 0x0

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v0, v3, v1, v2}, Lcom/narvii/media/MediaPickerFragment;->pickMedia(Ljava/io/File;Landroid/os/Bundle;II)V

    .line 35
    goto :goto_0

    .line 36
    .line 37
    .line 38
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/catalog/category/CategoryPostActivity;->delete()V

    .line 39
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
    const-string v2, "category"

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 22
    .line 23
    iput-object v0, p0, Lcom/narvii/catalog/category/CategoryPostActivity;->photoDir:Ljava/io/File;

    .line 24
    .line 25
    .line 26
    const v0, 0x7f0d008e

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
    .line 35
    invoke-virtual {p0}, Lcom/narvii/catalog/category/CategoryPostActivity;->isEdit()Z

    .line 36
    move-result v0

    .line 37
    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    .line 41
    const v0, 0x7f120438

    .line 42
    goto :goto_0

    .line 43
    .line 44
    .line 45
    :cond_0
    const v0, 0x7f1201ff

    .line 46
    .line 47
    .line 48
    :goto_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(I)V

    .line 49
    .line 50
    const-class v0, Lcom/narvii/catalog/category/CategoryPost;

    .line 51
    .line 52
    const-string v1, "post"

    .line 53
    .line 54
    if-nez p1, :cond_1

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
    check-cast p1, Lcom/narvii/catalog/category/CategoryPost;

    .line 65
    .line 66
    iput-object p1, p0, Lcom/narvii/catalog/category/CategoryPostActivity;->post:Lcom/narvii/catalog/category/CategoryPost;

    .line 67
    goto :goto_1

    .line 68
    .line 69
    .line 70
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    move-result-object p1

    .line 72
    .line 73
    .line 74
    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 75
    move-result-object p1

    .line 76
    .line 77
    check-cast p1, Lcom/narvii/catalog/category/CategoryPost;

    .line 78
    .line 79
    iput-object p1, p0, Lcom/narvii/catalog/category/CategoryPostActivity;->post:Lcom/narvii/catalog/category/CategoryPost;

    .line 80
    .line 81
    :goto_1
    iget-object p1, p0, Lcom/narvii/catalog/category/CategoryPostActivity;->post:Lcom/narvii/catalog/category/CategoryPost;

    .line 82
    .line 83
    if-nez p1, :cond_2

    .line 84
    .line 85
    new-instance p1, Lcom/narvii/catalog/category/CategoryPost;

    .line 86
    .line 87
    .line 88
    invoke-direct {p1}, Lcom/narvii/catalog/category/CategoryPost;-><init>()V

    .line 89
    .line 90
    iput-object p1, p0, Lcom/narvii/catalog/category/CategoryPostActivity;->post:Lcom/narvii/catalog/category/CategoryPost;

    .line 91
    .line 92
    :cond_2
    iget-object p1, p0, Lcom/narvii/catalog/category/CategoryPostActivity;->post:Lcom/narvii/catalog/category/CategoryPost;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0, p1}, Lcom/narvii/catalog/category/CategoryPostActivity;->updateView(Lcom/narvii/catalog/category/CategoryPost;)V

    .line 96
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
    if-eqz p1, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 6
    move-result p2

    .line 7
    .line 8
    if-lez p2, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/narvii/catalog/category/CategoryPostActivity;->savePost()Lcom/narvii/catalog/category/CategoryPost;

    .line 12
    move-result-object p2

    .line 13
    .line 14
    new-instance v0, Ljava/util/ArrayList;

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 18
    .line 19
    iput-object v0, p2, Lcom/narvii/catalog/category/CategoryPost;->mediaList:Ljava/util/List;

    .line 20
    .line 21
    iput-object p2, p0, Lcom/narvii/catalog/category/CategoryPostActivity;->post:Lcom/narvii/catalog/category/CategoryPost;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p2}, Lcom/narvii/catalog/category/CategoryPostActivity;->updateView(Lcom/narvii/catalog/category/CategoryPost;)V

    .line 25
    goto :goto_0

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/catalog/category/CategoryPostActivity;->savePost()Lcom/narvii/catalog/category/CategoryPost;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    new-instance p2, Ljava/util/ArrayList;

    .line 32
    .line 33
    .line 34
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .line 36
    iput-object p2, p1, Lcom/narvii/catalog/category/CategoryPost;->mediaList:Ljava/util/List;

    .line 37
    .line 38
    iput-object p1, p0, Lcom/narvii/catalog/category/CategoryPostActivity;->post:Lcom/narvii/catalog/category/CategoryPost;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, p1}, Lcom/narvii/catalog/category/CategoryPostActivity;->updateView(Lcom/narvii/catalog/category/CategoryPost;)V

    .line 42
    :goto_0
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
    iget-object v0, p0, Lcom/narvii/catalog/category/CategoryPostActivity;->post:Lcom/narvii/catalog/category/CategoryPost;

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
    return-void
.end method

.method public postClazz()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/narvii/catalog/category/CategoryPost;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/narvii/catalog/category/CategoryPost;

    return-object v0
.end method

.method protected savePost()Lcom/narvii/catalog/category/CategoryPost;
    .locals 2

    const v0, 0x7f0a0e9e

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/narvii/catalog/category/CategoryPostActivity;->post:Lcom/narvii/catalog/category/CategoryPost;

    .line 3
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/narvii/catalog/category/CategoryPost;->label:Ljava/lang/String;

    iget-object v0, p0, Lcom/narvii/catalog/category/CategoryPostActivity;->post:Lcom/narvii/catalog/category/CategoryPost;

    return-object v0
.end method

.method protected bridge synthetic savePost()Lcom/narvii/post/PostObject;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/narvii/catalog/category/CategoryPostActivity;->savePost()Lcom/narvii/catalog/category/CategoryPost;

    move-result-object v0

    return-object v0
.end method

.method public sendNotification(Lcom/narvii/notification/Notification;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 3
    .line 4
    const-string v1, "new"

    .line 5
    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    .line 8
    const-string v1, "edit"

    .line 9
    .line 10
    if-ne v0, v1, :cond_1

    .line 11
    .line 12
    :cond_0
    const-string v0, "update"

    .line 13
    .line 14
    iput-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    :cond_1
    invoke-super {p0, p1}, Lcom/narvii/app/NVActivity;->sendNotification(Lcom/narvii/notification/Notification;)V

    .line 18
    return-void
.end method

.method protected updateView(Lcom/narvii/catalog/category/CategoryPost;)V
    .locals 4

    const v0, 0x7f0a06eb

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 3
    move-object v1, v0

    check-cast v1, Lcom/narvii/widget/NVImageView;

    invoke-virtual {p1}, Lcom/narvii/catalog/category/CategoryPost;->firstMedia()Lcom/narvii/model/Media;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 4
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0e9e

    .line 5
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 6
    iget-object v1, p1, Lcom/narvii/catalog/category/CategoryPost;->label:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7
    iget-object v1, p1, Lcom/narvii/catalog/category/CategoryPost;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    :cond_0
    iget-object p1, p1, Lcom/narvii/catalog/category/CategoryPost;->parentCategoryId:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    const/16 v2, 0x8

    if-eqz p1, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    move v3, v1

    .line 9
    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 10
    invoke-virtual {p0}, Lcom/narvii/catalog/category/CategoryPostActivity;->isEdit()Z

    move-result v0

    const v3, 0x7f0a0255

    .line 11
    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-nez p1, :cond_3

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    .line 12
    :goto_2
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 13
    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected bridge synthetic updateView(Lcom/narvii/post/PostObject;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/catalog/category/CategoryPost;

    invoke-virtual {p0, p1}, Lcom/narvii/catalog/category/CategoryPostActivity;->updateView(Lcom/narvii/catalog/category/CategoryPost;)V

    return-void
.end method

.method protected validateUpload(Lcom/narvii/catalog/category/CategoryPost;)Z
    .locals 1

    const p1, 0x7f0a0e9e

    .line 2
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    const v0, 0x7f120eda

    invoke-virtual {p0, p1, v0}, Lcom/narvii/post/BasePostActivity;->validateEditTextNotEmpty(Landroid/widget/EditText;I)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method protected bridge synthetic validateUpload(Lcom/narvii/post/PostObject;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/catalog/category/CategoryPost;

    invoke-virtual {p0, p1}, Lcom/narvii/catalog/category/CategoryPostActivity;->validateUpload(Lcom/narvii/catalog/category/CategoryPost;)Z

    move-result p1

    return p1
.end method
