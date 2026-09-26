.class public interface abstract Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper$OnDownloadListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnDownloadListener"
.end annotation


# virtual methods
.method public abstract onDownloadError(Ljava/lang/String;Ljava/lang/Exception;Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Exception;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract onDownloadProgress(IILcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;)V
    .param p3    # Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract onDownloadSuccess(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;)V
    .param p1    # Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
