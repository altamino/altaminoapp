.class Lcom/narvii/services/AppLogEventServiceProvider$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/services/AppLogEventServiceProvider$3$1;->this$1:Lcom/narvii/services/AppLogEventServiceProvider$3;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/services/AppLogEventServiceProvider$3$1;->val$idfa:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/services/AppLogEventServiceProvider$3$1;->val$finalAndroidId:Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/services/AppLogEventServiceProvider$3$1;->this$1:Lcom/narvii/services/AppLogEventServiceProvider$3;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/services/AppLogEventServiceProvider$3;->this$0:Lcom/narvii/services/AppLogEventServiceProvider;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/narvii/services/AppLogEventServiceProvider;->nvContext:Lcom/narvii/app/NVContext;

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lcom/narvii/logging/LogEvent;->builder(Lcom/narvii/app/NVContext;)Lcom/narvii/logging/LogEvent$Builder;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/logging/LogEvent$Builder;->appEvent()Lcom/narvii/logging/LogEvent$Builder;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    sget-object v1, Lcom/narvii/logging/ActType;->auto:Lcom/narvii/logging/ActType;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->actType(Lcom/narvii/logging/ActType;)Lcom/narvii/logging/LogEvent$Builder;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    sget-object v1, Lcom/narvii/logging/ActSemantic;->idfa:Lcom/narvii/logging/ActSemantic;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->actSemantic(Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    const-string v1, "idfa"

    .line 29
    .line 30
    iget-object v2, p0, Lcom/narvii/services/AppLogEventServiceProvider$3$1;->val$idfa:Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1, v2}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    const-string v1, "androidId"

    .line 37
    .line 38
    iget-object v2, p0, Lcom/narvii/services/AppLogEventServiceProvider$3$1;->val$finalAndroidId:Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1, v2}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    .line 42
    move-result-object v0

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 46
    return-void
.end method
