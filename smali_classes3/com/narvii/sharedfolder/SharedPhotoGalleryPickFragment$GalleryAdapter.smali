.class Lcom/narvii/sharedfolder/SharedPhotoGalleryPickFragment$GalleryAdapter;
.super Lcom/narvii/adapter/FragmentGalleryAdapter;
.source "SharedPhotoGalleryPickFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/sharedfolder/SharedPhotoGalleryPickFragment;
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
.field final synthetic this$0:Lcom/narvii/sharedfolder/SharedPhotoGalleryPickFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/sharedfolder/SharedPhotoGalleryPickFragment;Landroid/support/v4/app/FragmentManager;Lcom/narvii/app/NVContext;Ljava/util/List;Ljava/lang/String;IZ)V
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

    .line 131
    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoGalleryPickFragment$GalleryAdapter;->this$0:Lcom/narvii/sharedfolder/SharedPhotoGalleryPickFragment;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    move v6, p7

    .line 132
    invoke-direct/range {v0 .. v6}, Lcom/narvii/adapter/FragmentGalleryAdapter;-><init>(Landroid/support/v4/app/FragmentManager;Lcom/narvii/app/NVContext;Ljava/util/List;Ljava/lang/String;IZ)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createFragment(Lcom/narvii/model/NVObject;)Landroid/support/v4/app/Fragment;
    .locals 0

    .line 128
    check-cast p1, Lcom/narvii/model/SharedFile;

    invoke-virtual {p0, p1}, Lcom/narvii/sharedfolder/SharedPhotoGalleryPickFragment$GalleryAdapter;->createFragment(Lcom/narvii/model/SharedFile;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    return-object p1
.end method

.method protected createFragment(Lcom/narvii/model/SharedFile;)Landroid/support/v4/app/Fragment;
    .locals 3

    .line 153
    new-instance v0, Lcom/narvii/sharedfolder/MediaSelectFragment;

    invoke-direct {v0}, Lcom/narvii/sharedfolder/MediaSelectFragment;-><init>()V

    .line 154
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 155
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "item"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-class p1, Lcom/narvii/model/SharedFile;

    const-string v2, "class"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 157
    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method protected createRequest(IILjava/lang/String;)Lcom/narvii/util/http/ApiRequest;
    .locals 3

    .line 195
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/sharedfolder/SharedPhotoGalleryPickFragment$GalleryAdapter;->this$0:Lcom/narvii/sharedfolder/SharedPhotoGalleryPickFragment;

    const-string v2, "apiPath"

    invoke-virtual {v1, v2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 196
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "start"

    invoke-virtual {v0, v1, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 197
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "size"

    invoke-virtual {v0, p2, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 198
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoGalleryPickFragment$GalleryAdapter;->this$0:Lcom/narvii/sharedfolder/SharedPhotoGalleryPickFragment;

    const-string p2, "sourceType"

    invoke-virtual {p1, p2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 199
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoGalleryPickFragment$GalleryAdapter;->this$0:Lcom/narvii/sharedfolder/SharedPhotoGalleryPickFragment;

    invoke-virtual {p1, p2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "type"

    invoke-virtual {v0, p2, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 201
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "stoptime"

    .line 202
    invoke-virtual {v0, p1, p3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 204
    :cond_1
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

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

    .line 137
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

    .line 173
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoGalleryPickFragment$GalleryAdapter;->this$0:Lcom/narvii/sharedfolder/SharedPhotoGalleryPickFragment;

    const-string v1, "allowShowNormalDisable"

    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result v0

    .line 174
    iget-object v1, p0, Lcom/narvii/sharedfolder/SharedPhotoGalleryPickFragment$GalleryAdapter;->this$0:Lcom/narvii/sharedfolder/SharedPhotoGalleryPickFragment;

    const-string v2, "allowShowIModeDisable"

    invoke-virtual {v1, v2}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v1, :cond_0

    return-object p1

    :cond_0
    if-nez v1, :cond_1

    if-nez v0, :cond_1

    .line 178
    invoke-super {p0, p1}, Lcom/narvii/adapter/FragmentGalleryAdapter;->filterResponseList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_1
    if-nez p1, :cond_2

    const/4 p1, 0x0

    return-object p1

    .line 183
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 184
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

    .line 185
    invoke-virtual {v1}, Lcom/narvii/model/SharedFile;->isDisabledByAmino()Z

    move-result v2

    if-nez v2, :cond_3

    .line 186
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public getMediaSelectItem(I)Lcom/narvii/media/MediaSelectItem;
    .locals 2

    .line 162
    iget-object v0, p0, Lcom/narvii/adapter/FragmentGalleryAdapter;->_list:Ljava/util/List;

    invoke-static {v0}, Lcom/narvii/util/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/narvii/adapter/FragmentGalleryAdapter;->_list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 166
    iget-object v0, p0, Lcom/narvii/adapter/FragmentGalleryAdapter;->_list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/media/MediaSelectItem;

    return-object p1

    :cond_1
    return-object v1
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .line 147
    invoke-super {p0}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    .line 148
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoGalleryPickFragment$GalleryAdapter;->this$0:Lcom/narvii/sharedfolder/SharedPhotoGalleryPickFragment;

    invoke-static {v0}, Lcom/narvii/sharedfolder/SharedPhotoGalleryPickFragment;->access$200(Lcom/narvii/sharedfolder/SharedPhotoGalleryPickFragment;)V

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

    .line 142
    const-class v0, Lcom/narvii/sharedfolder/SharedFileListResponse;

    return-object v0
.end method
