.class public Lcom/narvii/master/JoinCommunityHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field context:Lcom/narvii/app/NVContext;

.field masterHelper:Lcom/narvii/master/MasterHelper;

.field packageUtils:Lcom/narvii/util/PackageUtils;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/master/JoinCommunityHelper;->context:Lcom/narvii/app/NVContext;

    .line 6
    .line 7
    new-instance v0, Lcom/narvii/util/PackageUtils;

    .line 8
    .line 9
    .line 10
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, v1}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    .line 15
    .line 16
    iput-object v0, p0, Lcom/narvii/master/JoinCommunityHelper;->packageUtils:Lcom/narvii/util/PackageUtils;

    .line 17
    .line 18
    new-instance v0, Lcom/narvii/master/MasterHelper;

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, p1}, Lcom/narvii/master/MasterHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 22
    .line 23
    iput-object v0, p0, Lcom/narvii/master/JoinCommunityHelper;->masterHelper:Lcom/narvii/master/MasterHelper;

    .line 24
    return-void
.end method

.method public static safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Landroid/content/Context;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroid/content/Context;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public joinAnotherCommunityInStandalone(I)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/JoinCommunityHelper;->packageUtils:Lcom/narvii/util/PackageUtils;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/util/PackageUtils;->getMasterPackageName()Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/narvii/util/PackageUtils;->isPackageInstalled(Ljava/lang/String;)Z

    .line 10
    move-result v0

    .line 11
    .line 12
    const-string v1, "/description"

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    iget-object v2, p0, Lcom/narvii/master/JoinCommunityHelper;->packageUtils:Lcom/narvii/util/PackageUtils;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2}, Lcom/narvii/util/PackageUtils;->getMasterScheme()Ljava/lang/String;

    .line 25
    move-result-object v2

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v2, "://x"

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object p1

    .line 44
    .line 45
    new-instance v0, Landroid/content/Intent;

    .line 46
    .line 47
    const-string v1, "android.intent.action.VIEW"

    .line 48
    .line 49
    .line 50
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 51
    move-result-object p1

    .line 52
    .line 53
    .line 54
    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 55
    .line 56
    const-string p1, "clearTask"

    .line 57
    const/4 v1, 0x1

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 61
    .line 62
    iget-object p1, p0, Lcom/narvii/master/JoinCommunityHelper;->context:Lcom/narvii/app/NVContext;

    .line 63
    .line 64
    .line 65
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 66
    move-result-object p1

    .line 67
    .line 68
    .line 69
    invoke-static {p1, v0}, Lcom/narvii/master/JoinCommunityHelper;->safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    goto :goto_0

    .line 71
    .line 72
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    const-string v2, "ndc://x"

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    move-result-object p1

    .line 91
    .line 92
    iget-object v0, p0, Lcom/narvii/master/JoinCommunityHelper;->masterHelper:Lcom/narvii/master/MasterHelper;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, p1}, Lcom/narvii/master/MasterHelper;->showDownloadMaterDialog(Ljava/lang/String;)V

    .line 96
    :catch_0
    :goto_0
    return-void
.end method
