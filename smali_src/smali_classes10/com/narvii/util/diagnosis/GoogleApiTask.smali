.class public Lcom/narvii/util/diagnosis/GoogleApiTask;
.super Lcom/narvii/util/diagnosis/DiagnosisTask;
.source "SourceFile"


# direct methods
.method constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    .line 1
    .line 2
    const-string v0, "GooglePlay"

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1, v0}, Lcom/narvii/util/diagnosis/DiagnosisTask;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->context:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    .line 10
    move-result v0

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    const/4 v1, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v1, 0x0

    .line 16
    .line 17
    .line 18
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    iput-object v1, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->result:Ljava/lang/Boolean;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 25
    move-result v1

    .line 26
    .line 27
    if-nez v1, :cond_1

    .line 28
    .line 29
    .line 30
    packed-switch v0, :pswitch_data_0

    .line 31
    .line 32
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    const-string v2, "CODE "

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    move-result-object v0

    .line 48
    .line 49
    iput-object v0, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->error:Ljava/lang/Object;

    .line 50
    .line 51
    goto/16 :goto_1

    .line 52
    .line 53
    :pswitch_1
    const-string v0, "RESTRICTED_PROFILE"

    .line 54
    .line 55
    iput-object v0, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->error:Ljava/lang/Object;

    .line 56
    goto :goto_1

    .line 57
    .line 58
    :pswitch_2
    const-string v0, "SERVICE_MISSING_PERMISSION"

    .line 59
    .line 60
    iput-object v0, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->error:Ljava/lang/Object;

    .line 61
    goto :goto_1

    .line 62
    .line 63
    :pswitch_3
    const-string v0, "SERVICE_UPDATING"

    .line 64
    .line 65
    iput-object v0, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->error:Ljava/lang/Object;

    .line 66
    goto :goto_1

    .line 67
    .line 68
    :pswitch_4
    const-string v0, "SIGN_IN_FAILED"

    .line 69
    .line 70
    iput-object v0, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->error:Ljava/lang/Object;

    .line 71
    goto :goto_1

    .line 72
    .line 73
    :pswitch_5
    const-string v0, "API_UNAVAILABLE"

    .line 74
    .line 75
    iput-object v0, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->error:Ljava/lang/Object;

    .line 76
    goto :goto_1

    .line 77
    .line 78
    :pswitch_6
    const-string v0, "INTERRUPTED"

    .line 79
    .line 80
    iput-object v0, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->error:Ljava/lang/Object;

    .line 81
    goto :goto_1

    .line 82
    .line 83
    :pswitch_7
    const-string v0, "TIMEOUT"

    .line 84
    .line 85
    iput-object v0, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->error:Ljava/lang/Object;

    .line 86
    goto :goto_1

    .line 87
    .line 88
    :pswitch_8
    const-string v0, "CANCELED"

    .line 89
    .line 90
    iput-object v0, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->error:Ljava/lang/Object;

    .line 91
    goto :goto_1

    .line 92
    .line 93
    :pswitch_9
    const-string v0, "LICENSE_CHECK_FAILED"

    .line 94
    .line 95
    iput-object v0, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->error:Ljava/lang/Object;

    .line 96
    goto :goto_1

    .line 97
    .line 98
    :pswitch_a
    const-string v0, "DEVELOPER_ERROR"

    .line 99
    .line 100
    iput-object v0, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->error:Ljava/lang/Object;

    .line 101
    goto :goto_1

    .line 102
    .line 103
    :pswitch_b
    const-string v0, "SERVICE_INVALID"

    .line 104
    .line 105
    iput-object v0, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->error:Ljava/lang/Object;

    .line 106
    goto :goto_1

    .line 107
    .line 108
    :pswitch_c
    const-string v0, "INTERNAL_ERROR"

    .line 109
    .line 110
    iput-object v0, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->error:Ljava/lang/Object;

    .line 111
    goto :goto_1

    .line 112
    .line 113
    :pswitch_d
    const-string v0, "NETWORK_ERROR"

    .line 114
    .line 115
    iput-object v0, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->error:Ljava/lang/Object;

    .line 116
    goto :goto_1

    .line 117
    .line 118
    :pswitch_e
    const-string v0, "RESOLUTION_REQUIRED"

    .line 119
    .line 120
    iput-object v0, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->error:Ljava/lang/Object;

    .line 121
    goto :goto_1

    .line 122
    .line 123
    :pswitch_f
    const-string v0, "INVALID_ACCOUNT"

    .line 124
    .line 125
    iput-object v0, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->error:Ljava/lang/Object;

    .line 126
    goto :goto_1

    .line 127
    .line 128
    :pswitch_10
    const-string v0, "SIGN_IN_REQUIRED"

    .line 129
    .line 130
    iput-object v0, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->error:Ljava/lang/Object;

    .line 131
    goto :goto_1

    .line 132
    .line 133
    :pswitch_11
    const-string v0, "SERVICE_DISABLED"

    .line 134
    .line 135
    iput-object v0, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->error:Ljava/lang/Object;

    .line 136
    goto :goto_1

    .line 137
    .line 138
    :pswitch_12
    const-string v0, "SERVICE_VERSION_UPDATE_REQUIRED"

    .line 139
    .line 140
    iput-object v0, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->error:Ljava/lang/Object;

    .line 141
    goto :goto_1

    .line 142
    .line 143
    :pswitch_13
    const-string v0, "SERVICE_MISSING"

    .line 144
    .line 145
    iput-object v0, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->error:Ljava/lang/Object;

    .line 146
    :cond_1
    :goto_1
    return-void

    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
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
