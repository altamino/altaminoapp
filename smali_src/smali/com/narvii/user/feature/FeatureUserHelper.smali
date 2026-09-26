.class public Lcom/narvii/user/feature/FeatureUserHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ACTION_FEATURE_USER_CHANGED:Ljava/lang/String; = "com.narvii.action.FEATURE_USER_CHANGED"


# instance fields
.field context:Lcom/narvii/app/NVContext;

.field user:Lcom/narvii/model/User;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/user/feature/FeatureUserHelper;->context:Lcom/narvii/app/NVContext;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/narvii/user/feature/FeatureUserHelper;->user:Lcom/narvii/model/User;

    .line 8
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/user/feature/FeatureUserHelper;ILcom/narvii/util/Callback;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/user/feature/FeatureUserHelper;->featureUserForDays(ILcom/narvii/util/Callback;)V

    return-void
.end method

.method private featureUserForDays(ILcom/narvii/util/Callback;)V
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
    const/4 p1, 0x4

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/narvii/user/feature/FeatureUserHelper;->featureUser(IJLcom/narvii/util/Callback;)V

    .line 10
    return-void
.end method


# virtual methods
.method public featureUser(IJLcom/narvii/util/Callback;)V
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
    iget-object v2, p0, Lcom/narvii/user/feature/FeatureUserHelper;->user:Lcom/narvii/model/User;

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
    iget-object v2, p0, Lcom/narvii/user/feature/FeatureUserHelper;->user:Lcom/narvii/model/User;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2}, Lcom/narvii/model/User;->id()Ljava/lang/String;

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
    iget-object v0, p0, Lcom/narvii/user/feature/FeatureUserHelper;->context:Lcom/narvii/app/NVContext;

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
    new-instance v0, Lcom/narvii/user/feature/FeatureUserHelper$2;

    .line 106
    .line 107
    .line 108
    invoke-direct {v0, p0, p1, p4}, Lcom/narvii/user/feature/FeatureUserHelper$2;-><init>(Lcom/narvii/user/feature/FeatureUserHelper;ILcom/narvii/util/Callback;)V

    .line 109
    .line 110
    iput-object v0, p3, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p3}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 114
    .line 115
    iget-object p1, p0, Lcom/narvii/user/feature/FeatureUserHelper;->context:Lcom/narvii/app/NVContext;

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

.method public showFeatureDialog(Lcom/narvii/util/Callback;)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/user/feature/FeatureUserHelper;->user:Lcom/narvii/model/User;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    new-instance v0, Lcom/narvii/util/dialog/ActionSheetDialog;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/narvii/user/feature/FeatureUserHelper;->context:Lcom/narvii/app/NVContext;

    .line 10
    .line 11
    .line 12
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    .line 17
    .line 18
    iget-object v1, p0, Lcom/narvii/user/feature/FeatureUserHelper;->context:Lcom/narvii/app/NVContext;

    .line 19
    .line 20
    .line 21
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    .line 25
    const v2, 0x7f120757

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 33
    .line 34
    iget-object v1, p0, Lcom/narvii/user/feature/FeatureUserHelper;->context:Lcom/narvii/app/NVContext;

    .line 35
    .line 36
    .line 37
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 38
    move-result-object v1

    .line 39
    .line 40
    .line 41
    const v2, 0x7f120750

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 45
    move-result-object v1

    .line 46
    const/4 v2, 0x0

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(Ljava/lang/String;I)V

    .line 50
    .line 51
    iget-object v1, p0, Lcom/narvii/user/feature/FeatureUserHelper;->context:Lcom/narvii/app/NVContext;

    .line 52
    .line 53
    .line 54
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 55
    move-result-object v1

    .line 56
    .line 57
    .line 58
    const v3, 0x7f120752

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 62
    move-result-object v1

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(Ljava/lang/String;I)V

    .line 66
    .line 67
    new-instance v1, Lcom/narvii/user/feature/FeatureUserHelper$1;

    .line 68
    .line 69
    .line 70
    invoke-direct {v1, p0, p1}, Lcom/narvii/user/feature/FeatureUserHelper$1;-><init>(Lcom/narvii/user/feature/FeatureUserHelper;Lcom/narvii/util/Callback;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    .line 77
    return-void
.end method
