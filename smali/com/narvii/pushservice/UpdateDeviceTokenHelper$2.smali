.class Lcom/narvii/pushservice/UpdateDeviceTokenHelper$2;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "UpdateDeviceTokenHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/pushservice/UpdateDeviceTokenHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/pushservice/DeviceResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/pushservice/UpdateDeviceTokenHelper;


# direct methods
.method constructor <init>(Lcom/narvii/pushservice/UpdateDeviceTokenHelper;Ljava/lang/Class;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/narvii/pushservice/UpdateDeviceTokenHelper$2;->this$0:Lcom/narvii/pushservice/UpdateDeviceTokenHelper;

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

    const/16 p3, 0xe8

    if-ne p2, p3, :cond_0

    const-string p1, "global device token not exists, try to bind again"

    .line 150
    invoke-static {p1}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    .line 151
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object p1

    const-string/jumbo p2, "push"

    invoke-virtual {p1, p2}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/pushservice/PushService;

    const/4 p2, 0x1

    const/4 p3, 0x0

    .line 152
    invoke-virtual {p1, p2, p3}, Lcom/narvii/pushservice/PushService;->bindGcmToken(ZLcom/narvii/util/Callback;)V

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    const/4 p2, 0x0

    const-string p3, "cid"

    .line 154
    invoke-virtual {p1, p3, p2}, Lcom/narvii/util/http/ApiRequest;->tagInt(Ljava/lang/Object;I)I

    move-result p1

    .line 155
    iget-object p2, p0, Lcom/narvii/pushservice/UpdateDeviceTokenHelper$2;->this$0:Lcom/narvii/pushservice/UpdateDeviceTokenHelper;

    iget-object p2, p2, Lcom/narvii/pushservice/UpdateDeviceTokenHelper;->requestTime:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method
