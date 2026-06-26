.class public final Lcom/narvii/chat/detail/ThreadAnnouncementFragment$sendRequest$3;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "ThreadAnnouncementFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->sendRequest(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/model/api/ApiResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $isPinAnnouncement:Z

.field final synthetic this$0:Lcom/narvii/chat/detail/ThreadAnnouncementFragment;


# direct methods
.method constructor <init>(Lcom/narvii/chat/detail/ThreadAnnouncementFragment;ZLjava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/Class;",
            ")V"
        }
    .end annotation

    .line 140
    iput-object p1, p0, Lcom/narvii/chat/detail/ThreadAnnouncementFragment$sendRequest$3;->this$0:Lcom/narvii/chat/detail/ThreadAnnouncementFragment;

    iput-boolean p2, p0, Lcom/narvii/chat/detail/ThreadAnnouncementFragment$sendRequest$3;->$isPinAnnouncement:Z

    invoke-direct {p0, p3}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

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

    .line 154
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 155
    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadAnnouncementFragment$sendRequest$3;->this$0:Lcom/narvii/chat/detail/ThreadAnnouncementFragment;

    invoke-virtual {p1}, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->getProgressDialog()Lcom/narvii/util/dialog/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 156
    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadAnnouncementFragment$sendRequest$3;->this$0:Lcom/narvii/chat/detail/ThreadAnnouncementFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p4}, Lcom/narvii/util/Utils;->showShortToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 2

    .line 143
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 144
    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadAnnouncementFragment$sendRequest$3;->this$0:Lcom/narvii/chat/detail/ThreadAnnouncementFragment;

    invoke-virtual {p1}, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->getProgressDialog()Lcom/narvii/util/dialog/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 146
    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadAnnouncementFragment$sendRequest$3;->this$0:Lcom/narvii/chat/detail/ThreadAnnouncementFragment;

    invoke-static {p1}, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->access$getChatThread$p(Lcom/narvii/chat/detail/ThreadAnnouncementFragment;)Lcom/narvii/model/ChatThread;

    move-result-object p1

    iget-boolean p2, p0, Lcom/narvii/chat/detail/ThreadAnnouncementFragment$sendRequest$3;->$isPinAnnouncement:Z

    invoke-virtual {p1, p2}, Lcom/narvii/model/ChatThread;->setPinAnnouncement(Z)V

    .line 149
    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadAnnouncementFragment$sendRequest$3;->this$0:Lcom/narvii/chat/detail/ThreadAnnouncementFragment;

    const-string p2, "notification"

    invoke-virtual {p1, p2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/notification/NotificationCenter;

    .line 150
    new-instance p2, Lcom/narvii/notification/Notification;

    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadAnnouncementFragment$sendRequest$3;->this$0:Lcom/narvii/chat/detail/ThreadAnnouncementFragment;

    invoke-static {v0}, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->access$getChatThread$p(Lcom/narvii/chat/detail/ThreadAnnouncementFragment;)Lcom/narvii/model/ChatThread;

    move-result-object v0

    const-string/jumbo v1, "update"

    invoke-direct {p2, v1, v0}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    invoke-static {p1, p2}, Lcom/narvii/util/NotificationUtils;->sendNotificationIncludeGlobal(Lcom/narvii/notification/NotificationCenter;Lcom/narvii/notification/Notification;)V

    return-void
.end method
