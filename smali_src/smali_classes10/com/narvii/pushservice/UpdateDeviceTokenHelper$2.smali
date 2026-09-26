.class Lcom/narvii/pushservice/UpdateDeviceTokenHelper$2;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/pushservice/UpdateDeviceTokenHelper$2;->this$0:Lcom/narvii/pushservice/UpdateDeviceTokenHelper;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    .line 6
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
    const/16 p3, 0xe8

    .line 3
    .line 4
    if-ne p2, p3, :cond_0

    .line 5
    .line 6
    const-string p1, "global device token not exists, try to bind again"

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    const-string p2, "push"

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, p2}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    check-cast p1, Lcom/narvii/pushservice/PushService;

    .line 22
    const/4 p2, 0x1

    .line 23
    const/4 p3, 0x0

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, p2, p3}, Lcom/narvii/pushservice/PushService;->bindGcmToken(ZLcom/narvii/util/Callback;)V

    .line 27
    goto :goto_0

    .line 28
    .line 29
    :cond_0
    if-nez p2, :cond_1

    .line 30
    .line 31
    const-string p2, "cid"

    .line 32
    const/4 p3, 0x0

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, p2, p3}, Lcom/narvii/util/http/ApiRequest;->tagInt(Ljava/lang/Object;I)I

    .line 36
    move-result p1

    .line 37
    .line 38
    iget-object p2, p0, Lcom/narvii/pushservice/UpdateDeviceTokenHelper$2;->this$0:Lcom/narvii/pushservice/UpdateDeviceTokenHelper;

    .line 39
    .line 40
    iget-object p2, p2, Lcom/narvii/pushservice/UpdateDeviceTokenHelper;->requestTime:Ljava/util/HashMap;

    .line 41
    .line 42
    .line 43
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    move-result-object p1

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    :cond_1
    :goto_0
    return-void
.end method
