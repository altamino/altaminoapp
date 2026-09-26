.class Lcom/narvii/checkin/lottery/LotteryDialog$5;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/checkin/lottery/LotteryDialog;->sendLotteryRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/checkin/lottery/LotteryResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/checkin/lottery/LotteryDialog;

.field final synthetic val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/narvii/checkin/lottery/LotteryDialog;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/checkin/lottery/LotteryDialog$5;->this$0:Lcom/narvii/checkin/lottery/LotteryDialog;

    .line 3
    .line 4
    iput-object p3, p0, Lcom/narvii/checkin/lottery/LotteryDialog$5;->val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    .line 8
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
    iget-object p1, p0, Lcom/narvii/checkin/lottery/LotteryDialog$5;->this$0:Lcom/narvii/checkin/lottery/LotteryDialog;

    .line 6
    .line 7
    iget-object p1, p1, Lcom/narvii/checkin/lottery/LotteryDialog;->cardList:Ljava/util/List;

    .line 8
    .line 9
    .line 10
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    .line 14
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result p2

    .line 16
    .line 17
    if-eqz p2, :cond_0

    .line 18
    .line 19
    .line 20
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object p2

    .line 22
    .line 23
    check-cast p2, Landroid/view/View;

    .line 24
    .line 25
    iget-object p3, p0, Lcom/narvii/checkin/lottery/LotteryDialog$5;->this$0:Lcom/narvii/checkin/lottery/LotteryDialog;

    .line 26
    .line 27
    iget-object p3, p3, Lcom/narvii/checkin/lottery/LotteryDialog;->cardClickListener:Landroid/view/View$OnClickListener;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    goto :goto_0

    .line 32
    .line 33
    :cond_0
    iget-object p1, p0, Lcom/narvii/checkin/lottery/LotteryDialog$5;->val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 37
    .line 38
    iget-object p1, p0, Lcom/narvii/checkin/lottery/LotteryDialog$5;->this$0:Lcom/narvii/checkin/lottery/LotteryDialog;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 42
    move-result-object p1

    .line 43
    const/4 p2, 0x0

    .line 44
    .line 45
    .line 46
    invoke-static {p1, p4, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 47
    move-result-object p1

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 51
    .line 52
    sget-boolean p1, Lcom/narvii/app/NVApplication;->DEBUG:Z

    .line 53
    .line 54
    if-eqz p1, :cond_5

    .line 55
    .line 56
    iget-object p1, p0, Lcom/narvii/checkin/lottery/LotteryDialog$5;->this$0:Lcom/narvii/checkin/lottery/LotteryDialog;

    .line 57
    .line 58
    iget-object p1, p1, Lcom/narvii/checkin/lottery/LotteryDialog;->cardList:Ljava/util/List;

    .line 59
    .line 60
    .line 61
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 62
    move-result-object p1

    .line 63
    .line 64
    .line 65
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 66
    move-result p3

    .line 67
    .line 68
    if-eqz p3, :cond_1

    .line 69
    .line 70
    .line 71
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 72
    move-result-object p3

    .line 73
    .line 74
    check-cast p3, Landroid/view/View;

    .line 75
    const/4 p4, 0x0

    .line 76
    .line 77
    .line 78
    invoke-virtual {p3, p4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    goto :goto_1

    .line 80
    .line 81
    :cond_1
    iget-object p1, p0, Lcom/narvii/checkin/lottery/LotteryDialog$5;->this$0:Lcom/narvii/checkin/lottery/LotteryDialog;

    .line 82
    .line 83
    new-instance p3, Lcom/narvii/checkin/lottery/LotteryResponse;

    .line 84
    .line 85
    .line 86
    invoke-direct {p3}, Lcom/narvii/checkin/lottery/LotteryResponse;-><init>()V

    .line 87
    .line 88
    iput-object p3, p1, Lcom/narvii/checkin/lottery/LotteryDialog;->lotteryResponse:Lcom/narvii/checkin/lottery/LotteryResponse;

    .line 89
    .line 90
    new-instance p1, Ljava/util/Random;

    .line 91
    .line 92
    .line 93
    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    .line 94
    const/4 p3, 0x3

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1, p3}, Ljava/util/Random;->nextInt(I)I

    .line 98
    move-result p1

    .line 99
    .line 100
    iget-object p3, p0, Lcom/narvii/checkin/lottery/LotteryDialog$5;->this$0:Lcom/narvii/checkin/lottery/LotteryDialog;

    .line 101
    .line 102
    iget-object p3, p3, Lcom/narvii/checkin/lottery/LotteryDialog;->lotteryResponse:Lcom/narvii/checkin/lottery/LotteryResponse;

    .line 103
    .line 104
    new-instance p4, Lcom/narvii/checkin/lottery/LotteryLog;

    .line 105
    .line 106
    .line 107
    invoke-direct {p4}, Lcom/narvii/checkin/lottery/LotteryLog;-><init>()V

    .line 108
    .line 109
    iput-object p4, p3, Lcom/narvii/checkin/lottery/LotteryResponse;->lotteryLog:Lcom/narvii/checkin/lottery/LotteryLog;

    .line 110
    .line 111
    iget-object p3, p0, Lcom/narvii/checkin/lottery/LotteryDialog$5;->this$0:Lcom/narvii/checkin/lottery/LotteryDialog;

    .line 112
    .line 113
    iget-object p3, p3, Lcom/narvii/checkin/lottery/LotteryDialog;->lotteryResponse:Lcom/narvii/checkin/lottery/LotteryResponse;

    .line 114
    .line 115
    iget-object p3, p3, Lcom/narvii/checkin/lottery/LotteryResponse;->lotteryLog:Lcom/narvii/checkin/lottery/LotteryLog;

    .line 116
    .line 117
    iput p1, p3, Lcom/narvii/checkin/lottery/LotteryLog;->awardType:I

    .line 118
    const/4 p4, 0x1

    .line 119
    .line 120
    if-eq p1, p4, :cond_3

    .line 121
    const/4 p3, 0x2

    .line 122
    .line 123
    if-eq p1, p3, :cond_2

    .line 124
    goto :goto_2

    .line 125
    .line 126
    :cond_2
    new-instance p1, Lcom/narvii/model/Sticker;

    .line 127
    .line 128
    .line 129
    invoke-direct {p1}, Lcom/narvii/model/Sticker;-><init>()V

    .line 130
    .line 131
    const-string p3, "https://s1.altamino.top/image/ljmusu6brr5yulr5kcbby5j4nilelxvm_00.jpg"

    .line 132
    .line 133
    iput-object p3, p1, Lcom/narvii/model/Sticker;->icon:Ljava/lang/String;

    .line 134
    .line 135
    const-string p3, "haha"

    .line 136
    .line 137
    iput-object p3, p1, Lcom/narvii/model/Sticker;->name:Ljava/lang/String;

    .line 138
    .line 139
    iget-object p3, p0, Lcom/narvii/checkin/lottery/LotteryDialog$5;->this$0:Lcom/narvii/checkin/lottery/LotteryDialog;

    .line 140
    .line 141
    iget-object p3, p3, Lcom/narvii/checkin/lottery/LotteryDialog;->lotteryResponse:Lcom/narvii/checkin/lottery/LotteryResponse;

    .line 142
    .line 143
    iget-object p3, p3, Lcom/narvii/checkin/lottery/LotteryResponse;->lotteryLog:Lcom/narvii/checkin/lottery/LotteryLog;

    .line 144
    .line 145
    sget-object p5, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 146
    .line 147
    .line 148
    invoke-virtual {p5, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->valueToTree(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 149
    move-result-object p1

    .line 150
    .line 151
    iput-object p1, p3, Lcom/narvii/checkin/lottery/LotteryLog;->refObject:Lcom/fasterxml/jackson/databind/JsonNode;

    .line 152
    .line 153
    iget-object p1, p0, Lcom/narvii/checkin/lottery/LotteryDialog$5;->this$0:Lcom/narvii/checkin/lottery/LotteryDialog;

    .line 154
    .line 155
    iget-object p1, p1, Lcom/narvii/checkin/lottery/LotteryDialog;->lotteryResponse:Lcom/narvii/checkin/lottery/LotteryResponse;

    .line 156
    .line 157
    iget-object p1, p1, Lcom/narvii/checkin/lottery/LotteryResponse;->lotteryLog:Lcom/narvii/checkin/lottery/LotteryLog;

    .line 158
    .line 159
    const/16 p3, 0x71

    .line 160
    .line 161
    iput p3, p1, Lcom/narvii/checkin/lottery/LotteryLog;->objectType:I

    .line 162
    goto :goto_2

    .line 163
    .line 164
    :cond_3
    new-instance p1, Ljava/util/Random;

    .line 165
    .line 166
    .line 167
    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    .line 168
    .line 169
    const/16 p5, 0x14

    .line 170
    .line 171
    .line 172
    invoke-virtual {p1, p5}, Ljava/util/Random;->nextInt(I)I

    .line 173
    move-result p1

    .line 174
    .line 175
    iput p1, p3, Lcom/narvii/checkin/lottery/LotteryLog;->awardValue:I

    .line 176
    .line 177
    :goto_2
    iget-object p1, p0, Lcom/narvii/checkin/lottery/LotteryDialog$5;->this$0:Lcom/narvii/checkin/lottery/LotteryDialog;

    .line 178
    .line 179
    iget-object p1, p1, Lcom/narvii/checkin/lottery/LotteryDialog;->lotteryResponse:Lcom/narvii/checkin/lottery/LotteryResponse;

    .line 180
    .line 181
    new-instance p3, Lcom/narvii/wallet/Wallet;

    .line 182
    .line 183
    .line 184
    invoke-direct {p3}, Lcom/narvii/wallet/Wallet;-><init>()V

    .line 185
    .line 186
    iput-object p3, p1, Lcom/narvii/checkin/lottery/LotteryResponse;->wallet:Lcom/narvii/wallet/Wallet;

    .line 187
    .line 188
    iget-object p1, p0, Lcom/narvii/checkin/lottery/LotteryDialog$5;->this$0:Lcom/narvii/checkin/lottery/LotteryDialog;

    .line 189
    .line 190
    iget-object p1, p1, Lcom/narvii/checkin/lottery/LotteryDialog;->nvContext:Lcom/narvii/app/NVContext;

    .line 191
    .line 192
    const-string p3, "account"

    .line 193
    .line 194
    .line 195
    invoke-interface {p1, p3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 196
    move-result-object p1

    .line 197
    .line 198
    check-cast p1, Lcom/narvii/account/AccountService;

    .line 199
    .line 200
    iget-object p3, p0, Lcom/narvii/checkin/lottery/LotteryDialog$5;->this$0:Lcom/narvii/checkin/lottery/LotteryDialog;

    .line 201
    .line 202
    iget-object p3, p3, Lcom/narvii/checkin/lottery/LotteryDialog;->lotteryResponse:Lcom/narvii/checkin/lottery/LotteryResponse;

    .line 203
    .line 204
    iget-object p3, p3, Lcom/narvii/checkin/lottery/LotteryResponse;->wallet:Lcom/narvii/wallet/Wallet;

    .line 205
    .line 206
    .line 207
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->optinAdsLevel()I

    .line 208
    move-result p1

    .line 209
    .line 210
    if-lez p1, :cond_4

    .line 211
    move p2, p4

    .line 212
    .line 213
    :cond_4
    iput-boolean p2, p3, Lcom/narvii/wallet/Wallet;->adsEnabled:Z

    .line 214
    .line 215
    iget-object p1, p0, Lcom/narvii/checkin/lottery/LotteryDialog$5;->this$0:Lcom/narvii/checkin/lottery/LotteryDialog;

    .line 216
    .line 217
    iget-object p1, p1, Lcom/narvii/checkin/lottery/LotteryDialog;->lotteryResponse:Lcom/narvii/checkin/lottery/LotteryResponse;

    .line 218
    .line 219
    iget-object p1, p1, Lcom/narvii/checkin/lottery/LotteryResponse;->wallet:Lcom/narvii/wallet/Wallet;

    .line 220
    .line 221
    new-instance p2, Lcom/narvii/wallet/AdsVideoStats;

    .line 222
    .line 223
    .line 224
    invoke-direct {p2}, Lcom/narvii/wallet/AdsVideoStats;-><init>()V

    .line 225
    .line 226
    iput-object p2, p1, Lcom/narvii/wallet/Wallet;->adsVideoStats:Lcom/narvii/wallet/AdsVideoStats;

    .line 227
    .line 228
    iget-object p1, p0, Lcom/narvii/checkin/lottery/LotteryDialog$5;->this$0:Lcom/narvii/checkin/lottery/LotteryDialog;

    .line 229
    .line 230
    iget-object p2, p1, Lcom/narvii/checkin/lottery/LotteryDialog;->lotteryResponse:Lcom/narvii/checkin/lottery/LotteryResponse;

    .line 231
    .line 232
    iget-object p2, p2, Lcom/narvii/checkin/lottery/LotteryResponse;->wallet:Lcom/narvii/wallet/Wallet;

    .line 233
    .line 234
    iget-object p2, p2, Lcom/narvii/wallet/Wallet;->adsVideoStats:Lcom/narvii/wallet/AdsVideoStats;

    .line 235
    .line 236
    iput-boolean p4, p2, Lcom/narvii/wallet/AdsVideoStats;->canWatchVideo:Z

    .line 237
    const/4 p3, 0x4

    .line 238
    .line 239
    iput p3, p2, Lcom/narvii/wallet/AdsVideoStats;->canEarnedCoins:I

    .line 240
    .line 241
    .line 242
    invoke-static {p1}, Lcom/narvii/checkin/lottery/LotteryDialog;->i(Lcom/narvii/checkin/lottery/LotteryDialog;)V

    .line 243
    :cond_5
    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/checkin/lottery/LotteryResponse;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    iget-object p1, p0, Lcom/narvii/checkin/lottery/LotteryDialog$5;->val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 3
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    iget-object p1, p0, Lcom/narvii/checkin/lottery/LotteryDialog$5;->this$0:Lcom/narvii/checkin/lottery/LotteryDialog;

    .line 4
    iput-object p2, p1, Lcom/narvii/checkin/lottery/LotteryDialog;->lotteryResponse:Lcom/narvii/checkin/lottery/LotteryResponse;

    .line 5
    invoke-static {p1, p2}, Lcom/narvii/checkin/lottery/LotteryDialog;->f(Lcom/narvii/checkin/lottery/LotteryDialog;Lcom/narvii/checkin/lottery/LotteryResponse;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/narvii/checkin/lottery/LotteryDialog$5;->this$0:Lcom/narvii/checkin/lottery/LotteryDialog;

    .line 6
    iget-object p2, p1, Lcom/narvii/checkin/lottery/LotteryDialog;->lotteryResponse:Lcom/narvii/checkin/lottery/LotteryResponse;

    iget-object p2, p2, Lcom/narvii/checkin/lottery/LotteryResponse;->lotteryLog:Lcom/narvii/checkin/lottery/LotteryLog;

    iget v0, p2, Lcom/narvii/checkin/lottery/LotteryLog;->awardType:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    iget p2, p2, Lcom/narvii/checkin/lottery/LotteryLog;->objectType:I

    const/16 v0, 0x71

    if-ne p2, v0, :cond_0

    .line 7
    iget-object p1, p1, Lcom/narvii/checkin/lottery/LotteryDialog;->nvContext:Lcom/narvii/app/NVContext;

    const-string p2, "sticker"

    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/monetization/sticker/StickerService;

    .line 8
    invoke-virtual {p1, v1}, Lcom/narvii/monetization/sticker/StickerService;->refreshStickerCollectionInfo(Z)V

    :cond_0
    iget-object p1, p0, Lcom/narvii/checkin/lottery/LotteryDialog$5;->this$0:Lcom/narvii/checkin/lottery/LotteryDialog;

    .line 9
    invoke-static {p1}, Lcom/narvii/checkin/lottery/LotteryDialog;->i(Lcom/narvii/checkin/lottery/LotteryDialog;)V

    iget-object p1, p0, Lcom/narvii/checkin/lottery/LotteryDialog$5;->this$0:Lcom/narvii/checkin/lottery/LotteryDialog;

    .line 10
    iget-object p1, p1, Lcom/narvii/checkin/lottery/LotteryDialog;->nvContext:Lcom/narvii/app/NVContext;

    const-string p2, "statistics"

    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/statistics/StatisticsService;

    const-string p2, "Lucky Draw"

    .line 11
    invoke-interface {p1, p2}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    move-result-object p1

    const-string p2, "Lucky Draw Total"

    invoke-virtual {p1, p2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/checkin/lottery/LotteryDialog$5;->this$0:Lcom/narvii/checkin/lottery/LotteryDialog;

    .line 12
    iget-object p2, p2, Lcom/narvii/checkin/lottery/LotteryDialog;->lotteryResponse:Lcom/narvii/checkin/lottery/LotteryResponse;

    iget-object p2, p2, Lcom/narvii/checkin/lottery/LotteryResponse;->lotteryLog:Lcom/narvii/checkin/lottery/LotteryLog;

    iget p2, p2, Lcom/narvii/checkin/lottery/LotteryLog;->awardType:I

    if-ne p2, v1, :cond_1

    const-string p2, "Lucky Draw Coin Earned"

    .line 13
    invoke-virtual {p1, p2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    goto :goto_0

    :cond_1
    if-ne p2, v2, :cond_3

    const-string p2, "Lucky Draw Sticker Earned"

    .line 14
    invoke-virtual {p1, p2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/narvii/checkin/lottery/LotteryDialog$5;->this$0:Lcom/narvii/checkin/lottery/LotteryDialog;

    .line 15
    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f12120c

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    :cond_3
    :goto_0
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
    check-cast p2, Lcom/narvii/checkin/lottery/LotteryResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/checkin/lottery/LotteryDialog$5;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/checkin/lottery/LotteryResponse;)V

    return-void
.end method
