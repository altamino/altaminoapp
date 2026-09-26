.class abstract Lcom/narvii/util/diagnosis/DiagnosisTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field context:Lcom/narvii/app/NVContext;

.field endTime:J

.field error:Ljava/lang/Object;

.field name:Ljava/lang/String;

.field result:Ljava/lang/Boolean;

.field startTime:J


# direct methods
.method constructor <init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->context:Lcom/narvii/app/NVContext;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->name:Ljava/lang/String;

    .line 8
    return-void
.end method

.method static now()J
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method


# virtual methods
.method appendTo(Landroid/text/SpannableStringBuilder;)V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->name:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 6
    .line 7
    const-string v0, ": "

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->name:Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 16
    move-result v0

    .line 17
    .line 18
    add-int/lit8 v0, v0, 0x2

    .line 19
    .line 20
    :goto_0
    const/16 v1, 0x1a

    .line 21
    .line 22
    if-ge v0, v1, :cond_0

    .line 23
    .line 24
    const/16 v1, 0x20

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 28
    .line 29
    add-int/lit8 v0, v0, 0x1

    .line 30
    goto :goto_0

    .line 31
    .line 32
    :cond_0
    iget-object v0, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->result:Ljava/lang/Boolean;

    .line 33
    .line 34
    if-nez v0, :cond_1

    .line 35
    .line 36
    .line 37
    invoke-static {}, Lcom/narvii/util/diagnosis/DiagnosisTask;->now()J

    .line 38
    move-result-wide v0

    .line 39
    .line 40
    iget-wide v2, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->startTime:J

    .line 41
    sub-long/2addr v0, v2

    .line 42
    .line 43
    const/16 v2, 0x5b

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v2}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 47
    move-result-object v2

    .line 48
    .line 49
    const-wide/16 v3, 0xfa

    .line 50
    .line 51
    div-long v3, v0, v3

    .line 52
    long-to-int v3, v3

    .line 53
    .line 54
    rem-int/lit8 v3, v3, 0x4

    .line 55
    .line 56
    const-string v4, "-\\|/"

    .line 57
    .line 58
    .line 59
    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    .line 60
    move-result v3

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 64
    move-result-object v2

    .line 65
    .line 66
    const/16 v3, 0x5d

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 70
    .line 71
    const-wide/16 v2, 0x2710

    .line 72
    .line 73
    cmp-long v2, v0, v2

    .line 74
    .line 75
    if-lez v2, :cond_4

    .line 76
    .line 77
    const-string v2, " ("

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 81
    move-result-object v2

    .line 82
    .line 83
    const-wide/16 v3, 0x3e8

    .line 84
    .line 85
    div-long v3, v0, v3

    .line 86
    .line 87
    .line 88
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 89
    move-result-object v3

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 93
    move-result-object v2

    .line 94
    .line 95
    const/16 v3, 0x2e

    .line 96
    .line 97
    .line 98
    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 99
    move-result-object v2

    .line 100
    .line 101
    const-wide/16 v3, 0x64

    .line 102
    div-long/2addr v0, v3

    .line 103
    .line 104
    const-wide/16 v3, 0xa

    .line 105
    rem-long/2addr v0, v3

    .line 106
    .line 107
    .line 108
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 109
    move-result-object v0

    .line 110
    .line 111
    .line 112
    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 113
    move-result-object v0

    .line 114
    .line 115
    const/16 v1, 0x29

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 119
    goto :goto_1

    .line 120
    .line 121
    :cond_1
    iget-wide v0, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->endTime:J

    .line 122
    .line 123
    const-wide/16 v2, 0x0

    .line 124
    .line 125
    cmp-long v0, v0, v2

    .line 126
    .line 127
    if-nez v0, :cond_2

    .line 128
    .line 129
    .line 130
    invoke-static {}, Lcom/narvii/util/diagnosis/DiagnosisTask;->now()J

    .line 131
    move-result-wide v0

    .line 132
    .line 133
    iput-wide v0, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->endTime:J

    .line 134
    .line 135
    .line 136
    :cond_2
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    .line 137
    move-result v0

    .line 138
    .line 139
    iget-object v1, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->result:Ljava/lang/Boolean;

    .line 140
    .line 141
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 142
    const/4 v3, 0x0

    .line 143
    .line 144
    if-ne v1, v2, :cond_3

    .line 145
    .line 146
    const-string v1, "[FAIL]"

    .line 147
    .line 148
    .line 149
    invoke-virtual {p1, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 150
    .line 151
    new-instance v1, Landroid/text/style/BackgroundColorSpan;

    .line 152
    .line 153
    .line 154
    const v2, -0xd1be

    .line 155
    .line 156
    .line 157
    invoke-direct {v1, v2}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    .line 161
    move-result v2

    .line 162
    .line 163
    .line 164
    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 165
    goto :goto_1

    .line 166
    .line 167
    :cond_3
    const-string v1, "[OK]"

    .line 168
    .line 169
    .line 170
    invoke-virtual {p1, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 171
    .line 172
    new-instance v1, Landroid/text/style/BackgroundColorSpan;

    .line 173
    .line 174
    .line 175
    const v2, -0xc800dc

    .line 176
    .line 177
    .line 178
    invoke-direct {v1, v2}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    .line 182
    move-result v2

    .line 183
    .line 184
    .line 185
    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 186
    .line 187
    :cond_4
    :goto_1
    const/16 v0, 0xa

    .line 188
    .line 189
    .line 190
    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 191
    .line 192
    iget-object v1, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->error:Ljava/lang/Object;

    .line 193
    .line 194
    if-eqz v1, :cond_5

    .line 195
    .line 196
    const-string v1, "    "

    .line 197
    .line 198
    .line 199
    invoke-virtual {p1, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 200
    move-result-object p1

    .line 201
    .line 202
    iget-object v1, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->error:Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 206
    move-result-object v1

    .line 207
    .line 208
    .line 209
    invoke-virtual {p1, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 210
    move-result-object p1

    .line 211
    .line 212
    .line 213
    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 214
    :cond_5
    return-void
.end method

.method destory()V
    .locals 0

    return-void
.end method

.method start()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/util/diagnosis/DiagnosisTask;->now()J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->startTime:J

    .line 7
    .line 8
    const-wide/16 v0, 0x0

    .line 9
    .line 10
    iput-wide v0, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->endTime:J

    .line 11
    const/4 v0, 0x0

    .line 12
    .line 13
    iput-object v0, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->result:Ljava/lang/Boolean;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->error:Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 19
    return-void
.end method
