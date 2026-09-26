.class Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment$GalleryAdapter;
.super Lcom/narvii/adapter/FragmentGalleryAdapter;
.source "SourceFile"


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
.method public constructor <init>(Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment;Landroidx/fragment/app/FragmentManager;Lcom/narvii/app/NVContext;Ljava/util/List;Ljava/lang/String;IZ)V
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
    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment$GalleryAdapter;->this$0:Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment;

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

    invoke-virtual {p0, p1}, Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment$GalleryAdapter;->createFragment(Lcom/narvii/model/SharedFile;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    return-object p1
.end method

.method protected createFragment(Lcom/narvii/model/SharedFile;)Landroidx/fragment/app/Fragment;
    .locals 4

    .line 2
    new-instance v0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;

    invoke-direct {v0}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;-><init>()V

    .line 3
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 4
    invoke-virtual {p1}, Lcom/narvii/model/SharedFile;->id()Ljava/lang/String;

    move-result-object v2

    const-string v3, "id"

    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "prefetch"

    .line 5
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "gallery"

    const/4 v2, 0x1

    .line 6
    invoke-virtual {v1, p1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment$GalleryAdapter;->this$0:Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment;

    .line 7
    iget-object v2, p1, Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment;->photoDeleteCallback:Lcom/narvii/util/Callback;

    iput-object v2, v0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->onPhotoDeleteCallback:Lcom/narvii/util/Callback;

    .line 8
    iget-object p1, p1, Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment;->hideDetailStatusManager:Lcom/narvii/sharedfolder/HideDetailStatusManager;

    iput-object p1, v0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->hideDetailStatusManager:Lcom/narvii/sharedfolder/HideDetailStatusManager;

    .line 9
    invoke-virtual {p1, v0}, Lcom/narvii/sharedfolder/HideDetailStatusManager;->register(Lcom/narvii/sharedfolder/HideDetailStatusManager$OnHideStatusChangedListener;)V

    .line 10
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method protected createRequest(IILjava/lang/String;)Lcom/narvii/util/http/ApiRequest;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 4
    move-result-object p3

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment$GalleryAdapter;->this$0:Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment;

    .line 7
    .line 8
    const-string v1, "apiPath"

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p3, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 16
    move-result-object p3

    .line 17
    .line 18
    const-string/jumbo v0, "start"

    .line 19
    .line 20
    .line 21
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    .line 25
    invoke-virtual {p3, v0, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 26
    .line 27
    const-string/jumbo p1, "size"

    .line 28
    .line 29
    .line 30
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    move-result-object p2

    .line 32
    .line 33
    .line 34
    invoke-virtual {p3, p1, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 35
    .line 36
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment$GalleryAdapter;->this$0:Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment;

    .line 37
    .line 38
    const-string/jumbo p2, "sourceType"

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
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment$GalleryAdapter;->this$0:Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment;

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
    invoke-virtual {p3, p2, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 61
    .line 62
    .line 63
    :cond_0
    invoke-virtual {p3}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 64
    move-result-object p1

    .line 65
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
    iget-object v0, p0, Lcom/narvii/adapter/FragmentGalleryAdapter;->_list:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p1}, Lcom/narvii/util/Utils;->filterDuplicated(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment$GalleryAdapter;->this$0:Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment;

    .line 9
    .line 10
    const-string v1, "allowShowNormalDisable"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 14
    move-result v0

    .line 15
    .line 16
    iget-object v1, p0, Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment$GalleryAdapter;->this$0:Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment;

    .line 17
    .line 18
    const-string v2, "allowShowIModeDisable"

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v2}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 22
    move-result v1

    .line 23
    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    if-eqz v1, :cond_0

    .line 27
    return-object p1

    .line 28
    .line 29
    :cond_0
    if-nez v1, :cond_1

    .line 30
    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    .line 34
    invoke-super {p0, p1}, Lcom/narvii/adapter/FragmentGalleryAdapter;->filterResponseList(Ljava/util/List;)Ljava/util/List;

    .line 35
    move-result-object p1

    .line 36
    return-object p1

    .line 37
    .line 38
    :cond_1
    if-nez p1, :cond_2

    .line 39
    const/4 p1, 0x0

    .line 40
    return-object p1

    .line 41
    .line 42
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    .line 43
    .line 44
    .line 45
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 49
    move-result-object p1

    .line 50
    .line 51
    .line 52
    :cond_3
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    move-result v1

    .line 54
    .line 55
    if-eqz v1, :cond_4

    .line 56
    .line 57
    .line 58
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    move-result-object v1

    .line 60
    .line 61
    check-cast v1, Lcom/narvii/model/SharedFile;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1}, Lcom/narvii/model/SharedFile;->isDisabledByAmino()Z

    .line 65
    move-result v2

    .line 66
    .line 67
    if-nez v2, :cond_3

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    goto :goto_0

    .line 72
    :cond_4
    return-object v0
.end method

.method public getCount()I
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/adapter/FragmentGalleryAdapter;->getCount()I

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment$GalleryAdapter;->this$0:Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/narvii/app/NVFragment;->finish()V

    .line 12
    :cond_0
    return v0
.end method

.method protected onNotificationDeleteSuccess()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment$GalleryAdapter;->this$0:Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment;

    .line 3
    .line 4
    iget v1, v0, Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment;->count:I

    .line 5
    .line 6
    add-int/lit8 v1, v1, -0x1

    .line 7
    .line 8
    iput v1, v0, Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment;->count:I

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment;->n(Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment;)V

    .line 12
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
