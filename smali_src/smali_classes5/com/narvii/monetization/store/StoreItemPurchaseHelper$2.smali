.class Lcom/narvii/monetization/store/StoreItemPurchaseHelper$2;
.super Lcom/narvii/util/http/ApiJsonResponseListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->sendPurchaseRequest(Lcom/narvii/wallet/Coupon;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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
.field final synthetic this$0:Lcom/narvii/monetization/store/StoreItemPurchaseHelper;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/store/StoreItemPurchaseHelper;Ljava/lang/Class;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper$2;->this$0:Lcom/narvii/monetization/store/StoreItemPurchaseHelper;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiJsonResponseListener;-><init>(Ljava/lang/Class;)V

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
    .line 3
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 4
    .line 5
    const/16 p1, 0x1005

    .line 6
    const/4 p3, 0x1

    .line 7
    .line 8
    if-ne p2, p1, :cond_1

    .line 9
    .line 10
    iget-object p1, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper$2;->this$0:Lcom/narvii/monetization/store/StoreItemPurchaseHelper;

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->d(Lcom/narvii/monetization/store/StoreItemPurchaseHelper;)Lcom/narvii/wallet/MembershipService;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/narvii/wallet/MembershipService;->hasMemberShipExpired()Z

    .line 18
    move-result p1

    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    iget-object p1, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper$2;->this$0:Lcom/narvii/monetization/store/StoreItemPurchaseHelper;

    .line 23
    .line 24
    .line 25
    invoke-static {p1}, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->g(Lcom/narvii/monetization/store/StoreItemPurchaseHelper;)V

    .line 26
    goto :goto_1

    .line 27
    .line 28
    :cond_0
    iget-object p1, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper$2;->this$0:Lcom/narvii/monetization/store/StoreItemPurchaseHelper;

    .line 29
    .line 30
    .line 31
    invoke-static {p1}, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->i(Lcom/narvii/monetization/store/StoreItemPurchaseHelper;)V

    .line 32
    goto :goto_1

    .line 33
    .line 34
    :cond_1
    const/16 p1, 0x1006

    .line 35
    .line 36
    if-ne p2, p1, :cond_4

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/narvii/util/http/ApiJsonResponseListener;->errorJson()Lcom/fasterxml/jackson/databind/JsonNode;

    .line 40
    move-result-object p1

    .line 41
    .line 42
    const-string p2, "availableCommunity"

    .line 43
    .line 44
    .line 45
    filled-new-array {p2}, [Ljava/lang/String;

    .line 46
    move-result-object p2

    .line 47
    .line 48
    .line 49
    invoke-static {p1, p2}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 50
    move-result-object p1

    .line 51
    .line 52
    if-eqz p1, :cond_2

    .line 53
    .line 54
    :try_start_0
    sget-object p2, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 55
    .line 56
    const-class p5, Lcom/narvii/model/Community;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p2, p1, p5}, Lcom/fasterxml/jackson/databind/ObjectMapper;->treeToValue(Lcom/fasterxml/jackson/core/TreeNode;Ljava/lang/Class;)Ljava/lang/Object;

    .line 60
    move-result-object p1

    .line 61
    .line 62
    check-cast p1, Lcom/narvii/model/Community;
    :try_end_0
    .catch Lcom/fasterxml/jackson/core/JsonProcessingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    goto :goto_0

    .line 64
    :catch_0
    move-exception p1

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 68
    :cond_2
    const/4 p1, 0x0

    .line 69
    .line 70
    :goto_0
    if-eqz p1, :cond_3

    .line 71
    .line 72
    iget-object p2, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper$2;->this$0:Lcom/narvii/monetization/store/StoreItemPurchaseHelper;

    .line 73
    .line 74
    iget p1, p1, Lcom/narvii/model/Community;->id:I

    .line 75
    .line 76
    .line 77
    invoke-static {p2, p4, p1}, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->h(Lcom/narvii/monetization/store/StoreItemPurchaseHelper;Ljava/lang/String;I)V

    .line 78
    goto :goto_1

    .line 79
    .line 80
    :cond_3
    iget-object p1, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper$2;->this$0:Lcom/narvii/monetization/store/StoreItemPurchaseHelper;

    .line 81
    .line 82
    .line 83
    invoke-static {p1}, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->e(Lcom/narvii/monetization/store/StoreItemPurchaseHelper;)Lcom/narvii/app/NVContext;

    .line 84
    move-result-object p1

    .line 85
    .line 86
    .line 87
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 88
    move-result-object p1

    .line 89
    .line 90
    .line 91
    invoke-static {p1, p4, p3}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 92
    move-result-object p1

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 96
    goto :goto_1

    .line 97
    .line 98
    :cond_4
    const/16 p1, 0x10cc

    .line 99
    .line 100
    if-ne p2, p1, :cond_5

    .line 101
    .line 102
    iget-object p1, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper$2;->this$0:Lcom/narvii/monetization/store/StoreItemPurchaseHelper;

    .line 103
    .line 104
    .line 105
    invoke-static {p1}, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->e(Lcom/narvii/monetization/store/StoreItemPurchaseHelper;)Lcom/narvii/app/NVContext;

    .line 106
    move-result-object p1

    .line 107
    .line 108
    .line 109
    invoke-static {p1, p3}, Lcom/narvii/wallet/PurchaseCoinFragment;->show(Lcom/narvii/app/NVContext;Z)V

    .line 110
    goto :goto_1

    .line 111
    .line 112
    :cond_5
    iget-object p1, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper$2;->this$0:Lcom/narvii/monetization/store/StoreItemPurchaseHelper;

    .line 113
    .line 114
    .line 115
    invoke-static {p1}, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->e(Lcom/narvii/monetization/store/StoreItemPurchaseHelper;)Lcom/narvii/app/NVContext;

    .line 116
    move-result-object p1

    .line 117
    .line 118
    .line 119
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 120
    move-result-object p1

    .line 121
    const/4 p2, 0x0

    .line 122
    .line 123
    .line 124
    invoke-static {p1, p4, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 125
    move-result-object p1

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 129
    .line 130
    :goto_1
    iget-object p1, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper$2;->this$0:Lcom/narvii/monetization/store/StoreItemPurchaseHelper;

    .line 131
    .line 132
    .line 133
    invoke-static {p1}, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->b(Lcom/narvii/monetization/store/StoreItemPurchaseHelper;)Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;

    .line 134
    move-result-object p1

    .line 135
    .line 136
    if-eqz p1, :cond_6

    .line 137
    .line 138
    iget-object p1, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper$2;->this$0:Lcom/narvii/monetization/store/StoreItemPurchaseHelper;

    .line 139
    .line 140
    .line 141
    invoke-static {p1}, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->b(Lcom/narvii/monetization/store/StoreItemPurchaseHelper;)Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;

    .line 142
    move-result-object p1

    .line 143
    .line 144
    .line 145
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->isDestoryed()Z

    .line 146
    move-result p1

    .line 147
    .line 148
    if-nez p1, :cond_6

    .line 149
    .line 150
    iget-object p1, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper$2;->this$0:Lcom/narvii/monetization/store/StoreItemPurchaseHelper;

    .line 151
    .line 152
    .line 153
    invoke-static {p1}, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->b(Lcom/narvii/monetization/store/StoreItemPurchaseHelper;)Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;

    .line 154
    move-result-object p1

    .line 155
    .line 156
    .line 157
    invoke-virtual {p1}, Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;->resetPurchaseView()V

    .line 158
    .line 159
    :cond_6
    iget-object p1, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper$2;->this$0:Lcom/narvii/monetization/store/StoreItemPurchaseHelper;

    .line 160
    .line 161
    .line 162
    invoke-static {p1}, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->d(Lcom/narvii/monetization/store/StoreItemPurchaseHelper;)Lcom/narvii/wallet/MembershipService;

    .line 163
    move-result-object p1

    .line 164
    .line 165
    .line 166
    invoke-virtual {p1, p3}, Lcom/narvii/wallet/MembershipService;->refresh(Z)V

    .line 167
    .line 168
    iget-object p1, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper$2;->this$0:Lcom/narvii/monetization/store/StoreItemPurchaseHelper;

    .line 169
    .line 170
    .line 171
    invoke-static {p1}, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->a(Lcom/narvii/monetization/store/StoreItemPurchaseHelper;)Lcom/narvii/monetization/store/StoreItemPurchaseHelper$PurchaseConfirmFragmentEventListener;

    .line 172
    move-result-object p1

    .line 173
    .line 174
    if-eqz p1, :cond_7

    .line 175
    .line 176
    iget-object p1, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper$2;->this$0:Lcom/narvii/monetization/store/StoreItemPurchaseHelper;

    .line 177
    .line 178
    .line 179
    invoke-static {p1}, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->a(Lcom/narvii/monetization/store/StoreItemPurchaseHelper;)Lcom/narvii/monetization/store/StoreItemPurchaseHelper$PurchaseConfirmFragmentEventListener;

    .line 180
    move-result-object p1

    .line 181
    .line 182
    .line 183
    invoke-interface {p1}, Lcom/narvii/monetization/store/StoreItemPurchaseHelper$PurchaseConfirmFragmentEventListener;->onPurchaseFailed()V

    .line 184
    :cond_7
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
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/util/http/ApiJsonResponseListener;->json()Lcom/fasterxml/jackson/databind/JsonNode;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    const-string p2, "refObject"

    .line 10
    .line 11
    .line 12
    filled-new-array {p2}, [Ljava/lang/String;

    .line 13
    move-result-object p2

    .line 14
    .line 15
    .line 16
    invoke-static {p1, p2}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    iget-object p2, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper$2;->this$0:Lcom/narvii/monetization/store/StoreItemPurchaseHelper;

    .line 20
    .line 21
    .line 22
    invoke-static {p2}, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->c(Lcom/narvii/monetization/store/StoreItemPurchaseHelper;)Lcom/narvii/model/IStoreItem;

    .line 23
    move-result-object p2

    .line 24
    .line 25
    .line 26
    invoke-interface {p2}, Lcom/narvii/model/IStoreItem;->objectType()I

    .line 27
    move-result p2

    .line 28
    .line 29
    .line 30
    invoke-static {p2, p1}, Lcom/narvii/monetization/store/data/StoreItem;->parseRefObject(ILcom/fasterxml/jackson/databind/JsonNode;)Lcom/narvii/model/NVObject;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    instance-of p2, p1, Lcom/narvii/model/IStoreItem;

    .line 34
    .line 35
    if-eqz p2, :cond_0

    .line 36
    .line 37
    iget-object p2, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper$2;->this$0:Lcom/narvii/monetization/store/StoreItemPurchaseHelper;

    .line 38
    .line 39
    .line 40
    invoke-static {p2}, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->c(Lcom/narvii/monetization/store/StoreItemPurchaseHelper;)Lcom/narvii/model/IStoreItem;

    .line 41
    move-result-object p2

    .line 42
    move-object v0, p1

    .line 43
    .line 44
    check-cast v0, Lcom/narvii/model/IStoreItem;

    .line 45
    .line 46
    .line 47
    invoke-interface {v0}, Lcom/narvii/model/IStoreItem;->getOwnershipInfo()Lcom/narvii/model/OwnershipInfo;

    .line 48
    move-result-object v1

    .line 49
    .line 50
    .line 51
    invoke-interface {p2, v1}, Lcom/narvii/model/IStoreItem;->setOwnershipInfo(Lcom/narvii/model/OwnershipInfo;)V

    .line 52
    .line 53
    iget-object p2, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper$2;->this$0:Lcom/narvii/monetization/store/StoreItemPurchaseHelper;

    .line 54
    .line 55
    .line 56
    invoke-static {p2}, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->c(Lcom/narvii/monetization/store/StoreItemPurchaseHelper;)Lcom/narvii/model/IStoreItem;

    .line 57
    move-result-object p2

    .line 58
    .line 59
    .line 60
    invoke-interface {v0}, Lcom/narvii/model/IStoreItem;->isActivated()Z

    .line 61
    move-result v0

    .line 62
    .line 63
    .line 64
    invoke-interface {p2, v0}, Lcom/narvii/model/IStoreItem;->setActivated(Z)V

    .line 65
    .line 66
    :cond_0
    iget-object p2, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper$2;->this$0:Lcom/narvii/monetization/store/StoreItemPurchaseHelper;

    .line 67
    .line 68
    .line 69
    invoke-static {p2}, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->b(Lcom/narvii/monetization/store/StoreItemPurchaseHelper;)Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;

    .line 70
    move-result-object p2

    .line 71
    .line 72
    if-eqz p2, :cond_1

    .line 73
    .line 74
    iget-object p2, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper$2;->this$0:Lcom/narvii/monetization/store/StoreItemPurchaseHelper;

    .line 75
    .line 76
    .line 77
    invoke-static {p2}, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->b(Lcom/narvii/monetization/store/StoreItemPurchaseHelper;)Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;

    .line 78
    move-result-object p2

    .line 79
    .line 80
    .line 81
    invoke-virtual {p2}, Lcom/narvii/app/NVFragment;->isDestoryed()Z

    .line 82
    move-result p2

    .line 83
    .line 84
    if-nez p2, :cond_1

    .line 85
    .line 86
    iget-object p2, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper$2;->this$0:Lcom/narvii/monetization/store/StoreItemPurchaseHelper;

    .line 87
    .line 88
    .line 89
    invoke-static {p2}, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->b(Lcom/narvii/monetization/store/StoreItemPurchaseHelper;)Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;

    .line 90
    move-result-object p2

    .line 91
    .line 92
    sget-object v0, Lcom/narvii/logging/ActSemantic;->purchaseSuccess:Lcom/narvii/logging/ActSemantic;

    .line 93
    .line 94
    .line 95
    invoke-static {p2, v0}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 96
    move-result-object p2

    .line 97
    .line 98
    const-string v0, "PurchaseButton"

    .line 99
    .line 100
    .line 101
    invoke-virtual {p2, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 102
    move-result-object p2

    .line 103
    .line 104
    .line 105
    invoke-virtual {p2}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 106
    .line 107
    iget-object p2, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper$2;->this$0:Lcom/narvii/monetization/store/StoreItemPurchaseHelper;

    .line 108
    .line 109
    .line 110
    invoke-static {p2}, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->b(Lcom/narvii/monetization/store/StoreItemPurchaseHelper;)Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;

    .line 111
    move-result-object p2

    .line 112
    .line 113
    .line 114
    invoke-virtual {p2}, Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;->close()V

    .line 115
    .line 116
    :cond_1
    iget-object p2, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper$2;->this$0:Lcom/narvii/monetization/store/StoreItemPurchaseHelper;

    .line 117
    .line 118
    .line 119
    invoke-static {p2}, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->d(Lcom/narvii/monetization/store/StoreItemPurchaseHelper;)Lcom/narvii/wallet/MembershipService;

    .line 120
    move-result-object p2

    .line 121
    const/4 v0, 0x1

    .line 122
    .line 123
    .line 124
    invoke-virtual {p2, v0}, Lcom/narvii/wallet/MembershipService;->refreshWallet(Z)V

    .line 125
    .line 126
    iget-object p2, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper$2;->this$0:Lcom/narvii/monetization/store/StoreItemPurchaseHelper;

    .line 127
    .line 128
    .line 129
    invoke-static {p2}, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->c(Lcom/narvii/monetization/store/StoreItemPurchaseHelper;)Lcom/narvii/model/IStoreItem;

    .line 130
    move-result-object p2

    .line 131
    .line 132
    if-eqz p2, :cond_2

    .line 133
    .line 134
    iget-object p2, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper$2;->this$0:Lcom/narvii/monetization/store/StoreItemPurchaseHelper;

    .line 135
    .line 136
    .line 137
    invoke-static {p2}, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->c(Lcom/narvii/monetization/store/StoreItemPurchaseHelper;)Lcom/narvii/model/IStoreItem;

    .line 138
    move-result-object p2

    .line 139
    .line 140
    .line 141
    invoke-interface {p2}, Lcom/narvii/model/IStoreItem;->getAdditionalBenefits()Lcom/narvii/model/AdditionalBenefits;

    .line 142
    move-result-object p2

    .line 143
    .line 144
    if-eqz p2, :cond_2

    .line 145
    .line 146
    iget-object p2, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper$2;->this$0:Lcom/narvii/monetization/store/StoreItemPurchaseHelper;

    .line 147
    .line 148
    .line 149
    invoke-static {p2}, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->c(Lcom/narvii/monetization/store/StoreItemPurchaseHelper;)Lcom/narvii/model/IStoreItem;

    .line 150
    move-result-object p2

    .line 151
    .line 152
    .line 153
    invoke-interface {p2}, Lcom/narvii/model/IStoreItem;->getAdditionalBenefits()Lcom/narvii/model/AdditionalBenefits;

    .line 154
    move-result-object p2

    .line 155
    .line 156
    iget-boolean p2, p2, Lcom/narvii/model/AdditionalBenefits;->firstMonthFreeAminoPlusMembership:Z

    .line 157
    .line 158
    if-eqz p2, :cond_2

    .line 159
    .line 160
    iget-object p2, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper$2;->this$0:Lcom/narvii/monetization/store/StoreItemPurchaseHelper;

    .line 161
    .line 162
    .line 163
    invoke-static {p2}, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->d(Lcom/narvii/monetization/store/StoreItemPurchaseHelper;)Lcom/narvii/wallet/MembershipService;

    .line 164
    move-result-object p2

    .line 165
    .line 166
    .line 167
    invoke-virtual {p2}, Lcom/narvii/wallet/MembershipService;->isMembership()Z

    .line 168
    move-result p2

    .line 169
    .line 170
    if-nez p2, :cond_2

    .line 171
    .line 172
    iget-object p2, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper$2;->this$0:Lcom/narvii/monetization/store/StoreItemPurchaseHelper;

    .line 173
    .line 174
    .line 175
    invoke-static {p2}, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->d(Lcom/narvii/monetization/store/StoreItemPurchaseHelper;)Lcom/narvii/wallet/MembershipService;

    .line 176
    move-result-object p2

    .line 177
    .line 178
    .line 179
    invoke-virtual {p2, v0}, Lcom/narvii/wallet/MembershipService;->refreshMembership(Z)V

    .line 180
    .line 181
    :cond_2
    iget-object p2, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper$2;->this$0:Lcom/narvii/monetization/store/StoreItemPurchaseHelper;

    .line 182
    .line 183
    .line 184
    invoke-static {p2}, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->a(Lcom/narvii/monetization/store/StoreItemPurchaseHelper;)Lcom/narvii/monetization/store/StoreItemPurchaseHelper$PurchaseConfirmFragmentEventListener;

    .line 185
    move-result-object p2

    .line 186
    .line 187
    if-eqz p2, :cond_3

    .line 188
    .line 189
    iget-object p2, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper$2;->this$0:Lcom/narvii/monetization/store/StoreItemPurchaseHelper;

    .line 190
    .line 191
    .line 192
    invoke-static {p2}, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->a(Lcom/narvii/monetization/store/StoreItemPurchaseHelper;)Lcom/narvii/monetization/store/StoreItemPurchaseHelper$PurchaseConfirmFragmentEventListener;

    .line 193
    move-result-object p2

    .line 194
    .line 195
    .line 196
    invoke-interface {p2, p1}, Lcom/narvii/monetization/store/StoreItemPurchaseHelper$PurchaseConfirmFragmentEventListener;->onPurchaseSuccessful(Lcom/narvii/model/NVObject;)V

    .line 197
    :cond_3
    return-void
.end method
