.class public Lcom/narvii/util/diagnosis/VVTask;
.super Lcom/narvii/util/diagnosis/DiagnosisTask;
.source "SourceFile"


# direct methods
.method constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    .line 1
    .line 2
    const-string v0, "Voice/Video Chat"

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1, v0}, Lcom/narvii/util/diagnosis/DiagnosisTask;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->context:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    const-string v1, "rtc"

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    check-cast v0, Lcom/narvii/chat/rtc/RtcService;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->isEligible()Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 19
    .line 20
    iput-object v0, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->result:Ljava/lang/Boolean;

    .line 21
    goto :goto_1

    .line 22
    .line 23
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 24
    .line 25
    iput-object v0, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->result:Ljava/lang/Boolean;

    .line 26
    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    const/16 v1, 0x2c

    .line 33
    .line 34
    .line 35
    :try_start_0
    invoke-static {}, Lio/agora/rtc/RtcEngine;->getSdkVersion()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    goto :goto_0

    .line 37
    .line 38
    .line 39
    :catch_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 40
    move-result v2

    .line 41
    .line 42
    if-lez v2, :cond_1

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    :cond_1
    sget-object v2, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    .line 48
    const/4 v3, 0x0

    .line 49
    .line 50
    aget-object v2, v2, v3

    .line 51
    .line 52
    const-string v3, "ABI="

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 62
    move-result v2

    .line 63
    .line 64
    if-lez v2, :cond_2

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    :cond_2
    const-string v1, "Encoder="

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-static {}, Lio/agora/rtc/internal/DeviceUtils;->getRecommendedEncoderType()I

    .line 76
    move-result v1

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    move-result-object v0

    .line 84
    .line 85
    iput-object v0, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->error:Ljava/lang/Object;

    .line 86
    :goto_1
    return-void
.end method
