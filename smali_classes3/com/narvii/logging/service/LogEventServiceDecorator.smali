.class public Lcom/narvii/logging/service/LogEventServiceDecorator;
.super Ljava/lang/Object;
.source "LogEventServiceDecorator.java"

# interfaces
.implements Lcom/narvii/logging/service/LogEventService;


# instance fields
.field nvContext:Lcom/narvii/app/NVContext;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/narvii/logging/service/LogEventServiceDecorator;->nvContext:Lcom/narvii/app/NVContext;

    return-void
.end method


# virtual methods
.method public logEvent(Lcom/narvii/logging/LogEvent;)V
    .locals 2

    .line 19
    iget-object v0, p0, Lcom/narvii/logging/service/LogEventServiceDecorator;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getParentContext()Lcom/narvii/app/NVContext;

    move-result-object v0

    const-string v1, "logEvent"

    .line 20
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/logging/service/LogEventService;

    if-eqz v0, :cond_0

    .line 22
    invoke-interface {v0, p1}, Lcom/narvii/logging/service/LogEventService;->logEvent(Lcom/narvii/logging/LogEvent;)V

    :cond_0
    return-void
.end method
