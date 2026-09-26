.class public final Lcom/narvii/video/player/BaseScenePlayer$SceneClip;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/video/player/BaseScenePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SceneClip"
.end annotation


# instance fields
.field private clips:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/video/player/BaseScenePlayer$VideoClip;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private endOffSet:I

.field private index:I

.field private sceneId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private startOffSet:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/video/player/BaseScenePlayer$SceneClip;->clips:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/narvii/video/player/BaseScenePlayer$SceneClip;->startOffSet:I

    iput v0, p0, Lcom/narvii/video/player/BaseScenePlayer$SceneClip;->endOffSet:I

    return-void
.end method

.method public constructor <init>(Lcom/narvii/video/player/BaseScenePlayer$VideoClip;I)V
    .locals 1
    .param p1    # Lcom/narvii/video/player/BaseScenePlayer$VideoClip;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "clip"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/video/player/BaseScenePlayer$SceneClip;->clips:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/narvii/video/player/BaseScenePlayer$SceneClip;->startOffSet:I

    iput v0, p0, Lcom/narvii/video/player/BaseScenePlayer$SceneClip;->endOffSet:I

    .line 5
    invoke-virtual {p1}, Lcom/narvii/video/player/BaseScenePlayer$VideoClip;->getSceneId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/video/player/BaseScenePlayer$SceneClip;->sceneId:Ljava/lang/String;

    iget-object v0, p0, Lcom/narvii/video/player/BaseScenePlayer$SceneClip;->clips:Ljava/util/List;

    .line 6
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput p2, p0, Lcom/narvii/video/player/BaseScenePlayer$SceneClip;->index:I

    return-void
.end method


# virtual methods
.method public final getClips()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/video/player/BaseScenePlayer$VideoClip;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/video/player/BaseScenePlayer$SceneClip;->clips:Ljava/util/List;

    return-object v0
.end method

.method public final getEndOffSet()I
    .locals 1

    iget v0, p0, Lcom/narvii/video/player/BaseScenePlayer$SceneClip;->endOffSet:I

    return v0
.end method

.method public final getIndex()I
    .locals 1

    iget v0, p0, Lcom/narvii/video/player/BaseScenePlayer$SceneClip;->index:I

    return v0
.end method

.method public final getSceneId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/video/player/BaseScenePlayer$SceneClip;->sceneId:Ljava/lang/String;

    return-object v0
.end method

.method public final getStartOffSet()I
    .locals 1

    iget v0, p0, Lcom/narvii/video/player/BaseScenePlayer$SceneClip;->startOffSet:I

    return v0
.end method

.method public final setClips(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/video/player/BaseScenePlayer$VideoClip;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/video/player/BaseScenePlayer$SceneClip;->clips:Ljava/util/List;

    return-void
.end method

.method public final setEndOffSet(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/video/player/BaseScenePlayer$SceneClip;->endOffSet:I

    return-void
.end method

.method public final setIndex(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/video/player/BaseScenePlayer$SceneClip;->index:I

    return-void
.end method

.method public final setSceneId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/video/player/BaseScenePlayer$SceneClip;->sceneId:Ljava/lang/String;

    return-void
.end method

.method public final setStartOffSet(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/video/player/BaseScenePlayer$SceneClip;->startOffSet:I

    return-void
.end method
