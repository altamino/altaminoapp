.class public Lcom/narvii/logging/service/PageLogEventService;
.super Lcom/narvii/logging/service/LogEventServiceDecorator;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/logging/service/LogEventServiceDecorator;-><init>(Lcom/narvii/app/NVContext;)V

    .line 4
    return-void
.end method


# virtual methods
.method protected completeLogEvent(Lcom/narvii/logging/LogEvent;)V
    .locals 0

    return-void
.end method

.method public logEvent(Lcom/narvii/logging/LogEvent;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/logging/service/LogEventServiceDecorator;->nvContext:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    instance-of v1, v0, Lcom/narvii/logging/Page;

    .line 5
    .line 6
    if-eqz v1, :cond_2

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/logging/Page;

    .line 9
    .line 10
    .line 11
    invoke-interface {v0}, Lcom/narvii/logging/Page;->getPageName()Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-object v1, p1, Lcom/narvii/logging/LogEvent;->eventPage:Ljava/lang/String;

    .line 17
    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    iput-object v0, p1, Lcom/narvii/logging/LogEvent;->eventPage:Ljava/lang/String;

    .line 21
    goto :goto_0

    .line 22
    .line 23
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string v0, "-"

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    iget-object v0, p1, Lcom/narvii/logging/LogEvent;->eventPage:Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    iput-object v0, p1, Lcom/narvii/logging/LogEvent;->eventPage:Ljava/lang/String;

    .line 46
    .line 47
    :cond_1
    :goto_0
    iget-object v0, p1, Lcom/narvii/logging/LogEvent;->pvId:Ljava/lang/String;

    .line 48
    .line 49
    if-nez v0, :cond_2

    .line 50
    .line 51
    iget-object v0, p0, Lcom/narvii/logging/service/LogEventServiceDecorator;->nvContext:Lcom/narvii/app/NVContext;

    .line 52
    .line 53
    check-cast v0, Lcom/narvii/logging/Page;

    .line 54
    .line 55
    .line 56
    invoke-interface {v0}, Lcom/narvii/logging/Page;->getPvId()Ljava/lang/String;

    .line 57
    move-result-object v0

    .line 58
    .line 59
    iput-object v0, p1, Lcom/narvii/logging/LogEvent;->pvId:Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    :cond_2
    invoke-virtual {p0, p1}, Lcom/narvii/logging/service/PageLogEventService;->completeLogEvent(Lcom/narvii/logging/LogEvent;)V

    .line 63
    .line 64
    .line 65
    invoke-super {p0, p1}, Lcom/narvii/logging/service/LogEventServiceDecorator;->logEvent(Lcom/narvii/logging/LogEvent;)V

    .line 66
    return-void
.end method
