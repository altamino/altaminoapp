.class Lcom/narvii/monetization/store/TippingConfirmDialog$5;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/store/TippingConfirmDialog;->doSubmit()V
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
.field final synthetic this$0:Lcom/narvii/monetization/store/TippingConfirmDialog;

.field final synthetic val$price:I


# direct methods
.method constructor <init>(Lcom/narvii/monetization/store/TippingConfirmDialog;Ljava/lang/Class;I)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog$5;->this$0:Lcom/narvii/monetization/store/TippingConfirmDialog;

    .line 3
    .line 4
    iput p3, p0, Lcom/narvii/monetization/store/TippingConfirmDialog$5;->val$price:I

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    .line 8
    return-void
.end method

.method public static synthetic a(Lcom/narvii/monetization/store/TippingConfirmDialog$5;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/monetization/store/TippingConfirmDialog$5;->lambda$onFinish$0(Ljava/lang/Boolean;)V

    return-void
.end method

.method private synthetic lambda$onFinish$0(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog$5;->this$0:Lcom/narvii/monetization/store/TippingConfirmDialog;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/narvii/monetization/store/TippingConfirmDialog;->dismiss()V

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
    iget-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog$5;->this$0:Lcom/narvii/monetization/store/TippingConfirmDialog;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/monetization/store/TippingConfirmDialog;->a(Lcom/narvii/monetization/store/TippingConfirmDialog;)Lcom/narvii/widget/PurchaseConfirmButton;

    .line 6
    move-result-object p1

    .line 7
    const/4 p3, 0x0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, p3}, Lcom/narvii/widget/PurchaseConfirmButton;->updateSendingStatus(Z)V

    .line 11
    .line 12
    const/16 p1, 0x10cc

    .line 13
    .line 14
    if-ne p2, p1, :cond_0

    .line 15
    .line 16
    iget-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog$5;->this$0:Lcom/narvii/monetization/store/TippingConfirmDialog;

    .line 17
    const/4 p2, 0x1

    .line 18
    .line 19
    .line 20
    invoke-static {p1, p2}, Lcom/narvii/monetization/store/TippingConfirmDialog;->q(Lcom/narvii/monetization/store/TippingConfirmDialog;Z)V

    .line 21
    goto :goto_0

    .line 22
    .line 23
    :cond_0
    const/16 p1, 0xe6

    .line 24
    .line 25
    if-ne p2, p1, :cond_1

    .line 26
    .line 27
    iget-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog$5;->this$0:Lcom/narvii/monetization/store/TippingConfirmDialog;

    .line 28
    .line 29
    .line 30
    invoke-static {p1}, Lcom/narvii/monetization/store/TippingConfirmDialog;->p(Lcom/narvii/monetization/store/TippingConfirmDialog;)V

    .line 31
    goto :goto_0

    .line 32
    .line 33
    :cond_1
    iget-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog$5;->this$0:Lcom/narvii/monetization/store/TippingConfirmDialog;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    .line 40
    invoke-static {p1, p4, p3}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 41
    move-result-object p1

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 45
    .line 46
    :goto_0
    iget-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog$5;->this$0:Lcom/narvii/monetization/store/TippingConfirmDialog;

    .line 47
    .line 48
    .line 49
    invoke-static {p1}, Lcom/narvii/monetization/store/TippingConfirmDialog;->f(Lcom/narvii/monetization/store/TippingConfirmDialog;)Lcom/narvii/app/NVContext;

    .line 50
    move-result-object p1

    .line 51
    .line 52
    const-string p2, "statistics"

    .line 53
    .line 54
    .line 55
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 56
    move-result-object p1

    .line 57
    .line 58
    check-cast p1, Lcom/narvii/util/statistics/StatisticsService;

    .line 59
    .line 60
    const-string p2, "Give Props"

    .line 61
    .line 62
    .line 63
    invoke-interface {p1, p2}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 64
    move-result-object p1

    .line 65
    .line 66
    const-string p2, "Give Props Total"

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, p2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 70
    move-result-object p1

    .line 71
    .line 72
    const-string p2, "Amount"

    .line 73
    .line 74
    iget p4, p0, Lcom/narvii/monetization/store/TippingConfirmDialog$5;->val$price:I

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, p2, p4}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;I)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 78
    move-result-object p1

    .line 79
    .line 80
    const-string p2, "Successful"

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, p2, p3}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Z)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 84
    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog$5;->this$0:Lcom/narvii/monetization/store/TippingConfirmDialog;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/monetization/store/TippingConfirmDialog;->d(Lcom/narvii/monetization/store/TippingConfirmDialog;)Lcom/narvii/wallet/MembershipService;

    .line 6
    move-result-object p1

    .line 7
    const/4 p2, 0x1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, p2}, Lcom/narvii/wallet/MembershipService;->refreshWallet(Z)V

    .line 11
    .line 12
    iget-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog$5;->this$0:Lcom/narvii/monetization/store/TippingConfirmDialog;

    .line 13
    .line 14
    .line 15
    invoke-static {p1}, Lcom/narvii/monetization/store/TippingConfirmDialog;->h(Lcom/narvii/monetization/store/TippingConfirmDialog;)Lcom/narvii/model/Tippable;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    instance-of p1, p1, Lcom/narvii/model/NVObject;

    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    iget-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog$5;->this$0:Lcom/narvii/monetization/store/TippingConfirmDialog;

    .line 23
    .line 24
    .line 25
    invoke-static {p1}, Lcom/narvii/monetization/store/TippingConfirmDialog;->h(Lcom/narvii/monetization/store/TippingConfirmDialog;)Lcom/narvii/model/Tippable;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    instance-of p1, p1, Lcom/narvii/model/ChatThread;

    .line 29
    .line 30
    if-nez p1, :cond_0

    .line 31
    .line 32
    iget-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog$5;->this$0:Lcom/narvii/monetization/store/TippingConfirmDialog;

    .line 33
    .line 34
    .line 35
    invoke-static {p1}, Lcom/narvii/monetization/store/TippingConfirmDialog;->h(Lcom/narvii/monetization/store/TippingConfirmDialog;)Lcom/narvii/model/Tippable;

    .line 36
    move-result-object p1

    .line 37
    .line 38
    .line 39
    invoke-interface {p1}, Lcom/narvii/model/Tippable;->getTippingInfo()Lcom/narvii/model/TippingInfo;

    .line 40
    move-result-object p1

    .line 41
    .line 42
    if-eqz p1, :cond_0

    .line 43
    .line 44
    iget v0, p1, Lcom/narvii/model/TippingInfo;->tippedCoins:I

    .line 45
    .line 46
    iget v1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog$5;->val$price:I

    .line 47
    add-int/2addr v0, v1

    .line 48
    .line 49
    iput v0, p1, Lcom/narvii/model/TippingInfo;->tippedCoins:I

    .line 50
    .line 51
    new-instance p1, Lcom/narvii/notification/Notification;

    .line 52
    .line 53
    iget-object v0, p0, Lcom/narvii/monetization/store/TippingConfirmDialog$5;->this$0:Lcom/narvii/monetization/store/TippingConfirmDialog;

    .line 54
    .line 55
    .line 56
    invoke-static {v0}, Lcom/narvii/monetization/store/TippingConfirmDialog;->h(Lcom/narvii/monetization/store/TippingConfirmDialog;)Lcom/narvii/model/Tippable;

    .line 57
    move-result-object v0

    .line 58
    .line 59
    check-cast v0, Lcom/narvii/model/NVObject;

    .line 60
    .line 61
    const-string v1, "update"

    .line 62
    .line 63
    .line 64
    invoke-direct {p1, v1, v0}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 65
    .line 66
    iget-object v0, p0, Lcom/narvii/monetization/store/TippingConfirmDialog$5;->this$0:Lcom/narvii/monetization/store/TippingConfirmDialog;

    .line 67
    .line 68
    .line 69
    invoke-static {v0}, Lcom/narvii/monetization/store/TippingConfirmDialog;->f(Lcom/narvii/monetization/store/TippingConfirmDialog;)Lcom/narvii/app/NVContext;

    .line 70
    move-result-object v0

    .line 71
    .line 72
    .line 73
    invoke-static {v0, p1}, Lcom/narvii/util/NotificationUtils;->sendNotificationIncludeGlobal(Lcom/narvii/app/NVContext;Lcom/narvii/notification/Notification;)V

    .line 74
    .line 75
    :cond_0
    iget-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog$5;->this$0:Lcom/narvii/monetization/store/TippingConfirmDialog;

    .line 76
    .line 77
    .line 78
    invoke-static {p1}, Lcom/narvii/monetization/store/TippingConfirmDialog;->g(Lcom/narvii/monetization/store/TippingConfirmDialog;)Lcom/narvii/monetization/store/TippingConfirmDialog$TipSuccessListener;

    .line 79
    move-result-object p1

    .line 80
    .line 81
    if-eqz p1, :cond_1

    .line 82
    .line 83
    iget-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog$5;->this$0:Lcom/narvii/monetization/store/TippingConfirmDialog;

    .line 84
    .line 85
    .line 86
    invoke-static {p1}, Lcom/narvii/monetization/store/TippingConfirmDialog;->g(Lcom/narvii/monetization/store/TippingConfirmDialog;)Lcom/narvii/monetization/store/TippingConfirmDialog$TipSuccessListener;

    .line 87
    move-result-object p1

    .line 88
    .line 89
    .line 90
    invoke-interface {p1}, Lcom/narvii/monetization/store/TippingConfirmDialog$TipSuccessListener;->onTipSuccess()V

    .line 91
    .line 92
    :cond_1
    iget-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog$5;->this$0:Lcom/narvii/monetization/store/TippingConfirmDialog;

    .line 93
    .line 94
    .line 95
    invoke-static {p1}, Lcom/narvii/monetization/store/TippingConfirmDialog;->f(Lcom/narvii/monetization/store/TippingConfirmDialog;)Lcom/narvii/app/NVContext;

    .line 96
    move-result-object p1

    .line 97
    .line 98
    const-string v0, "statistics"

    .line 99
    .line 100
    .line 101
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 102
    move-result-object p1

    .line 103
    .line 104
    check-cast p1, Lcom/narvii/util/statistics/StatisticsService;

    .line 105
    .line 106
    const-string v0, "Give Props"

    .line 107
    .line 108
    .line 109
    invoke-interface {p1, v0}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 110
    move-result-object p1

    .line 111
    .line 112
    const-string v0, "Give Props Total"

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 116
    move-result-object p1

    .line 117
    .line 118
    const-string v0, "Amount"

    .line 119
    .line 120
    iget v1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog$5;->val$price:I

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;I)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 124
    move-result-object p1

    .line 125
    .line 126
    const-string v0, "Successful"

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1, v0, p2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Z)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 130
    move-result-object p1

    .line 131
    .line 132
    const-string p2, "Prop Coins Given Total"

    .line 133
    .line 134
    iget v0, p0, Lcom/narvii/monetization/store/TippingConfirmDialog$5;->val$price:I

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1, p2, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;I)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 138
    .line 139
    iget-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog$5;->this$0:Lcom/narvii/monetization/store/TippingConfirmDialog;

    .line 140
    .line 141
    .line 142
    invoke-static {p1}, Lcom/narvii/monetization/store/TippingConfirmDialog;->b(Lcom/narvii/monetization/store/TippingConfirmDialog;)Landroid/widget/EditText;

    .line 143
    move-result-object p1

    .line 144
    .line 145
    .line 146
    invoke-static {p1}, Lcom/narvii/util/SoftKeyboard;->hideSoftKeyboard(Landroid/widget/EditText;)V

    .line 147
    .line 148
    iget-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog$5;->this$0:Lcom/narvii/monetization/store/TippingConfirmDialog;

    .line 149
    .line 150
    .line 151
    invoke-static {p1}, Lcom/narvii/monetization/store/TippingConfirmDialog;->j(Lcom/narvii/monetization/store/TippingConfirmDialog;)Landroid/view/View;

    .line 152
    move-result-object p1

    .line 153
    .line 154
    const/16 p2, 0x8

    .line 155
    .line 156
    .line 157
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 158
    .line 159
    iget-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog$5;->this$0:Lcom/narvii/monetization/store/TippingConfirmDialog;

    .line 160
    .line 161
    .line 162
    invoke-static {p1}, Lcom/narvii/monetization/store/TippingConfirmDialog;->k(Lcom/narvii/monetization/store/TippingConfirmDialog;)Lcom/narvii/monetization/store/view/TippingFeedbackView;

    .line 163
    move-result-object p1

    .line 164
    .line 165
    iget-object p2, p0, Lcom/narvii/monetization/store/TippingConfirmDialog$5;->this$0:Lcom/narvii/monetization/store/TippingConfirmDialog;

    .line 166
    .line 167
    .line 168
    invoke-static {p2}, Lcom/narvii/monetization/store/TippingConfirmDialog;->l(Lcom/narvii/monetization/store/TippingConfirmDialog;)Lcom/narvii/model/User;

    .line 169
    move-result-object p2

    .line 170
    .line 171
    iget v0, p0, Lcom/narvii/monetization/store/TippingConfirmDialog$5;->val$price:I

    .line 172
    .line 173
    .line 174
    invoke-virtual {p1, p2, v0}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->show(Lcom/narvii/model/User;I)V

    .line 175
    .line 176
    iget-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog$5;->this$0:Lcom/narvii/monetization/store/TippingConfirmDialog;

    .line 177
    .line 178
    .line 179
    invoke-static {p1}, Lcom/narvii/monetization/store/TippingConfirmDialog;->k(Lcom/narvii/monetization/store/TippingConfirmDialog;)Lcom/narvii/monetization/store/view/TippingFeedbackView;

    .line 180
    move-result-object p1

    .line 181
    .line 182
    new-instance p2, Lcom/narvii/monetization/store/e;

    .line 183
    .line 184
    .line 185
    invoke-direct {p2, p0}, Lcom/narvii/monetization/store/e;-><init>(Lcom/narvii/monetization/store/TippingConfirmDialog$5;)V

    .line 186
    .line 187
    .line 188
    invoke-static {p2}, Lcom/narvii/util/Utils;->functionUnit(Lcom/narvii/util/Callback;)Le8/l;

    .line 189
    move-result-object p2

    .line 190
    .line 191
    .line 192
    invoke-virtual {p1, p2}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->setOnDismiss(Le8/l;)V

    .line 193
    return-void
.end method
