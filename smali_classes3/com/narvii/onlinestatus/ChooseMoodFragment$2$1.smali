.class Lcom/narvii/onlinestatus/ChooseMoodFragment$2$1;
.super Ljava/lang/Object;
.source "ChooseMoodFragment.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/onlinestatus/ChooseMoodFragment$2;->onClick(Landroid/view/View;)V
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
.field final synthetic this$1:Lcom/narvii/onlinestatus/ChooseMoodFragment$2;


# direct methods
.method constructor <init>(Lcom/narvii/onlinestatus/ChooseMoodFragment$2;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/narvii/onlinestatus/ChooseMoodFragment$2$1;->this$1:Lcom/narvii/onlinestatus/ChooseMoodFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/model/api/ApiResponse;)V
    .locals 4

    .line 91
    iget-object v0, p0, Lcom/narvii/onlinestatus/ChooseMoodFragment$2$1;->this$1:Lcom/narvii/onlinestatus/ChooseMoodFragment$2;

    iget-object v0, v0, Lcom/narvii/onlinestatus/ChooseMoodFragment$2;->this$0:Lcom/narvii/onlinestatus/ChooseMoodFragment;

    const-string v1, "account"

    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 92
    iget-object v1, p1, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1, v2}, Lcom/narvii/account/AccountService;->updateOnlineStatus(ILjava/lang/String;Z)V

    .line 93
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v1

    .line 94
    iput v2, v1, Lcom/narvii/model/User;->onlineStatus:I

    .line 95
    iget-object v3, p0, Lcom/narvii/onlinestatus/ChooseMoodFragment$2$1;->this$1:Lcom/narvii/onlinestatus/ChooseMoodFragment$2;

    iget-object v3, v3, Lcom/narvii/onlinestatus/ChooseMoodFragment$2;->this$0:Lcom/narvii/onlinestatus/ChooseMoodFragment;

    iget-object v3, v3, Lcom/narvii/onlinestatus/ChooseMoodFragment;->selectedSticker:Lcom/narvii/model/Sticker;

    iput-object v3, v1, Lcom/narvii/model/User;->moodSticker:Lcom/narvii/model/Sticker;

    .line 96
    iget-object p1, p1, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, v2}, Lcom/narvii/account/AccountService;->updateProfile(Lcom/narvii/model/User;Ljava/lang/String;Z)V

    .line 118
    iget-object p1, p0, Lcom/narvii/onlinestatus/ChooseMoodFragment$2$1;->this$1:Lcom/narvii/onlinestatus/ChooseMoodFragment$2;

    iget-object p1, p1, Lcom/narvii/onlinestatus/ChooseMoodFragment$2;->this$0:Lcom/narvii/onlinestatus/ChooseMoodFragment;

    const-string v0, "liveLayer"

    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/livelayer/LiveLayerService;

    if-eqz p1, :cond_0

    .line 120
    invoke-virtual {p1}, Lcom/narvii/livelayer/LiveLayerService;->refreshOnlineMembers()V

    .line 124
    :cond_0
    new-instance p1, Lcom/narvii/notification/Notification;

    const-string v0, "update"

    invoke-direct {p1, v0, v1}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 125
    iget-object v0, p0, Lcom/narvii/onlinestatus/ChooseMoodFragment$2$1;->this$1:Lcom/narvii/onlinestatus/ChooseMoodFragment$2;

    iget-object v0, v0, Lcom/narvii/onlinestatus/ChooseMoodFragment$2;->this$0:Lcom/narvii/onlinestatus/ChooseMoodFragment;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/notification/NotificationCenter;

    .line 126
    invoke-virtual {v0, p1}, Lcom/narvii/notification/NotificationCenter;->sendNotification(Lcom/narvii/notification/Notification;)V

    .line 128
    iget-object p1, p0, Lcom/narvii/onlinestatus/ChooseMoodFragment$2$1;->this$1:Lcom/narvii/onlinestatus/ChooseMoodFragment$2;

    iget-object p1, p1, Lcom/narvii/onlinestatus/ChooseMoodFragment$2;->this$0:Lcom/narvii/onlinestatus/ChooseMoodFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 88
    check-cast p1, Lcom/narvii/model/api/ApiResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/onlinestatus/ChooseMoodFragment$2$1;->call(Lcom/narvii/model/api/ApiResponse;)V

    return-void
.end method
