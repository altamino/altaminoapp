.class public interface abstract Lcom/narvii/app/NVApplication$ApplicationLifecycleListener;
.super Ljava/lang/Object;
.source "NVApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/app/NVApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ApplicationLifecycleListener"
.end annotation


# virtual methods
.method public abstract onApplicationPause(Landroid/app/Application;)V
.end method

.method public abstract onApplicationResume(Landroid/app/Application;)V
.end method

.method public abstract onApplicationStart(Landroid/app/Application;)V
.end method

.method public abstract onApplicationStop(Landroid/app/Application;)V
.end method
