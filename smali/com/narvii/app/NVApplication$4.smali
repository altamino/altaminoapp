.class Lcom/narvii/app/NVApplication$4;
.super Ljava/lang/Object;
.source "NVApplication.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/app/NVApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/app/NVApplication;


# direct methods
.method constructor <init>(Lcom/narvii/app/NVApplication;)V
    .locals 0

    .line 472
    iput-object p1, p0, Lcom/narvii/app/NVApplication$4;->this$0:Lcom/narvii/app/NVApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 475
    instance-of p2, p1, Lcom/narvii/app/NVActivity;

    if-nez p2, :cond_0

    .line 476
    iget-object p2, p0, Lcom/narvii/app/NVApplication$4;->this$0:Lcom/narvii/app/NVApplication;

    invoke-virtual {p2, p1}, Lcom/narvii/app/NVApplication;->activityOnCreate(Landroid/app/Activity;)Z

    :cond_0
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    .line 496
    instance-of v0, p1, Lcom/narvii/app/NVActivity;

    if-nez v0, :cond_0

    .line 497
    iget-object v0, p0, Lcom/narvii/app/NVApplication$4;->this$0:Lcom/narvii/app/NVApplication;

    invoke-virtual {v0, p1}, Lcom/narvii/app/NVApplication;->activityOnPause(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    .line 489
    instance-of v0, p1, Lcom/narvii/app/NVActivity;

    if-nez v0, :cond_0

    .line 490
    iget-object v0, p0, Lcom/narvii/app/NVApplication$4;->this$0:Lcom/narvii/app/NVApplication;

    invoke-virtual {v0, p1}, Lcom/narvii/app/NVApplication;->activityOnResume(Landroid/app/Activity;)Z

    :cond_0
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    .line 482
    instance-of v0, p1, Lcom/narvii/app/NVActivity;

    if-nez v0, :cond_0

    .line 483
    iget-object v0, p0, Lcom/narvii/app/NVApplication$4;->this$0:Lcom/narvii/app/NVApplication;

    invoke-virtual {v0, p1}, Lcom/narvii/app/NVApplication;->activityOnStart(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    .line 503
    instance-of v0, p1, Lcom/narvii/app/NVActivity;

    if-nez v0, :cond_0

    .line 504
    iget-object v0, p0, Lcom/narvii/app/NVApplication$4;->this$0:Lcom/narvii/app/NVApplication;

    invoke-virtual {v0, p1}, Lcom/narvii/app/NVApplication;->activityOnStop(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method
