.class public abstract Lcom/narvii/video/model/BaseClipInfoPack;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    iput-object v0, p0, Lcom/narvii/video/model/BaseClipInfoPack;->clipId:Ljava/lang/String;

    .line 14
    const/4 v0, 0x0

    .line 15
    .line 16
    iput v0, p0, Lcom/narvii/video/model/BaseClipInfoPack;->startOffsetToMainTrackInMs:I

    .line 17
    .line 18
    iput-boolean v0, p0, Lcom/narvii/video/model/BaseClipInfoPack;->deleted:Z

    .line 19
    .line 20
    new-instance v0, Ljava/util/ArrayList;

    .line 21
    .line 22
    .line 23
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .line 25
    iput-object v0, p0, Lcom/narvii/video/model/BaseClipInfoPack;->composition:Ljava/util/ArrayList;

    .line 26
    .line 27
    new-instance v0, Ljava/util/ArrayList;

    .line 28
    .line 29
    .line 30
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .line 32
    iput-object v0, p0, Lcom/narvii/video/model/BaseClipInfoPack;->mainTrackComposition:Ljava/util/ArrayList;

    .line 33
    return-void
.end method


# virtual methods
.method public clipLength()I
    .locals 1

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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/model/BaseClipInfoPack;->composition:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/video/model/BaseClipInfoPack;->composition:Ljava/util/ArrayList;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/narvii/video/model/BaseClipInfoPack;->clipLength()I

    .line 14
    move-result v1

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Lcom/narvii/video/model/BaseClipInfoPack;->composition:Ljava/util/ArrayList;

    .line 24
    return-object v0
.end method

.method public getTrackContent()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public indexInScene()I
    .locals 1

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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/model/BaseClipInfoPack;->mainTrackComposition:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/video/model/BaseClipInfoPack;->mainTrackComposition:Ljava/util/ArrayList;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/narvii/video/model/BaseClipInfoPack;->clipLength()I

    .line 14
    move-result v1

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Lcom/narvii/video/model/BaseClipInfoPack;->mainTrackComposition:Ljava/util/ArrayList;

    .line 24
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

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/narvii/video/model/BaseClipInfoPack;->composition:Ljava/util/ArrayList;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/video/model/BaseClipInfoPack;->composition:Ljava/util/ArrayList;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 18
    return-void
.end method

.method public setIndexInScene(I)V
    .locals 0

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

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/narvii/video/model/BaseClipInfoPack;->mainTrackComposition:Ljava/util/ArrayList;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/video/model/BaseClipInfoPack;->mainTrackComposition:Ljava/util/ArrayList;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 18
    return-void
.end method
