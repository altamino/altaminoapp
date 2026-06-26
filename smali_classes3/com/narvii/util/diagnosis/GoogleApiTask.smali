.class public Lcom/narvii/util/diagnosis/GoogleApiTask;
.super Lcom/narvii/util/diagnosis/DiagnosisTask;
.source "GoogleApiTask.java"


# direct methods
.method constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    const-string v0, "GooglePlay"

    .line 13
    invoke-direct {p0, p1, v0}, Lcom/narvii/util/diagnosis/DiagnosisTask;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 18
    iget-object v0, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 19
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->result:Ljava/lang/Boolean;

    .line 20
    iget-object v1, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->result:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    packed-switch v0, :pswitch_data_0

    .line 80
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CODE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->error:Ljava/lang/Object;

    goto/16 :goto_1

    :pswitch_1
    const-string v0, "RESTRICTED_PROFILE"

    .line 77
    iput-object v0, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->error:Ljava/lang/Object;

    goto :goto_1

    :pswitch_2
    const-string v0, "SERVICE_MISSING_PERMISSION"

    .line 74
    iput-object v0, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->error:Ljava/lang/Object;

    goto :goto_1

    :pswitch_3
    const-string v0, "SERVICE_UPDATING"

    .line 71
    iput-object v0, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->error:Ljava/lang/Object;

    goto :goto_1

    :pswitch_4
    const-string v0, "SIGN_IN_FAILED"

    .line 68
    iput-object v0, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->error:Ljava/lang/Object;

    goto :goto_1

    :pswitch_5
    const-string v0, "API_UNAVAILABLE"

    .line 65
    iput-object v0, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->error:Ljava/lang/Object;

    goto :goto_1

    :pswitch_6
    const-string v0, "INTERRUPTED"

    .line 62
    iput-object v0, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->error:Ljava/lang/Object;

    goto :goto_1

    :pswitch_7
    const-string v0, "TIMEOUT"

    .line 59
    iput-object v0, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->error:Ljava/lang/Object;

    goto :goto_1

    :pswitch_8
    const-string v0, "CANCELED"

    .line 56
    iput-object v0, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->error:Ljava/lang/Object;

    goto :goto_1

    :pswitch_9
    const-string v0, "LICENSE_CHECK_FAILED"

    .line 53
    iput-object v0, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->error:Ljava/lang/Object;

    goto :goto_1

    :pswitch_a
    const-string v0, "DEVELOPER_ERROR"

    .line 50
    iput-object v0, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->error:Ljava/lang/Object;

    goto :goto_1

    :pswitch_b
    const-string v0, "SERVICE_INVALID"

    .line 47
    iput-object v0, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->error:Ljava/lang/Object;

    goto :goto_1

    :pswitch_c
    const-string v0, "INTERNAL_ERROR"

    .line 44
    iput-object v0, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->error:Ljava/lang/Object;

    goto :goto_1

    :pswitch_d
    const-string v0, "NETWORK_ERROR"

    .line 41
    iput-object v0, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->error:Ljava/lang/Object;

    goto :goto_1

    :pswitch_e
    const-string v0, "RESOLUTION_REQUIRED"

    .line 38
    iput-object v0, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->error:Ljava/lang/Object;

    goto :goto_1

    :pswitch_f
    const-string v0, "INVALID_ACCOUNT"

    .line 35
    iput-object v0, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->error:Ljava/lang/Object;

    goto :goto_1

    :pswitch_10
    const-string v0, "SIGN_IN_REQUIRED"

    .line 32
    iput-object v0, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->error:Ljava/lang/Object;

    goto :goto_1

    :pswitch_11
    const-string v0, "SERVICE_DISABLED"

    .line 29
    iput-object v0, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->error:Ljava/lang/Object;

    goto :goto_1

    :pswitch_12
    const-string v0, "SERVICE_VERSION_UPDATE_REQUIRED"

    .line 26
    iput-object v0, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->error:Ljava/lang/Object;

    goto :goto_1

    :pswitch_13
    const-string v0, "SERVICE_MISSING"

    .line 23
    iput-object v0, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->error:Ljava/lang/Object;

    :cond_1
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
