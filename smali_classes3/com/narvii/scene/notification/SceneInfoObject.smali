.class public Lcom/narvii/scene/notification/SceneInfoObject;
.super Lcom/narvii/model/NVObject;
.source "SceneInfoObject.java"


# instance fields
.field public sceneInfo:Lcom/narvii/scene/model/SceneInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/narvii/model/NVObject;-><init>()V

    return-void
.end method


# virtual methods
.method public id()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/narvii/scene/notification/SceneInfoObject;->sceneInfo:Lcom/narvii/scene/model/SceneInfo;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    :goto_0
    return-object v0
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

    .line 27
    invoke-virtual {p0}, Lcom/narvii/scene/notification/SceneInfoObject;->id()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
