.class public abstract Lcom/narvii/video/model/BaseClipInfoPack;
.super Ljava/lang/Object;
.source "BaseClipInfoPack.java"

# interfaces
.implements Lcom/narvii/video/interfaces/ITimelineClip;


# instance fields
.field public clipId:Ljava/lang/String;

.field public composition:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public deleted:Z

.field public indexInScene:I

.field public mainTrackComposition:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public orgDurationInMs:I

.field public startOffsetToMainTrackInMs:I

.field public visibleDurationInMs:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/video/model/BaseClipInfoPack;->clipId:Ljava/lang/String;

    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lcom/narvii/video/model/BaseClipInfoPack;->startOffsetToMainTrackInMs:I

    .line 23
    iput-boolean v0, p0, Lcom/narvii/video/model/BaseClipInfoPack;->deleted:Z

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/video/model/BaseClipInfoPack;->composition:Ljava/util/ArrayList;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/video/model/BaseClipInfoPack;->mainTrackComposition:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public clipLength()I
    .locals 1

    .line 58
    iget v0, p0, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    return v0
.end method

.method public clipLengthComposition()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/narvii/video/model/BaseClipInfoPack;->composition:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/narvii/video/model/BaseClipInfoPack;->composition:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/narvii/video/model/BaseClipInfoPack;->clipLength()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/narvii/video/model/BaseClipInfoPack;->composition:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTrackContent()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public indexInScene()I
    .locals 1

    .line 53
    iget v0, p0, Lcom/narvii/video/model/BaseClipInfoPack;->indexInScene:I

    return v0
.end method

.method public mainTrackClipComposition()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/narvii/video/model/BaseClipInfoPack;->mainTrackComposition:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/narvii/video/model/BaseClipInfoPack;->mainTrackComposition:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/narvii/video/model/BaseClipInfoPack;->clipLength()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/narvii/video/model/BaseClipInfoPack;->mainTrackComposition:Ljava/util/ArrayList;

    return-object v0
.end method

.method public minValidLengthMs()I
    .locals 1

    const/16 v0, 0x3e8

    return v0
.end method

.method public setClipLengthComposition(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 28
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/narvii/video/model/BaseClipInfoPack;->composition:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 32
    iget-object v0, p0, Lcom/narvii/video/model/BaseClipInfoPack;->composition:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public setIndexInScene(I)V
    .locals 0

    .line 48
    iput p1, p0, Lcom/narvii/video/model/BaseClipInfoPack;->indexInScene:I

    return-void
.end method

.method public setMainTrackClipComposition(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 36
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/narvii/video/model/BaseClipInfoPack;->mainTrackComposition:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 40
    iget-object v0, p0, Lcom/narvii/video/model/BaseClipInfoPack;->mainTrackComposition:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method
