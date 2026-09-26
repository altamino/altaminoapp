.class public Lcom/narvii/poweruser/PowerFeedHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field broadcastHelper:Lcom/narvii/poweruser/SendBroadcastHelper;

.field context:Lcom/narvii/app/NVContext;

.field feed:Lcom/narvii/model/Feed;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/model/Feed;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/poweruser/PowerFeedHelper;->context:Lcom/narvii/app/NVContext;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/narvii/poweruser/PowerFeedHelper;->feed:Lcom/narvii/model/Feed;

    .line 8
    .line 9
    new-instance p2, Lcom/narvii/poweruser/SendBroadcastHelper;

    .line 10
    .line 11
    .line 12
    invoke-direct {p2, p1}, Lcom/narvii/poweruser/SendBroadcastHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 13
    .line 14
    iput-object p2, p0, Lcom/narvii/poweruser/PowerFeedHelper;->broadcastHelper:Lcom/narvii/poweruser/SendBroadcastHelper;

    .line 15
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/poweruser/PowerFeedHelper;ILcom/narvii/util/Callback;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/poweruser/PowerFeedHelper;->featureFeedForDays(ILcom/narvii/util/Callback;)V

    return-void
.end method

.method private featureFeedForDays(ILcom/narvii/util/Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/narvii/util/Callback<",
            "Lcom/narvii/model/api/ApiResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    const v0, 0x15180

    .line 4
    mul-int/2addr p1, v0

    .line 5
    int-to-long v0, p1

    .line 6
    const/4 p1, 0x1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/narvii/poweruser/PowerFeedHelper;->featureFeed(IJLcom/narvii/util/Callback;)V

    .line 10
    return-void
.end method


# virtual methods
.method public changeBestQuizStatus(Z)V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/http/ApiRequest$Builder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->https()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 13
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    iget-object v2, p0, Lcom/narvii/poweruser/PowerFeedHelper;->feed:Lcom/narvii/model/Feed;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Lcom/narvii/model/NVObject;->apiTypeName()Ljava/lang/String;

    .line 23
    move-result-object v2

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string v2, "/"

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    iget-object v2, p0, Lcom/narvii/poweruser/PowerFeedHelper;->feed:Lcom/narvii/model/Feed;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    .line 37
    move-result-object v2

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const-string v2, "/admin"

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object v1

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 53
    .line 54
    if-eqz p1, :cond_0

    .line 55
    .line 56
    const/16 v1, 0xf0

    .line 57
    goto :goto_0

    .line 58
    .line 59
    :cond_0
    const/16 v1, 0xf1

    .line 60
    .line 61
    .line 62
    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    move-result-object v1

    .line 64
    .line 65
    const-string v2, "adminOpName"

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 72
    move-result-object v0

    .line 73
    .line 74
    new-instance v1, Lcom/narvii/util/dialog/ProgressDialog;

    .line 75
    .line 76
    iget-object v2, p0, Lcom/narvii/poweruser/PowerFeedHelper;->context:Lcom/narvii/app/NVContext;

    .line 77
    .line 78
    .line 79
    invoke-interface {v2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 80
    move-result-object v2

    .line 81
    .line 82
    .line 83
    invoke-direct {v1, v2}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 84
    .line 85
    new-instance v2, Lcom/narvii/poweruser/PowerFeedHelper$3;

    .line 86
    .line 87
    .line 88
    invoke-direct {v2, p0, p1}, Lcom/narvii/poweruser/PowerFeedHelper$3;-><init>(Lcom/narvii/poweruser/PowerFeedHelper;Z)V

    .line 89
    .line 90
    iput-object v2, v1, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 94
    .line 95
    iget-object p1, p0, Lcom/narvii/poweruser/PowerFeedHelper;->context:Lcom/narvii/app/NVContext;

    .line 96
    .line 97
    const-string v2, "api"

    .line 98
    .line 99
    .line 100
    invoke-interface {p1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 101
    move-result-object p1

    .line 102
    .line 103
    check-cast p1, Lcom/narvii/util/http/ApiService;

    .line 104
    .line 105
    iget-object v1, v1, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 109
    return-void
.end method

.method public featureFeed(IJLcom/narvii/util/Callback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Lcom/narvii/util/Callback<",
            "Lcom/narvii/model/api/ApiResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/http/ApiRequest$Builder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->https()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 13
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    iget-object v2, p0, Lcom/narvii/poweruser/PowerFeedHelper;->feed:Lcom/narvii/model/Feed;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Lcom/narvii/model/NVObject;->apiTypeName()Ljava/lang/String;

    .line 23
    move-result-object v2

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string v2, "/"

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    iget-object v2, p0, Lcom/narvii/poweruser/PowerFeedHelper;->feed:Lcom/narvii/model/Feed;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    .line 37
    move-result-object v2

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const-string v2, "/admin"

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object v1

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 53
    .line 54
    const/16 v1, 0x72

    .line 55
    .line 56
    .line 57
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    move-result-object v1

    .line 59
    .line 60
    const-string v2, "adminOpName"

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 64
    .line 65
    .line 66
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 67
    move-result-object v1

    .line 68
    .line 69
    const-string v2, "featuredType"

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, v2, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 73
    .line 74
    const-wide/16 v2, 0x0

    .line 75
    .line 76
    cmp-long v2, p2, v2

    .line 77
    .line 78
    if-eqz v2, :cond_0

    .line 79
    .line 80
    const-string v2, "featuredDuration"

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1, v2, p2, p3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;J)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 84
    .line 85
    :cond_0
    const-string p2, "adminOpValue"

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, p2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 92
    move-result-object p2

    .line 93
    .line 94
    new-instance p3, Lcom/narvii/util/dialog/ProgressDialog;

    .line 95
    .line 96
    iget-object v0, p0, Lcom/narvii/poweruser/PowerFeedHelper;->context:Lcom/narvii/app/NVContext;

    .line 97
    .line 98
    .line 99
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 100
    move-result-object v0

    .line 101
    .line 102
    .line 103
    invoke-direct {p3, v0}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 104
    .line 105
    new-instance v0, Lcom/narvii/poweruser/PowerFeedHelper$2;

    .line 106
    .line 107
    .line 108
    invoke-direct {v0, p0, p1, p4}, Lcom/narvii/poweruser/PowerFeedHelper$2;-><init>(Lcom/narvii/poweruser/PowerFeedHelper;ILcom/narvii/util/Callback;)V

    .line 109
    .line 110
    iput-object v0, p3, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p3}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 114
    .line 115
    iget-object p1, p0, Lcom/narvii/poweruser/PowerFeedHelper;->context:Lcom/narvii/app/NVContext;

    .line 116
    .line 117
    const-string p4, "api"

    .line 118
    .line 119
    .line 120
    invoke-interface {p1, p4}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 121
    move-result-object p1

    .line 122
    .line 123
    check-cast p1, Lcom/narvii/util/http/ApiService;

    .line 124
    .line 125
    iget-object p3, p3, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1, p2, p3}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 129
    return-void
.end method

.method public sendBroadCast()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/poweruser/PowerFeedHelper;->feed:Lcom/narvii/model/Feed;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iget-object v1, p0, Lcom/narvii/poweruser/PowerFeedHelper;->broadcastHelper:Lcom/narvii/poweruser/SendBroadcastHelper;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, v0}, Lcom/narvii/poweruser/SendBroadcastHelper;->sendBroadcast(Lcom/narvii/model/NVObject;)V

    .line 11
    return-void
.end method

.method public showFeatureDialog(Lcom/narvii/util/Callback;)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/poweruser/PowerFeedHelper;->feed:Lcom/narvii/model/Feed;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/model/Feed;->featureType()I

    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x2

    .line 11
    const/4 v2, 0x1

    .line 12
    .line 13
    if-ne v0, v1, :cond_1

    .line 14
    .line 15
    iget-object p1, p0, Lcom/narvii/poweruser/PowerFeedHelper;->context:Lcom/narvii/app/NVContext;

    .line 16
    .line 17
    .line 18
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    iget-object v0, p0, Lcom/narvii/poweruser/PowerFeedHelper;->context:Lcom/narvii/app/NVContext;

    .line 22
    .line 23
    .line 24
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    .line 28
    const v1, 0x7f120ee4

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    .line 35
    invoke-static {p1, v0, v2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 36
    move-result-object p1

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 40
    return-void

    .line 41
    .line 42
    :cond_1
    iget-object v0, p0, Lcom/narvii/poweruser/PowerFeedHelper;->feed:Lcom/narvii/model/Feed;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/narvii/model/Feed;->featureType()I

    .line 46
    move-result v0

    .line 47
    .line 48
    if-ne v0, v2, :cond_2

    .line 49
    .line 50
    iget-object p1, p0, Lcom/narvii/poweruser/PowerFeedHelper;->context:Lcom/narvii/app/NVContext;

    .line 51
    .line 52
    .line 53
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 54
    move-result-object p1

    .line 55
    .line 56
    iget-object v0, p0, Lcom/narvii/poweruser/PowerFeedHelper;->context:Lcom/narvii/app/NVContext;

    .line 57
    .line 58
    .line 59
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 60
    move-result-object v0

    .line 61
    .line 62
    .line 63
    const v1, 0x7f120ee3

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 67
    move-result-object v0

    .line 68
    .line 69
    .line 70
    invoke-static {p1, v0, v2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 71
    move-result-object p1

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 75
    return-void

    .line 76
    .line 77
    :cond_2
    new-instance v0, Lcom/narvii/util/dialog/ActionSheetDialog;

    .line 78
    .line 79
    iget-object v1, p0, Lcom/narvii/poweruser/PowerFeedHelper;->context:Lcom/narvii/app/NVContext;

    .line 80
    .line 81
    .line 82
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 83
    move-result-object v1

    .line 84
    .line 85
    .line 86
    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    .line 87
    .line 88
    iget-object v1, p0, Lcom/narvii/poweruser/PowerFeedHelper;->context:Lcom/narvii/app/NVContext;

    .line 89
    .line 90
    .line 91
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 92
    move-result-object v1

    .line 93
    .line 94
    .line 95
    const v2, 0x7f120756

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 99
    move-result-object v1

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 103
    .line 104
    iget-object v1, p0, Lcom/narvii/poweruser/PowerFeedHelper;->context:Lcom/narvii/app/NVContext;

    .line 105
    .line 106
    .line 107
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 108
    move-result-object v1

    .line 109
    .line 110
    .line 111
    const v2, 0x7f120750

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 115
    move-result-object v1

    .line 116
    const/4 v2, 0x0

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(Ljava/lang/String;I)V

    .line 120
    .line 121
    iget-object v1, p0, Lcom/narvii/poweruser/PowerFeedHelper;->context:Lcom/narvii/app/NVContext;

    .line 122
    .line 123
    .line 124
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 125
    move-result-object v1

    .line 126
    .line 127
    .line 128
    const v3, 0x7f120752

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 132
    move-result-object v1

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(Ljava/lang/String;I)V

    .line 136
    .line 137
    iget-object v1, p0, Lcom/narvii/poweruser/PowerFeedHelper;->context:Lcom/narvii/app/NVContext;

    .line 138
    .line 139
    .line 140
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 141
    move-result-object v1

    .line 142
    .line 143
    .line 144
    const v3, 0x7f120754

    .line 145
    .line 146
    .line 147
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 148
    move-result-object v1

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(Ljava/lang/String;I)V

    .line 152
    .line 153
    new-instance v1, Lcom/narvii/poweruser/PowerFeedHelper$1;

    .line 154
    .line 155
    .line 156
    invoke-direct {v1, p0, p1}, Lcom/narvii/poweruser/PowerFeedHelper$1;-><init>(Lcom/narvii/poweruser/PowerFeedHelper;Lcom/narvii/util/Callback;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    .line 163
    return-void
.end method
