.class Lcom/narvii/services/AppLogEventServiceProvider$2;
.super Lcom/narvii/logging/LogEventServiceImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/services/AppLogEventServiceProvider;->create(Lcom/narvii/app/NVContext;)Lcom/narvii/logging/service/LogEventService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/services/AppLogEventServiceProvider;


# direct methods
.method constructor <init>(Lcom/narvii/services/AppLogEventServiceProvider;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/services/AppLogEventServiceProvider$2;->this$0:Lcom/narvii/services/AppLogEventServiceProvider;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/logging/LogEventServiceImpl;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    return-void
.end method


# virtual methods
.method protected getAbTestConfigJsonObject()Lorg/json/JSONObject;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/ss/android/tea/common/applog/d;->b()Lorg/json/JSONObject;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method protected sendThirdPartyLog(Lcom/narvii/app/NVContext;Lcom/narvii/logging/LogEvent;Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    .line 2
    iget-object p2, p2, Lcom/narvii/logging/LogEvent;->actSemantic:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p2, p3}, Lcom/narvii/util/statistics/TeaManager;->logEvent(Lcom/narvii/app/NVContext;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 6
    return-void
.end method
