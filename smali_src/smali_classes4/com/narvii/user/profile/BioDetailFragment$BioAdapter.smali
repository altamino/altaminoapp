.class Lcom/narvii/user/profile/BioDetailFragment$BioAdapter;
.super Lcom/narvii/detail/DetailAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/user/profile/BioDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BioAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/detail/DetailAdapter<",
        "Lcom/narvii/model/User;",
        "Lcom/narvii/model/api/UserResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private showBioOnly:Z

.field final synthetic this$0:Lcom/narvii/user/profile/BioDetailFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/user/profile/BioDetailFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/user/profile/BioDetailFragment$BioAdapter;->this$0:Lcom/narvii/user/profile/BioDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/detail/DetailAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    const/4 p1, 0x0

    .line 7
    .line 8
    iput-boolean p1, p0, Lcom/narvii/user/profile/BioDetailFragment$BioAdapter;->showBioOnly:Z

    .line 9
    .line 10
    sget-object p1, Lcom/narvii/util/logging/LoggingSource;->UserProfileView:Lcom/narvii/util/logging/LoggingSource;

    .line 11
    .line 12
    iput-object p1, p0, Lcom/narvii/detail/DetailAdapter;->loggingSource:Lcom/narvii/util/logging/LoggingSource;

    .line 13
    return-void
.end method

.method public static safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/list/NVAdapter;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected buildCells(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getResponse()Lcom/narvii/model/api/ObjectResponse;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    check-cast v0, Lcom/narvii/model/api/UserResponse;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/narvii/model/api/UserResponse;->user:Lcom/narvii/model/User;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/narvii/model/User;->isModerator()Z

    .line 12
    move-result v1

    .line 13
    .line 14
    iget-object v2, p0, Lcom/narvii/user/profile/BioDetailFragment$BioAdapter;->this$0:Lcom/narvii/user/profile/BioDetailFragment;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2}, Lcom/narvii/user/profile/BioDetailFragment;->isMe()Z

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    iget-object v1, v0, Lcom/narvii/model/User;->content:Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 25
    move-result v1

    .line 26
    .line 27
    if-nez v1, :cond_3

    .line 28
    .line 29
    new-instance v1, Ljava/util/ArrayList;

    .line 30
    .line 31
    .line 32
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .line 34
    iget-object v2, v0, Lcom/narvii/model/User;->content:Ljava/lang/String;

    .line 35
    .line 36
    iget-object v3, v0, Lcom/narvii/model/User;->mediaList:Ljava/util/List;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v2, v3, p1, v1}, Lcom/narvii/detail/DetailAdapter;->splitSegments(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 40
    goto :goto_0

    .line 41
    .line 42
    :cond_0
    const-string v1, "account"

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 46
    move-result-object v1

    .line 47
    .line 48
    check-cast v1, Lcom/narvii/account/AccountService;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 52
    move-result-object v1

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v1}, Lcom/narvii/model/User;->isProfileAccessibleByUser(Lcom/narvii/model/User;)Z

    .line 56
    move-result v1

    .line 57
    .line 58
    .line 59
    const v2, 0x7f120454

    .line 60
    .line 61
    if-eqz v1, :cond_2

    .line 62
    .line 63
    iget-object v1, v0, Lcom/narvii/model/User;->content:Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 67
    move-result v1

    .line 68
    .line 69
    if-eqz v1, :cond_1

    .line 70
    .line 71
    iget-object v1, p0, Lcom/narvii/user/profile/BioDetailFragment$BioAdapter;->this$0:Lcom/narvii/user/profile/BioDetailFragment;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 75
    move-result-object v1

    .line 76
    .line 77
    .line 78
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    goto :goto_0

    .line 80
    .line 81
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    .line 82
    .line 83
    .line 84
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .line 86
    iget-object v2, v0, Lcom/narvii/model/User;->content:Ljava/lang/String;

    .line 87
    .line 88
    iget-object v3, v0, Lcom/narvii/model/User;->mediaList:Ljava/util/List;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0, v2, v3, p1, v1}, Lcom/narvii/detail/DetailAdapter;->splitSegments(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 92
    goto :goto_0

    .line 93
    .line 94
    :cond_2
    iget-object v1, p0, Lcom/narvii/user/profile/BioDetailFragment$BioAdapter;->this$0:Lcom/narvii/user/profile/BioDetailFragment;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 98
    move-result-object v1

    .line 99
    .line 100
    .line 101
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    .line 103
    :cond_3
    :goto_0
    iget-boolean v1, p0, Lcom/narvii/user/profile/BioDetailFragment$BioAdapter;->showBioOnly:Z

    .line 104
    .line 105
    if-nez v1, :cond_5

    .line 106
    .line 107
    iget-object v0, v0, Lcom/narvii/model/User;->content:Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 111
    move-result v0

    .line 112
    .line 113
    if-nez v0, :cond_4

    .line 114
    .line 115
    sget-object v0, Lcom/narvii/detail/DetailAdapter;->DIVIDER:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 116
    .line 117
    .line 118
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    .line 120
    :cond_4
    sget-object v0, Lcom/narvii/detail/DetailAdapter;->COMMENT_HEADER:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 121
    .line 122
    .line 123
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    .line 125
    sget-object v0, Lcom/narvii/detail/DetailAdapter;->COMMENT_ADD:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 126
    .line 127
    .line 128
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    :cond_5
    return-void
.end method

.method public commentNew(Ljava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/detail/DetailAdapter;->commentNew(Ljava/lang/String;)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/user/profile/BioDetailFragment$BioAdapter;->this$0:Lcom/narvii/user/profile/BioDetailFragment;

    .line 6
    .line 7
    iget-object p1, p1, Lcom/narvii/user/profile/BioDetailFragment;->commentAdapter:Lcom/narvii/user/profile/BioDetailFragment$CommentAdapter;

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Lcom/narvii/comment/post/CommentPostActivity;->setStatusListener(Lcom/narvii/comment/post/CommentPostActivity$StatusListener;)V

    .line 11
    return-void
.end method

.method protected commentRefresh()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/user/profile/BioDetailFragment$BioAdapter;->this$0:Lcom/narvii/user/profile/BioDetailFragment;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/user/profile/BioDetailFragment;->commentAdapter:Lcom/narvii/user/profile/BioDetailFragment$CommentAdapter;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/comment/list/CommentListAdapter;->resetList()V

    .line 8
    return-void
.end method

.method protected commentSort()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/user/profile/BioDetailFragment$BioAdapter;->this$0:Lcom/narvii/user/profile/BioDetailFragment;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/user/profile/BioDetailFragment;->commentAdapter:Lcom/narvii/user/profile/BioDetailFragment$CommentAdapter;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/comment/list/CommentListAdapter;->sort()I

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public createMediaView(Lcom/narvii/model/Media;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/detail/DetailAdapter;->createMediaView(Lcom/narvii/model/Media;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 4
    move-result-object p2

    .line 5
    .line 6
    .line 7
    const v1, 0x7f0a06eb

    .line 8
    const/4 v3, 0x0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 12
    move-result-object v4

    .line 13
    const/4 v5, 0x0

    .line 14
    const/4 v6, 0x1

    .line 15
    move-object v0, p2

    .line 16
    move-object v2, p1

    .line 17
    .line 18
    .line 19
    invoke-static/range {v0 .. v6}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->markVideoCell(Landroid/view/View;ILcom/narvii/model/Media;Lcom/narvii/model/Media;Lcom/narvii/model/NVObject;IZ)V

    .line 20
    return-object p2
.end method

.method protected createRequest()Lcom/narvii/util/http/ApiRequest;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/user/profile/BioDetailFragment$BioAdapter;->this$0:Lcom/narvii/user/profile/BioDetailFragment;

    .line 3
    .line 4
    iget-boolean v0, v0, Lcom/narvii/detail/DetailFragment;->preview:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    const/4 v0, 0x0

    .line 8
    return-object v0

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    const-string v2, "/user-profile/"

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    iget-object v2, p0, Lcom/narvii/user/profile/BioDetailFragment$BioAdapter;->this$0:Lcom/narvii/user/profile/BioDetailFragment;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2}, Lcom/narvii/detail/DetailFragment;->id()Ljava/lang/String;

    .line 28
    move-result-object v2

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object v1

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 43
    move-result-object v0

    .line 44
    return-object v0
.end method

.method protected createUserListRequest(II)Lcom/narvii/util/http/ApiRequest;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    const-string v2, "/user-profile/"

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    iget-object v2, p0, Lcom/narvii/user/profile/BioDetailFragment$BioAdapter;->this$0:Lcom/narvii/user/profile/BioDetailFragment;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2}, Lcom/narvii/detail/DetailFragment;->id()Ljava/lang/String;

    .line 20
    move-result-object v2

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v2, "/member"

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object v1

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    const-string v1, "start"

    .line 39
    .line 40
    .line 41
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    move-result-object p1

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 46
    move-result-object p1

    .line 47
    .line 48
    const-string v0, "size"

    .line 49
    .line 50
    .line 51
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    move-result-object p2

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, v0, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 56
    move-result-object p1

    .line 57
    .line 58
    const-string p2, "cv"

    .line 59
    .line 60
    const-string v0, "1.2"

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, p2, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 64
    move-result-object p1

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 68
    move-result-object p1

    .line 69
    return-object p1
.end method

.method public galleryBioMedias(Lcom/narvii/model/Media;)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/user/profile/BioDetailFragment$BioAdapter;->this$0:Lcom/narvii/user/profile/BioDetailFragment;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/user/profile/BioDetailFragment;->bioMedias:Ljava/util/ArrayList;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 10
    move-result p1

    .line 11
    .line 12
    new-instance v0, Landroid/content/Intent;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    const-class v2, Lcom/narvii/media/MediaGalleryActivity;

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    .line 28
    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    const-string v2, "parent"

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    .line 36
    const-string v1, "parentClass"

    .line 37
    .line 38
    const-class v2, Lcom/narvii/model/User;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 42
    .line 43
    iget-object v1, p0, Lcom/narvii/user/profile/BioDetailFragment$BioAdapter;->this$0:Lcom/narvii/user/profile/BioDetailFragment;

    .line 44
    .line 45
    iget-object v1, v1, Lcom/narvii/user/profile/BioDetailFragment;->bioMedias:Ljava/util/ArrayList;

    .line 46
    .line 47
    .line 48
    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 49
    move-result-object v1

    .line 50
    .line 51
    const-string v2, "list"

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    .line 56
    if-lez p1, :cond_0

    .line 57
    .line 58
    const-string v1, "position"

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 62
    .line 63
    :cond_0
    iget-object p1, p0, Lcom/narvii/user/profile/BioDetailFragment$BioAdapter;->this$0:Lcom/narvii/user/profile/BioDetailFragment;

    .line 64
    .line 65
    iget-boolean p1, p1, Lcom/narvii/detail/DetailFragment;->preview:Z

    .line 66
    .line 67
    const-string v1, "preview"

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 71
    .line 72
    .line 73
    invoke-static {p0, v0}, Lcom/narvii/user/profile/BioDetailFragment$BioAdapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    .line 74
    :cond_1
    return-void
.end method

.method public objectType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/narvii/model/User;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/narvii/model/User;

    return-object v0
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .line 1
    .line 2
    instance-of v0, p3, Lcom/narvii/model/Media;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    check-cast p3, Lcom/narvii/model/Media;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p3}, Lcom/narvii/model/Media;->isVideo()Z

    .line 10
    move-result p1

    .line 11
    const/4 p2, 0x1

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    const-class p4, Lcom/narvii/optionmenu/OptionMenuFragment;

    .line 20
    .line 21
    .line 22
    invoke-static {p3, p1, p4}, Lcom/narvii/video/NVFullScreenVideoActivity;->intent(Lcom/narvii/model/Media;Lcom/narvii/model/NVObject;Ljava/lang/Class;)Landroid/content/Intent;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    .line 26
    invoke-static {p0, p1}, Lcom/narvii/user/profile/BioDetailFragment$BioAdapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    .line 27
    return p2

    .line 28
    .line 29
    .line 30
    :cond_0
    invoke-virtual {p0, p3}, Lcom/narvii/user/profile/BioDetailFragment$BioAdapter;->galleryBioMedias(Lcom/narvii/model/Media;)V

    .line 31
    return p2

    .line 32
    .line 33
    .line 34
    :cond_1
    invoke-super/range {p0 .. p5}, Lcom/narvii/detail/DetailAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 35
    move-result p1

    .line 36
    return p1
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 3
    .line 4
    instance-of v0, v0, Lcom/narvii/model/User;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Lcom/narvii/model/User;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-object v1, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    const-string/jumbo v2, "update"

    .line 20
    .line 21
    if-eq v1, v2, :cond_0

    .line 22
    .line 23
    const-string v2, "edit"

    .line 24
    .line 25
    if-ne v1, v2, :cond_1

    .line 26
    .line 27
    :cond_0
    iget-object v0, v0, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 28
    .line 29
    iget-object v1, p1, Lcom/narvii/notification/Notification;->id:Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 33
    move-result v0

    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getResponse()Lcom/narvii/model/api/ObjectResponse;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    check-cast v0, Lcom/narvii/model/api/UserResponse;

    .line 42
    .line 43
    iget-object v1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v1, Lcom/narvii/model/User;

    .line 46
    .line 47
    iput-object v1, v0, Lcom/narvii/model/api/UserResponse;->user:Lcom/narvii/model/User;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, v0}, Lcom/narvii/user/profile/BioDetailFragment$BioAdapter;->setResponse(Lcom/narvii/model/api/UserResponse;)V

    .line 51
    .line 52
    iget-object v0, p0, Lcom/narvii/user/profile/BioDetailFragment$BioAdapter;->this$0:Lcom/narvii/user/profile/BioDetailFragment;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/narvii/user/profile/BioDetailFragment;->isMe()Z

    .line 56
    move-result v0

    .line 57
    .line 58
    if-eqz v0, :cond_1

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->sendRequest()V

    .line 62
    .line 63
    .line 64
    :cond_1
    invoke-super {p0, p1}, Lcom/narvii/detail/DetailAdapter;->onNotification(Lcom/narvii/notification/Notification;)V

    .line 65
    return-void
.end method

.method protected bridge synthetic onObjectResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ObjectResponse;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/model/api/UserResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/user/profile/BioDetailFragment$BioAdapter;->onObjectResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/UserResponse;)V

    return-void
.end method

.method protected onObjectResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/UserResponse;)V
    .locals 3

    iget-object v0, p0, Lcom/narvii/user/profile/BioDetailFragment$BioAdapter;->this$0:Lcom/narvii/user/profile/BioDetailFragment;

    .line 2
    iget-boolean v0, v0, Lcom/narvii/detail/DetailFragment;->preview:Z

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/User;

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p2, Lcom/narvii/model/api/UserResponse;->user:Lcom/narvii/model/User;

    iget-object v2, v0, Lcom/narvii/model/User;->mediaList:Ljava/util/List;

    iput-object v2, v1, Lcom/narvii/model/User;->mediaList:Ljava/util/List;

    .line 5
    iget-object v2, v0, Lcom/narvii/model/User;->nickname:Ljava/lang/String;

    iput-object v2, v1, Lcom/narvii/model/User;->nickname:Ljava/lang/String;

    .line 6
    iget-object v2, v0, Lcom/narvii/model/User;->content:Ljava/lang/String;

    iput-object v2, v1, Lcom/narvii/model/User;->content:Ljava/lang/String;

    .line 7
    iget-object v2, v0, Lcom/narvii/model/User;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    iput-object v2, v1, Lcom/narvii/model/User;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 8
    iget-object v2, v0, Lcom/narvii/model/User;->address:Ljava/lang/String;

    iput-object v2, v1, Lcom/narvii/model/User;->address:Ljava/lang/String;

    .line 9
    iget v2, v0, Lcom/narvii/model/User;->latitude:I

    iput v2, v1, Lcom/narvii/model/User;->latitude:I

    .line 10
    iget v2, v0, Lcom/narvii/model/User;->longitude:I

    iput v2, v1, Lcom/narvii/model/User;->longitude:I

    .line 11
    iget-object v2, v0, Lcom/narvii/model/User;->icon:Ljava/lang/String;

    iput-object v2, v1, Lcom/narvii/model/User;->icon:Ljava/lang/String;

    .line 12
    iget-object v0, v0, Lcom/narvii/model/User;->mediaList:Ljava/util/List;

    iput-object v0, v1, Lcom/narvii/model/User;->mediaList:Ljava/util/List;

    .line 13
    invoke-super {p0, p1, p2}, Lcom/narvii/detail/DetailAdapter;->onObjectResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ObjectResponse;)V

    :cond_0
    return-void

    .line 14
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/narvii/detail/DetailAdapter;->onObjectResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ObjectResponse;)V

    return-void
.end method

.method protected onUserGridClick(Landroid/view/View;Ljava/lang/String;)Z
    .locals 1

    .line 1
    .line 2
    const-string p2, "Followers"

    .line 3
    .line 4
    .line 5
    invoke-super {p0, p1, p2}, Lcom/narvii/detail/DetailAdapter;->onUserGridClick(Landroid/view/View;Ljava/lang/String;)Z

    .line 6
    move-result p1

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    const-class p1, Lcom/narvii/user/list/FollowersListFragment;

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    iget-object p2, p0, Lcom/narvii/user/profile/BioDetailFragment$BioAdapter;->this$0:Lcom/narvii/user/profile/BioDetailFragment;

    .line 17
    .line 18
    const-string v0, "id"

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    move-result-object p2

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 26
    .line 27
    .line 28
    invoke-static {p0, p1}, Lcom/narvii/user/profile/BioDetailFragment$BioAdapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    .line 29
    :cond_0
    const/4 p1, 0x1

    .line 30
    return p1
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/narvii/model/api/UserResponse;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/narvii/model/api/UserResponse;

    return-object v0
.end method

.method protected setCommentSort(I)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/user/profile/BioDetailFragment$BioAdapter;->this$0:Lcom/narvii/user/profile/BioDetailFragment;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/user/profile/BioDetailFragment;->commentAdapter:Lcom/narvii/user/profile/BioDetailFragment$CommentAdapter;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/narvii/comment/list/CommentListAdapter;->setSort(I)V

    .line 8
    return-void
.end method

.method public bridge synthetic setObject(Lcom/narvii/model/NVObject;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/model/User;

    invoke-virtual {p0, p1}, Lcom/narvii/user/profile/BioDetailFragment$BioAdapter;->setObject(Lcom/narvii/model/User;)V

    return-void
.end method

.method public setObject(Lcom/narvii/model/User;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/narvii/model/api/UserResponse;

    invoke-direct {v0}, Lcom/narvii/model/api/UserResponse;-><init>()V

    iput-object p1, v0, Lcom/narvii/model/api/UserResponse;->user:Lcom/narvii/model/User;

    .line 3
    invoke-virtual {p0, v0}, Lcom/narvii/user/profile/BioDetailFragment$BioAdapter;->setResponse(Lcom/narvii/model/api/UserResponse;)V

    return-void
.end method

.method public bridge synthetic setResponse(Lcom/narvii/model/api/ObjectResponse;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/model/api/UserResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/user/profile/BioDetailFragment$BioAdapter;->setResponse(Lcom/narvii/model/api/UserResponse;)V

    return-void
.end method

.method public setResponse(Lcom/narvii/model/api/UserResponse;)V
    .locals 2

    .line 2
    invoke-super {p0, p1}, Lcom/narvii/detail/DetailAdapter;->setResponse(Lcom/narvii/model/api/ObjectResponse;)V

    .line 3
    iget-object v0, p1, Lcom/narvii/model/api/UserResponse;->user:Lcom/narvii/model/User;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/narvii/user/profile/BioDetailFragment$BioAdapter;->this$0:Lcom/narvii/user/profile/BioDetailFragment;

    .line 4
    invoke-virtual {v0}, Lcom/narvii/model/User;->getBioMedias()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v1, Lcom/narvii/user/profile/BioDetailFragment;->bioMedias:Ljava/util/ArrayList;

    .line 5
    iget-object v0, p1, Lcom/narvii/model/api/UserResponse;->user:Lcom/narvii/model/User;

    invoke-virtual {v0}, Lcom/narvii/model/User;->nickname()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/narvii/user/profile/BioDetailFragment$BioAdapter;->this$0:Lcom/narvii/user/profile/BioDetailFragment;

    .line 7
    invoke-virtual {v1, v0}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/narvii/user/profile/BioDetailFragment$BioAdapter;->this$0:Lcom/narvii/user/profile/BioDetailFragment;

    .line 8
    iget-object v1, p1, Lcom/narvii/model/api/UserResponse;->user:Lcom/narvii/model/User;

    invoke-virtual {v1}, Lcom/narvii/model/User;->hasBackground()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/narvii/user/profile/BioDetailFragment;->access$402(Lcom/narvii/user/profile/BioDetailFragment;Z)Z

    iget-object v0, p0, Lcom/narvii/user/profile/BioDetailFragment$BioAdapter;->this$0:Lcom/narvii/user/profile/BioDetailFragment;

    .line 9
    iget-object v1, p1, Lcom/narvii/model/api/UserResponse;->user:Lcom/narvii/model/User;

    invoke-virtual {v1}, Lcom/narvii/model/User;->getBackgroundMedia()Lcom/narvii/model/Media;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v1, p1, Lcom/narvii/model/api/UserResponse;->user:Lcom/narvii/model/User;

    invoke-virtual {v1}, Lcom/narvii/model/User;->getBackgroundColor()I

    move-result v1

    invoke-static {v1}, Lcom/narvii/util/PaletteUtils;->isDarkColor(I)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-static {v0, v1}, Lcom/narvii/user/profile/BioDetailFragment;->access$502(Lcom/narvii/user/profile/BioDetailFragment;Z)Z

    iget-object v0, p0, Lcom/narvii/user/profile/BioDetailFragment$BioAdapter;->this$0:Lcom/narvii/user/profile/BioDetailFragment;

    .line 10
    iget-object p1, p1, Lcom/narvii/model/api/UserResponse;->user:Lcom/narvii/model/User;

    invoke-virtual {p1}, Lcom/narvii/model/User;->getBackgroundColor()I

    move-result p1

    invoke-static {v0, p1}, Lcom/narvii/user/profile/BioDetailFragment;->access$602(Lcom/narvii/user/profile/BioDetailFragment;I)I

    iget-object p1, p0, Lcom/narvii/user/profile/BioDetailFragment$BioAdapter;->this$0:Lcom/narvii/user/profile/BioDetailFragment;

    .line 11
    invoke-static {p1}, Lcom/narvii/user/profile/BioDetailFragment;->w(Lcom/narvii/user/profile/BioDetailFragment;)V

    iget-object p1, p0, Lcom/narvii/user/profile/BioDetailFragment$BioAdapter;->this$0:Lcom/narvii/user/profile/BioDetailFragment;

    .line 12
    invoke-static {p1}, Lcom/narvii/user/profile/BioDetailFragment;->u(Lcom/narvii/user/profile/BioDetailFragment;)Lcom/narvii/user/profile/BioDetailFragment$TopAdapter;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/narvii/user/profile/BioDetailFragment$BioAdapter;->this$0:Lcom/narvii/user/profile/BioDetailFragment;

    .line 13
    invoke-static {p1}, Lcom/narvii/user/profile/BioDetailFragment;->u(Lcom/narvii/user/profile/BioDetailFragment;)Lcom/narvii/user/profile/BioDetailFragment$TopAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_3
    return-void
.end method

.method public setShowBioOnly(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/user/profile/BioDetailFragment$BioAdapter;->showBioOnly:Z

    return-void
.end method

.method public showShareMediaBar()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/user/profile/BioDetailFragment$BioAdapter;->this$0:Lcom/narvii/user/profile/BioDetailFragment;

    .line 3
    .line 4
    iget-boolean v0, v0, Lcom/narvii/detail/DetailFragment;->preview:Z

    .line 5
    .line 6
    xor-int/lit8 v0, v0, 0x1

    .line 7
    return v0
.end method

.method protected showUserCommentSetting()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/user/profile/BioDetailFragment$BioAdapter;->this$0:Lcom/narvii/user/profile/BioDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/user/profile/BioDetailFragment;->isMe()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method
