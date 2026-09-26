.class Lcom/narvii/app/NVApplication$3;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/app/NVApplication$3;->this$0:Lcom/narvii/app/NVApplication;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    instance-of p2, p1, Lcom/narvii/app/NVActivity;

    .line 3
    .line 4
    if-nez p2, :cond_0

    .line 5
    .line 6
    iget-object p2, p0, Lcom/narvii/app/NVApplication$3;->this$0:Lcom/narvii/app/NVApplication;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2, p1}, Lcom/narvii/app/NVApplication;->activityOnCreate(Landroid/app/Activity;)Z

    .line 10
    :cond_0
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    .line 1
    .line 2
    instance-of v0, p1, Lcom/narvii/app/NVActivity;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/app/NVApplication$3;->this$0:Lcom/narvii/app/NVApplication;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/narvii/app/NVApplication;->activityOnPause(Landroid/app/Activity;)V

    .line 10
    :cond_0
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    .line 1
    .line 2
    instance-of v0, p1, Lcom/narvii/app/NVActivity;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/app/NVApplication$3;->this$0:Lcom/narvii/app/NVApplication;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/narvii/app/NVApplication;->activityOnResume(Landroid/app/Activity;)Z

    .line 10
    :cond_0
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    .line 1
    .line 2
    instance-of v0, p1, Lcom/narvii/app/NVActivity;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/app/NVApplication$3;->this$0:Lcom/narvii/app/NVApplication;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/narvii/app/NVApplication;->activityOnStart(Landroid/app/Activity;)V

    .line 10
    :cond_0
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    .line 1
    .line 2
    instance-of v0, p1, Lcom/narvii/app/NVActivity;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/app/NVApplication$3;->this$0:Lcom/narvii/app/NVApplication;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/narvii/app/NVApplication;->activityOnStop(Landroid/app/Activity;)V

    .line 10
    :cond_0
    return-void
.end method
