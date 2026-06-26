.class Lcom/narvii/chat/screenroom/utils/ScreenRoomHelper$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "ScreenRoomHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/screenroom/utils/ScreenRoomHelper;->requestToJoinChatThread(Lcom/narvii/model/ChatThread;Lcom/narvii/util/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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
.field final synthetic this$0:Lcom/narvii/chat/screenroom/utils/ScreenRoomHelper;

.field final synthetic val$callback:Lcom/narvii/util/Callback;

.field final synthetic val$chatThread:Lcom/narvii/model/ChatThread;


# direct methods
.method constructor <init>(Lcom/narvii/chat/screenroom/utils/ScreenRoomHelper;Ljava/lang/Class;Lcom/narvii/model/ChatThread;Lcom/narvii/util/Callback;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/narvii/chat/screenroom/utils/ScreenRoomHelper$1;->this$0:Lcom/narvii/chat/screenroom/utils/ScreenRoomHelper;

    iput-object p3, p0, Lcom/narvii/chat/screenroom/utils/ScreenRoomHelper$1;->val$chatThread:Lcom/narvii/model/ChatThread;

    iput-object p4, p0, Lcom/narvii/chat/screenroom/utils/ScreenRoomHelper$1;->val$callback:Lcom/narvii/util/Callback;

    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

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

    .line 76
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 77
    iget-object p1, p0, Lcom/narvii/chat/screenroom/utils/ScreenRoomHelper$1;->this$0:Lcom/narvii/chat/screenroom/utils/ScreenRoomHelper;

    invoke-static {p1}, Lcom/narvii/chat/screenroom/utils/ScreenRoomHelper;->access$000(Lcom/narvii/chat/screenroom/utils/ScreenRoomHelper;)Lcom/narvii/app/NVContext;

    move-result-object p1

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p1, p4, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 78
    iget-object p1, p0, Lcom/narvii/chat/screenroom/utils/ScreenRoomHelper$1;->val$callback:Lcom/narvii/util/Callback;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 79
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 60
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 61
    iget-object p1, p0, Lcom/narvii/chat/screenroom/utils/ScreenRoomHelper$1;->val$chatThread:Lcom/narvii/model/ChatThread;

    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->clone()Lcom/narvii/model/NVObject;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/ChatThread;

    const/4 p2, 0x1

    .line 62
    iput p2, p1, Lcom/narvii/model/ChatThread;->membershipStatus:I

    .line 63
    new-instance v0, Lcom/narvii/notification/Notification;

    const-string/jumbo v1, "update"

    invoke-direct {v0, v1, p1}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 64
    iget-object p1, p0, Lcom/narvii/chat/screenroom/utils/ScreenRoomHelper$1;->this$0:Lcom/narvii/chat/screenroom/utils/ScreenRoomHelper;

    invoke-static {p1}, Lcom/narvii/chat/screenroom/utils/ScreenRoomHelper;->access$000(Lcom/narvii/chat/screenroom/utils/ScreenRoomHelper;)Lcom/narvii/app/NVContext;

    move-result-object p1

    instance-of p1, p1, Lcom/narvii/app/NVFragment;

    if-eqz p1, :cond_0

    .line 65
    iget-object p1, p0, Lcom/narvii/chat/screenroom/utils/ScreenRoomHelper$1;->this$0:Lcom/narvii/chat/screenroom/utils/ScreenRoomHelper;

    invoke-static {p1}, Lcom/narvii/chat/screenroom/utils/ScreenRoomHelper;->access$000(Lcom/narvii/chat/screenroom/utils/ScreenRoomHelper;)Lcom/narvii/app/NVContext;

    move-result-object p1

    check-cast p1, Lcom/narvii/app/NVFragment;

    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->sendNotification(Lcom/narvii/notification/Notification;)V

    goto :goto_0

    .line 66
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/screenroom/utils/ScreenRoomHelper$1;->this$0:Lcom/narvii/chat/screenroom/utils/ScreenRoomHelper;

    invoke-static {p1}, Lcom/narvii/chat/screenroom/utils/ScreenRoomHelper;->access$000(Lcom/narvii/chat/screenroom/utils/ScreenRoomHelper;)Lcom/narvii/app/NVContext;

    move-result-object p1

    instance-of p1, p1, Lcom/narvii/app/NVActivity;

    if-eqz p1, :cond_1

    .line 67
    iget-object p1, p0, Lcom/narvii/chat/screenroom/utils/ScreenRoomHelper$1;->this$0:Lcom/narvii/chat/screenroom/utils/ScreenRoomHelper;

    invoke-static {p1}, Lcom/narvii/chat/screenroom/utils/ScreenRoomHelper;->access$000(Lcom/narvii/chat/screenroom/utils/ScreenRoomHelper;)Lcom/narvii/app/NVContext;

    move-result-object p1

    check-cast p1, Lcom/narvii/app/NVActivity;

    invoke-virtual {p1, v0}, Lcom/narvii/app/NVActivity;->sendNotification(Lcom/narvii/notification/Notification;)V

    .line 69
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/narvii/chat/screenroom/utils/ScreenRoomHelper$1;->val$callback:Lcom/narvii/util/Callback;

    if-eqz p1, :cond_2

    .line 70
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method
