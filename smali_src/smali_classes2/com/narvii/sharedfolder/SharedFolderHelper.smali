.class public Lcom/narvii/sharedfolder/SharedFolderHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field apiService:Lcom/narvii/util/http/ApiService;

.field checkEligibleHelper:Lcom/narvii/util/CheckEligibleHelper;

.field communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

.field nvContext:Lcom/narvii/app/NVContext;

.field photoManager:Lcom/narvii/photos/PhotoManager;

.field public source:Ljava/lang/String;

.field public sourceExtra:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedFolderHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 6
    .line 7
    const-string v0, "api"

    .line 8
    .line 9
    .line 10
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/narvii/sharedfolder/SharedFolderHelper;->apiService:Lcom/narvii/util/http/ApiService;

    .line 16
    .line 17
    new-instance v0, Lcom/narvii/util/CheckEligibleHelper;

    .line 18
    .line 19
    .line 20
    invoke-direct {v0, p1}, Lcom/narvii/util/CheckEligibleHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 21
    .line 22
    iput-object v0, p0, Lcom/narvii/sharedfolder/SharedFolderHelper;->checkEligibleHelper:Lcom/narvii/util/CheckEligibleHelper;

    .line 23
    .line 24
    new-instance v0, Lcom/narvii/modulization/CommunityConfigHelper;

    .line 25
    .line 26
    .line 27
    invoke-direct {v0, p1}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 28
    .line 29
    iput-object v0, p0, Lcom/narvii/sharedfolder/SharedFolderHelper;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 30
    .line 31
    const-string v0, "photo"

    .line 32
    .line 33
    .line 34
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    check-cast p1, Lcom/narvii/photos/PhotoManager;

    .line 38
    .line 39
    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedFolderHelper;->photoManager:Lcom/narvii/photos/PhotoManager;

    .line 40
    return-void
.end method


# virtual methods
.method public addPhotosFromPosts(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ILcom/narvii/util/Callback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/narvii/model/Media;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Lcom/narvii/util/Callback<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/sharedfolder/SharedFolderHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 5
    .line 6
    .line 7
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 15
    .line 16
    .line 17
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    const-string v2, "shared-folder/upload"

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    sget-object v2, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->valueToTree(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 34
    move-result-object p2

    .line 35
    .line 36
    const-string v2, "mediaList"

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v2, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 40
    move-result-object p2

    .line 41
    .line 42
    if-eqz p1, :cond_0

    .line 43
    .line 44
    const-string v1, "folderId"

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2, v1, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 48
    .line 49
    :cond_0
    const-string p1, "referObjectId"

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2, p1, p3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 53
    .line 54
    const-string p1, "referObjectType"

    .line 55
    .line 56
    .line 57
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    move-result-object p3

    .line 59
    .line 60
    .line 61
    invoke-virtual {p2, p1, p3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 62
    .line 63
    .line 64
    const-string/jumbo p1, "type"

    .line 65
    .line 66
    const-string p3, "fromObject"

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2, p1, p3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p2}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 73
    move-result-object p1

    .line 74
    .line 75
    iget-object p2, p0, Lcom/narvii/sharedfolder/SharedFolderHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 76
    .line 77
    const-string p3, "api"

    .line 78
    .line 79
    .line 80
    invoke-interface {p2, p3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 81
    move-result-object p2

    .line 82
    .line 83
    check-cast p2, Lcom/narvii/util/http/ApiService;

    .line 84
    .line 85
    new-instance p3, Lcom/narvii/sharedfolder/SharedFolderHelper$3;

    .line 86
    .line 87
    const-class p4, Lcom/narvii/sharedfolder/UploadPhotoResponse;

    .line 88
    .line 89
    .line 90
    invoke-direct {p3, p0, p4, v0, p5}, Lcom/narvii/sharedfolder/SharedFolderHelper$3;-><init>(Lcom/narvii/sharedfolder/SharedFolderHelper;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;Lcom/narvii/util/Callback;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p2, p1, p3}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 94
    return-void
.end method

.method public addPhotosToAlbum(Ljava/lang/String;Ljava/util/Collection;Lcom/narvii/util/Callback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/narvii/util/Callback;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/sharedfolder/SharedFolderHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 5
    .line 6
    .line 7
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    new-instance v1, Lcom/narvii/sharedfolder/SharedFolderHelper$4;

    .line 14
    .line 15
    .line 16
    invoke-direct {v1, p0, p1, p3}, Lcom/narvii/sharedfolder/SharedFolderHelper$4;-><init>(Lcom/narvii/sharedfolder/SharedFolderHelper;Ljava/lang/String;Lcom/narvii/util/Callback;)V

    .line 17
    .line 18
    iput-object v1, v0, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 22
    .line 23
    .line 24
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createArrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 25
    move-result-object p3

    .line 26
    .line 27
    .line 28
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 29
    move-result-object p2

    .line 30
    .line 31
    .line 32
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    move-result v1

    .line 34
    .line 35
    if-eqz v1, :cond_0

    .line 36
    .line 37
    .line 38
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    move-result-object v1

    .line 40
    .line 41
    check-cast v1, Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p3, v1}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 45
    goto :goto_0

    .line 46
    .line 47
    .line 48
    :cond_0
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 49
    move-result-object p2

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 53
    move-result-object p2

    .line 54
    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    const-string v2, "shared-folder/folders/"

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    const-string p1, "/files"

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    move-result-object p1

    .line 76
    .line 77
    .line 78
    invoke-virtual {p2, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 79
    move-result-object p1

    .line 80
    .line 81
    const-string p2, "fileIdList"

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, p2, p3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 85
    move-result-object p1

    .line 86
    .line 87
    const-string p2, "action"

    .line 88
    .line 89
    const-string p3, "add"

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, p2, p3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 93
    move-result-object p1

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 97
    move-result-object p1

    .line 98
    .line 99
    iget-object p2, p0, Lcom/narvii/sharedfolder/SharedFolderHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 100
    .line 101
    const-string p3, "api"

    .line 102
    .line 103
    .line 104
    invoke-interface {p2, p3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 105
    move-result-object p2

    .line 106
    .line 107
    check-cast p2, Lcom/narvii/util/http/ApiService;

    .line 108
    .line 109
    iget-object p3, v0, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p2, p1, p3}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 113
    return-void
.end method

.method public canManageAlbum()Z
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedFolderHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    const-string v1, "account"

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    iget-object v1, p0, Lcom/narvii/sharedfolder/SharedFolderHelper;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 17
    .line 18
    sget-object v2, Lcom/narvii/modulization/Module;->albumManagePath:[Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v2}, Lcom/narvii/modulization/CommunityConfigHelper;->getPrivilege([Ljava/lang/String;)Lcom/narvii/modulization/entry/Privilege;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    .line 25
    invoke-static {v1, v0}, Lcom/narvii/util/PrivilegeUtils;->visibleToUser(Lcom/narvii/modulization/entry/Privilege;Lcom/narvii/model/User;)Z

    .line 26
    move-result v0

    .line 27
    return v0
.end method

.method public canUploadPhoto()Z
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedFolderHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    const-string v1, "account"

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    iget-object v1, p0, Lcom/narvii/sharedfolder/SharedFolderHelper;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 17
    .line 18
    sget-object v2, Lcom/narvii/modulization/Module;->photoUploadPath:[Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v2}, Lcom/narvii/modulization/CommunityConfigHelper;->getPrivilege([Ljava/lang/String;)Lcom/narvii/modulization/entry/Privilege;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    .line 25
    invoke-static {v1, v0}, Lcom/narvii/util/PrivilegeUtils;->visibleToUser(Lcom/narvii/modulization/entry/Privilege;Lcom/narvii/model/User;)Z

    .line 26
    move-result v0

    .line 27
    return v0
.end method

.method protected checkAlbumManageEligible(Lcom/narvii/util/Callback;)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedFolderHelper;->checkEligibleHelper:Lcom/narvii/util/CheckEligibleHelper;

    .line 3
    .line 4
    const-string v1, "shared-folder"

    .line 5
    .line 6
    const-string v2, "album-management"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1, v2, p1}, Lcom/narvii/util/CheckEligibleHelper;->checkEligible(Ljava/lang/String;Ljava/lang/String;Lcom/narvii/util/Callback;)V

    .line 10
    return-void
.end method

.method protected checkUploadPhotoEligible(Lcom/narvii/util/Callback;)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedFolderHelper;->checkEligibleHelper:Lcom/narvii/util/CheckEligibleHelper;

    .line 3
    .line 4
    const-string v1, "shared-folder"

    .line 5
    .line 6
    const-string v2, "image-upload"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1, v2, p1}, Lcom/narvii/util/CheckEligibleHelper;->checkEligible(Ljava/lang/String;Ljava/lang/String;Lcom/narvii/util/Callback;)V

    .line 10
    return-void
.end method

.method protected deletePhotos(Lcom/narvii/app/NVContext;Ljava/util/List;Lcom/narvii/util/Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/narvii/util/Callback;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    .line 3
    .line 4
    .line 5
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    new-instance v1, Lcom/narvii/sharedfolder/SharedFolderHelper$6;

    .line 12
    .line 13
    .line 14
    invoke-direct {v1, p0, p1, p2, p3}, Lcom/narvii/sharedfolder/SharedFolderHelper$6;-><init>(Lcom/narvii/sharedfolder/SharedFolderHelper;Lcom/narvii/app/NVContext;Ljava/util/List;Lcom/narvii/util/Callback;)V

    .line 15
    .line 16
    iput-object v1, v0, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 20
    .line 21
    .line 22
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createArrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 23
    move-result-object p3

    .line 24
    .line 25
    .line 26
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 27
    move-result-object p2

    .line 28
    .line 29
    .line 30
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    move-result v1

    .line 32
    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    .line 36
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    move-result-object v1

    .line 38
    .line 39
    check-cast v1, Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p3, v1}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 43
    goto :goto_0

    .line 44
    .line 45
    .line 46
    :cond_0
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 47
    move-result-object p2

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 51
    move-result-object p2

    .line 52
    .line 53
    const-string v1, "shared-folder/files/batch-delete"

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 57
    move-result-object p2

    .line 58
    .line 59
    const-string v1, "fileIdList"

    .line 60
    .line 61
    .line 62
    invoke-virtual {p2, v1, p3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 63
    move-result-object p2

    .line 64
    .line 65
    .line 66
    invoke-virtual {p2}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 67
    move-result-object p2

    .line 68
    .line 69
    const-string p3, "api"

    .line 70
    .line 71
    .line 72
    invoke-interface {p1, p3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 73
    move-result-object p1

    .line 74
    .line 75
    check-cast p1, Lcom/narvii/util/http/ApiService;

    .line 76
    .line 77
    iget-object p3, v0, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, p2, p3}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 81
    return-void
.end method

.method protected ifShowAlbumLockedDialog(Lcom/narvii/app/NVContext;Lcom/narvii/model/SharedAlbum;)Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p2}, Lcom/narvii/model/SharedAlbum;->isLocked()Z

    .line 4
    move-result p2

    .line 5
    const/4 v0, 0x0

    .line 6
    .line 7
    if-eqz p2, :cond_1

    .line 8
    .line 9
    const-string p2, "account"

    .line 10
    .line 11
    .line 12
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    move-result-object p2

    .line 14
    .line 15
    check-cast p2, Lcom/narvii/account/AccountService;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 19
    move-result-object p2

    .line 20
    .line 21
    if-eqz p2, :cond_0

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2}, Lcom/narvii/model/User;->isCurator()Z

    .line 25
    move-result p2

    .line 26
    .line 27
    if-eqz p2, :cond_0

    .line 28
    return v0

    .line 29
    .line 30
    :cond_0
    new-instance p2, Lcom/narvii/widget/ACMAlertDialog;

    .line 31
    .line 32
    .line 33
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    .line 37
    invoke-direct {p2, p1}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 38
    .line 39
    .line 40
    const p1, 0x7f1200ff

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2, p1}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    .line 44
    .line 45
    .line 46
    const p1, 0x104000a

    .line 47
    const/4 v0, 0x0

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2, p1, v0}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2}, Lcom/narvii/app/NVDialog;->show()V

    .line 54
    const/4 p1, 0x1

    .line 55
    return p1

    .line 56
    :cond_1
    return v0
.end method

.method protected removePhotosFromAlbum(Ljava/lang/String;Ljava/util/Collection;Lcom/narvii/util/Callback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/narvii/util/Callback;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/sharedfolder/SharedFolderHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 5
    .line 6
    .line 7
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    new-instance v1, Lcom/narvii/sharedfolder/SharedFolderHelper$5;

    .line 14
    .line 15
    .line 16
    invoke-direct {v1, p0, p3}, Lcom/narvii/sharedfolder/SharedFolderHelper$5;-><init>(Lcom/narvii/sharedfolder/SharedFolderHelper;Lcom/narvii/util/Callback;)V

    .line 17
    .line 18
    iput-object v1, v0, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 22
    .line 23
    .line 24
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createArrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 25
    move-result-object p3

    .line 26
    .line 27
    .line 28
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 29
    move-result-object p2

    .line 30
    .line 31
    .line 32
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    move-result v1

    .line 34
    .line 35
    if-eqz v1, :cond_0

    .line 36
    .line 37
    .line 38
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    move-result-object v1

    .line 40
    .line 41
    check-cast v1, Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p3, v1}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 45
    goto :goto_0

    .line 46
    .line 47
    .line 48
    :cond_0
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 49
    move-result-object p2

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 53
    move-result-object p2

    .line 54
    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    const-string v2, "shared-folder/folders/"

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    const-string p1, "/files"

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    move-result-object p1

    .line 76
    .line 77
    .line 78
    invoke-virtual {p2, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 79
    move-result-object p1

    .line 80
    .line 81
    const-string p2, "fileIdList"

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, p2, p3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 85
    move-result-object p1

    .line 86
    .line 87
    const-string p2, "action"

    .line 88
    .line 89
    const-string p3, "remove"

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, p2, p3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 93
    move-result-object p1

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 97
    move-result-object p1

    .line 98
    .line 99
    iget-object p2, p0, Lcom/narvii/sharedfolder/SharedFolderHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 100
    .line 101
    const-string p3, "api"

    .line 102
    .line 103
    .line 104
    invoke-interface {p2, p3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 105
    move-result-object p2

    .line 106
    .line 107
    check-cast p2, Lcom/narvii/util/http/ApiService;

    .line 108
    .line 109
    iget-object p3, v0, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p2, p1, p3}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 113
    return-void
.end method

.method public showAddAlbumDialog()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v0}, Lcom/narvii/sharedfolder/SharedFolderHelper;->showAddAlbumDialog(Ljava/util/List;Lcom/narvii/util/Callback;)V

    return-void
.end method

.method public showAddAlbumDialog(Ljava/util/List;Lcom/narvii/util/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/narvii/util/Callback<",
            "Lcom/narvii/sharedfolder/SharedAlbumResponse;",
            ">;)V"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/narvii/sharedfolder/SharedFolderHelper$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/narvii/sharedfolder/SharedFolderHelper$7;-><init>(Lcom/narvii/sharedfolder/SharedFolderHelper;Ljava/util/List;Lcom/narvii/util/Callback;)V

    invoke-virtual {p0, v0}, Lcom/narvii/sharedfolder/SharedFolderHelper;->checkAlbumManageEligible(Lcom/narvii/util/Callback;)V

    return-void
.end method

.method public showUploadChooseSourceDialog(Landroid/content/Context;Ljava/lang/String;Lcom/narvii/util/Callback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    new-instance v1, Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const v3, 0x7f12121e

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 22
    move-result-object v3

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v3, " \u2b06"

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object v2

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    const v2, 0x7f1207bf

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 44
    move-result-object v2

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    const v2, 0x7f1207c0

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 54
    move-result-object v2

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    const/4 v2, 0x0

    .line 59
    .line 60
    new-array v2, v2, [Ljava/lang/CharSequence;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 64
    move-result-object v1

    .line 65
    .line 66
    check-cast v1, [Ljava/lang/CharSequence;

    .line 67
    .line 68
    new-instance v2, Lcom/narvii/sharedfolder/SharedFolderHelper$1;

    .line 69
    .line 70
    .line 71
    invoke-direct {v2, p0, p3, p2, p1}, Lcom/narvii/sharedfolder/SharedFolderHelper$1;-><init>(Lcom/narvii/sharedfolder/SharedFolderHelper;Lcom/narvii/util/Callback;Ljava/lang/String;Landroid/content/Context;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 78
    return-void
.end method

.method public updateSharedPhotoTitle(Ljava/lang/String;Ljava/lang/String;Lcom/narvii/util/Callback;)V
    .locals 4

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/sharedfolder/SharedFolderHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 5
    .line 6
    .line 7
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 15
    .line 16
    .line 17
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    new-instance v2, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    const-string v3, "shared-folder/files/"

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string p1, "/title"

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object p1

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 48
    move-result-object p1

    .line 49
    .line 50
    .line 51
    const-string/jumbo v1, "title"

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v1, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 55
    move-result-object p1

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 59
    move-result-object p1

    .line 60
    .line 61
    iget-object p2, p0, Lcom/narvii/sharedfolder/SharedFolderHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 62
    .line 63
    const-string v1, "api"

    .line 64
    .line 65
    .line 66
    invoke-interface {p2, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 67
    move-result-object p2

    .line 68
    .line 69
    check-cast p2, Lcom/narvii/util/http/ApiService;

    .line 70
    .line 71
    new-instance v1, Lcom/narvii/sharedfolder/SharedFolderHelper$2;

    .line 72
    .line 73
    const-class v2, Lcom/narvii/sharedfolder/SharedFileResponse;

    .line 74
    .line 75
    .line 76
    invoke-direct {v1, p0, v2, v0, p3}, Lcom/narvii/sharedfolder/SharedFolderHelper$2;-><init>(Lcom/narvii/sharedfolder/SharedFolderHelper;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;Lcom/narvii/util/Callback;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p2, p1, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 80
    return-void
.end method
