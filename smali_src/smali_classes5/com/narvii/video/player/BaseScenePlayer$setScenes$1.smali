.class final Lcom/narvii/video/player/BaseScenePlayer$setScenes$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/video/player/BaseScenePlayer;->setScenes(Landroid/content/Context;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/s<",
        "Lcom/narvii/scene/model/SceneInfo;",
        "Lcom/narvii/video/model/AVClipInfoPack;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Lw7/l0;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $index:Lkotlin/jvm/internal/n0;

.field final synthetic this$0:Lcom/narvii/video/player/BaseScenePlayer;


# direct methods
.method constructor <init>(Lcom/narvii/video/player/BaseScenePlayer;Lkotlin/jvm/internal/n0;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/video/player/BaseScenePlayer$setScenes$1;->this$0:Lcom/narvii/video/player/BaseScenePlayer;

    iput-object p2, p0, Lcom/narvii/video/player/BaseScenePlayer$setScenes$1;->$index:Lkotlin/jvm/internal/n0;

    const/4 p1, 0x5

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    move-object v1, p1

    check-cast v1, Lcom/narvii/scene/model/SceneInfo;

    move-object v2, p2

    check-cast v2, Lcom/narvii/video/model/AVClipInfoPack;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result v3

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    move-result v4

    check-cast p5, Ljava/lang/Number;

    invoke-virtual {p5}, Ljava/lang/Number;->intValue()I

    move-result v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/narvii/video/player/BaseScenePlayer$setScenes$1;->invoke(Lcom/narvii/scene/model/SceneInfo;Lcom/narvii/video/model/AVClipInfoPack;III)V

    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    return-object p1
.end method

.method public final invoke(Lcom/narvii/scene/model/SceneInfo;Lcom/narvii/video/model/AVClipInfoPack;III)V
    .locals 6
    .param p1    # Lcom/narvii/scene/model/SceneInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/video/model/AVClipInfoPack;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "s"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "v"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/narvii/video/player/BaseScenePlayer$VideoClip;

    iget-object v1, p1, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    const-string v2, "id"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1, p2}, Lcom/narvii/video/player/BaseScenePlayer$VideoClip;-><init>(Ljava/lang/String;Lcom/narvii/video/model/AVClipInfoPack;)V

    iget-object p2, p0, Lcom/narvii/video/player/BaseScenePlayer$setScenes$1;->this$0:Lcom/narvii/video/player/BaseScenePlayer;

    .line 3
    invoke-virtual {p2}, Lcom/narvii/video/player/BaseScenePlayer;->getVideoClipList()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/narvii/video/player/BaseScenePlayer$setScenes$1;->this$0:Lcom/narvii/video/player/BaseScenePlayer;

    .line 4
    invoke-virtual {p2}, Lcom/narvii/video/player/BaseScenePlayer;->getSceneClipMap()Ljava/util/Map;

    move-result-object p2

    iget-object v1, p1, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/narvii/video/player/BaseScenePlayer$setScenes$1;->this$0:Lcom/narvii/video/player/BaseScenePlayer;

    .line 5
    invoke-virtual {p2}, Lcom/narvii/video/player/BaseScenePlayer;->getSceneClipMap()Ljava/util/Map;

    move-result-object p2

    iget-object v1, p1, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/video/player/BaseScenePlayer$SceneClip;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/narvii/video/player/BaseScenePlayer$SceneClip;->getClips()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/narvii/video/player/BaseScenePlayer$setScenes$1;->this$0:Lcom/narvii/video/player/BaseScenePlayer;

    .line 6
    invoke-virtual {p2}, Lcom/narvii/video/player/BaseScenePlayer;->getSceneClipMap()Ljava/util/Map;

    move-result-object p2

    iget-object v1, p1, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/narvii/video/player/BaseScenePlayer$SceneClip;

    iget-object v3, p0, Lcom/narvii/video/player/BaseScenePlayer$setScenes$1;->$index:Lkotlin/jvm/internal/n0;

    iget v4, v3, Lkotlin/jvm/internal/n0;->element:I

    add-int/lit8 v5, v4, 0x1

    iput v5, v3, Lkotlin/jvm/internal/n0;->element:I

    invoke-direct {v2, v0, v4}, Lcom/narvii/video/player/BaseScenePlayer$SceneClip;-><init>(Lcom/narvii/video/player/BaseScenePlayer$VideoClip;I)V

    invoke-interface {p2, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/narvii/video/player/BaseScenePlayer$setScenes$1;->this$0:Lcom/narvii/video/player/BaseScenePlayer;

    .line 7
    invoke-virtual {p2}, Lcom/narvii/video/player/BaseScenePlayer;->getSceneClipMap()Ljava/util/Map;

    move-result-object p2

    iget-object v0, p1, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/video/player/BaseScenePlayer$SceneClip;

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p2, p4}, Lcom/narvii/video/player/BaseScenePlayer$SceneClip;->setStartOffSet(I)V

    :goto_1
    iget-object p2, p0, Lcom/narvii/video/player/BaseScenePlayer$setScenes$1;->this$0:Lcom/narvii/video/player/BaseScenePlayer;

    .line 8
    invoke-virtual {p2}, Lcom/narvii/video/player/BaseScenePlayer;->getSceneClipMap()Ljava/util/Map;

    move-result-object p2

    iget-object p4, p1, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    invoke-interface {p2, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/video/player/BaseScenePlayer$SceneClip;

    if-nez p2, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p2, p5}, Lcom/narvii/video/player/BaseScenePlayer$SceneClip;->setEndOffSet(I)V

    :goto_2
    iget-object p2, p0, Lcom/narvii/video/player/BaseScenePlayer$setScenes$1;->this$0:Lcom/narvii/video/player/BaseScenePlayer;

    int-to-long p3, p3

    .line 9
    invoke-static {p2, p3, p4}, Lcom/narvii/video/player/BaseScenePlayer;->access$updateDuration(Lcom/narvii/video/player/BaseScenePlayer;J)V

    iget-object p2, p0, Lcom/narvii/video/player/BaseScenePlayer$setScenes$1;->this$0:Lcom/narvii/video/player/BaseScenePlayer;

    .line 10
    invoke-virtual {p2}, Lcom/narvii/video/player/BaseScenePlayer;->getSceneList()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/narvii/video/player/BaseScenePlayer$setScenes$1;->this$0:Lcom/narvii/video/player/BaseScenePlayer;

    .line 11
    invoke-virtual {p2}, Lcom/narvii/video/player/BaseScenePlayer;->getSceneList()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    return-void
.end method
