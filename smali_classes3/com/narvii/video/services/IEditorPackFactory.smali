.class public interface abstract Lcom/narvii/video/services/IEditorPackFactory;
.super Ljava/lang/Object;
.source "IEditorPackFactory.kt"


# virtual methods
.method public abstract getIEditorDelegate(Lcom/narvii/app/NVContext;)Lffmpeg/base/IEditor;
.end method

.method public abstract getPreviewPlayer(Landroid/content/Context;)Lcom/narvii/video/interfaces/IPreviewPlayer;
.end method

.method public abstract getVideoGenerator()Lcom/narvii/video/interfaces/ISceneVideoGenerator;
.end method

.method public abstract getVideoRecycler()Lcom/narvii/video/interfaces/IEditorRecycler;
.end method
