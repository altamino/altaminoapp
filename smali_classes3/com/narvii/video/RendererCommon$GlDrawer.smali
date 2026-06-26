.class public interface abstract Lcom/narvii/video/RendererCommon$GlDrawer;
.super Ljava/lang/Object;
.source "RendererCommon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/video/RendererCommon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GlDrawer"
.end annotation


# virtual methods
.method public abstract drawOes(I[FIIIIII)V
.end method

.method public abstract drawRgb(I[FIIIIII)V
.end method

.method public abstract drawYuv([I[FIIIIII)V
.end method

.method public abstract release()V
.end method
