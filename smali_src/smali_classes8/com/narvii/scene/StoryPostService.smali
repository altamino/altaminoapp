.class public interface abstract Lcom/narvii/scene/StoryPostService;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract launchStoryPost(Lcom/narvii/scene/model/SceneInfo;Ljava/lang/String;Ljava/lang/String;)V
    .param p1    # Lcom/narvii/scene/model/SceneInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract launchStoryPreview(Ljava/util/List;)V
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/narvii/model/Scene;",
            ">;)V"
        }
    .end annotation
.end method
