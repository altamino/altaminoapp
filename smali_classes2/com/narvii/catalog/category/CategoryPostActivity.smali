.class public Lcom/narvii/catalog/category/CategoryPostActivity;
.super Lcom/narvii/post/BasePostActivity;
.source "CategoryPostActivity.java"

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

    .line 34
    invoke-direct {p0}, Lcom/narvii/post/BasePostActivity;-><init>()V

    return-void
.end method


# virtual methods
.method delete()V
    .locals 5

    const-string v0, "category"

    .line 162
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/narvii/model/ItemCategory;

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/ItemCategory;

    .line 163
    new-instance v1, Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 164
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->delete()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/item-category/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/narvii/model/ItemCategory;->categoryId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v2

    .line 165
    new-instance v3, Lcom/narvii/catalog/category/CategoryPostActivity$1;

    invoke-direct {v3, p0, v0}, Lcom/narvii/catalog/category/CategoryPostActivity$1;-><init>(Lcom/narvii/catalog/category/CategoryPostActivity;Lcom/narvii/model/ItemCategory;)V

    iput-object v3, v1, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 174
    invoke-virtual {v1}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    const-string v0, "api"

    .line 176
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 177
    iget-object v1, v1, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method protected doPost(Lcom/narvii/catalog/category/CategoryPost;)V
    .locals 3

    const-string v0, "categoryId"

    .line 144
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "/item-category"

    goto :goto_0

    .line 145
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/item-category/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 147
    :goto_0
    new-instance v1, Lcom/narvii/post/PostHelper;

    invoke-direct {v1, p0}, Lcom/narvii/post/PostHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 148
    invoke-virtual {v1, p0}, Lcom/narvii/post/PostHelper;->setPostListener(Lcom/narvii/post/PostListener;)V

    .line 149
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    .line 150
    const-class v2, Lcom/narvii/catalog/category/CategoryResponse;

    invoke-virtual {v1, p1, v0, v2}, Lcom/narvii/post/PostHelper;->startPost(Lcom/narvii/post/PostObject;Lcom/narvii/util/http/ApiRequest;Ljava/lang/Class;)V

    return-void
.end method

.method protected bridge synthetic doPost(Lcom/narvii/post/PostObject;)V
    .locals 0

    .line 34
    check-cast p1, Lcom/narvii/catalog/category/CategoryPost;

    invoke-virtual {p0, p1}, Lcom/narvii/catalog/category/CategoryPostActivity;->doPost(Lcom/narvii/catalog/category/CategoryPost;)V

    return-void
.end method

.method public isEdit()Z
    .locals 1

    const-string v0, "categoryId"

    .line 46
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

    .line 77
    invoke-virtual {p0}, Lcom/narvii/catalog/category/CategoryPostActivity;->savePost()Lcom/narvii/catalog/category/CategoryPost;

    .line 78
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0901a4

    if-eq p1, v0, :cond_1

    const v0, 0x7f090571

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 84
    :cond_0
    iget-object p1, p0, Lcom/narvii/catalog/category/CategoryPostActivity;->photoDir:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 85
    iget-object p1, p0, Lcom/narvii/post/BasePostActivity;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    iget-object v0, p0, Lcom/narvii/catalog/category/CategoryPostActivity;->photoDir:Ljava/io/File;

    const/4 v1, 0x0

    const/16 v2, 0x46

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/narvii/media/MediaPickerFragment;->pickMedia(Ljava/io/File;Landroid/os/Bundle;II)V

    goto :goto_0

    .line 80
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/catalog/category/CategoryPostActivity;->delete()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 51
    const-class v0, Lcom/narvii/catalog/category/CategoryPost;

    invoke-super {p0, p1}, Lcom/narvii/post/BasePostActivity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "photo"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v3, "category"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/narvii/catalog/category/CategoryPostActivity;->photoDir:Ljava/io/File;

    const v1, 0x7f0b0078

    .line 54
    invoke-virtual {p0, v1}, Lcom/narvii/app/theme/NVThemeActivity;->setContentView(I)V

    .line 55
    invoke-static {p0}, Lcom/narvii/util/AndroidBug5497Workaround;->assistActivity(Landroid/app/Activity;)V

    .line 56
    invoke-virtual {p0}, Lcom/narvii/catalog/category/CategoryPostActivity;->isEdit()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0f03cd

    goto :goto_0

    :cond_0
    const v1, 0x7f0f01b0

    :goto_0
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setTitle(I)V

    const-string v1, "post"

    if-nez p1, :cond_1

    .line 59
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/catalog/category/CategoryPost;

    iput-object p1, p0, Lcom/narvii/catalog/category/CategoryPostActivity;->post:Lcom/narvii/catalog/category/CategoryPost;

    goto :goto_1

    .line 61
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/catalog/category/CategoryPost;

    iput-object p1, p0, Lcom/narvii/catalog/category/CategoryPostActivity;->post:Lcom/narvii/catalog/category/CategoryPost;

    .line 63
    :goto_1
    iget-object p1, p0, Lcom/narvii/catalog/category/CategoryPostActivity;->post:Lcom/narvii/catalog/category/CategoryPost;

    if-nez p1, :cond_2

    .line 64
    new-instance p1, Lcom/narvii/catalog/category/CategoryPost;

    invoke-direct {p1}, Lcom/narvii/catalog/category/CategoryPost;-><init>()V

    iput-object p1, p0, Lcom/narvii/catalog/category/CategoryPostActivity;->post:Lcom/narvii/catalog/category/CategoryPost;

    .line 66
    :cond_2
    iget-object p1, p0, Lcom/narvii/catalog/category/CategoryPostActivity;->post:Lcom/narvii/catalog/category/CategoryPost;

    invoke-virtual {p0, p1}, Lcom/narvii/catalog/category/CategoryPostActivity;->updateView(Lcom/narvii/catalog/category/CategoryPost;)V

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

    if-eqz p1, :cond_0

    .line 94
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/narvii/catalog/category/CategoryPostActivity;->savePost()Lcom/narvii/catalog/category/CategoryPost;

    move-result-object p2

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p2, Lcom/narvii/catalog/category/CategoryPost;->mediaList:Ljava/util/List;

    .line 97
    iput-object p2, p0, Lcom/narvii/catalog/category/CategoryPostActivity;->post:Lcom/narvii/catalog/category/CategoryPost;

    .line 98
    invoke-virtual {p0, p2}, Lcom/narvii/catalog/category/CategoryPostActivity;->updateView(Lcom/narvii/catalog/category/CategoryPost;)V

    goto :goto_0

    .line 100
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/catalog/category/CategoryPostActivity;->savePost()Lcom/narvii/catalog/category/CategoryPost;

    move-result-object p1

    .line 101
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p1, Lcom/narvii/catalog/category/CategoryPost;->mediaList:Ljava/util/List;

    .line 102
    iput-object p1, p0, Lcom/narvii/catalog/category/CategoryPostActivity;->post:Lcom/narvii/catalog/category/CategoryPost;

    .line 103
    invoke-virtual {p0, p1}, Lcom/narvii/catalog/category/CategoryPostActivity;->updateView(Lcom/narvii/catalog/category/CategoryPost;)V

    :goto_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 71
    invoke-super {p0, p1}, Lcom/narvii/post/BasePostActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 72
    iget-object v0, p0, Lcom/narvii/catalog/category/CategoryPostActivity;->post:Lcom/narvii/catalog/category/CategoryPost;

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "post"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

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

    .line 41
    const-class v0, Lcom/narvii/catalog/category/CategoryPost;

    return-object v0
.end method

.method protected savePost()Lcom/narvii/catalog/category/CategoryPost;
    .locals 2

    const v0, 0x7f090b9a

    .line 130
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 131
    iget-object v1, p0, Lcom/narvii/catalog/category/CategoryPostActivity;->post:Lcom/narvii/catalog/category/CategoryPost;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/narvii/catalog/category/CategoryPost;->label:Ljava/lang/String;

    .line 132
    iget-object v0, p0, Lcom/narvii/catalog/category/CategoryPostActivity;->post:Lcom/narvii/catalog/category/CategoryPost;

    return-object v0
.end method

.method protected bridge synthetic savePost()Lcom/narvii/post/PostObject;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lcom/narvii/catalog/category/CategoryPostActivity;->savePost()Lcom/narvii/catalog/category/CategoryPost;

    move-result-object v0

    return-object v0
.end method

.method public sendNotification(Lcom/narvii/notification/Notification;)V
    .locals 2

    .line 155
    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    const-string v1, "new"

    if-eq v0, v1, :cond_0

    const-string v1, "edit"

    if-ne v0, v1, :cond_1

    :cond_0
    const-string/jumbo v0, "update"

    .line 156
    iput-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 158
    :cond_1
    invoke-super {p0, p1}, Lcom/narvii/app/NVActivity;->sendNotification(Lcom/narvii/notification/Notification;)V

    return-void
.end method

.method protected updateView(Lcom/narvii/catalog/category/CategoryPost;)V
    .locals 4

    const v0, 0x7f090571

    .line 110
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 111
    move-object v1, v0

    check-cast v1, Lcom/narvii/widget/NVImageView;

    invoke-virtual {p1}, Lcom/narvii/catalog/category/CategoryPost;->firstMedia()Lcom/narvii/model/Media;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 112
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090b9a

    .line 115
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 116
    iget-object v1, p1, Lcom/narvii/catalog/category/CategoryPost;->label:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 117
    iget-object v1, p1, Lcom/narvii/catalog/category/CategoryPost;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    :cond_0
    iget-object p1, p1, Lcom/narvii/catalog/category/CategoryPost;->parentCategoryId:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    const/16 v2, 0x8

    if-eqz p1, :cond_2

    const/16 v3, 0x8

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    .line 120
    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 122
    invoke-virtual {p0}, Lcom/narvii/catalog/category/CategoryPostActivity;->isEdit()Z

    move-result v0

    const v3, 0x7f0901a4

    .line 123
    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-nez p1, :cond_3

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    const/16 v1, 0x8

    .line 124
    :goto_2
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 125
    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected bridge synthetic updateView(Lcom/narvii/post/PostObject;)V
    .locals 0

    .line 34
    check-cast p1, Lcom/narvii/catalog/category/CategoryPost;

    invoke-virtual {p0, p1}, Lcom/narvii/catalog/category/CategoryPostActivity;->updateView(Lcom/narvii/catalog/category/CategoryPost;)V

    return-void
.end method

.method protected validateUpload(Lcom/narvii/catalog/category/CategoryPost;)Z
    .locals 1

    const p1, 0x7f090b9a

    .line 137
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    const v0, 0x7f0f0daf

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

    .line 34
    check-cast p1, Lcom/narvii/catalog/category/CategoryPost;

    invoke-virtual {p0, p1}, Lcom/narvii/catalog/category/CategoryPostActivity;->validateUpload(Lcom/narvii/catalog/category/CategoryPost;)Z

    move-result p1

    return p1
.end method
