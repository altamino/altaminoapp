.class Lcom/narvii/community/LeaveCommunityHelper$1;
.super Ljava/lang/Object;
.source "LeaveCommunityHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/community/LeaveCommunityHelper;->leaveCommunity(Lcom/narvii/model/Community;Lcom/narvii/util/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/community/LeaveCommunityHelper;

.field final synthetic val$community:Lcom/narvii/model/Community;

.field final synthetic val$leaveSuccessCallback:Lcom/narvii/util/Callback;


# direct methods
.method constructor <init>(Lcom/narvii/community/LeaveCommunityHelper;Lcom/narvii/model/Community;Lcom/narvii/util/Callback;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/narvii/community/LeaveCommunityHelper$1;->this$0:Lcom/narvii/community/LeaveCommunityHelper;

    iput-object p2, p0, Lcom/narvii/community/LeaveCommunityHelper$1;->val$community:Lcom/narvii/model/Community;

    iput-object p3, p0, Lcom/narvii/community/LeaveCommunityHelper$1;->val$leaveSuccessCallback:Lcom/narvii/util/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 47
    new-instance p1, Lcom/narvii/util/dialog/ProgressDialog;

    iget-object v0, p0, Lcom/narvii/community/LeaveCommunityHelper$1;->this$0:Lcom/narvii/community/LeaveCommunityHelper;

    iget-object v0, v0, Lcom/narvii/community/LeaveCommunityHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 48
    new-instance v0, Lcom/narvii/community/LeaveCommunityHelper$1$1;

    invoke-direct {v0, p0}, Lcom/narvii/community/LeaveCommunityHelper$1$1;-><init>(Lcom/narvii/community/LeaveCommunityHelper$1;)V

    iput-object v0, p1, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 63
    iget-object v0, p0, Lcom/narvii/community/LeaveCommunityHelper$1;->this$0:Lcom/narvii/community/LeaveCommunityHelper;

    iget-object v0, v0, Lcom/narvii/community/LeaveCommunityHelper;->nvContext:Lcom/narvii/app/NVContext;

    const-string v1, "account"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 64
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 68
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 69
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/narvii/community/LeaveCommunityHelper$1;->val$community:Lcom/narvii/model/Community;

    iget v2, v2, Lcom/narvii/model/Community;->id:I

    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/user-profile/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    .line 70
    iget-object v1, p0, Lcom/narvii/community/LeaveCommunityHelper$1;->this$0:Lcom/narvii/community/LeaveCommunityHelper;

    iget-object v1, v1, Lcom/narvii/community/LeaveCommunityHelper;->nvContext:Lcom/narvii/app/NVContext;

    const-string v2, "api"

    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 71
    new-instance v2, Lcom/narvii/community/LeaveCommunityHelper$1$2;

    const-class v3, Lcom/narvii/model/api/UserResponse;

    invoke-direct {v2, p0, v3, p1}, Lcom/narvii/community/LeaveCommunityHelper$1$2;-><init>(Lcom/narvii/community/LeaveCommunityHelper$1;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;)V

    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method
