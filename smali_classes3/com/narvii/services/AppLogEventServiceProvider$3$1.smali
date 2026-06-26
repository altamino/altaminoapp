.class Lcom/narvii/services/AppLogEventServiceProvider$3$1;
.super Ljava/lang/Object;
.source "AppLogEventServiceProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/services/AppLogEventServiceProvider$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/services/AppLogEventServiceProvider$3;

.field final synthetic val$finalAndroidId:Ljava/lang/String;

.field final synthetic val$idfa:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/narvii/services/AppLogEventServiceProvider$3;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/narvii/services/AppLogEventServiceProvider$3$1;->this$1:Lcom/narvii/services/AppLogEventServiceProvider$3;

    iput-object p2, p0, Lcom/narvii/services/AppLogEventServiceProvider$3$1;->val$idfa:Ljava/lang/String;

    iput-object p3, p0, Lcom/narvii/services/AppLogEventServiceProvider$3$1;->val$finalAndroidId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 131
    iget-object v0, p0, Lcom/narvii/services/AppLogEventServiceProvider$3$1;->this$1:Lcom/narvii/services/AppLogEventServiceProvider$3;

    iget-object v0, v0, Lcom/narvii/services/AppLogEventServiceProvider$3;->this$0:Lcom/narvii/services/AppLogEventServiceProvider;

    iget-object v0, v0, Lcom/narvii/services/AppLogEventServiceProvider;->nvContext:Lcom/narvii/app/NVContext;

    invoke-static {v0}, Lcom/narvii/logging/LogEvent;->builder(Lcom/narvii/app/NVContext;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/logging/LogEvent$Builder;->appEvent()Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    sget-object v1, Lcom/narvii/logging/ActType;->auto:Lcom/narvii/logging/ActType;

    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->actType(Lcom/narvii/logging/ActType;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    sget-object v1, Lcom/narvii/logging/ActSemantic;->idfa:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->actSemantic(Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/services/AppLogEventServiceProvider$3$1;->val$idfa:Ljava/lang/String;

    const-string v2, "idfa"

    invoke-virtual {v0, v2, v1}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/services/AppLogEventServiceProvider$3$1;->val$finalAndroidId:Ljava/lang/String;

    const-string v2, "androidId"

    invoke-virtual {v0, v2, v1}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    return-void
.end method
