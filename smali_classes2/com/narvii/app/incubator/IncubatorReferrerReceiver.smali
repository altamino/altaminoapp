.class public Lcom/narvii/app/incubator/IncubatorReferrerReceiver;
.super Lcom/narvii/app/AminoReferrerReceiver;
.source "IncubatorReferrerReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/narvii/app/AminoReferrerReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 17
    invoke-super {p0, p1, p2}, Lcom/narvii/app/AminoReferrerReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    const-string p1, "referrer"

    .line 18
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p2, "mastertab"

    .line 23
    invoke-static {p1, p2}, Lcom/narvii/util/googleplay/ReferrerReceiver;->query(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 24
    iget-object p2, p0, Lcom/narvii/app/AminoReferrerReceiver;->deferredStarted:Lcom/narvii/util/statistics/TmpValue;

    invoke-virtual {p2}, Lcom/narvii/util/statistics/TmpValue;->peek()Ljava/lang/Object;

    move-result-object p2

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-eq p2, v0, :cond_1

    const-string p2, "create"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 26
    :try_start_0
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object p1

    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    invoke-static {p1, p2}, Lcom/narvii/master/MasterActivity;->backToMaster(Lcom/narvii/app/NVContext;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p1

    .line 27
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/narvii/app/NVApplication;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string/jumbo p1, "unable to open MasterActivity"

    .line 29
    invoke-static {p1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
