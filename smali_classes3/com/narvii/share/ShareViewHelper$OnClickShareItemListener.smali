.class public interface abstract Lcom/narvii/share/ShareViewHelper$OnClickShareItemListener;
.super Ljava/lang/Object;
.source "ShareViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/share/ShareViewHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnClickShareItemListener"
.end annotation


# virtual methods
.method public abstract getPayload()Lcom/narvii/share/SharePayload;
.end method

.method public abstract onFinishShare(Lcom/narvii/share/SharePayload;Landroid/view/View;)V
.end method

.method public abstract onPreShare(Lcom/narvii/share/SharePayload;Ljava/lang/Object;)V
.end method
