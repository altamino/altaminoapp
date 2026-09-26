.class Lcom/narvii/util/ReferrerTrackUtils$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/installreferrer/api/InstallReferrerStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/util/ReferrerTrackUtils;->trackReferrer(Lcom/narvii/app/NVContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/util/ReferrerTrackUtils;

.field final synthetic val$prefs:Landroid/content/SharedPreferences;

.field final synthetic val$referrerClient:Lcom/android/installreferrer/api/InstallReferrerClient;


# direct methods
.method constructor <init>(Lcom/narvii/util/ReferrerTrackUtils;Lcom/android/installreferrer/api/InstallReferrerClient;Landroid/content/SharedPreferences;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/util/ReferrerTrackUtils$1;->this$0:Lcom/narvii/util/ReferrerTrackUtils;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/util/ReferrerTrackUtils$1;->val$referrerClient:Lcom/android/installreferrer/api/InstallReferrerClient;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/util/ReferrerTrackUtils$1;->val$prefs:Landroid/content/SharedPreferences;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public onInstallReferrerServiceDisconnected()V
    .locals 0

    return-void
.end method

.method public onInstallReferrerSetupFinished(I)V
    .locals 4

    .line 1
    .line 2
    const-string v0, "referrer_track"

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    goto :goto_2

    .line 6
    :cond_0
    const/4 p1, 0x1

    .line 7
    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/narvii/util/ReferrerTrackUtils$1;->val$referrerClient:Lcom/android/installreferrer/api/InstallReferrerClient;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/android/installreferrer/api/InstallReferrerClient;->getInstallReferrer()Lcom/android/installreferrer/api/ReferrerDetails;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    .line 17
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 18
    move-result-object v2

    .line 19
    .line 20
    .line 21
    invoke-static {v2}, Lcom/narvii/logging/LogEvent;->builder(Lcom/narvii/app/NVContext;)Lcom/narvii/logging/LogEvent$Builder;

    .line 22
    move-result-object v2

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Lcom/narvii/logging/LogEvent$Builder;->appEvent()Lcom/narvii/logging/LogEvent$Builder;

    .line 26
    move-result-object v2

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2}, Lcom/narvii/logging/LogEvent$Builder;->onlyInternalLogging()Lcom/narvii/logging/LogEvent$Builder;

    .line 30
    move-result-object v2

    .line 31
    .line 32
    sget-object v3, Lcom/narvii/logging/ActType;->auto:Lcom/narvii/logging/ActType;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2, v3}, Lcom/narvii/logging/LogEvent$Builder;->actType(Lcom/narvii/logging/ActType;)Lcom/narvii/logging/LogEvent$Builder;

    .line 36
    move-result-object v2

    .line 37
    .line 38
    sget-object v3, Lcom/narvii/logging/ActSemantic;->error:Lcom/narvii/logging/ActSemantic;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, v3}, Lcom/narvii/logging/LogEvent$Builder;->actSemantic(Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 42
    move-result-object v2

    .line 43
    .line 44
    const-string v3, "install_referrer"

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Lcom/android/installreferrer/api/ReferrerDetails;->getInstallReferrer()Ljava/lang/String;

    .line 48
    move-result-object v1

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2, v3, v1}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    .line 52
    move-result-object v1

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    goto :goto_0

    .line 57
    :catchall_0
    move-exception v1

    .line 58
    goto :goto_3

    .line 59
    :catch_0
    move-exception v1

    .line 60
    goto :goto_1

    .line 61
    .line 62
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/narvii/util/ReferrerTrackUtils$1;->val$prefs:Landroid/content/SharedPreferences;

    .line 63
    .line 64
    .line 65
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 66
    move-result-object v1

    .line 67
    .line 68
    .line 69
    invoke-interface {v1, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 70
    move-result-object p1

    .line 71
    .line 72
    .line 73
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 74
    .line 75
    iget-object p1, p0, Lcom/narvii/util/ReferrerTrackUtils$1;->val$referrerClient:Lcom/android/installreferrer/api/InstallReferrerClient;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1}, Lcom/android/installreferrer/api/InstallReferrerClient;->endConnection()V

    .line 79
    goto :goto_2

    .line 80
    .line 81
    .line 82
    :goto_1
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 83
    .line 84
    const-string v2, "install_referrer_error"

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 88
    move-result-object v1

    .line 89
    .line 90
    .line 91
    invoke-static {v2, v1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    goto :goto_0

    .line 93
    :goto_2
    return-void

    .line 94
    .line 95
    :goto_3
    iget-object v2, p0, Lcom/narvii/util/ReferrerTrackUtils$1;->val$prefs:Landroid/content/SharedPreferences;

    .line 96
    .line 97
    .line 98
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 99
    move-result-object v2

    .line 100
    .line 101
    .line 102
    invoke-interface {v2, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 103
    move-result-object p1

    .line 104
    .line 105
    .line 106
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 107
    .line 108
    iget-object p1, p0, Lcom/narvii/util/ReferrerTrackUtils$1;->val$referrerClient:Lcom/android/installreferrer/api/InstallReferrerClient;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1}, Lcom/android/installreferrer/api/InstallReferrerClient;->endConnection()V

    .line 112
    throw v1
.end method
