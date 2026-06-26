.class Lcom/narvii/account/LoginActivity$1;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/account/LoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/account/LoginActivity;


# direct methods
.method constructor <init>(Lcom/narvii/account/LoginActivity;)V
    .locals 0

    .line 454
    iput-object p1, p0, Lcom/narvii/account/LoginActivity$1;->this$0:Lcom/narvii/account/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 457
    iget-object v0, p0, Lcom/narvii/account/LoginActivity$1;->this$0:Lcom/narvii/account/LoginActivity;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 458
    iget-object v1, p0, Lcom/narvii/account/LoginActivity$1;->this$0:Lcom/narvii/account/LoginActivity;

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/narvii/account/FinishSignupNotificationService;

    invoke-direct {v2, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 460
    sget-boolean v2, Lcom/narvii/app/NVApplication;->DEBUG:Z

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x1f40

    goto :goto_0

    :cond_0
    const-wide/32 v2, 0xea60

    :goto_0
    const/4 v4, 0x1

    .line 461
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    add-long/2addr v5, v2

    invoke-virtual {v0, v4, v5, v6, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    return-void
.end method
