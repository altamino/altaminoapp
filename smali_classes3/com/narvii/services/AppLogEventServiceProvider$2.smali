.class Lcom/narvii/services/AppLogEventServiceProvider$2;
.super Lcom/narvii/logging/LogEventServiceImpl;
.source "AppLogEventServiceProvider.java"


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

    .line 68
    iput-object p1, p0, Lcom/narvii/services/AppLogEventServiceProvider$2;->this$0:Lcom/narvii/services/AppLogEventServiceProvider;

    invoke-direct {p0, p2}, Lcom/narvii/logging/LogEventServiceImpl;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method protected sendThirdPartyLog(Lcom/narvii/app/NVContext;Lcom/narvii/logging/LogEvent;Lorg/json/JSONObject;)V
    .locals 0

    return-void
.end method
