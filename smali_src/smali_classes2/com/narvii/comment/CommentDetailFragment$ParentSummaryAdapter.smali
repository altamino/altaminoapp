.class Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/comment/CommentDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ParentSummaryAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/comment/CommentDetailFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/comment/CommentDetailFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    return-void
.end method

.method static bridge synthetic f(Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;->onParentRequestFailed(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    return-void
.end method

.method static bridge synthetic g(Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ObjectResponse;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;->onParentRequestFinished(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ObjectResponse;)V

    return-void
.end method

.method private getApiResponseListener(I)Lcom/narvii/util/http/ApiResponseListener;
    .locals 1

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    new-instance p1, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter$3;

    .line 5
    .line 6
    const-class v0, Lcom/narvii/model/api/UserResponse;

    .line 7
    .line 8
    .line 9
    invoke-direct {p1, p0, v0}, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter$3;-><init>(Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;Ljava/lang/Class;)V

    .line 10
    return-object p1

    .line 11
    :cond_0
    const/4 v0, 0x1

    .line 12
    .line 13
    if-eq p1, v0, :cond_4

    .line 14
    .line 15
    const/16 v0, 0x83

    .line 16
    .line 17
    if-ne p1, v0, :cond_1

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const/4 v0, 0x2

    .line 20
    .line 21
    if-ne p1, v0, :cond_2

    .line 22
    .line 23
    new-instance p1, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter$5;

    .line 24
    .line 25
    const-class v0, Lcom/narvii/model/api/ItemResponse;

    .line 26
    .line 27
    .line 28
    invoke-direct {p1, p0, v0}, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter$5;-><init>(Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;Ljava/lang/Class;)V

    .line 29
    return-object p1

    .line 30
    .line 31
    :cond_2
    const/16 v0, 0x6d

    .line 32
    .line 33
    if-ne p1, v0, :cond_3

    .line 34
    .line 35
    new-instance p1, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter$6;

    .line 36
    .line 37
    const-class v0, Lcom/narvii/sharedfolder/SharedFileResponse;

    .line 38
    .line 39
    .line 40
    invoke-direct {p1, p0, v0}, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter$6;-><init>(Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;Ljava/lang/Class;)V

    .line 41
    return-object p1

    .line 42
    :cond_3
    const/4 p1, 0x0

    .line 43
    return-object p1

    .line 44
    .line 45
    :cond_4
    :goto_0
    new-instance p1, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter$4;

    .line 46
    .line 47
    const-class v0, Lcom/narvii/model/api/BlogResponse;

    .line 48
    .line 49
    .line 50
    invoke-direct {p1, p0, v0}, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter$4;-><init>(Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;Ljava/lang/Class;)V

    .line 51
    return-object p1
.end method

.method static bridge synthetic h(Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;->parentObjectId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic i(Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;->parentObjectType()I

    move-result p0

    return p0
.end method

.method private onParentRequestFailed(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/http/ApiRequest;",
            "I",
            "Ljava/util/List<",
            "Lcom/narvii/util/http/NameValuePair;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/narvii/model/api/ApiResponse;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;->createUnVisiableObject()Lcom/narvii/model/NVObject;

    .line 6
    move-result-object p2

    .line 7
    .line 8
    .line 9
    invoke-static {p1, p2}, Lcom/narvii/comment/CommentDetailFragment;->I(Lcom/narvii/comment/CommentDetailFragment;Lcom/narvii/model/NVObject;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 13
    return-void
.end method

.method private onParentRequestFinished(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ObjectResponse;)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p2}, Lcom/narvii/model/api/ObjectResponse;->object()Lcom/narvii/model/NVObject;

    .line 6
    move-result-object p2

    .line 7
    .line 8
    .line 9
    invoke-static {p1, p2}, Lcom/narvii/comment/CommentDetailFragment;->I(Lcom/narvii/comment/CommentDetailFragment;Lcom/narvii/model/NVObject;)V

    .line 10
    .line 11
    new-instance p1, Lcom/narvii/util/FilterHelper;

    .line 12
    .line 13
    .line 14
    invoke-direct {p1, p0}, Lcom/narvii/util/FilterHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/narvii/util/FilterHelper;->keepForLeaderAndCurator()Lcom/narvii/util/FilterHelper;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    iget-object p2, p0, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    .line 21
    .line 22
    .line 23
    invoke-static {p2}, Lcom/narvii/comment/CommentDetailFragment;->z(Lcom/narvii/comment/CommentDetailFragment;)Lcom/narvii/model/NVObject;

    .line 24
    move-result-object p2

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, p2}, Lcom/narvii/util/FilterHelper;->isAccessible(Lcom/narvii/model/NVObject;)Z

    .line 28
    move-result p1

    .line 29
    .line 30
    if-nez p1, :cond_0

    .line 31
    .line 32
    iget-object p1, p0, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;->createUnVisiableObject()Lcom/narvii/model/NVObject;

    .line 36
    move-result-object p2

    .line 37
    .line 38
    .line 39
    invoke-static {p1, p2}, Lcom/narvii/comment/CommentDetailFragment;->I(Lcom/narvii/comment/CommentDetailFragment;Lcom/narvii/model/NVObject;)V

    .line 40
    .line 41
    :cond_0
    iget-object p1, p0, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    .line 42
    .line 43
    .line 44
    invoke-static {p1}, Lcom/narvii/comment/CommentDetailFragment;->z(Lcom/narvii/comment/CommentDetailFragment;)Lcom/narvii/model/NVObject;

    .line 45
    move-result-object p1

    .line 46
    .line 47
    instance-of p1, p1, Lcom/narvii/model/Blog;

    .line 48
    .line 49
    if-eqz p1, :cond_1

    .line 50
    .line 51
    iget-object p1, p0, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    .line 52
    .line 53
    .line 54
    invoke-static {p1}, Lcom/narvii/comment/CommentDetailFragment;->z(Lcom/narvii/comment/CommentDetailFragment;)Lcom/narvii/model/NVObject;

    .line 55
    move-result-object p1

    .line 56
    .line 57
    check-cast p1, Lcom/narvii/model/Blog;

    .line 58
    .line 59
    iget p1, p1, Lcom/narvii/model/Blog;->type:I

    .line 60
    const/4 p2, 0x3

    .line 61
    .line 62
    if-ne p1, p2, :cond_1

    .line 63
    .line 64
    iget-object p1, p0, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    .line 65
    const/4 p2, 0x1

    .line 66
    .line 67
    .line 68
    invoke-static {p1, p2}, Lcom/narvii/comment/CommentDetailFragment;->G(Lcom/narvii/comment/CommentDetailFragment;Z)V

    .line 69
    .line 70
    iget-object p1, p0, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    .line 71
    .line 72
    iget-object p1, p1, Lcom/narvii/comment/CommentDetailFragment;->curCommentAdapter:Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;

    .line 73
    .line 74
    if-eqz p1, :cond_1

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1}, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->notifyDataSetChanged()V

    .line 78
    .line 79
    .line 80
    :cond_1
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 81
    return-void
.end method

.method private parentObjectId()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/comment/CommentDetailFragment;->y(Lcom/narvii/comment/CommentDetailFragment;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method private parentObjectType()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/comment/CommentDetailFragment;->B(Lcom/narvii/comment/CommentDetailFragment;)I

    .line 6
    move-result v0

    .line 7
    return v0
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

.method private sendParentObjectRequest()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;->parentObjectType()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    return-void

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-direct {p0}, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;->parentObjectType()I

    .line 12
    move-result v0

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lcom/narvii/model/NVObject;->apiTypeName(I)Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    new-instance v1, Lcom/narvii/util/http/ApiRequest$Builder;

    .line 19
    .line 20
    .line 21
    invoke-direct {v1}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    .line 22
    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    const-string v3, "/"

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-direct {p0}, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;->parentObjectId()Ljava/lang/String;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object v0

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 52
    move-result-object v0

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 56
    move-result-object v0

    .line 57
    .line 58
    const-string v1, "api"

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, v1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 62
    move-result-object v1

    .line 63
    .line 64
    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 65
    .line 66
    .line 67
    invoke-direct {p0}, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;->parentObjectType()I

    .line 68
    move-result v2

    .line 69
    .line 70
    .line 71
    invoke-direct {p0, v2}, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;->getApiResponseListener(I)Lcom/narvii/util/http/ApiResponseListener;

    .line 72
    move-result-object v2

    .line 73
    .line 74
    if-eqz v2, :cond_1

    .line 75
    .line 76
    .line 77
    invoke-direct {p0}, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;->parentObjectType()I

    .line 78
    move-result v2

    .line 79
    .line 80
    .line 81
    invoke-direct {p0, v2}, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;->getApiResponseListener(I)Lcom/narvii/util/http/ApiResponseListener;

    .line 82
    move-result-object v2

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 86
    :cond_1
    return-void
.end method


# virtual methods
.method public createUnVisiableObject()Lcom/narvii/model/NVObject;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;->parentObjectType()I

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter$1;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, p0}, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter$1;-><init>(Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;)V

    .line 12
    goto :goto_1

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-direct {p0}, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;->parentObjectType()I

    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x1

    .line 18
    .line 19
    if-eq v0, v1, :cond_2

    .line 20
    .line 21
    .line 22
    invoke-direct {p0}, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;->parentObjectType()I

    .line 23
    move-result v0

    .line 24
    const/4 v1, 0x2

    .line 25
    .line 26
    if-eq v0, v1, :cond_2

    .line 27
    .line 28
    iget-object v0, p0, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    .line 29
    .line 30
    .line 31
    invoke-static {v0}, Lcom/narvii/comment/CommentDetailFragment;->z(Lcom/narvii/comment/CommentDetailFragment;)Lcom/narvii/model/NVObject;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->objectType()I

    .line 36
    move-result v0

    .line 37
    .line 38
    const/16 v1, 0x83

    .line 39
    .line 40
    if-ne v0, v1, :cond_1

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    const/4 v0, 0x0

    .line 43
    goto :goto_1

    .line 44
    .line 45
    :cond_2
    :goto_0
    new-instance v0, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter$2;

    .line 46
    .line 47
    .line 48
    invoke-direct {v0, p0}, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter$2;-><init>(Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;)V

    .line 49
    .line 50
    new-instance v1, Lcom/narvii/model/User;

    .line 51
    .line 52
    .line 53
    invoke-direct {v1}, Lcom/narvii/model/User;-><init>()V

    .line 54
    .line 55
    iput-object v1, v0, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    .line 56
    :goto_1
    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/comment/CommentDetailFragment;->K(Lcom/narvii/comment/CommentDetailFragment;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/narvii/comment/CommentDetailFragment;->z(Lcom/narvii/comment/CommentDetailFragment;)Lcom/narvii/model/NVObject;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/comment/CommentDetailFragment;->z(Lcom/narvii/comment/CommentDetailFragment;)Lcom/narvii/model/NVObject;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    const/4 p1, -0x1

    .line 10
    return p1

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/BaseAdapter;->getItemViewType(I)I

    .line 14
    move-result p1

    .line 15
    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/comment/CommentDetailFragment;->z(Lcom/narvii/comment/CommentDetailFragment;)Lcom/narvii/model/NVObject;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->objectType()I

    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x1

    .line 12
    .line 13
    .line 14
    const v2, 0x7f07015d

    .line 15
    const/4 v3, 0x2

    .line 16
    const/4 v4, 0x0

    .line 17
    .line 18
    if-eq v0, v1, :cond_6

    .line 19
    .line 20
    iget-object v0, p0, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Lcom/narvii/comment/CommentDetailFragment;->z(Lcom/narvii/comment/CommentDetailFragment;)Lcom/narvii/model/NVObject;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->objectType()I

    .line 28
    move-result v0

    .line 29
    .line 30
    if-eq v0, v3, :cond_6

    .line 31
    .line 32
    iget-object v0, p0, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    .line 33
    .line 34
    .line 35
    invoke-static {v0}, Lcom/narvii/comment/CommentDetailFragment;->z(Lcom/narvii/comment/CommentDetailFragment;)Lcom/narvii/model/NVObject;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->objectType()I

    .line 40
    move-result v0

    .line 41
    .line 42
    const/16 v1, 0x83

    .line 43
    .line 44
    if-ne v0, v1, :cond_0

    .line 45
    .line 46
    goto/16 :goto_0

    .line 47
    .line 48
    :cond_0
    iget-object v0, p0, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    .line 49
    .line 50
    .line 51
    invoke-static {v0}, Lcom/narvii/comment/CommentDetailFragment;->z(Lcom/narvii/comment/CommentDetailFragment;)Lcom/narvii/model/NVObject;

    .line 52
    move-result-object v0

    .line 53
    .line 54
    instance-of v0, v0, Lcom/narvii/model/User;

    .line 55
    .line 56
    if-eqz v0, :cond_4

    .line 57
    .line 58
    .line 59
    const p1, 0x7f0d048a

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 63
    move-result-object p1

    .line 64
    .line 65
    .line 66
    const p2, 0x7f0a0f36

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 70
    move-result-object p2

    .line 71
    .line 72
    if-eqz p2, :cond_1

    .line 73
    .line 74
    check-cast p2, Lcom/narvii/widget/UserAvatarLayout;

    .line 75
    .line 76
    iget-object p3, p0, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    .line 77
    .line 78
    .line 79
    invoke-static {p3}, Lcom/narvii/comment/CommentDetailFragment;->z(Lcom/narvii/comment/CommentDetailFragment;)Lcom/narvii/model/NVObject;

    .line 80
    move-result-object p3

    .line 81
    .line 82
    check-cast p3, Lcom/narvii/model/User;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p2, p3}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    .line 86
    .line 87
    .line 88
    :cond_1
    const p2, 0x7f0a09d3

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 92
    move-result-object p2

    .line 93
    .line 94
    if-eqz p2, :cond_2

    .line 95
    .line 96
    check-cast p2, Lcom/narvii/widget/NicknameView;

    .line 97
    .line 98
    iget-object p3, p0, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    .line 99
    .line 100
    .line 101
    invoke-static {p3}, Lcom/narvii/comment/CommentDetailFragment;->z(Lcom/narvii/comment/CommentDetailFragment;)Lcom/narvii/model/NVObject;

    .line 102
    move-result-object p3

    .line 103
    .line 104
    check-cast p3, Lcom/narvii/model/User;

    .line 105
    .line 106
    .line 107
    invoke-virtual {p2, p3}, Lcom/narvii/widget/NicknameView;->setUser(Lcom/narvii/model/User;)V

    .line 108
    .line 109
    .line 110
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 111
    move-result-object p2

    .line 112
    .line 113
    .line 114
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 115
    move-result-object p2

    .line 116
    .line 117
    .line 118
    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 119
    move-result p2

    .line 120
    .line 121
    iget-object p3, p0, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    .line 122
    .line 123
    .line 124
    invoke-virtual {p3}, Lcom/narvii/comment/CommentDetailFragment;->notAvailable()Z

    .line 125
    move-result p3

    .line 126
    .line 127
    if-eqz p3, :cond_3

    .line 128
    move p2, v4

    .line 129
    .line 130
    .line 131
    :cond_3
    invoke-virtual {p1, v4, v4, v4, p2}, Landroid/view/View;->setPadding(IIII)V

    .line 132
    .line 133
    goto/16 :goto_2

    .line 134
    .line 135
    :cond_4
    iget-object v0, p0, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    .line 136
    .line 137
    .line 138
    invoke-static {v0}, Lcom/narvii/comment/CommentDetailFragment;->z(Lcom/narvii/comment/CommentDetailFragment;)Lcom/narvii/model/NVObject;

    .line 139
    move-result-object v0

    .line 140
    .line 141
    instance-of v0, v0, Lcom/narvii/model/SharedFile;

    .line 142
    .line 143
    if-eqz v0, :cond_5

    .line 144
    .line 145
    .line 146
    const p1, 0x7f0d0489

    .line 147
    .line 148
    .line 149
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 150
    move-result-object p1

    .line 151
    .line 152
    .line 153
    const p2, 0x7f0a0ae3

    .line 154
    .line 155
    .line 156
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 157
    move-result-object p2

    .line 158
    .line 159
    if-eqz p2, :cond_a

    .line 160
    .line 161
    check-cast p2, Lcom/narvii/widget/NVImageView;

    .line 162
    .line 163
    iget-object p3, p0, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    .line 164
    .line 165
    .line 166
    invoke-static {p3}, Lcom/narvii/comment/CommentDetailFragment;->z(Lcom/narvii/comment/CommentDetailFragment;)Lcom/narvii/model/NVObject;

    .line 167
    move-result-object p3

    .line 168
    .line 169
    check-cast p3, Lcom/narvii/model/SharedFile;

    .line 170
    .line 171
    iget-object p3, p3, Lcom/narvii/model/SharedFile;->media:Lcom/narvii/model/Media;

    .line 172
    .line 173
    .line 174
    invoke-virtual {p2, p3}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 175
    .line 176
    goto/16 :goto_2

    .line 177
    .line 178
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 182
    .line 183
    .line 184
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 185
    move-result-object v1

    .line 186
    .line 187
    .line 188
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 189
    move-result-object v1

    .line 190
    .line 191
    .line 192
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    const-string v1, ".getItemView("

    .line 195
    .line 196
    .line 197
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    const-string p1, ") returns null for object "

    .line 203
    .line 204
    .line 205
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 209
    move-result-object p1

    .line 210
    .line 211
    .line 212
    invoke-static {p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    const p1, 0x1090003

    .line 216
    .line 217
    .line 218
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 219
    move-result-object p1

    .line 220
    .line 221
    sget-boolean p2, Lcom/narvii/app/NVApplication;->DEBUG:Z

    .line 222
    .line 223
    if-eqz p2, :cond_a

    .line 224
    .line 225
    .line 226
    const p2, 0x1020014

    .line 227
    .line 228
    .line 229
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 230
    move-result-object p2

    .line 231
    .line 232
    check-cast p2, Landroid/widget/TextView;

    .line 233
    .line 234
    const-string p3, "getItemView() returns null"

    .line 235
    .line 236
    .line 237
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    goto :goto_2

    .line 239
    .line 240
    :cond_6
    :goto_0
    iget-object p1, p0, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    .line 241
    .line 242
    .line 243
    invoke-static {p1}, Lcom/narvii/comment/CommentDetailFragment;->z(Lcom/narvii/comment/CommentDetailFragment;)Lcom/narvii/model/NVObject;

    .line 244
    move-result-object p1

    .line 245
    .line 246
    .line 247
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->objectType()I

    .line 248
    move-result p1

    .line 249
    .line 250
    if-ne p1, v3, :cond_7

    .line 251
    .line 252
    .line 253
    const p1, 0x7f0d0487

    .line 254
    goto :goto_1

    .line 255
    .line 256
    .line 257
    :cond_7
    const p1, 0x7f0d0485

    .line 258
    .line 259
    .line 260
    :goto_1
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 261
    move-result-object p1

    .line 262
    .line 263
    .line 264
    const p2, 0x7f0a0585

    .line 265
    .line 266
    .line 267
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 268
    move-result-object p2

    .line 269
    .line 270
    instance-of p3, p2, Lcom/narvii/feed/FeedSummaryItem;

    .line 271
    .line 272
    if-eqz p3, :cond_8

    .line 273
    .line 274
    check-cast p2, Lcom/narvii/feed/FeedSummaryItem;

    .line 275
    .line 276
    iget-object p3, p0, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    .line 277
    .line 278
    .line 279
    invoke-static {p3}, Lcom/narvii/comment/CommentDetailFragment;->z(Lcom/narvii/comment/CommentDetailFragment;)Lcom/narvii/model/NVObject;

    .line 280
    move-result-object p3

    .line 281
    .line 282
    check-cast p3, Lcom/narvii/model/Feed;

    .line 283
    .line 284
    .line 285
    invoke-virtual {p2, p3}, Lcom/narvii/feed/FeedSummaryItem;->setFeed(Lcom/narvii/model/Feed;)V

    .line 286
    .line 287
    .line 288
    :cond_8
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 289
    move-result-object p2

    .line 290
    .line 291
    .line 292
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 293
    move-result-object p2

    .line 294
    .line 295
    .line 296
    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 297
    move-result p2

    .line 298
    .line 299
    iget-object p3, p0, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    .line 300
    .line 301
    .line 302
    invoke-virtual {p3}, Lcom/narvii/comment/CommentDetailFragment;->notAvailable()Z

    .line 303
    move-result p3

    .line 304
    .line 305
    if-eqz p3, :cond_9

    .line 306
    move p2, v4

    .line 307
    .line 308
    .line 309
    :cond_9
    invoke-virtual {p1, v4, v4, v4, p2}, Landroid/view/View;->setPadding(IIII)V

    .line 310
    :cond_a
    :goto_2
    return-object p1
.end method

.method public isEnabled(I)Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/comment/CommentDetailFragment;->z(Lcom/narvii/comment/CommentDetailFragment;)Lcom/narvii/model/NVObject;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->status()I

    .line 10
    move-result v0

    .line 11
    const/4 v1, -0x1

    .line 12
    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    const/4 p1, 0x0

    .line 15
    return p1

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/BaseAdapter;->isEnabled(I)Z

    .line 19
    move-result p1

    .line 20
    return p1
.end method

.method public onAttach()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVAdapter;->onAttach()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;->sendParentObjectRequest()V

    .line 7
    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/comment/CommentDetailFragment;->z(Lcom/narvii/comment/CommentDetailFragment;)Lcom/narvii/model/NVObject;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    instance-of v0, v0, Lcom/narvii/model/Feed;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lcom/narvii/comment/CommentDetailFragment;->z(Lcom/narvii/comment/CommentDetailFragment;)Lcom/narvii/model/NVObject;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    check-cast v0, Lcom/narvii/model/Feed;

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Lcom/narvii/detail/FeedDetailFragment;->intent(Lcom/narvii/model/Feed;)Landroid/content/Intent;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    iget-object v1, p0, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    .line 25
    .line 26
    const-string v2, "fromHeadline"

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v2}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 30
    move-result v1

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 34
    goto :goto_0

    .line 35
    .line 36
    :cond_0
    iget-object v0, p0, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    .line 37
    .line 38
    .line 39
    invoke-static {v0}, Lcom/narvii/comment/CommentDetailFragment;->z(Lcom/narvii/comment/CommentDetailFragment;)Lcom/narvii/model/NVObject;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    instance-of v0, v0, Lcom/narvii/model/User;

    .line 43
    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    iget-object v0, p0, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    .line 47
    .line 48
    .line 49
    invoke-static {v0}, Lcom/narvii/comment/CommentDetailFragment;->z(Lcom/narvii/comment/CommentDetailFragment;)Lcom/narvii/model/NVObject;

    .line 50
    move-result-object v0

    .line 51
    .line 52
    check-cast v0, Lcom/narvii/model/User;

    .line 53
    .line 54
    .line 55
    invoke-static {p0, v0}, Lcom/narvii/user/profile/UserProfileFragment;->intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)Landroid/content/Intent;

    .line 56
    move-result-object v0

    .line 57
    goto :goto_0

    .line 58
    .line 59
    :cond_1
    iget-object v0, p0, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    .line 60
    .line 61
    .line 62
    invoke-static {v0}, Lcom/narvii/comment/CommentDetailFragment;->z(Lcom/narvii/comment/CommentDetailFragment;)Lcom/narvii/model/NVObject;

    .line 63
    move-result-object v0

    .line 64
    .line 65
    instance-of v0, v0, Lcom/narvii/model/SharedFile;

    .line 66
    .line 67
    if-eqz v0, :cond_2

    .line 68
    .line 69
    iget-object v0, p0, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    .line 70
    .line 71
    .line 72
    invoke-static {v0}, Lcom/narvii/comment/CommentDetailFragment;->z(Lcom/narvii/comment/CommentDetailFragment;)Lcom/narvii/model/NVObject;

    .line 73
    move-result-object v0

    .line 74
    .line 75
    check-cast v0, Lcom/narvii/model/SharedFile;

    .line 76
    .line 77
    .line 78
    invoke-static {v0}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->intent(Lcom/narvii/model/SharedFile;)Landroid/content/Intent;

    .line 79
    move-result-object v0

    .line 80
    goto :goto_0

    .line 81
    :cond_2
    const/4 v0, 0x0

    .line 82
    .line 83
    :goto_0
    if-eqz v0, :cond_3

    .line 84
    .line 85
    .line 86
    invoke-static {p0, v0}, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    .line 87
    .line 88
    .line 89
    :cond_3
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 90
    move-result p1

    .line 91
    return p1
.end method

.method public refresh(ILcom/narvii/util/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/narvii/list/NVAdapter;->refreshMonitorStart(ILcom/narvii/util/Callback;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;->sendParentObjectRequest()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->refreshMonitorEnd()V

    .line 10
    return-void
.end method
