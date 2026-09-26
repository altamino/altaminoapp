.class public final Lcom/narvii/account/LoginFragment$listener$1;
.super Lcom/narvii/account/AccountResponseListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/account/LoginFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/account/LoginFragment;


# direct methods
.method constructor <init>(Lcom/narvii/account/LoginFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/account/LoginFragment$listener$1;->this$0:Lcom/narvii/account/LoginFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/account/AccountResponseListener;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    return-void
.end method


# virtual methods
.method public onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V
    .locals 4
    .param p1    # Lcom/narvii/util/http/ApiRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/narvii/model/api/ApiResponse;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/http/ApiRequest;",
            "I",
            "Ljava/util/List<",
            "+",
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
    const-string p3, "req"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string p3, "message"

    .line 8
    .line 9
    .line 10
    invoke-static {p4, p3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string p5, "t"

    .line 13
    .line 14
    .line 15
    invoke-static {p6, p5}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    iget-object p5, p0, Lcom/narvii/account/LoginFragment$listener$1;->this$0:Lcom/narvii/account/LoginFragment;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p5, p6}, Lcom/narvii/account/AccountBaseFragment;->setHttpCode(Ljava/lang/Throwable;)V

    .line 21
    .line 22
    iget-object p5, p0, Lcom/narvii/account/LoginFragment$listener$1;->this$0:Lcom/narvii/account/LoginFragment;

    .line 23
    .line 24
    .line 25
    invoke-static {p5}, Lcom/narvii/account/LoginFragment;->access$getBinding(Lcom/narvii/account/LoginFragment;)Lcom/narvii/amino/databinding/FragmentLoginBinding;

    .line 26
    move-result-object p5

    .line 27
    .line 28
    iget-object p5, p5, Lcom/narvii/amino/databinding/FragmentLoginBinding;->login:Landroid/widget/Button;

    .line 29
    .line 30
    iget-object p6, p0, Lcom/narvii/account/LoginFragment$listener$1;->this$0:Lcom/narvii/account/LoginFragment;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p6}, Lcom/narvii/account/LoginFragment;->isContentVerified()Z

    .line 34
    move-result p6

    .line 35
    .line 36
    .line 37
    invoke-virtual {p5, p6}, Landroid/view/View;->setEnabled(Z)V

    .line 38
    .line 39
    iget-object p5, p0, Lcom/narvii/account/LoginFragment$listener$1;->this$0:Lcom/narvii/account/LoginFragment;

    .line 40
    const/4 p6, 0x0

    .line 41
    .line 42
    .line 43
    invoke-virtual {p5, p6, p2, p4, p1}, Lcom/narvii/account/AccountBaseFragment;->finishWithResult(ZILjava/lang/String;Lcom/narvii/util/http/ApiRequest;)V

    .line 44
    .line 45
    if-eqz p2, :cond_2

    .line 46
    .line 47
    const/16 p5, 0xc8

    .line 48
    .line 49
    if-eq p2, p5, :cond_1

    .line 50
    .line 51
    const/16 p5, 0xd8

    .line 52
    .line 53
    if-eq p2, p5, :cond_0

    .line 54
    const/4 p5, 0x0

    .line 55
    goto :goto_0

    .line 56
    .line 57
    :cond_0
    const-string p5, "AccountNotExist"

    .line 58
    goto :goto_0

    .line 59
    .line 60
    :cond_1
    const-string p5, "WrongPassword"

    .line 61
    goto :goto_0

    .line 62
    .line 63
    :cond_2
    const-string p5, "NetworkError"

    .line 64
    .line 65
    :goto_0
    const-string v0, "email"

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest;->tag(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    move-result-object v1

    .line 70
    .line 71
    check-cast v1, Ljava/lang/String;

    .line 72
    .line 73
    const-string v2, "phoneNumber"

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, v2}, Lcom/narvii/util/http/ApiRequest;->tag(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    move-result-object p1

    .line 78
    .line 79
    check-cast p1, Ljava/lang/String;

    .line 80
    .line 81
    iget-object v2, p0, Lcom/narvii/account/LoginFragment$listener$1;->this$0:Lcom/narvii/account/LoginFragment;

    .line 82
    .line 83
    const-string v3, "logging"

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2, v3}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 87
    move-result-object v2

    .line 88
    .line 89
    check-cast v2, Lcom/narvii/util/logging/LoggingService;

    .line 90
    .line 91
    const/16 v3, 0xa

    .line 92
    .line 93
    new-array v3, v3, [Ljava/lang/Object;

    .line 94
    .line 95
    aput-object v0, v3, p6

    .line 96
    const/4 p6, 0x1

    .line 97
    .line 98
    aput-object v1, v3, p6

    .line 99
    const/4 p6, 0x2

    .line 100
    .line 101
    const-string v0, "phone"

    .line 102
    .line 103
    aput-object v0, v3, p6

    .line 104
    const/4 p6, 0x3

    .line 105
    .line 106
    aput-object p1, v3, p6

    .line 107
    const/4 p1, 0x4

    .line 108
    .line 109
    const-string p6, "code"

    .line 110
    .line 111
    aput-object p6, v3, p1

    .line 112
    const/4 p1, 0x5

    .line 113
    .line 114
    .line 115
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 116
    move-result-object p2

    .line 117
    .line 118
    aput-object p2, v3, p1

    .line 119
    const/4 p1, 0x6

    .line 120
    .line 121
    const-string p2, "reason"

    .line 122
    .line 123
    aput-object p2, v3, p1

    .line 124
    const/4 p1, 0x7

    .line 125
    .line 126
    aput-object p5, v3, p1

    .line 127
    .line 128
    const/16 p1, 0x8

    .line 129
    .line 130
    aput-object p3, v3, p1

    .line 131
    .line 132
    const/16 p1, 0x9

    .line 133
    .line 134
    aput-object p4, v3, p1

    .line 135
    .line 136
    const-string p1, "AccountError"

    .line 137
    .line 138
    .line 139
    invoke-interface {v2, p1, v3}, Lcom/narvii/util/logging/LoggingService;->logEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/AccountResponse;)V
    .locals 3
    .param p1    # Lcom/narvii/util/http/ApiRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/model/api/AccountResponse;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "req"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resp"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/narvii/account/LoginFragment$listener$1;->this$0:Lcom/narvii/account/LoginFragment;

    .line 2
    invoke-static {v0}, Lcom/narvii/account/LoginFragment;->access$getBinding(Lcom/narvii/account/LoginFragment;)Lcom/narvii/amino/databinding/FragmentLoginBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/narvii/amino/databinding/FragmentLoginBinding;->login:Landroid/widget/Button;

    iget-object v1, p0, Lcom/narvii/account/LoginFragment$listener$1;->this$0:Lcom/narvii/account/LoginFragment;

    invoke-virtual {v1}, Lcom/narvii/account/LoginFragment;->isContentVerified()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    const-string v0, "email"

    .line 3
    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest;->tag(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "login success with "

    if-eqz v0, :cond_0

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/narvii/util/Log;->i(Ljava/lang/String;)V

    .line 5
    invoke-static {v0}, Lcom/narvii/account/liveramp/LiveRampHelper;->setLRUserEmail(Ljava/lang/String;)V

    :cond_0
    const-string v0, "phoneNumber"

    .line 6
    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest;->tag(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/narvii/util/Log;->i(Ljava/lang/String;)V

    .line 8
    invoke-static {v0}, Lcom/narvii/account/liveramp/LiveRampHelper;->setLRUserPhone(Ljava/lang/String;)V

    .line 9
    :cond_1
    sget-object v0, Lai/medialab/medialabads2/MediaLabAds;->Companion:Lai/medialab/medialabads2/MediaLabAds$Companion;

    invoke-virtual {v0}, Lai/medialab/medialabads2/MediaLabAds$Companion;->getInstance()Lai/medialab/medialabads2/MediaLabAds;

    move-result-object v0

    iget-object v1, p2, Lcom/narvii/model/api/AccountResponse;->account:Lcom/narvii/model/User;

    invoke-virtual {v1}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lai/medialab/medialabads2/MediaLabAds;->setUserId(Ljava/lang/String;)V

    .line 10
    iget-object v0, p2, Lcom/narvii/model/api/AccountResponse;->sid:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    iget-object v0, p0, Lcom/narvii/account/LoginFragment$listener$1;->this$0:Lcom/narvii/account/LoginFragment;

    .line 11
    invoke-static {v0, p1, p2}, Lcom/narvii/account/LoginFragment;->access$savePendingOnFinishLogin(Lcom/narvii/account/LoginFragment;Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/AccountResponse;)V

    .line 12
    invoke-super {p0, p1, p2}, Lcom/narvii/account/AccountResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/AccountResponse;)V

    iget-object p1, p0, Lcom/narvii/account/LoginFragment$listener$1;->this$0:Lcom/narvii/account/LoginFragment;

    const/4 p2, 0x1

    const/4 v0, 0x0

    .line 13
    invoke-virtual {p1, p2, v1, v0}, Lcom/narvii/account/AccountBaseFragment;->finishWithResult(ZILjava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/model/api/AccountResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/account/LoginFragment$listener$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/AccountResponse;)V

    return-void
.end method
