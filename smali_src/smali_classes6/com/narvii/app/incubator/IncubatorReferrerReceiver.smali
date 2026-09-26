.class public Lcom/narvii/app/incubator/IncubatorReferrerReceiver;
.super Lcom/narvii/app/AminoReferrerReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/app/AminoReferrerReceiver;-><init>()V

    .line 4
    return-void
.end method

.method public static safedk_NVApplication_startActivity_0436549e7ef2b5ea6610484b360f1419(Lcom/narvii/app/NVApplication;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/app/NVApplication;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVApplication;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVApplication;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/app/AminoReferrerReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 4
    .line 5
    const-string p1, "referrer"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    return-void

    .line 13
    .line 14
    :cond_0
    const-string p2, "mastertab"

    .line 15
    .line 16
    .line 17
    invoke-static {p1, p2}, Lcom/narvii/util/googleplay/ReferrerReceiver;->query(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    iget-object p2, p0, Lcom/narvii/app/AminoReferrerReceiver;->deferredStarted:Lcom/narvii/util/statistics/TmpValue;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2}, Lcom/narvii/util/statistics/TmpValue;->peek()Ljava/lang/Object;

    .line 24
    move-result-object p2

    .line 25
    .line 26
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 27
    .line 28
    if-eq p2, v0, :cond_1

    .line 29
    .line 30
    const-string p2, "create"

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    move-result p1

    .line 35
    .line 36
    if-eqz p1, :cond_1

    .line 37
    .line 38
    .line 39
    :try_start_0
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 40
    move-result-object p1

    .line 41
    .line 42
    new-instance p2, Landroid/content/Intent;

    .line 43
    .line 44
    .line 45
    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-static {p1, p2}, Lcom/narvii/master/MasterActivity;->backToMaster(Lcom/narvii/app/NVContext;Landroid/content/Intent;)Landroid/content/Intent;

    .line 49
    move-result-object p1

    .line 50
    .line 51
    .line 52
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 53
    move-result-object p2

    .line 54
    .line 55
    .line 56
    invoke-static {p2, p1}, Lcom/narvii/app/incubator/IncubatorReferrerReceiver;->safedk_NVApplication_startActivity_0436549e7ef2b5ea6610484b360f1419(Lcom/narvii/app/NVApplication;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    goto :goto_0

    .line 58
    .line 59
    :catch_0
    const-string p1, "unable to open MasterActivity"

    .line 60
    .line 61
    .line 62
    invoke-static {p1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;)V

    .line 63
    :cond_1
    :goto_0
    return-void
.end method
