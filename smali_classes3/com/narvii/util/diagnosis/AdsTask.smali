.class public Lcom/narvii/util/diagnosis/AdsTask;
.super Lcom/narvii/util/diagnosis/DiagnosisTask;
.source "AdsTask.java"


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    const-string v0, "Ads"

    .line 10
    invoke-direct {p0, p1, v0}, Lcom/narvii/util/diagnosis/DiagnosisTask;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method appendTo(Landroid/text/SpannableStringBuilder;)V
    .locals 0

    return-void
.end method

.method public run()V
    .locals 1

    const/4 v0, 0x1

    .line 15
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->result:Ljava/lang/Boolean;

    return-void
.end method
