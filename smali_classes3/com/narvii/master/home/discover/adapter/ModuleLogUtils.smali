.class public Lcom/narvii/master/home/discover/adapter/ModuleLogUtils;
.super Ljava/lang/Object;
.source "ModuleLogUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static completeModuleExtraInfo(Lcom/narvii/logging/LogEvent$Builder;Lcom/narvii/topic/model/discover/ContentModule;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 11
    iget-object v0, p1, Lcom/narvii/topic/model/discover/ContentModule;->displayName:Ljava/lang/String;

    const-string v1, "moduleDisplayName"

    invoke-virtual {p0, v1, v0}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    .line 12
    iget v0, p1, Lcom/narvii/topic/model/discover/ContentModule;->linkedObjectType:I

    const/16 v1, 0x7e

    if-ne v0, v1, :cond_0

    .line 13
    invoke-virtual {p1}, Lcom/narvii/topic/model/discover/ContentModule;->getInterestId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "moduleInterestId"

    invoke-virtual {p0, v1, v0}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    goto :goto_0

    :cond_0
    const/16 v1, 0x80

    if-ne v0, v1, :cond_1

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/narvii/topic/model/discover/ContentModule;->getTopicId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "moduleTopicId"

    invoke-virtual {p0, v1, v0}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    .line 17
    :cond_1
    :goto_0
    iget-object p1, p1, Lcom/narvii/topic/model/discover/ContentModule;->moduleId:Ljava/lang/String;

    const-string v0, "moduleId"

    invoke-virtual {p0, v0, p1}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    :cond_2
    return-void
.end method
