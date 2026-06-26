.class public Lcom/narvii/tipping/model/TipLog;
.super Lcom/narvii/model/NVObject;
.source "TipLog.java"

# interfaces
.implements Lcom/narvii/model/AuthorGetter;
.implements Lcom/narvii/model/Benefactor;


# instance fields
.field public isTipperAccessible:Z

.field public lastThankedTime:Ljava/util/Date;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        using = Lcom/narvii/util/JacksonUtils$DateDeserializer;
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;
        using = Lcom/narvii/util/JacksonUtils$DateSerializer;
    .end annotation
.end field

.field public lastTippedTime:Ljava/util/Date;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        using = Lcom/narvii/util/JacksonUtils$DateDeserializer;
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;
        using = Lcom/narvii/util/JacksonUtils$DateSerializer;
    .end annotation
.end field

.field public tipper:Lcom/narvii/model/User;

.field public totalTippedCoins:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Lcom/narvii/model/NVObject;-><init>()V

    const/4 v0, 0x1

    .line 24
    iput-boolean v0, p0, Lcom/narvii/tipping/model/TipLog;->isTipperAccessible:Z

    return-void
.end method


# virtual methods
.method public getAuthor()Lcom/narvii/model/User;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/narvii/tipping/model/TipLog;->tipper:Lcom/narvii/model/User;

    return-object v0
.end method

.method public getBenefactor()Lcom/narvii/model/User;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/narvii/tipping/model/TipLog;->tipper:Lcom/narvii/model/User;

    return-object v0
.end method

.method public id()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/narvii/tipping/model/TipLog;->tipper:Lcom/narvii/model/User;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 31
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isThanksSent()Z
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/narvii/tipping/model/TipLog;->lastThankedTime:Ljava/util/Date;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public objectType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public parentId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public status()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public uid()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/narvii/tipping/model/TipLog;->tipper:Lcom/narvii/model/User;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
