.class Lcom/narvii/account/LoginBaseFragment$1;
.super Lcom/narvii/account/AccountResponseListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/account/LoginBaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/account/LoginBaseFragment;


# direct methods
.method constructor <init>(Lcom/narvii/account/LoginBaseFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/account/LoginBaseFragment$1;->this$0:Lcom/narvii/account/LoginBaseFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/account/AccountResponseListener;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    return-void
.end method


# virtual methods
.method public onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V
    .locals 4
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
    iget-object p3, p0, Lcom/narvii/account/LoginBaseFragment$1;->this$0:Lcom/narvii/account/LoginBaseFragment;

    .line 3
    const/4 p5, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p3, p5, p2, p4, p1}, Lcom/narvii/account/AccountBaseFragment;->finishWithResult(ZILjava/lang/String;Lcom/narvii/util/http/ApiRequest;)V

    .line 7
    .line 8
    const/16 p3, 0xc8

    .line 9
    const/4 p6, 0x0

    .line 10
    .line 11
    if-ne p2, p3, :cond_0

    .line 12
    .line 13
    const-string p3, "WrongPassword"

    .line 14
    goto :goto_0

    .line 15
    .line 16
    :cond_0
    const/16 p3, 0xd8

    .line 17
    .line 18
    if-ne p2, p3, :cond_1

    .line 19
    .line 20
    const-string p3, "AccountNotExist"

    .line 21
    goto :goto_0

    .line 22
    .line 23
    :cond_1
    if-nez p2, :cond_2

    .line 24
    .line 25
    const-string p3, "NetworkError"

    .line 26
    goto :goto_0

    .line 27
    :cond_2
    move-object p3, p6

    .line 28
    .line 29
    :goto_0
    const-string v0, "email"

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest;->tag(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    if-eqz v1, :cond_3

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest;->tag(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    move-result-object p1

    .line 40
    .line 41
    check-cast p1, Ljava/lang/String;

    .line 42
    move-object v3, p6

    .line 43
    move-object p6, p1

    .line 44
    move-object p1, v3

    .line 45
    goto :goto_1

    .line 46
    .line 47
    :cond_3
    const-string v1, "phoneNumber"

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v1}, Lcom/narvii/util/http/ApiRequest;->tag(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    move-result-object v2

    .line 52
    .line 53
    if-eqz v2, :cond_4

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v1}, Lcom/narvii/util/http/ApiRequest;->tag(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    move-result-object p1

    .line 58
    .line 59
    check-cast p1, Ljava/lang/String;

    .line 60
    goto :goto_1

    .line 61
    :cond_4
    move-object p1, p6

    .line 62
    .line 63
    :goto_1
    iget-object v1, p0, Lcom/narvii/account/LoginBaseFragment$1;->this$0:Lcom/narvii/account/LoginBaseFragment;

    .line 64
    .line 65
    const-string v2, "logging"

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, v2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 69
    move-result-object v1

    .line 70
    .line 71
    check-cast v1, Lcom/narvii/util/logging/LoggingService;

    .line 72
    .line 73
    const/16 v2, 0xa

    .line 74
    .line 75
    new-array v2, v2, [Ljava/lang/Object;

    .line 76
    .line 77
    aput-object v0, v2, p5

    .line 78
    const/4 p5, 0x1

    .line 79
    .line 80
    aput-object p6, v2, p5

    .line 81
    const/4 p5, 0x2

    .line 82
    .line 83
    const-string p6, "phone"

    .line 84
    .line 85
    aput-object p6, v2, p5

    .line 86
    const/4 p5, 0x3

    .line 87
    .line 88
    aput-object p1, v2, p5

    .line 89
    const/4 p1, 0x4

    .line 90
    .line 91
    const-string p5, "code"

    .line 92
    .line 93
    aput-object p5, v2, p1

    .line 94
    const/4 p1, 0x5

    .line 95
    .line 96
    .line 97
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 98
    move-result-object p2

    .line 99
    .line 100
    aput-object p2, v2, p1

    .line 101
    const/4 p1, 0x6

    .line 102
    .line 103
    const-string p2, "reason"

    .line 104
    .line 105
    aput-object p2, v2, p1

    .line 106
    const/4 p1, 0x7

    .line 107
    .line 108
    aput-object p3, v2, p1

    .line 109
    .line 110
    const/16 p1, 0x8

    .line 111
    .line 112
    const-string p2, "message"

    .line 113
    .line 114
    aput-object p2, v2, p1

    .line 115
    .line 116
    const/16 p1, 0x9

    .line 117
    .line 118
    aput-object p4, v2, p1

    .line 119
    .line 120
    const-string p1, "AccountError"

    .line 121
    .line 122
    .line 123
    invoke-interface {v1, p1, v2}, Lcom/narvii/util/logging/LoggingService;->logEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/AccountResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "login success with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "email"

    invoke-virtual {p1, v1}, Lcom/narvii/util/http/ApiRequest;->tag(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Log;->i(Ljava/lang/String;)V

    const-string v0, "emal"

    .line 3
    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest;->tag(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/account/liveramp/LiveRampHelper;->setLRUserEmail(Ljava/lang/String;)V

    .line 4
    iget-object v0, p2, Lcom/narvii/model/api/AccountResponse;->sid:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 5
    invoke-super {p0, p1, p2}, Lcom/narvii/account/AccountResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/AccountResponse;)V

    iget-object p1, p0, Lcom/narvii/account/LoginBaseFragment$1;->this$0:Lcom/narvii/account/LoginBaseFragment;

    const/4 p2, 0x1

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, p2, v1, v0}, Lcom/narvii/account/AccountBaseFragment;->finishWithResult(ZILjava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p2, Lcom/narvii/model/api/AccountResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/account/LoginBaseFragment$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/AccountResponse;)V

    return-void
.end method
