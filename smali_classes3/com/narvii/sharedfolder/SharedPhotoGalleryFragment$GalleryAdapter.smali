.class Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment$GalleryAdapter;
.super Lcom/narvii/adapter/FragmentGalleryAdapter;
.source "SharedPhotoGalleryFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GalleryAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/adapter/FragmentGalleryAdapter<",
        "Lcom/narvii/model/SharedFile;",
        "Lcom/narvii/sharedfolder/SharedFileListResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment;Landroid/support/v4/app/FragmentManager;Lcom/narvii/app/NVContext;Ljava/util/List;Ljava/lang/String;IZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentManager;",
            "Lcom/narvii/app/NVContext;",
            "Ljava/util/List<",
            "Lcom/narvii/model/SharedFile;",
            ">;",
            "Ljava/lang/String;",
            "IZ)V"
        }
    .end annotation

    .line 177
    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment$GalleryAdapter;->this$0:Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    move v6, p7

    .line 178
    invoke-direct/range {v0 .. v6}, Lcom/narvii/adapter/FragmentGalleryAdapter;-><init>(Landroid/support/v4/app/FragmentManager;Lcom/narvii/app/NVContext;Ljava/util/List;Ljava/lang/String;IZ)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createFragment(Lcom/narvii/model/NVObject;)Landroid/support/v4/app/Fragment;
    .locals 0

    .line 174
    check-cast p1, Lcom/narvii/model/SharedFile;

    invoke-virtual {p0, p1}, Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment$GalleryAdapter;->createFragment(Lcom/narvii/model/SharedFile;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    return-object p1
.end method

.method protected createFragment(Lcom/narvii/model/SharedFile;)Landroid/support/v4/app/Fragment;
    .locals 4

    .line 194
    new-instance v0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;

    invoke-direct {v0}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;-><init>()V

    .line 195
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 196
    invoke-virtual {p1}, Lcom/narvii/model/SharedFile;->id()Ljava/lang/String;

    move-result-object v2

    const-string v3, "id"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "prefetch"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "gallery"

    const/4 v2, 0x1

    .line 198
    invoke-virtual {v1, p1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 199
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment$GalleryAdapter;->this$0:Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment;

    iget-object v2, p1, Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment;->photoDeleteCallback:Lcom/narvii/util/Callback;

    iput-object v2, v0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->onPhotoDeleteCallback:Lcom/narvii/util/Callback;

    .line 200
    iget-object p1, p1, Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment;->hideDetailStatusManager:Lcom/narvii/sharedfolder/HideDetailStatusManager;

    iput-object p1, v0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->hideDetailStatusManager:Lcom/narvii/sharedfolder/HideDetailStatusManager;

    .line 201
    invoke-virtual {p1, v0}, Lcom/narvii/sharedfolder/HideDetailStatusManager;->register(Lcom/narvii/sharedfolder/HideDetailStatusManager$OnHideStatusChangedListener;)V

    .line 202
    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method protected createRequest(IILjava/lang/String;)Lcom/narvii/util/http/ApiRequest;
    .locals 2

    .line 248
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p3

    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment$GalleryAdapter;->this$0:Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment;

    const-string v1, "apiPath"

    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p3

    .line 249
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "start"

    invoke-virtual {p3, v0, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 250
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "size"

    invoke-virtual {p3, p2, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 251
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment$GalleryAdapter;->this$0:Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment;

    const-string p2, "sourceType"

    invoke-virtual {p1, p2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 252
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment$GalleryAdapter;->this$0:Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment;

    invoke-virtual {p1, p2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "type"

    invoke-virtual {p3, p2, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 254
    :cond_0
    invoke-virtual {p3}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    return-object p1
.end method

.method protected dataType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/narvii/model/SharedFile;",
            ">;"
        }
    .end annotation

    .line 183
    const-class v0, Lcom/narvii/model/SharedFile;

    return-object v0
.end method

.method protected filterResponseList(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/SharedFile;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/narvii/model/SharedFile;",
            ">;"
        }
    .end annotation

    .line 225
    iget-object v0, p0, Lcom/narvii/adapter/FragmentGalleryAdapter;->_list:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/narvii/util/Utils;->filterDuplicated(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 226
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment$GalleryAdapter;->this$0:Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment;

    const-string v1, "allowShowNormalDisable"

    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result v0

    .line 227
    iget-object v1, p0, Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment$GalleryAdapter;->this$0:Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment;

    const-string v2, "allowShowIModeDisable"

    invoke-virtual {v1, v2}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v1, :cond_0

    return-object p1

    :cond_0
    if-nez v1, :cond_1

    if-nez v0, :cond_1

    .line 231
    invoke-super {p0, p1}, Lcom/narvii/adapter/FragmentGalleryAdapter;->filterResponseList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_1
    if-nez p1, :cond_2

    const/4 p1, 0x0

    return-object p1

    .line 236
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 237
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/SharedFile;

    .line 238
    invoke-virtual {v1}, Lcom/narvii/model/SharedFile;->isDisabledByAmino()Z

    move-result v2

    if-nez v2, :cond_3

    .line 239
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public getCount()I
    .locals 2

    .line 209
    invoke-super {p0}, Lcom/narvii/adapter/FragmentGalleryAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 211
    iget-object v1, p0, Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment$GalleryAdapter;->this$0:Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment;

    invoke-virtual {v1}, Lcom/narvii/app/NVFragment;->finish()V

    :cond_0
    return v0
.end method

.method protected onNotificationDeleteSuccess()V
    .locals 2

    .line 219
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment$GalleryAdapter;->this$0:Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment;

    iget v1, v0, Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment;->count:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment;->count:I

    .line 220
    invoke-static {v0}, Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment;->access$000(Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment;)V

    return-void
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/narvii/sharedfolder/SharedFileListResponse;",
            ">;"
        }
    .end annotation

    .line 188
    const-class v0, Lcom/narvii/sharedfolder/SharedFileListResponse;

    return-object v0
.end method
