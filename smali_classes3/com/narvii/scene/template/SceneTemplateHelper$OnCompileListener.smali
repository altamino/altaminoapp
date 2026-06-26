.class public interface abstract Lcom/narvii/scene/template/SceneTemplateHelper$OnCompileListener;
.super Ljava/lang/Object;
.source "SceneTemplateHelper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/scene/template/SceneTemplateHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnCompileListener"
.end annotation


# virtual methods
.method public abstract onCompileFail(Lcom/narvii/scene/template/SceneTemplateHelper;ILjava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public abstract onCompileFinished(Lcom/narvii/scene/template/SceneTemplateHelper;Lcom/narvii/videotemplate/Template;Ljava/lang/String;Lcom/narvii/video/model/StreamInfo;)V
.end method

.method public abstract onCompileProgress(Lcom/narvii/scene/template/SceneTemplateHelper;II)V
.end method

.method public abstract onCompileStart(Lcom/narvii/scene/template/SceneTemplateHelper;)V
.end method
