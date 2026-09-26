.class public Lcom/narvii/logging/service/LogEventServiceDecorator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/logging/service/LogEventService;


# instance fields
.field nvContext:Lcom/narvii/app/NVContext;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/logging/service/LogEventServiceDecorator;->nvContext:Lcom/narvii/app/NVContext;

    .line 6
    return-void
.end method


# virtual methods
.method public logEvent(Lcom/narvii/logging/LogEvent;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/logging/service/LogEventServiceDecorator;->nvContext:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getParentContext()Lcom/narvii/app/NVContext;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-string v1, "logEvent"

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    check-cast v0, Lcom/narvii/logging/service/LogEventService;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-interface {v0, p1}, Lcom/narvii/logging/service/LogEventService;->logEvent(Lcom/narvii/logging/LogEvent;)V

    .line 20
    :cond_0
    return-void
.end method
