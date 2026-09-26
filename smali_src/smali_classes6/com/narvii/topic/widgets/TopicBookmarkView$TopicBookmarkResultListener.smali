.class public interface abstract Lcom/narvii/topic/widgets/TopicBookmarkView$TopicBookmarkResultListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/topic/widgets/TopicBookmarkView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TopicBookmarkResultListener"
.end annotation


# virtual methods
.method public abstract onBookmarkResult(Lcom/narvii/model/story/StoryTopic;Lcom/narvii/util/RequestResult;)V
    .param p1    # Lcom/narvii/model/story/StoryTopic;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/util/RequestResult;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
