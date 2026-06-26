.class public interface abstract Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper$OnDownloadListener;
.super Ljava/lang/Object;
.source "SceneTemplateImageDownloadHelper.kt"


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
.end method

.method public abstract onDownloadProgress(IILcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;)V
.end method

.method public abstract onDownloadSuccess(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;)V
.end method
