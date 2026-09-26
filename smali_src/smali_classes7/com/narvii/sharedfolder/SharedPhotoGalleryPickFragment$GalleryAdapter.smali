.class Lcom/narvii/sharedfolder/SharedPhotoGalleryPickFragment$GalleryAdapter;
.super Lcom/narvii/adapter/FragmentGalleryAdapter;
.source "SourceFile"


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
.method public constructor <init>(Lcom/narvii/sharedfolder/SharedPhotoGalleryPickFragment;Landroidx/fragment/app/FragmentManager;Lcom/narvii/app/NVContext;Ljava/util/List;Ljava/lang/String;IZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentManager;",
            "Lcom/narvii/app/NVContext;",
            "Ljava/util/List<",
            "Lcom/narvii/model/SharedFile;",
            ">;",
            "Ljava/lang/String;",
            "IZ)V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoGalleryPickFragment$GalleryAdapter;->this$0:Lcom/narvii/sharedfolder/SharedPhotoGalleryPickFragment;

    .line 3
    move-object v0, p0

    .line 4
    move-object v1, p2

    .line 5
    move-object v2, p3

    .line 6
    move-object v3, p4

    .line 7
    move-object v4, p5

    .line 8
    move v5, p6

    .line 9
    move v6, p7

    .line 10
    .line 11
    .line 12
    invoke-direct/range {v0 .. v6}, Lcom/narvii/adapter/FragmentGalleryAdapter;-><init>(Landroidx/fragment/app/FragmentManager;Lcom/narvii/app/NVContext;Ljava/util/List;Ljava/lang/String;IZ)V

    .line 13
    return-void
.end method


# virtual methods
.method protected bridge synthetic createFragment(Lcom/narvii/model/NVObject;)Landroidx/fragment/app/Fragment;
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/model/SharedFile;

    invoke-virtual {p0, p1}, Lcom/narvii/sharedfolder/SharedPhotoGalleryPickFragment$GalleryAdapter;->createFragment(Lcom/narvii/model/SharedFile;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    return-object p1
.end method

.method protected createFragment(Lcom/narvii/model/SharedFile;)Landroidx/fragment/app/Fragment;
    .locals 3

    .line 2
    new-instance v0, Lcom/narvii/sharedfolder/MediaSelectFragment;

    invoke-direct {v0}, Lcom/narvii/sharedfolder/MediaSelectFragment;-><init>()V

    .line 3
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "item"

    .line 4
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "class"

    const-class v2, Lcom/narvii/model/SharedFile;

    .line 5
    invoke-virtual {v1, p1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 6
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method protected createRequest(IILjava/lang/String;)Lcom/narvii/util/http/ApiRequest;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/narvii/sharedfolder/SharedPhotoGalleryPickFragment$GalleryAdapter;->this$0:Lcom/narvii/sharedfolder/SharedPhotoGalleryPickFragment;

    .line 7
    .line 8
    const-string v2, "apiPath"

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, v2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    const-string v1, "start"

    .line 19
    .line 20
    .line 21
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 26
    .line 27
    const-string p1, "size"

    .line 28
    .line 29
    .line 30
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    move-result-object p2

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, p1, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 35
    .line 36
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoGalleryPickFragment$GalleryAdapter;->this$0:Lcom/narvii/sharedfolder/SharedPhotoGalleryPickFragment;

    .line 37
    .line 38
    const-string p2, "sourceType"

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, p2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    move-result-object p1

    .line 43
    .line 44
    .line 45
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 46
    move-result p1

    .line 47
    .line 48
    if-nez p1, :cond_0

    .line 49
    .line 50
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoGalleryPickFragment$GalleryAdapter;->this$0:Lcom/narvii/sharedfolder/SharedPhotoGalleryPickFragment;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, p2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    move-result-object p1

    .line 55
    .line 56
    .line 57
    const-string/jumbo p2, "type"

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, p2, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 61
    .line 62
    .line 63
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 64
    move-result p1

    .line 65
    .line 66
    if-nez p1, :cond_1

    .line 67
    .line 68
    const-string p1, "stoptime"

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, p1, p3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 72
    .line 73
    .line 74
    :cond_1
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 75
    move-result-object p1

    .line 76
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

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoGalleryPickFragment$GalleryAdapter;->this$0:Lcom/narvii/sharedfolder/SharedPhotoGalleryPickFragment;

    .line 3
    .line 4
    const-string v1, "allowShowNormalDisable"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 8
    move-result v0

    .line 9
    .line 10
    iget-object v1, p0, Lcom/narvii/sharedfolder/SharedPhotoGalleryPickFragment$GalleryAdapter;->this$0:Lcom/narvii/sharedfolder/SharedPhotoGalleryPickFragment;

    .line 11
    .line 12
    const-string v2, "allowShowIModeDisable"

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v2}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 16
    move-result v1

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    return-object p1

    .line 22
    .line 23
    :cond_0
    if-nez v1, :cond_1

    .line 24
    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    .line 28
    invoke-super {p0, p1}, Lcom/narvii/adapter/FragmentGalleryAdapter;->filterResponseList(Ljava/util/List;)Ljava/util/List;

    .line 29
    move-result-object p1

    .line 30
    return-object p1

    .line 31
    .line 32
    :cond_1
    if-nez p1, :cond_2

    .line 33
    const/4 p1, 0x0

    .line 34
    return-object p1

    .line 35
    .line 36
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    .line 37
    .line 38
    .line 39
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 43
    move-result-object p1

    .line 44
    .line 45
    .line 46
    :cond_3
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    move-result v1

    .line 48
    .line 49
    if-eqz v1, :cond_4

    .line 50
    .line 51
    .line 52
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    move-result-object v1

    .line 54
    .line 55
    check-cast v1, Lcom/narvii/model/SharedFile;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Lcom/narvii/model/SharedFile;->isDisabledByAmino()Z

    .line 59
    move-result v2

    .line 60
    .line 61
    if-nez v2, :cond_3

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    goto :goto_0

    .line 66
    :cond_4
    return-object v0
.end method

.method public getMediaSelectItem(I)Lcom/narvii/media/MediaSelectItem;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/adapter/FragmentGalleryAdapter;->_list:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/util/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    return-object v1

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/narvii/adapter/FragmentGalleryAdapter;->_list:Ljava/util/List;

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 16
    move-result v0

    .line 17
    .line 18
    if-ge p1, v0, :cond_1

    .line 19
    .line 20
    iget-object v0, p0, Lcom/narvii/adapter/FragmentGalleryAdapter;->_list:Ljava/util/List;

    .line 21
    .line 22
    .line 23
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    check-cast p1, Lcom/narvii/media/MediaSelectItem;

    .line 27
    return-object p1

    .line 28
    :cond_1
    return-object v1
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoGalleryPickFragment$GalleryAdapter;->this$0:Lcom/narvii/sharedfolder/SharedPhotoGalleryPickFragment;

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lcom/narvii/sharedfolder/SharedPhotoGalleryPickFragment;->access$100(Lcom/narvii/sharedfolder/SharedPhotoGalleryPickFragment;)V

    .line 9
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

    const-class v0, Lcom/narvii/sharedfolder/SharedFileListResponse;

    return-object v0
.end method
