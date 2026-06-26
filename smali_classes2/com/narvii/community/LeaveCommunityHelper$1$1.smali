.class Lcom/narvii/community/LeaveCommunityHelper$1$1;
.super Ljava/lang/Object;
.source "LeaveCommunityHelper.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/community/LeaveCommunityHelper$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Lcom/narvii/model/api/ApiResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/community/LeaveCommunityHelper$1;


# direct methods
.method constructor <init>(Lcom/narvii/community/LeaveCommunityHelper$1;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/narvii/community/LeaveCommunityHelper$1$1;->this$1:Lcom/narvii/community/LeaveCommunityHelper$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/model/api/ApiResponse;)V
    .locals 2

    .line 51
    new-instance p1, Lcom/narvii/notification/Notification;

    iget-object v0, p0, Lcom/narvii/community/LeaveCommunityHelper$1$1;->this$1:Lcom/narvii/community/LeaveCommunityHelper$1;

    iget-object v0, v0, Lcom/narvii/community/LeaveCommunityHelper$1;->val$community:Lcom/narvii/model/Community;

    const-string v1, "delete"

    invoke-direct {p1, v1, v0}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 52
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/notification/NotificationCenter;

    .line 53
    invoke-virtual {v0, p1}, Lcom/narvii/notification/NotificationCenter;->sendNotification(Lcom/narvii/notification/Notification;)V

    .line 55
    iget-object p1, p0, Lcom/narvii/community/LeaveCommunityHelper$1$1;->this$1:Lcom/narvii/community/LeaveCommunityHelper$1;

    iget-object v0, p1, Lcom/narvii/community/LeaveCommunityHelper$1;->this$0:Lcom/narvii/community/LeaveCommunityHelper;

    iget-object p1, p1, Lcom/narvii/community/LeaveCommunityHelper$1;->val$community:Lcom/narvii/model/Community;

    invoke-virtual {v0, p1}, Lcom/narvii/community/LeaveCommunityHelper;->onLeaveCommunitySuccess(Lcom/narvii/model/Community;)V

    .line 57
    iget-object p1, p0, Lcom/narvii/community/LeaveCommunityHelper$1$1;->this$1:Lcom/narvii/community/LeaveCommunityHelper$1;

    iget-object v0, p1, Lcom/narvii/community/LeaveCommunityHelper$1;->val$leaveSuccessCallback:Lcom/narvii/util/Callback;

    if-eqz v0, :cond_0

    .line 58
    iget-object p1, p1, Lcom/narvii/community/LeaveCommunityHelper$1;->val$community:Lcom/narvii/model/Community;

    invoke-interface {v0, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 48
    check-cast p1, Lcom/narvii/model/api/ApiResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/community/LeaveCommunityHelper$1$1;->call(Lcom/narvii/model/api/ApiResponse;)V

    return-void
.end method
