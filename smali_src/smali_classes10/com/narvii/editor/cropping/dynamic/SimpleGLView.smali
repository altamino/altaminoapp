.class public interface abstract Lcom/narvii/editor/cropping/dynamic/SimpleGLView;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract changeFilter(I)V
.end method

.method public abstract getView()Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract initViews(Lcom/narvii/nvplayer/INVPlayer;I)V
    .param p1    # Lcom/narvii/nvplayer/INVPlayer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract renderAnotherSurface(Landroid/view/Surface;)V
    .param p1    # Landroid/view/Surface;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setVideoEditorRect(Landroid/graphics/Rect;)V
    .param p1    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract stopRenderAnotherSurface()V
.end method
