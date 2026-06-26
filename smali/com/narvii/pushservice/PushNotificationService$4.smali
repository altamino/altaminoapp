.class Lcom/narvii/pushservice/PushNotificationService$4;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "PushNotificationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/pushservice/PushNotificationService;->fetchCommunity(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/model/api/CommunityResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/pushservice/PushNotificationService;

.field final synthetic val$blocking:Lcom/narvii/util/BlockingItem;


# direct methods
.method constructor <init>(Lcom/narvii/pushservice/PushNotificationService;Ljava/lang/Class;Lcom/narvii/util/BlockingItem;)V
    .locals 0

    .line 825
    iput-object p1, p0, Lcom/narvii/pushservice/PushNotificationService$4;->this$0:Lcom/narvii/pushservice/PushNotificationService;

    iput-object p3, p0, Lcom/narvii/pushservice/PushNotificationService$4;->val$blocking:Lcom/narvii/util/BlockingItem;

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

    .line 834
    iget-object p1, p0, Lcom/narvii/pushservice/PushNotificationService$4;->val$blocking:Lcom/narvii/util/BlockingItem;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Lcom/narvii/util/BlockingItem;->put(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 825
    check-cast p2, Lcom/narvii/model/api/CommunityResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/pushservice/PushNotificationService$4;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/CommunityResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/CommunityResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 828
    iget-object p1, p0, Lcom/narvii/pushservice/PushNotificationService$4;->this$0:Lcom/narvii/pushservice/PushNotificationService;

    iget-object p1, p1, Lcom/narvii/pushservice/PushNotificationService;->community:Lcom/narvii/community/CommunityService;

    iget-object v0, p2, Lcom/narvii/model/api/CommunityResponse;->community:Lcom/narvii/model/Community;

    iget-object p2, p2, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1, p2}, Lcom/narvii/community/CommunityService;->updateCommunity(Lcom/narvii/model/Community;ZLjava/lang/String;)V

    .line 829
    iget-object p1, p0, Lcom/narvii/pushservice/PushNotificationService$4;->val$blocking:Lcom/narvii/util/BlockingItem;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Lcom/narvii/util/BlockingItem;->put(Ljava/lang/Object;)V

    return-void
.end method
