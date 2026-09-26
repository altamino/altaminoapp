.class public Lcom/narvii/util/diagnosis/ConnectivityTask;
.super Lcom/narvii/util/diagnosis/DiagnosisTask;
.source "SourceFile"


# direct methods
.method constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    .line 1
    .line 2
    const-string v0, "Connectivity"

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1, v0}, Lcom/narvii/util/diagnosis/DiagnosisTask;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

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
    const-string v1, "connectivity"

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 23
    .line 24
    iput-object v0, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->result:Ljava/lang/Boolean;

    .line 25
    .line 26
    const-string v0, "No connection"

    .line 27
    .line 28
    iput-object v0, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->error:Ljava/lang/Object;

    .line 29
    goto :goto_0

    .line 30
    .line 31
    .line 32
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    .line 33
    move-result v1

    .line 34
    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 38
    .line 39
    iput-object v0, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->result:Ljava/lang/Boolean;

    .line 40
    goto :goto_0

    .line 41
    .line 42
    .line 43
    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    .line 44
    move-result v0

    .line 45
    .line 46
    if-nez v0, :cond_2

    .line 47
    .line 48
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 49
    .line 50
    iput-object v0, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->result:Ljava/lang/Boolean;

    .line 51
    .line 52
    const-string v0, "Unavailable"

    .line 53
    .line 54
    iput-object v0, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->error:Ljava/lang/Object;

    .line 55
    goto :goto_0

    .line 56
    .line 57
    :cond_2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 58
    .line 59
    iput-object v0, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->result:Ljava/lang/Boolean;

    .line 60
    :goto_0
    return-void
.end method
