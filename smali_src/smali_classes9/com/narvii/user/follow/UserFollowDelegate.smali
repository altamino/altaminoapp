.class public Lcom/narvii/user/follow/UserFollowDelegate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/user/follow/IUserFollow;


# instance fields
.field private ctx:Lcom/narvii/app/NVContext;

.field private host:Lcom/narvii/user/follow/IUserFollow;

.field private sendingFollow:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/narvii/user/follow/IUserFollow;Lcom/narvii/app/NVContext;)V
    .locals 0
    .param p2    # Lcom/narvii/app/NVContext;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/user/follow/UserFollowDelegate;->host:Lcom/narvii/user/follow/IUserFollow;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/narvii/user/follow/UserFollowDelegate;->ctx:Lcom/narvii/app/NVContext;

    .line 8
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/user/follow/UserFollowDelegate;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/user/follow/UserFollowDelegate;->ctx:Lcom/narvii/app/NVContext;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/narvii/user/follow/UserFollowDelegate;)Lcom/narvii/user/follow/IUserFollow;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/user/follow/UserFollowDelegate;->host:Lcom/narvii/user/follow/IUserFollow;

    return-object p0
.end method

.method static bridge synthetic c(Lcom/narvii/user/follow/UserFollowDelegate;)Ljava/util/HashSet;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/user/follow/UserFollowDelegate;->sendingFollow:Ljava/util/HashSet;

    return-object p0
.end method


# virtual methods
.method public follow(Lcom/narvii/model/User;)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/user/follow/UserFollowDelegate;->sendingFollow:Ljava/util/HashSet;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v1, p1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    return-void

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    iget v1, p1, Lcom/narvii/model/User;->ndcId:I

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    const-string v2, "/user-profile/"

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    iget-object v2, p1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    const-string v2, "/member"

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    move-result-object v1

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 55
    move-result-object v0

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 59
    move-result-object v0

    .line 60
    .line 61
    iget-object v1, p0, Lcom/narvii/user/follow/UserFollowDelegate;->ctx:Lcom/narvii/app/NVContext;

    .line 62
    .line 63
    const-string v2, "api"

    .line 64
    .line 65
    .line 66
    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 67
    move-result-object v1

    .line 68
    .line 69
    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 70
    .line 71
    new-instance v2, Lcom/narvii/user/follow/UserFollowDelegate$1;

    .line 72
    .line 73
    const-class v3, Lcom/narvii/model/api/ApiResponse;

    .line 74
    .line 75
    .line 76
    invoke-direct {v2, p0, v3, p1}, Lcom/narvii/user/follow/UserFollowDelegate$1;-><init>(Lcom/narvii/user/follow/UserFollowDelegate;Ljava/lang/Class;Lcom/narvii/model/User;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 80
    .line 81
    iget-object v0, p0, Lcom/narvii/user/follow/UserFollowDelegate;->sendingFollow:Ljava/util/HashSet;

    .line 82
    .line 83
    if-nez v0, :cond_1

    .line 84
    .line 85
    new-instance v0, Ljava/util/HashSet;

    .line 86
    .line 87
    .line 88
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 89
    .line 90
    iput-object v0, p0, Lcom/narvii/user/follow/UserFollowDelegate;->sendingFollow:Ljava/util/HashSet;

    .line 91
    .line 92
    :cond_1
    iget-object v0, p0, Lcom/narvii/user/follow/UserFollowDelegate;->sendingFollow:Ljava/util/HashSet;

    .line 93
    .line 94
    iget-object p1, p1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0}, Lcom/narvii/user/follow/UserFollowDelegate;->onFollowStatusUpdated()V

    .line 101
    return-void
.end method

.method public synthetic followFail()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/narvii/user/follow/a;->a(Lcom/narvii/user/follow/IUserFollow;)V

    return-void
.end method

.method public synthetic followSuccess()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/narvii/user/follow/a;->b(Lcom/narvii/user/follow/IUserFollow;)V

    return-void
.end method

.method public isSendingFollow(Lcom/narvii/model/User;)Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/user/follow/UserFollowDelegate;->sendingFollow:Ljava/util/HashSet;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object p1, p1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 10
    move-result p1

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    const/4 p1, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    :goto_0
    return p1
.end method

.method public synthetic needUpdateUserAfterFollow()Z
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/narvii/user/follow/a;->c(Lcom/narvii/user/follow/IUserFollow;)Z

    move-result v0

    return v0
.end method

.method public onFollowStatusUpdated()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/user/follow/UserFollowDelegate;->host:Lcom/narvii/user/follow/IUserFollow;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Lcom/narvii/user/follow/IUserFollow;->onFollowStatusUpdated()V

    .line 8
    :cond_0
    return-void
.end method
