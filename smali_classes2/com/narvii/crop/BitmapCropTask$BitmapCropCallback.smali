.class public interface abstract Lcom/narvii/crop/BitmapCropTask$BitmapCropCallback;
.super Ljava/lang/Object;
.source "BitmapCropTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/crop/BitmapCropTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BitmapCropCallback"
.end annotation


# virtual methods
.method public abstract onBitmapCropped(Landroid/net/Uri;IIII)V
.end method

.method public abstract onCropFailure(Ljava/lang/Throwable;)V
.end method
