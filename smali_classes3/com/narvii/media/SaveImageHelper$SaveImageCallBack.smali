.class public interface abstract Lcom/narvii/media/SaveImageHelper$SaveImageCallBack;
.super Ljava/lang/Object;
.source "SaveImageHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/media/SaveImageHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SaveImageCallBack"
.end annotation


# virtual methods
.method public abstract onSaveFail(Ljava/io/File;)V
.end method

.method public abstract onSaveSuccess(Ljava/io/File;)V
.end method
