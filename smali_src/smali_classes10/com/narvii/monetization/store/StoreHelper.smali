.class public Lcom/narvii/monetization/store/StoreHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field context:Landroid/content/Context;

.field source:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    const-string v0, "Store"

    .line 6
    .line 7
    iput-object v0, p0, Lcom/narvii/monetization/store/StoreHelper;->source:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p1, p0, Lcom/narvii/monetization/store/StoreHelper;->context:Landroid/content/Context;

    .line 10
    return-void
.end method

.method private handleShareRequest(Ljava/lang/String;Lcom/narvii/util/Callback;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/narvii/util/Callback<",
            "Lcom/narvii/model/api/ApiResponse;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/narvii/monetization/store/StoreHelper;->context:Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    iput-object p2, v0, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 16
    .line 17
    iget-object p2, p0, Lcom/narvii/monetization/store/StoreHelper;->context:Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    invoke-static {p2}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    .line 21
    move-result-object p2

    .line 22
    .line 23
    const-string v1, "api"

    .line 24
    .line 25
    .line 26
    invoke-interface {p2, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 27
    move-result-object p2

    .line 28
    .line 29
    check-cast p2, Lcom/narvii/util/http/ApiService;

    .line 30
    .line 31
    .line 32
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 37
    move-result-object v1

    .line 38
    .line 39
    new-instance v2, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    const-string v3, "store/share-requests/"

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    const-string p1, "/"

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    move-result-object p1

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 66
    move-result-object p1

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 70
    move-result-object p1

    .line 71
    .line 72
    iget-object p3, v0, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p2, p1, p3}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 76
    return-void
.end method

.method public static safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Landroid/content/Context;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroid/content/Context;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public approveShareRequest(Ljava/lang/String;Lcom/narvii/util/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/narvii/util/Callback<",
            "Lcom/narvii/model/api/ApiResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "approve"

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/monetization/store/StoreHelper;->handleShareRequest(Ljava/lang/String;Lcom/narvii/util/Callback;Ljava/lang/String;)V

    .line 6
    return-void
.end method

.method public openStoreItemDetail(Lcom/narvii/monetization/store/data/StoreItem;)V
    .locals 6

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/monetization/store/data/StoreItem;->getRefObject()Lcom/narvii/model/NVObject;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    iget v1, p1, Lcom/narvii/monetization/store/data/StoreItem;->refObjectType:I

    .line 10
    .line 11
    const/16 v2, 0x72

    .line 12
    .line 13
    const-string v3, "id"

    .line 14
    .line 15
    const-string v4, "Source"

    .line 16
    .line 17
    if-ne v1, v2, :cond_2

    .line 18
    .line 19
    instance-of v1, v0, Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    check-cast v0, Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 24
    .line 25
    .line 26
    invoke-static {v0}, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;->intent(Lcom/narvii/monetization/sticker/model/StickerCollection;)Landroid/content/Intent;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    iget-object v0, p0, Lcom/narvii/monetization/store/StoreHelper;->source:Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    .line 34
    iget-object v0, p0, Lcom/narvii/monetization/store/StoreHelper;->context:Landroid/content/Context;

    .line 35
    .line 36
    .line 37
    invoke-static {v0, p1}, Lcom/narvii/monetization/store/StoreHelper;->safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V

    .line 38
    goto :goto_0

    .line 39
    .line 40
    :cond_1
    const-class v0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;

    .line 41
    .line 42
    .line 43
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    iget-object p1, p1, Lcom/narvii/monetization/store/data/StoreItem;->refObjectId:Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    .line 51
    iget-object p1, p0, Lcom/narvii/monetization/store/StoreHelper;->source:Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    .line 56
    iget-object p1, p0, Lcom/narvii/monetization/store/StoreHelper;->context:Landroid/content/Context;

    .line 57
    .line 58
    .line 59
    invoke-static {p1, v0}, Lcom/narvii/monetization/store/StoreHelper;->safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V

    .line 60
    goto :goto_0

    .line 61
    .line 62
    :cond_2
    const/16 v2, 0x74

    .line 63
    .line 64
    const-string v5, "prefetch"

    .line 65
    .line 66
    if-ne v1, v2, :cond_4

    .line 67
    .line 68
    const-class v1, Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;

    .line 69
    .line 70
    .line 71
    invoke-static {v1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 72
    move-result-object v1

    .line 73
    .line 74
    iget-object p1, p1, Lcom/narvii/monetization/store/data/StoreItem;->refObjectId:Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    .line 79
    iget-object p1, p0, Lcom/narvii/monetization/store/StoreHelper;->source:Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    .line 84
    instance-of p1, v0, Lcom/narvii/model/ChatBubble;

    .line 85
    .line 86
    if-eqz p1, :cond_3

    .line 87
    .line 88
    .line 89
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 90
    move-result-object p1

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    .line 95
    :cond_3
    iget-object p1, p0, Lcom/narvii/monetization/store/StoreHelper;->context:Landroid/content/Context;

    .line 96
    .line 97
    .line 98
    invoke-static {p1, v1}, Lcom/narvii/monetization/store/StoreHelper;->safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V

    .line 99
    goto :goto_0

    .line 100
    .line 101
    :cond_4
    const/16 v2, 0x7a

    .line 102
    .line 103
    if-ne v1, v2, :cond_6

    .line 104
    .line 105
    const-class v1, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;

    .line 106
    .line 107
    .line 108
    invoke-static {v1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 109
    move-result-object v1

    .line 110
    .line 111
    iget-object p1, p1, Lcom/narvii/monetization/store/data/StoreItem;->refObjectId:Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    .line 116
    iget-object p1, p0, Lcom/narvii/monetization/store/StoreHelper;->source:Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v1, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    .line 121
    instance-of p1, v0, Lcom/narvii/monetization/avatarframe/AvatarFrame;

    .line 122
    .line 123
    if-eqz p1, :cond_5

    .line 124
    .line 125
    .line 126
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 127
    move-result-object p1

    .line 128
    .line 129
    .line 130
    invoke-virtual {v1, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    .line 132
    :cond_5
    iget-object p1, p0, Lcom/narvii/monetization/store/StoreHelper;->context:Landroid/content/Context;

    .line 133
    .line 134
    .line 135
    invoke-static {p1, v1}, Lcom/narvii/monetization/store/StoreHelper;->safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V

    .line 136
    :cond_6
    :goto_0
    return-void
.end method

.method public rejectShareRequest(Ljava/lang/String;Lcom/narvii/util/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/narvii/util/Callback<",
            "Lcom/narvii/model/api/ApiResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "reject"

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/monetization/store/StoreHelper;->handleShareRequest(Ljava/lang/String;Lcom/narvii/util/Callback;Ljava/lang/String;)V

    .line 6
    return-void
.end method

.method public shareRequest(Ljava/lang/String;ILcom/narvii/util/Callback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/narvii/util/Callback<",
            "Lcom/narvii/model/api/ApiResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/monetization/store/StoreHelper;->context:Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    iput-object p3, v0, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 13
    .line 14
    iget-object p3, p0, Lcom/narvii/monetization/store/StoreHelper;->context:Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    invoke-static {p3}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    .line 18
    move-result-object p3

    .line 19
    .line 20
    const-string v1, "api"

    .line 21
    .line 22
    .line 23
    invoke-interface {p3, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 24
    move-result-object p3

    .line 25
    .line 26
    check-cast p3, Lcom/narvii/util/http/ApiService;

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 34
    move-result-object v1

    .line 35
    .line 36
    const-string v2, "store/share-requests"

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 40
    move-result-object v1

    .line 41
    .line 42
    const-string v2, "objectId"

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v2, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 46
    move-result-object p1

    .line 47
    .line 48
    const-string v1, "objectType"

    .line 49
    .line 50
    .line 51
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    move-result-object p2

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, v1, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 56
    move-result-object p1

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 60
    move-result-object p1

    .line 61
    .line 62
    iget-object p2, v0, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p3, p1, p2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 66
    return-void
.end method
