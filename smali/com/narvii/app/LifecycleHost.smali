.class public interface abstract Lcom/narvii/app/LifecycleHost;
.super Ljava/lang/Object;
.source "LifecycleHost.java"


# static fields
.field public static final LIFECYCLE_CREATED:I = 0x1

.field public static final LIFECYCLE_DESTROYED:I = -0x1

.field public static final LIFECYCLE_RESUMED:I = 0x3

.field public static final LIFECYCLE_STARTED:I = 0x2


# virtual methods
.method public abstract addWeakLifecycleListener(Lcom/narvii/app/LifecycleListener;)V
.end method

.method public abstract getLifecycleState()I
.end method

.method public abstract removeWeakLifecycleListener(Lcom/narvii/app/LifecycleListener;)V
.end method
