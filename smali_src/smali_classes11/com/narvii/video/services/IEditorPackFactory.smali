.class public interface abstract Lcom/narvii/video/services/IEditorPackFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getIEditorDelegate(Lcom/narvii/app/NVContext;)Lg7/a;
    .param p1    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getPreviewPlayer(Landroid/content/Context;)Lcom/narvii/video/interfaces/IPreviewPlayer;
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getVideoGenerator()Lcom/narvii/video/interfaces/ISceneVideoGenerator;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getVideoRecycler()Lcom/narvii/video/interfaces/IEditorRecycler;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method
