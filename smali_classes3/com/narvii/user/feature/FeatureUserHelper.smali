.class public Lcom/narvii/user/feature/FeatureUserHelper;
.super Ljava/lang/Object;
.source "FeatureUserHelper.java"


# static fields
.field public static final ACTION_FEATURE_USER_CHANGED:Ljava/lang/String; = "com.narvii.action.FEATURE_USER_CHANGED"


# instance fields
.field context:Lcom/narvii/app/NVContext;

.field user:Lcom/narvii/model/User;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/narvii/user/feature/FeatureUserHelper;->context:Lcom/narvii/app/NVContext;

    .line 38
    iput-object p2, p0, Lcom/narvii/user/feature/FeatureUserHelper;->user:Lcom/narvii/model/User;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/user/feature/FeatureUserHelper;ILcom/narvii/util/Callback;)V
    .locals 0

    .line 30
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

    mul-int/lit8 p1, p1, 0x18

    mul-int/lit8 p1, p1, 0x3c

    mul-int/lit8 p1, p1, 0x3c

    int-to-long v0, p1

    const/4 p1, 0x4

    .line 66
    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/narvii/user/feature/FeatureUserHelper;->featureUser(IJLcom/narvii/util/Callback;)V

    return-void
.end method


# virtual methods
.method public featureUser(IJLcom/narvii/util/Callback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Lcom/narvii/util/Callback<",
            "Lcom/narvii/model/api/ApiResponse;",
            ">;)V"
        }
    .end annotation

    .line 71
    new-instance v0, Lcom/narvii/util/http/ApiRequest$Builder;

    invoke-direct {v0}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    .line 72
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->https()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/narvii/user/feature/FeatureUserHelper;->user:Lcom/narvii/model/User;

    invoke-virtual {v2}, Lcom/narvii/model/NVObject;->apiTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/narvii/user/feature/FeatureUserHelper;->user:Lcom/narvii/model/User;

    invoke-virtual {v2}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/admin"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    const/16 v1, 0x72

    .line 74
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "adminOpName"

    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 75
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v1

    const-string v2, "featuredType"

    .line 76
    invoke-virtual {v1, v2, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const-wide/16 v2, 0x0

    cmp-long v4, p2, v2

    if-eqz v4, :cond_0

    const-string v2, "featuredDuration"

    .line 78
    invoke-virtual {v1, v2, p2, p3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;J)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    :cond_0
    const-string p2, "adminOpValue"

    .line 80
    invoke-virtual {v0, p2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 82
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p2

    .line 83
    new-instance p3, Lcom/narvii/util/dialog/ProgressDialog;

    iget-object v0, p0, Lcom/narvii/user/feature/FeatureUserHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 84
    new-instance v0, Lcom/narvii/user/feature/FeatureUserHelper$2;

    invoke-direct {v0, p0, p1, p4}, Lcom/narvii/user/feature/FeatureUserHelper$2;-><init>(Lcom/narvii/user/feature/FeatureUserHelper;ILcom/narvii/util/Callback;)V

    iput-object v0, p3, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 124
    invoke-virtual {p3}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 125
    iget-object p1, p0, Lcom/narvii/user/feature/FeatureUserHelper;->context:Lcom/narvii/app/NVContext;

    const-string p4, "api"

    invoke-interface {p1, p4}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/http/ApiService;

    .line 126
    iget-object p3, p3, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {p1, p2, p3}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method public showFeatureDialog(Lcom/narvii/util/Callback;)V
    .locals 4

    .line 42
    iget-object v0, p0, Lcom/narvii/user/feature/FeatureUserHelper;->user:Lcom/narvii/model/User;

    if-nez v0, :cond_0

    return-void

    .line 45
    :cond_0
    new-instance v0, Lcom/narvii/util/dialog/ActionSheetDialog;

    iget-object v1, p0, Lcom/narvii/user/feature/FeatureUserHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    .line 46
    iget-object v1, p0, Lcom/narvii/user/feature/FeatureUserHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f06ac

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 47
    iget-object v1, p0, Lcom/narvii/user/feature/FeatureUserHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f06a5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(Ljava/lang/String;I)V

    .line 48
    iget-object v1, p0, Lcom/narvii/user/feature/FeatureUserHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f0f06a7

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(Ljava/lang/String;I)V

    .line 49
    new-instance v1, Lcom/narvii/user/feature/FeatureUserHelper$1;

    invoke-direct {v1, p0, p1}, Lcom/narvii/user/feature/FeatureUserHelper$1;-><init>(Lcom/narvii/user/feature/FeatureUserHelper;Lcom/narvii/util/Callback;)V

    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 62
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    return-void
.end method
