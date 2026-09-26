.class Lcom/narvii/account/UrlLoginFragment$1;
.super Lcom/narvii/account/AccountResponseListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/account/UrlLoginFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/account/UrlLoginFragment;


# direct methods
.method constructor <init>(Lcom/narvii/account/UrlLoginFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/account/UrlLoginFragment$1;->this$0:Lcom/narvii/account/UrlLoginFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/account/AccountResponseListener;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    return-void
.end method

.method public static safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Landroidx/fragment/app/Fragment;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V
    .locals 5
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
    iget-object p3, p0, Lcom/narvii/account/UrlLoginFragment$1;->this$0:Lcom/narvii/account/UrlLoginFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p3}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 6
    move-result-object p3

    .line 7
    const/4 p5, 0x1

    .line 8
    .line 9
    .line 10
    invoke-static {p3, p4, p5}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 11
    move-result-object p3

    .line 12
    .line 13
    .line 14
    invoke-virtual {p3}, Lcom/narvii/util/NVToast;->show()V

    .line 15
    .line 16
    iget-object p3, p0, Lcom/narvii/account/UrlLoginFragment$1;->this$0:Lcom/narvii/account/UrlLoginFragment;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p3}, Lcom/narvii/app/NVFragment;->finish()V

    .line 20
    .line 21
    const/16 p3, 0xc8

    .line 22
    const/4 p6, 0x0

    .line 23
    .line 24
    if-ne p2, p3, :cond_0

    .line 25
    .line 26
    const-string p3, "WrongPassword"

    .line 27
    goto :goto_0

    .line 28
    .line 29
    :cond_0
    const/16 p3, 0xd8

    .line 30
    .line 31
    if-ne p2, p3, :cond_1

    .line 32
    .line 33
    const-string p3, "AccountNotExist"

    .line 34
    goto :goto_0

    .line 35
    .line 36
    :cond_1
    if-nez p2, :cond_2

    .line 37
    .line 38
    const-string p3, "NetworkError"

    .line 39
    goto :goto_0

    .line 40
    :cond_2
    move-object p3, p6

    .line 41
    .line 42
    :goto_0
    const-string v0, "email"

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest;->tag(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    move-result-object v1

    .line 47
    .line 48
    if-eqz v1, :cond_3

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest;->tag(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    move-result-object p1

    .line 53
    .line 54
    check-cast p1, Ljava/lang/String;

    .line 55
    move-object v4, p6

    .line 56
    move-object p6, p1

    .line 57
    move-object p1, v4

    .line 58
    goto :goto_1

    .line 59
    .line 60
    :cond_3
    const-string v1, "phoneNumber"

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, v1}, Lcom/narvii/util/http/ApiRequest;->tag(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    move-result-object v2

    .line 65
    .line 66
    if-eqz v2, :cond_4

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, v1}, Lcom/narvii/util/http/ApiRequest;->tag(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    move-result-object p1

    .line 71
    .line 72
    check-cast p1, Ljava/lang/String;

    .line 73
    goto :goto_1

    .line 74
    :cond_4
    move-object p1, p6

    .line 75
    .line 76
    :goto_1
    iget-object v1, p0, Lcom/narvii/account/UrlLoginFragment$1;->this$0:Lcom/narvii/account/UrlLoginFragment;

    .line 77
    .line 78
    const-string v2, "logging"

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1, v2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 82
    move-result-object v1

    .line 83
    .line 84
    check-cast v1, Lcom/narvii/util/logging/LoggingService;

    .line 85
    .line 86
    const/16 v2, 0xa

    .line 87
    .line 88
    new-array v2, v2, [Ljava/lang/Object;

    .line 89
    const/4 v3, 0x0

    .line 90
    .line 91
    aput-object v0, v2, v3

    .line 92
    .line 93
    aput-object p6, v2, p5

    .line 94
    const/4 p5, 0x2

    .line 95
    .line 96
    const-string p6, "phone"

    .line 97
    .line 98
    aput-object p6, v2, p5

    .line 99
    const/4 p5, 0x3

    .line 100
    .line 101
    aput-object p1, v2, p5

    .line 102
    const/4 p1, 0x4

    .line 103
    .line 104
    const-string p5, "code"

    .line 105
    .line 106
    aput-object p5, v2, p1

    .line 107
    const/4 p1, 0x5

    .line 108
    .line 109
    .line 110
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 111
    move-result-object p2

    .line 112
    .line 113
    aput-object p2, v2, p1

    .line 114
    const/4 p1, 0x6

    .line 115
    .line 116
    const-string p2, "reason"

    .line 117
    .line 118
    aput-object p2, v2, p1

    .line 119
    const/4 p1, 0x7

    .line 120
    .line 121
    aput-object p3, v2, p1

    .line 122
    .line 123
    const/16 p1, 0x8

    .line 124
    .line 125
    const-string p2, "message"

    .line 126
    .line 127
    aput-object p2, v2, p1

    .line 128
    .line 129
    const/16 p1, 0x9

    .line 130
    .line 131
    aput-object p4, v2, p1

    .line 132
    .line 133
    const-string p1, "AccountError"

    .line 134
    .line 135
    .line 136
    invoke-interface {v1, p1, v2}, Lcom/narvii/util/logging/LoggingService;->logEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/AccountResponse;)V
    .locals 4
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

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Log;->i(Ljava/lang/String;)V

    .line 3
    iget-object v0, p2, Lcom/narvii/model/api/AccountResponse;->sid:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    .line 4
    invoke-super {p0, p1, p2}, Lcom/narvii/account/AccountResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/AccountResponse;)V

    iget-object p2, p0, Lcom/narvii/account/UrlLoginFragment$1;->this$0:Lcom/narvii/account/UrlLoginFragment;

    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 5
    invoke-virtual {p2, v0, v2, v3}, Lcom/narvii/account/AccountBaseFragment;->finishWithResult(ZILjava/lang/String;)V

    .line 6
    new-instance p2, Landroid/content/Intent;

    iget-object v0, p0, Lcom/narvii/account/UrlLoginFragment$1;->this$0:Lcom/narvii/account/UrlLoginFragment;

    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Lcom/narvii/master/MasterActivity;

    invoke-direct {p2, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/narvii/account/UrlLoginFragment$1;->this$0:Lcom/narvii/account/UrlLoginFragment;

    .line 7
    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/narvii/app/NVContext;

    invoke-static {v0, p2}, Lcom/narvii/master/MasterActivity;->backToMaster(Lcom/narvii/app/NVContext;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p2

    .line 8
    invoke-virtual {p1, v1}, Lcom/narvii/util/http/ApiRequest;->tag(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/account/liveramp/LiveRampHelper;->setLRUserEmail(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/narvii/account/UrlLoginFragment$1;->this$0:Lcom/narvii/account/UrlLoginFragment;

    .line 9
    invoke-static {p1, p2}, Lcom/narvii/account/UrlLoginFragment$1;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/narvii/account/UrlLoginFragment$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/AccountResponse;)V

    return-void
.end method
