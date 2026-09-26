.class Lcom/narvii/community/LeaveCommunityHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/community/LeaveCommunityHelper$1;->this$0:Lcom/narvii/community/LeaveCommunityHelper;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/community/LeaveCommunityHelper$1;->val$community:Lcom/narvii/model/Community;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/community/LeaveCommunityHelper$1;->val$leaveSuccessCallback:Lcom/narvii/util/Callback;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/util/dialog/ProgressDialog;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/community/LeaveCommunityHelper$1;->this$0:Lcom/narvii/community/LeaveCommunityHelper;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/narvii/community/LeaveCommunityHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 7
    .line 8
    .line 9
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-direct {p1, v0}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 14
    .line 15
    new-instance v0, Lcom/narvii/community/LeaveCommunityHelper$1$1;

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, p0}, Lcom/narvii/community/LeaveCommunityHelper$1$1;-><init>(Lcom/narvii/community/LeaveCommunityHelper$1;)V

    .line 19
    .line 20
    iput-object v0, p1, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 21
    .line 22
    iget-object v0, p0, Lcom/narvii/community/LeaveCommunityHelper$1;->this$0:Lcom/narvii/community/LeaveCommunityHelper;

    .line 23
    .line 24
    iget-object v0, v0, Lcom/narvii/community/LeaveCommunityHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 25
    .line 26
    const-string v1, "account"

    .line 27
    .line 28
    .line 29
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    if-nez v0, :cond_0

    .line 39
    return-void

    .line 40
    .line 41
    .line 42
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 43
    .line 44
    .line 45
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 46
    move-result-object v1

    .line 47
    .line 48
    iget-object v2, p0, Lcom/narvii/community/LeaveCommunityHelper$1;->val$community:Lcom/narvii/model/Community;

    .line 49
    .line 50
    iget v2, v2, Lcom/narvii/model/Community;->id:I

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 54
    move-result-object v1

    .line 55
    .line 56
    new-instance v2, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    const-string v3, "/user-profile/"

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    move-result-object v0

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 75
    move-result-object v0

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 79
    move-result-object v0

    .line 80
    .line 81
    iget-object v1, p0, Lcom/narvii/community/LeaveCommunityHelper$1;->this$0:Lcom/narvii/community/LeaveCommunityHelper;

    .line 82
    .line 83
    iget-object v1, v1, Lcom/narvii/community/LeaveCommunityHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 84
    .line 85
    const-string v2, "api"

    .line 86
    .line 87
    .line 88
    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 89
    move-result-object v1

    .line 90
    .line 91
    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 92
    .line 93
    new-instance v2, Lcom/narvii/community/LeaveCommunityHelper$1$2;

    .line 94
    .line 95
    const-class v3, Lcom/narvii/model/api/UserResponse;

    .line 96
    .line 97
    .line 98
    invoke-direct {v2, p0, v3, p1}, Lcom/narvii/community/LeaveCommunityHelper$1$2;-><init>(Lcom/narvii/community/LeaveCommunityHelper$1;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 102
    return-void
.end method
