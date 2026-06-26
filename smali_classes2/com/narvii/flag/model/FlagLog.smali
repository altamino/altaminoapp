.class public Lcom/narvii/flag/model/FlagLog;
.super Lcom/narvii/model/NVObject;
.source "FlagLog.java"


# instance fields
.field public createdTime:Ljava/lang/String;

.field public flagType:I

.field public message:Ljava/lang/String;

.field public objectId:Ljava/lang/String;

.field public reporter:Lcom/narvii/model/User;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        contentAs = Lcom/narvii/model/User;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/narvii/model/NVObject;-><init>()V

    return-void
.end method


# virtual methods
.method public id()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/narvii/flag/model/FlagLog;->objectId:Ljava/lang/String;

    return-object v0
.end method

.method public objectType()I
    .locals 1

    const v0, 0x7fffffff

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

    const/4 v0, 0x0

    return-object v0
.end method
