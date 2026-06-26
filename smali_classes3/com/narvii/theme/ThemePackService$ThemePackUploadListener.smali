.class public interface abstract Lcom/narvii/theme/ThemePackService$ThemePackUploadListener;
.super Ljava/lang/Object;
.source "ThemePackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/theme/ThemePackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ThemePackUploadListener"
.end annotation


# virtual methods
.method public abstract onUploadFail(Ljava/lang/String;)V
.end method

.method public abstract onUploadSuccess(Ljava/lang/String;)V
.end method

.method public abstract onZIPFail()V
.end method
