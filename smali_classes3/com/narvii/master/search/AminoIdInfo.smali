.class public Lcom/narvii/master/search/AminoIdInfo;
.super Lcom/narvii/model/NVObject;
.source "AminoIdInfo.java"


# annotations
.annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
    using = Lcom/narvii/master/search/AminoIdInfo$AminoIdInfoDeserializer;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/master/search/AminoIdInfo$AminoIdInfoDeserializer;
    }
.end annotation


# instance fields
.field public aminoId:Ljava/lang/String;

.field public objectId:Ljava/lang/String;

.field public objectType:I

.field public refObject:Lcom/narvii/model/NVObject;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/narvii/model/NVObject;-><init>()V

    return-void
.end method


# virtual methods
.method public id()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/narvii/master/search/AminoIdInfo;->objectId:Ljava/lang/String;

    return-object v0
.end method

.method public objectType()I
    .locals 1

    const/4 v0, -0x1

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
