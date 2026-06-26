.class abstract Lcom/narvii/util/diagnosis/DiagnosisTask;
.super Ljava/lang/Object;
.source "DiagnosisTask.java"

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

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->context:Lcom/narvii/app/NVContext;

    .line 24
    iput-object p2, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->name:Ljava/lang/String;

    return-void
.end method

.method static now()J
    .locals 2

    .line 28
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method appendTo(Landroid/text/SpannableStringBuilder;)V
    .locals 5

    .line 43
    iget-object v0, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const-string v0, ": "

    .line 44
    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 45
    iget-object v0, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    :goto_0
    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    const/16 v1, 0x20

    .line 46
    invoke-virtual {p1, v1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->result:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 49
    invoke-static {}, Lcom/narvii/util/diagnosis/DiagnosisTask;->now()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->startTime:J

    sub-long/2addr v0, v2

    const/16 v2, 0x5b

    .line 51
    invoke-virtual {p1, v2}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    const-wide/16 v3, 0xfa

    div-long v3, v0, v3

    long-to-int v4, v3

    rem-int/lit8 v4, v4, 0x4

    const-string v3, "-\\|/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    const-wide/16 v2, 0x2710

    cmp-long v4, v0, v2

    if-lez v4, :cond_4

    const-string v2, " ("

    .line 53
    invoke-virtual {p1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    const-wide/16 v3, 0x3e8

    div-long v3, v0, v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    const-wide/16 v3, 0x64

    div-long/2addr v0, v3

    const-wide/16 v3, 0xa

    rem-long/2addr v0, v3

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    goto :goto_1

    .line 56
    :cond_1
    iget-wide v0, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->endTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    .line 57
    invoke-static {}, Lcom/narvii/util/diagnosis/DiagnosisTask;->now()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->endTime:J

    .line 59
    :cond_2
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 60
    iget-object v1, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->result:Ljava/lang/Boolean;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_3

    const-string v1, "[FAIL]"

    .line 61
    invoke-virtual {p1, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 62
    new-instance v1, Landroid/text/style/BackgroundColorSpan;

    const v2, -0xd1be

    invoke-direct {v1, v2}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    :cond_3
    const-string v1, "[OK]"

    .line 64
    invoke-virtual {p1, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 65
    new-instance v1, Landroid/text/style/BackgroundColorSpan;

    const v2, -0xc800dc

    invoke-direct {v1, v2}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_4
    :goto_1
    const/16 v0, 0xa

    .line 68
    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 69
    iget-object v1, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->error:Ljava/lang/Object;

    if-eqz v1, :cond_5

    const-string v1, "    "

    .line 70
    invoke-virtual {p1, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->error:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    :cond_5
    return-void
.end method

.method destory()V
    .locals 0

    return-void
.end method

.method start()V
    .locals 2

    .line 32
    invoke-static {}, Lcom/narvii/util/diagnosis/DiagnosisTask;->now()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->startTime:J

    const-wide/16 v0, 0x0

    .line 33
    iput-wide v0, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->endTime:J

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->result:Ljava/lang/Boolean;

    .line 35
    iput-object v0, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->error:Ljava/lang/Object;

    .line 36
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
