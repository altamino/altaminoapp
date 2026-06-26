.class public Lcom/narvii/logging/service/PageLogEventService;
.super Lcom/narvii/logging/service/LogEventServiceDecorator;
.source "PageLogEventService.java"


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/narvii/logging/service/LogEventServiceDecorator;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method protected completeLogEvent(Lcom/narvii/logging/LogEvent;)V
    .locals 0

    return-void
.end method

.method public logEvent(Lcom/narvii/logging/LogEvent;)V
    .locals 2

    .line 17
    iget-object v0, p0, Lcom/narvii/logging/service/LogEventServiceDecorator;->nvContext:Lcom/narvii/app/NVContext;

    instance-of v1, v0, Lcom/narvii/logging/Page;

    if-eqz v1, :cond_2

    .line 18
    check-cast v0, Lcom/narvii/logging/Page;

    invoke-interface {v0}, Lcom/narvii/logging/Page;->getPageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 20
    iget-object v1, p1, Lcom/narvii/logging/LogEvent;->eventPage:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 21
    iput-object v0, p1, Lcom/narvii/logging/LogEvent;->eventPage:Ljava/lang/String;

    goto :goto_0

    .line 23
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/narvii/logging/LogEvent;->eventPage:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/narvii/logging/LogEvent;->eventPage:Ljava/lang/String;

    .line 26
    :cond_1
    :goto_0
    iget-object v0, p1, Lcom/narvii/logging/LogEvent;->pvId:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 27
    iget-object v0, p0, Lcom/narvii/logging/service/LogEventServiceDecorator;->nvContext:Lcom/narvii/app/NVContext;

    check-cast v0, Lcom/narvii/logging/Page;

    invoke-interface {v0}, Lcom/narvii/logging/Page;->getPvId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/narvii/logging/LogEvent;->pvId:Ljava/lang/String;

    .line 32
    :cond_2
    invoke-virtual {p0, p1}, Lcom/narvii/logging/service/PageLogEventService;->completeLogEvent(Lcom/narvii/logging/LogEvent;)V

    .line 33
    invoke-super {p0, p1}, Lcom/narvii/logging/service/LogEventServiceDecorator;->logEvent(Lcom/narvii/logging/LogEvent;)V

    return-void
.end method
