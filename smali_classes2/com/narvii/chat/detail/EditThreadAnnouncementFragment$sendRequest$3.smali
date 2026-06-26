.class public final Lcom/narvii/chat/detail/EditThreadAnnouncementFragment$sendRequest$3;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "EditThreadAnnouncementFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/detail/EditThreadAnnouncementFragment;->sendRequest(ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/chat/ThreadResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $announcement:Ljava/lang/String;

.field final synthetic $isPinAnnouncement:Z

.field final synthetic this$0:Lcom/narvii/chat/detail/EditThreadAnnouncementFragment;


# direct methods
.method constructor <init>(Lcom/narvii/chat/detail/EditThreadAnnouncementFragment;Ljava/lang/String;ZLjava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/Class;",
            ")V"
        }
    .end annotation

    .line 116
    iput-object p1, p0, Lcom/narvii/chat/detail/EditThreadAnnouncementFragment$sendRequest$3;->this$0:Lcom/narvii/chat/detail/EditThreadAnnouncementFragment;

    iput-object p2, p0, Lcom/narvii/chat/detail/EditThreadAnnouncementFragment$sendRequest$3;->$announcement:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/narvii/chat/detail/EditThreadAnnouncementFragment$sendRequest$3;->$isPinAnnouncement:Z

    invoke-direct {p0, p4}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V
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

    .line 140
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 141
    iget-object p1, p0, Lcom/narvii/chat/detail/EditThreadAnnouncementFragment$sendRequest$3;->this$0:Lcom/narvii/chat/detail/EditThreadAnnouncementFragment;

    invoke-virtual {p1}, Lcom/narvii/master/home/profile/BaseSingleEditFragment;->getProgressDialog()Lcom/narvii/util/dialog/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 142
    iget-object p1, p0, Lcom/narvii/chat/detail/EditThreadAnnouncementFragment$sendRequest$3;->this$0:Lcom/narvii/chat/detail/EditThreadAnnouncementFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p4}, Lcom/narvii/util/Utils;->showShortToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/chat/ThreadResponse;)V
    .locals 2

    .line 119
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 120
    iget-object p1, p0, Lcom/narvii/chat/detail/EditThreadAnnouncementFragment$sendRequest$3;->this$0:Lcom/narvii/chat/detail/EditThreadAnnouncementFragment;

    invoke-virtual {p1}, Lcom/narvii/master/home/profile/BaseSingleEditFragment;->getProgressDialog()Lcom/narvii/util/dialog/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    if-eqz p2, :cond_0

    .line 122
    iget-object p1, p2, Lcom/narvii/chat/ThreadResponse;->thread:Lcom/narvii/model/ChatThread;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 123
    iget-object p1, p0, Lcom/narvii/chat/detail/EditThreadAnnouncementFragment$sendRequest$3;->this$0:Lcom/narvii/chat/detail/EditThreadAnnouncementFragment;

    invoke-virtual {p1}, Lcom/narvii/chat/detail/EditThreadAnnouncementFragment;->getChatThread()Lcom/narvii/model/ChatThread;

    move-result-object p1

    iget-object v0, p2, Lcom/narvii/chat/ThreadResponse;->thread:Lcom/narvii/model/ChatThread;

    const-string v1, "resp.thread"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->getAnnouncement()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/narvii/model/ChatThread;->setAnnouncement(Ljava/lang/String;)V

    .line 124
    iget-object p1, p0, Lcom/narvii/chat/detail/EditThreadAnnouncementFragment$sendRequest$3;->this$0:Lcom/narvii/chat/detail/EditThreadAnnouncementFragment;

    invoke-virtual {p1}, Lcom/narvii/chat/detail/EditThreadAnnouncementFragment;->getChatThread()Lcom/narvii/model/ChatThread;

    move-result-object p1

    iget-object p2, p2, Lcom/narvii/chat/ThreadResponse;->thread:Lcom/narvii/model/ChatThread;

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/narvii/model/ChatThread;->isPinAnnouncement()Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/narvii/model/ChatThread;->setPinAnnouncement(Z)V

    goto :goto_1

    .line 126
    :cond_1
    iget-object p1, p0, Lcom/narvii/chat/detail/EditThreadAnnouncementFragment$sendRequest$3;->this$0:Lcom/narvii/chat/detail/EditThreadAnnouncementFragment;

    invoke-virtual {p1}, Lcom/narvii/chat/detail/EditThreadAnnouncementFragment;->getChatThread()Lcom/narvii/model/ChatThread;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/chat/detail/EditThreadAnnouncementFragment$sendRequest$3;->$announcement:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/narvii/model/ChatThread;->setAnnouncement(Ljava/lang/String;)V

    .line 127
    iget-boolean p1, p0, Lcom/narvii/chat/detail/EditThreadAnnouncementFragment$sendRequest$3;->$isPinAnnouncement:Z

    if-eqz p1, :cond_2

    .line 128
    iget-object p1, p0, Lcom/narvii/chat/detail/EditThreadAnnouncementFragment$sendRequest$3;->this$0:Lcom/narvii/chat/detail/EditThreadAnnouncementFragment;

    invoke-virtual {p1}, Lcom/narvii/chat/detail/EditThreadAnnouncementFragment;->getChatThread()Lcom/narvii/model/ChatThread;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/narvii/model/ChatThread;->setPinAnnouncement(Z)V

    .line 133
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/narvii/chat/detail/EditThreadAnnouncementFragment$sendRequest$3;->this$0:Lcom/narvii/chat/detail/EditThreadAnnouncementFragment;

    const-string p2, "notification"

    invoke-virtual {p1, p2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/notification/NotificationCenter;

    .line 134
    new-instance p2, Lcom/narvii/notification/Notification;

    iget-object v0, p0, Lcom/narvii/chat/detail/EditThreadAnnouncementFragment$sendRequest$3;->this$0:Lcom/narvii/chat/detail/EditThreadAnnouncementFragment;

    invoke-virtual {v0}, Lcom/narvii/chat/detail/EditThreadAnnouncementFragment;->getChatThread()Lcom/narvii/model/ChatThread;

    move-result-object v0

    const-string/jumbo v1, "update"

    invoke-direct {p2, v1, v0}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    invoke-static {p1, p2}, Lcom/narvii/util/NotificationUtils;->sendNotificationIncludeGlobal(Lcom/narvii/notification/NotificationCenter;Lcom/narvii/notification/Notification;)V

    .line 136
    iget-object p1, p0, Lcom/narvii/chat/detail/EditThreadAnnouncementFragment$sendRequest$3;->this$0:Lcom/narvii/chat/detail/EditThreadAnnouncementFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V

    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0

    .line 116
    check-cast p2, Lcom/narvii/chat/ThreadResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/detail/EditThreadAnnouncementFragment$sendRequest$3;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/chat/ThreadResponse;)V

    return-void
.end method
