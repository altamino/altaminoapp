.class public final Lcom/narvii/account/verifyaccount/CodeVerifyFragment$verifyEmailCode$1;
.super Lcom/narvii/util/http/ApiJsonResponseListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->verifyEmailCode(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiJsonResponseListener<",
        "Lcom/narvii/model/api/ApiResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $code:Ljava/lang/String;

.field final synthetic this$0:Lcom/narvii/account/verifyaccount/CodeVerifyFragment;


# direct methods
.method constructor <init>(Lcom/narvii/account/verifyaccount/CodeVerifyFragment;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/account/verifyaccount/CodeVerifyFragment;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "Lcom/narvii/model/api/ApiResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/account/verifyaccount/CodeVerifyFragment$verifyEmailCode$1;->this$0:Lcom/narvii/account/verifyaccount/CodeVerifyFragment;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/account/verifyaccount/CodeVerifyFragment$verifyEmailCode$1;->$code:Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p3}, Lcom/narvii/util/http/ApiJsonResponseListener;-><init>(Ljava/lang/Class;)V

    .line 8
    return-void
.end method


# virtual methods
.method public onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V
    .locals 2
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
    const-string v0, "req"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "message"

    .line 8
    .line 9
    .line 10
    invoke-static {p4, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string/jumbo v1, "t"

    .line 13
    .line 14
    .line 15
    invoke-static {p6, v1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 19
    .line 20
    iget-object p1, p0, Lcom/narvii/account/verifyaccount/CodeVerifyFragment$verifyEmailCode$1;->this$0:Lcom/narvii/account/verifyaccount/CodeVerifyFragment;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 24
    move-result p1

    .line 25
    .line 26
    if-nez p1, :cond_0

    .line 27
    return-void

    .line 28
    .line 29
    :cond_0
    iget-object p1, p0, Lcom/narvii/account/verifyaccount/CodeVerifyFragment$verifyEmailCode$1;->this$0:Lcom/narvii/account/verifyaccount/CodeVerifyFragment;

    .line 30
    .line 31
    .line 32
    invoke-static {p1}, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->access$dismissProgress(Lcom/narvii/account/verifyaccount/CodeVerifyFragment;)V

    .line 33
    .line 34
    iget-object p1, p0, Lcom/narvii/account/verifyaccount/CodeVerifyFragment$verifyEmailCode$1;->this$0:Lcom/narvii/account/verifyaccount/CodeVerifyFragment;

    .line 35
    const/4 p3, 0x0

    .line 36
    .line 37
    .line 38
    invoke-static {p1, p3}, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->access$setRequest$p(Lcom/narvii/account/verifyaccount/CodeVerifyFragment;Lcom/narvii/util/http/ApiRequest;)V

    .line 39
    .line 40
    iget-object p1, p0, Lcom/narvii/account/verifyaccount/CodeVerifyFragment$verifyEmailCode$1;->this$0:Lcom/narvii/account/verifyaccount/CodeVerifyFragment;

    .line 41
    const/4 p3, 0x1

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, p3}, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->updateCodeErrorMessage(Z)V

    .line 45
    .line 46
    const/16 p1, 0xc1e

    .line 47
    .line 48
    if-ne p2, p1, :cond_1

    .line 49
    .line 50
    iget-object p1, p0, Lcom/narvii/account/verifyaccount/CodeVerifyFragment$verifyEmailCode$1;->this$0:Lcom/narvii/account/verifyaccount/CodeVerifyFragment;

    .line 51
    .line 52
    .line 53
    invoke-static {p1}, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->access$getCodeVerificationError$p$s-2137646762(Lcom/narvii/account/verifyaccount/CodeVerifyFragment;)Landroid/widget/TextView;

    .line 54
    move-result-object p1

    .line 55
    .line 56
    .line 57
    const p5, 0x7f120838

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, p5}, Landroid/widget/TextView;->setText(I)V

    .line 61
    .line 62
    iget-object p1, p0, Lcom/narvii/account/verifyaccount/CodeVerifyFragment$verifyEmailCode$1;->this$0:Lcom/narvii/account/verifyaccount/CodeVerifyFragment;

    .line 63
    .line 64
    .line 65
    invoke-static {p1}, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->access$getCodeEditView$p$s-2137646762(Lcom/narvii/account/verifyaccount/CodeVerifyFragment;)Lcom/narvii/widget/CodeEditView;

    .line 66
    move-result-object p1

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1}, Lcom/narvii/widget/CodeEditView;->clearCode()V

    .line 70
    goto :goto_0

    .line 71
    .line 72
    :cond_1
    iget-object p1, p0, Lcom/narvii/account/verifyaccount/CodeVerifyFragment$verifyEmailCode$1;->this$0:Lcom/narvii/account/verifyaccount/CodeVerifyFragment;

    .line 73
    .line 74
    .line 75
    invoke-static {p1}, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->access$getCodeVerificationError$p$s-2137646762(Lcom/narvii/account/verifyaccount/CodeVerifyFragment;)Landroid/widget/TextView;

    .line 76
    move-result-object p1

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    .line 81
    :goto_0
    iget-object p1, p0, Lcom/narvii/account/verifyaccount/CodeVerifyFragment$verifyEmailCode$1;->this$0:Lcom/narvii/account/verifyaccount/CodeVerifyFragment;

    .line 82
    .line 83
    .line 84
    invoke-static {p1}, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->access$getCodeVerificationError$p$s-2137646762(Lcom/narvii/account/verifyaccount/CodeVerifyFragment;)Landroid/widget/TextView;

    .line 85
    move-result-object p1

    .line 86
    const/4 p5, 0x0

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, p5}, Landroid/view/View;->setVisibility(I)V

    .line 90
    .line 91
    iget-object p1, p0, Lcom/narvii/account/verifyaccount/CodeVerifyFragment$verifyEmailCode$1;->this$0:Lcom/narvii/account/verifyaccount/CodeVerifyFragment;

    .line 92
    .line 93
    .line 94
    invoke-static {p1}, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->access$getCodeEditView$p$s-2137646762(Lcom/narvii/account/verifyaccount/CodeVerifyFragment;)Lcom/narvii/widget/CodeEditView;

    .line 95
    move-result-object p1

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1, p3}, Lcom/narvii/widget/CodeEditView;->isError(Z)V

    .line 99
    .line 100
    iget-object p1, p0, Lcom/narvii/account/verifyaccount/CodeVerifyFragment$verifyEmailCode$1;->this$0:Lcom/narvii/account/verifyaccount/CodeVerifyFragment;

    .line 101
    .line 102
    const-string p6, "logging"

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1, p6}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 106
    move-result-object p1

    .line 107
    .line 108
    check-cast p1, Lcom/narvii/util/logging/LoggingService;

    .line 109
    .line 110
    const/16 p6, 0x8

    .line 111
    .line 112
    new-array p6, p6, [Ljava/lang/Object;

    .line 113
    .line 114
    const-string v1, "email"

    .line 115
    .line 116
    aput-object v1, p6, p5

    .line 117
    .line 118
    iget-object p5, p0, Lcom/narvii/account/verifyaccount/CodeVerifyFragment$verifyEmailCode$1;->this$0:Lcom/narvii/account/verifyaccount/CodeVerifyFragment;

    .line 119
    .line 120
    .line 121
    invoke-static {p5}, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->access$getEmail(Lcom/narvii/account/verifyaccount/CodeVerifyFragment;)Ljava/lang/String;

    .line 122
    move-result-object p5

    .line 123
    .line 124
    aput-object p5, p6, p3

    .line 125
    const/4 p3, 0x2

    .line 126
    .line 127
    const-string p5, "code"

    .line 128
    .line 129
    aput-object p5, p6, p3

    .line 130
    const/4 p3, 0x3

    .line 131
    .line 132
    .line 133
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 134
    move-result-object p5

    .line 135
    .line 136
    aput-object p5, p6, p3

    .line 137
    const/4 p3, 0x4

    .line 138
    .line 139
    const-string p5, "reason"

    .line 140
    .line 141
    aput-object p5, p6, p3

    .line 142
    .line 143
    if-nez p2, :cond_2

    .line 144
    .line 145
    const-string p2, "NetworkError"

    .line 146
    goto :goto_1

    .line 147
    .line 148
    :cond_2
    const-string p2, "InvalidVerificationCode"

    .line 149
    :goto_1
    const/4 p3, 0x5

    .line 150
    .line 151
    aput-object p2, p6, p3

    .line 152
    const/4 p2, 0x6

    .line 153
    .line 154
    aput-object v0, p6, p2

    .line 155
    const/4 p2, 0x7

    .line 156
    .line 157
    aput-object p4, p6, p2

    .line 158
    .line 159
    const-string p2, "AccountError"

    .line 160
    .line 161
    .line 162
    invoke-interface {p1, p2, p6}, Lcom/narvii/util/logging/LoggingService;->logEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 163
    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 3
    .param p1    # Lcom/narvii/util/http/ApiRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/model/api/ApiResponse;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "req"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "resp"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/account/verifyaccount/CodeVerifyFragment$verifyEmailCode$1;->this$0:Lcom/narvii/account/verifyaccount/CodeVerifyFragment;

    .line 13
    const/4 v1, 0x0

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1}, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->access$setRequest$p(Lcom/narvii/account/verifyaccount/CodeVerifyFragment;Lcom/narvii/util/http/ApiRequest;)V

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/account/verifyaccount/CodeVerifyFragment$verifyEmailCode$1;->this$0:Lcom/narvii/account/verifyaccount/CodeVerifyFragment;

    .line 19
    .line 20
    iget-object v2, p0, Lcom/narvii/account/verifyaccount/CodeVerifyFragment$verifyEmailCode$1;->$code:Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    invoke-static {v0, v2}, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->access$setLastVerifyCode$p(Lcom/narvii/account/verifyaccount/CodeVerifyFragment;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 27
    .line 28
    iget-object p1, p0, Lcom/narvii/account/verifyaccount/CodeVerifyFragment$verifyEmailCode$1;->this$0:Lcom/narvii/account/verifyaccount/CodeVerifyFragment;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 32
    move-result p1

    .line 33
    .line 34
    if-nez p1, :cond_0

    .line 35
    return-void

    .line 36
    .line 37
    :cond_0
    iget-object p1, p0, Lcom/narvii/account/verifyaccount/CodeVerifyFragment$verifyEmailCode$1;->this$0:Lcom/narvii/account/verifyaccount/CodeVerifyFragment;

    .line 38
    .line 39
    .line 40
    invoke-static {p1}, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->access$dismissProgress(Lcom/narvii/account/verifyaccount/CodeVerifyFragment;)V

    .line 41
    .line 42
    iget-object p1, p0, Lcom/narvii/account/verifyaccount/CodeVerifyFragment$verifyEmailCode$1;->this$0:Lcom/narvii/account/verifyaccount/CodeVerifyFragment;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/narvii/util/http/ApiJsonResponseListener;->json()Lcom/fasterxml/jackson/databind/JsonNode;

    .line 46
    move-result-object p2

    .line 47
    .line 48
    const-string/jumbo v0, "validationContext"

    .line 49
    .line 50
    .line 51
    filled-new-array {v0}, [Ljava/lang/String;

    .line 52
    move-result-object v0

    .line 53
    .line 54
    .line 55
    invoke-static {p2, v0}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 56
    move-result-object p2

    .line 57
    .line 58
    const-string v0, "null cannot be cast to non-null type com.fasterxml.jackson.databind.node.ObjectNode"

    .line 59
    .line 60
    .line 61
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    .line 63
    check-cast p2, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 64
    .line 65
    .line 66
    invoke-static {p1, p2}, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->access$setValidationContext$p(Lcom/narvii/account/verifyaccount/CodeVerifyFragment;Lcom/fasterxml/jackson/databind/node/ObjectNode;)V

    .line 67
    .line 68
    iget-object p1, p0, Lcom/narvii/account/verifyaccount/CodeVerifyFragment$verifyEmailCode$1;->this$0:Lcom/narvii/account/verifyaccount/CodeVerifyFragment;

    .line 69
    .line 70
    .line 71
    invoke-static {p1}, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->access$getCodeEditView$p$s-2137646762(Lcom/narvii/account/verifyaccount/CodeVerifyFragment;)Lcom/narvii/widget/CodeEditView;

    .line 72
    move-result-object p1

    .line 73
    const/4 p2, 0x0

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, p2}, Lcom/narvii/widget/CodeEditView;->isError(Z)V

    .line 77
    .line 78
    iget-object p1, p0, Lcom/narvii/account/verifyaccount/CodeVerifyFragment$verifyEmailCode$1;->this$0:Lcom/narvii/account/verifyaccount/CodeVerifyFragment;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 82
    move-result-object p1

    .line 83
    .line 84
    instance-of p2, p1, Lcom/narvii/account/LoginActivity;

    .line 85
    .line 86
    if-eqz p2, :cond_1

    .line 87
    move-object v1, p1

    .line 88
    .line 89
    check-cast v1, Lcom/narvii/account/LoginActivity;

    .line 90
    .line 91
    :cond_1
    if-nez v1, :cond_2

    .line 92
    goto :goto_0

    .line 93
    .line 94
    :cond_2
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 95
    .line 96
    iput-object p1, v1, Lcom/narvii/account/LoginActivity;->statEmailVerificationSkipped:Ljava/lang/Boolean;

    .line 97
    .line 98
    :goto_0
    iget-object p1, p0, Lcom/narvii/account/verifyaccount/CodeVerifyFragment$verifyEmailCode$1;->this$0:Lcom/narvii/account/verifyaccount/CodeVerifyFragment;

    .line 99
    .line 100
    .line 101
    invoke-static {p1}, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->access$getVerifyAccountType(Lcom/narvii/account/verifyaccount/CodeVerifyFragment;)Lcom/narvii/account/verifyaccount/VerifyAccountType;

    .line 102
    move-result-object p1

    .line 103
    .line 104
    instance-of p2, p1, Lcom/narvii/account/verifyaccount/ResetPassVerifyAccount;

    .line 105
    .line 106
    if-eqz p2, :cond_3

    .line 107
    .line 108
    iget-object p1, p0, Lcom/narvii/account/verifyaccount/CodeVerifyFragment$verifyEmailCode$1;->this$0:Lcom/narvii/account/verifyaccount/CodeVerifyFragment;

    .line 109
    .line 110
    iget-object p2, p0, Lcom/narvii/account/verifyaccount/CodeVerifyFragment$verifyEmailCode$1;->$code:Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    invoke-static {p1, p2}, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->access$checkResetPassword(Lcom/narvii/account/verifyaccount/CodeVerifyFragment;Ljava/lang/String;)V

    .line 114
    goto :goto_2

    .line 115
    .line 116
    :cond_3
    instance-of p2, p1, Lcom/narvii/account/verifyaccount/VerifyNewIdentityVerifyAccount;

    .line 117
    .line 118
    if-eqz p2, :cond_4

    .line 119
    .line 120
    iget-object p1, p0, Lcom/narvii/account/verifyaccount/CodeVerifyFragment$verifyEmailCode$1;->this$0:Lcom/narvii/account/verifyaccount/CodeVerifyFragment;

    .line 121
    .line 122
    iget-object p2, p0, Lcom/narvii/account/verifyaccount/CodeVerifyFragment$verifyEmailCode$1;->$code:Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    invoke-static {p1, p2}, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->access$verifyNewEmail(Lcom/narvii/account/verifyaccount/CodeVerifyFragment;Ljava/lang/String;)V

    .line 126
    goto :goto_2

    .line 127
    .line 128
    :cond_4
    instance-of p2, p1, Lcom/narvii/account/verifyaccount/AddIdentityVerifyAccount;

    .line 129
    .line 130
    if-eqz p2, :cond_5

    .line 131
    goto :goto_1

    .line 132
    .line 133
    :cond_5
    instance-of p1, p1, Lcom/narvii/account/verifyaccount/UpdateIdentityVerifyAccount;

    .line 134
    .line 135
    if-eqz p1, :cond_6

    .line 136
    .line 137
    :goto_1
    iget-object p1, p0, Lcom/narvii/account/verifyaccount/CodeVerifyFragment$verifyEmailCode$1;->this$0:Lcom/narvii/account/verifyaccount/CodeVerifyFragment;

    .line 138
    .line 139
    iget-object p2, p0, Lcom/narvii/account/verifyaccount/CodeVerifyFragment$verifyEmailCode$1;->$code:Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    invoke-static {p1, p2}, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->access$setIdentity(Lcom/narvii/account/verifyaccount/CodeVerifyFragment;Ljava/lang/String;)V

    .line 143
    goto :goto_2

    .line 144
    .line 145
    :cond_6
    iget-object p1, p0, Lcom/narvii/account/verifyaccount/CodeVerifyFragment$verifyEmailCode$1;->this$0:Lcom/narvii/account/verifyaccount/CodeVerifyFragment;

    .line 146
    .line 147
    .line 148
    invoke-static {p1}, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->access$goToSetPassword(Lcom/narvii/account/verifyaccount/CodeVerifyFragment;)V

    .line 149
    :goto_2
    return-void
.end method
