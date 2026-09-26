.class Lcom/narvii/chat/screenroom/utils/ScreenRoomHelper$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/screenroom/utils/ScreenRoomHelper$1;->this$0:Lcom/narvii/chat/screenroom/utils/ScreenRoomHelper;

    .line 3
    .line 4
    iput-object p3, p0, Lcom/narvii/chat/screenroom/utils/ScreenRoomHelper$1;->val$chatThread:Lcom/narvii/model/ChatThread;

    .line 5
    .line 6
    iput-object p4, p0, Lcom/narvii/chat/screenroom/utils/ScreenRoomHelper$1;->val$callback:Lcom/narvii/util/Callback;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    .line 10
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

    .line 1
    .line 2
    .line 3
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/chat/screenroom/utils/ScreenRoomHelper$1;->this$0:Lcom/narvii/chat/screenroom/utils/ScreenRoomHelper;

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Lcom/narvii/chat/screenroom/utils/ScreenRoomHelper;->a(Lcom/narvii/chat/screenroom/utils/ScreenRoomHelper;)Lcom/narvii/app/NVContext;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    .line 12
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 13
    move-result-object p1

    .line 14
    const/4 p2, 0x1

    .line 15
    .line 16
    .line 17
    invoke-static {p1, p4, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 22
    .line 23
    iget-object p1, p0, Lcom/narvii/chat/screenroom/utils/ScreenRoomHelper$1;->val$callback:Lcom/narvii/util/Callback;

    .line 24
    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 28
    .line 29
    .line 30
    invoke-interface {p1, p2}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 31
    :cond_0
    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/chat/screenroom/utils/ScreenRoomHelper$1;->val$chatThread:Lcom/narvii/model/ChatThread;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->clone()Lcom/narvii/model/NVObject;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    check-cast p1, Lcom/narvii/model/ChatThread;

    .line 12
    const/4 p2, 0x1

    .line 13
    .line 14
    iput p2, p1, Lcom/narvii/model/ChatThread;->membershipStatus:I

    .line 15
    .line 16
    new-instance p2, Lcom/narvii/notification/Notification;

    .line 17
    .line 18
    const-string v0, "update"

    .line 19
    .line 20
    .line 21
    invoke-direct {p2, v0, p1}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 22
    .line 23
    iget-object p1, p0, Lcom/narvii/chat/screenroom/utils/ScreenRoomHelper$1;->this$0:Lcom/narvii/chat/screenroom/utils/ScreenRoomHelper;

    .line 24
    .line 25
    .line 26
    invoke-static {p1}, Lcom/narvii/chat/screenroom/utils/ScreenRoomHelper;->a(Lcom/narvii/chat/screenroom/utils/ScreenRoomHelper;)Lcom/narvii/app/NVContext;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    instance-of p1, p1, Lcom/narvii/app/NVFragment;

    .line 30
    .line 31
    if-eqz p1, :cond_0

    .line 32
    .line 33
    iget-object p1, p0, Lcom/narvii/chat/screenroom/utils/ScreenRoomHelper$1;->this$0:Lcom/narvii/chat/screenroom/utils/ScreenRoomHelper;

    .line 34
    .line 35
    .line 36
    invoke-static {p1}, Lcom/narvii/chat/screenroom/utils/ScreenRoomHelper;->a(Lcom/narvii/chat/screenroom/utils/ScreenRoomHelper;)Lcom/narvii/app/NVContext;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    check-cast p1, Lcom/narvii/app/NVFragment;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, p2}, Lcom/narvii/app/NVFragment;->sendNotification(Lcom/narvii/notification/Notification;)V

    .line 43
    goto :goto_0

    .line 44
    .line 45
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/screenroom/utils/ScreenRoomHelper$1;->this$0:Lcom/narvii/chat/screenroom/utils/ScreenRoomHelper;

    .line 46
    .line 47
    .line 48
    invoke-static {p1}, Lcom/narvii/chat/screenroom/utils/ScreenRoomHelper;->a(Lcom/narvii/chat/screenroom/utils/ScreenRoomHelper;)Lcom/narvii/app/NVContext;

    .line 49
    move-result-object p1

    .line 50
    .line 51
    instance-of p1, p1, Lcom/narvii/app/NVActivity;

    .line 52
    .line 53
    if-eqz p1, :cond_1

    .line 54
    .line 55
    iget-object p1, p0, Lcom/narvii/chat/screenroom/utils/ScreenRoomHelper$1;->this$0:Lcom/narvii/chat/screenroom/utils/ScreenRoomHelper;

    .line 56
    .line 57
    .line 58
    invoke-static {p1}, Lcom/narvii/chat/screenroom/utils/ScreenRoomHelper;->a(Lcom/narvii/chat/screenroom/utils/ScreenRoomHelper;)Lcom/narvii/app/NVContext;

    .line 59
    move-result-object p1

    .line 60
    .line 61
    check-cast p1, Lcom/narvii/app/NVActivity;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, p2}, Lcom/narvii/app/NVActivity;->sendNotification(Lcom/narvii/notification/Notification;)V

    .line 65
    .line 66
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/narvii/chat/screenroom/utils/ScreenRoomHelper$1;->val$callback:Lcom/narvii/util/Callback;

    .line 67
    .line 68
    if-eqz p1, :cond_2

    .line 69
    .line 70
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 71
    .line 72
    .line 73
    invoke-interface {p1, p2}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 74
    :cond_2
    return-void
.end method
