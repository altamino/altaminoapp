.class public Lcom/narvii/user/follow/UserFollowDelegate;
.super Ljava/lang/Object;
.source "UserFollowDelegate.java"

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

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/narvii/user/follow/UserFollowDelegate;->host:Lcom/narvii/user/follow/IUserFollow;

    .line 31
    iput-object p2, p0, Lcom/narvii/user/follow/UserFollowDelegate;->ctx:Lcom/narvii/app/NVContext;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/user/follow/UserFollowDelegate;)Ljava/util/HashSet;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/narvii/user/follow/UserFollowDelegate;->sendingFollow:Ljava/util/HashSet;

    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/user/follow/UserFollowDelegate;)Lcom/narvii/user/follow/IUserFollow;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/narvii/user/follow/UserFollowDelegate;->host:Lcom/narvii/user/follow/IUserFollow;

    return-object p0
.end method

.method static synthetic access$200(Lcom/narvii/user/follow/UserFollowDelegate;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/narvii/user/follow/UserFollowDelegate;->ctx:Lcom/narvii/app/NVContext;

    return-object p0
.end method


# virtual methods
.method public follow(Lcom/narvii/model/User;)V
    .locals 4

    .line 36
    iget-object v0, p0, Lcom/narvii/user/follow/UserFollowDelegate;->sendingFollow:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    iget-object v1, p1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 39
    :cond_0
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    iget v1, p1, Lcom/narvii/model/User;->ndcId:I

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/user-profile/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/member"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 40
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    .line 41
    iget-object v1, p0, Lcom/narvii/user/follow/UserFollowDelegate;->ctx:Lcom/narvii/app/NVContext;

    const-string v2, "api"

    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 42
    new-instance v2, Lcom/narvii/user/follow/UserFollowDelegate$1;

    const-class v3, Lcom/narvii/model/api/ApiResponse;

    invoke-direct {v2, p0, v3, p1}, Lcom/narvii/user/follow/UserFollowDelegate$1;-><init>(Lcom/narvii/user/follow/UserFollowDelegate;Ljava/lang/Class;Lcom/narvii/model/User;)V

    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 87
    iget-object v0, p0, Lcom/narvii/user/follow/UserFollowDelegate;->sendingFollow:Ljava/util/HashSet;

    if-nez v0, :cond_1

    .line 88
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/narvii/user/follow/UserFollowDelegate;->sendingFollow:Ljava/util/HashSet;

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/narvii/user/follow/UserFollowDelegate;->sendingFollow:Ljava/util/HashSet;

    iget-object p1, p1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 91
    invoke-virtual {p0}, Lcom/narvii/user/follow/UserFollowDelegate;->onFollowStatusUpdated()V

    return-void
.end method

.method public synthetic followFail()V
    .locals 0

    invoke-static {p0}, Lcom/narvii/user/follow/IUserFollow$-CC;->$default$followFail(Lcom/narvii/user/follow/IUserFollow;)V

    return-void
.end method

.method public synthetic followSuccess()V
    .locals 0

    invoke-static {p0}, Lcom/narvii/user/follow/IUserFollow$-CC;->$default$followSuccess(Lcom/narvii/user/follow/IUserFollow;)V

    return-void
.end method

.method public isSendingFollow(Lcom/narvii/model/User;)Z
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/narvii/user/follow/UserFollowDelegate;->sendingFollow:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public synthetic needUpdateUserAfterFollow()Z
    .locals 1

    invoke-static {p0}, Lcom/narvii/user/follow/IUserFollow$-CC;->$default$needUpdateUserAfterFollow(Lcom/narvii/user/follow/IUserFollow;)Z

    move-result v0

    return v0
.end method

.method public onFollowStatusUpdated()V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/narvii/user/follow/UserFollowDelegate;->host:Lcom/narvii/user/follow/IUserFollow;

    if-eqz v0, :cond_0

    .line 102
    invoke-interface {v0}, Lcom/narvii/user/follow/IUserFollow;->onFollowStatusUpdated()V

    :cond_0
    return-void
.end method
