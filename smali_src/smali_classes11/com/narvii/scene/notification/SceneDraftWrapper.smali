.class public Lcom/narvii/scene/notification/SceneDraftWrapper;
.super Lcom/narvii/model/NVObject;
.source "SourceFile"


# instance fields
.field public draftId:Ljava/lang/String;

.field public isTemporary:Z

.field public sceneDraft:Lcom/narvii/scene/model/SceneDraft;

.field public sceneList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/Scene;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/model/NVObject;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/narvii/scene/model/SceneDraft;Z)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/narvii/model/NVObject;-><init>()V

    iput-object p1, p0, Lcom/narvii/scene/notification/SceneDraftWrapper;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    iput-boolean p2, p0, Lcom/narvii/scene/notification/SceneDraftWrapper;->isTemporary:Z

    if-nez p1, :cond_0

    const-string p1, ""

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p1, Lcom/narvii/scene/model/SceneDraft;->draftId:Ljava/lang/String;

    :goto_0
    iput-object p1, p0, Lcom/narvii/scene/notification/SceneDraftWrapper;->draftId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/Scene;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Lcom/narvii/model/NVObject;-><init>()V

    iput-object p1, p0, Lcom/narvii/scene/notification/SceneDraftWrapper;->sceneList:Ljava/util/List;

    iput-boolean p3, p0, Lcom/narvii/scene/notification/SceneDraftWrapper;->isTemporary:Z

    iput-object p2, p0, Lcom/narvii/scene/notification/SceneDraftWrapper;->draftId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/narvii/scene/notification/SceneDraftWrapper;->draftId:Ljava/lang/String;

    return-object v0
.end method

.method public isEdit()Z
    .locals 1

    iget-object v0, p0, Lcom/narvii/scene/notification/SceneDraftWrapper;->sceneList:Ljava/util/List;

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

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/scene/notification/SceneDraftWrapper;->id()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
