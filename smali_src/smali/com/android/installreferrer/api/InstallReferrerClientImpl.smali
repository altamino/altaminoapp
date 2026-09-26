.class Lcom/android/installreferrer/api/InstallReferrerClientImpl;
.super Lcom/android/installreferrer/api/InstallReferrerClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/installreferrer/api/InstallReferrerClientImpl$b;,
        Lcom/android/installreferrer/api/InstallReferrerClientImpl$ClientState;
    }
.end annotation


# static fields
.field private static final PLAY_STORE_MIN_APP_VER:I = 0x4d17ab4

.field private static final SERVICE_ACTION_NAME:Ljava/lang/String; = "com.google.android.finsky.BIND_GET_INSTALL_REFERRER_SERVICE"

.field private static final SERVICE_NAME:Ljava/lang/String; = "com.google.android.finsky.externalreferrer.GetInstallReferrerService"

.field private static final SERVICE_PACKAGE_NAME:Ljava/lang/String; = "com.android.vending"

.field private static final TAG:Ljava/lang/String; = "InstallReferrerClient"


# instance fields
.field private final mApplicationContext:Landroid/content/Context;

.field private mClientState:I

.field private mService:Lcom/google/android/finsky/externalreferrer/a;

.field private mServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/android/installreferrer/api/InstallReferrerClient;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput v0, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->mClientState:I

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    iput-object p1, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->mApplicationContext:Landroid/content/Context;

    .line 13
    return-void
.end method

.method static synthetic a(Lcom/android/installreferrer/api/InstallReferrerClientImpl;Lcom/google/android/finsky/externalreferrer/a;)Lcom/google/android/finsky/externalreferrer/a;
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->mService:Lcom/google/android/finsky/externalreferrer/a;

    .line 3
    return-object p1
.end method

.method static synthetic b(Lcom/android/installreferrer/api/InstallReferrerClientImpl;I)I
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->mClientState:I

    .line 3
    return p1
.end method

.method private c()Z
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->mApplicationContext:Landroid/content/Context;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    :try_start_0
    const-string v2, "com.android.vending"

    .line 10
    .line 11
    const/16 v3, 0x80

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    .line 20
    const v2, 0x4d17ab4

    .line 21
    .line 22
    if-lt v0, v2, :cond_0

    .line 23
    const/4 v1, 0x1

    .line 24
    :catch_0
    :cond_0
    return v1
.end method


# virtual methods
.method public endConnection()V
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    .line 3
    iput v0, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->mClientState:I

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 6
    const/4 v1, 0x0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-string v0, "InstallReferrerClient"

    .line 11
    .line 12
    const-string v2, "Unbinding from service."

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v2}, Lcom/android/installreferrer/commons/InstallReferrerCommons;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->mApplicationContext:Landroid/content/Context;

    .line 18
    .line 19
    iget-object v2, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 23
    .line 24
    iput-object v1, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 25
    .line 26
    :cond_0
    iput-object v1, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->mService:Lcom/google/android/finsky/externalreferrer/a;

    .line 27
    return-void
.end method

.method public getInstallReferrer()Lcom/android/installreferrer/api/ReferrerDetails;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->isReady()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Landroid/os/Bundle;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 12
    .line 13
    iget-object v1, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->mApplicationContext:Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    .line 20
    const-string/jumbo v2, "package_name"

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    :try_start_0
    new-instance v1, Lcom/android/installreferrer/api/ReferrerDetails;

    .line 26
    .line 27
    iget-object v2, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->mService:Lcom/google/android/finsky/externalreferrer/a;

    .line 28
    .line 29
    .line 30
    invoke-interface {v2, v0}, Lcom/google/android/finsky/externalreferrer/a;->p0(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    .line 34
    invoke-direct {v1, v0}, Lcom/android/installreferrer/api/ReferrerDetails;-><init>(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    return-object v1

    .line 36
    :catch_0
    move-exception v0

    .line 37
    .line 38
    const-string v1, "InstallReferrerClient"

    .line 39
    .line 40
    const-string v2, "RemoteException getting install referrer information"

    .line 41
    .line 42
    .line 43
    invoke-static {v1, v2}, Lcom/android/installreferrer/commons/InstallReferrerCommons;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const/4 v1, 0x0

    .line 45
    .line 46
    iput v1, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->mClientState:I

    .line 47
    throw v0

    .line 48
    .line 49
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 50
    .line 51
    const-string v1, "Service not connected. Please start a connection before using the service."

    .line 52
    .line 53
    .line 54
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 55
    throw v0
.end method

.method public isReady()Z
    .locals 2

    iget v0, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->mClientState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->mService:Lcom/google/android/finsky/externalreferrer/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->mServiceConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public startConnection(Lcom/android/installreferrer/api/InstallReferrerStateListener;)V
    .locals 8
    .param p1    # Lcom/android/installreferrer/api/InstallReferrerStateListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->isReady()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    const-string v2, "InstallReferrerClient"

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const-string v0, "Service connection is valid. No need to re-initialize."

    .line 12
    .line 13
    .line 14
    invoke-static {v2, v0}, Lcom/android/installreferrer/commons/InstallReferrerCommons;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-interface {p1, v1}, Lcom/android/installreferrer/api/InstallReferrerStateListener;->onInstallReferrerSetupFinished(I)V

    .line 18
    return-void

    .line 19
    .line 20
    :cond_0
    iget v0, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->mClientState:I

    .line 21
    const/4 v3, 0x3

    .line 22
    const/4 v4, 0x1

    .line 23
    .line 24
    if-ne v0, v4, :cond_1

    .line 25
    .line 26
    const-string v0, "Client is already in the process of connecting to the service."

    .line 27
    .line 28
    .line 29
    invoke-static {v2, v0}, Lcom/android/installreferrer/commons/InstallReferrerCommons;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-interface {p1, v3}, Lcom/android/installreferrer/api/InstallReferrerStateListener;->onInstallReferrerSetupFinished(I)V

    .line 33
    return-void

    .line 34
    .line 35
    :cond_1
    if-ne v0, v3, :cond_2

    .line 36
    .line 37
    const-string v0, "Client was already closed and can\'t be reused. Please create another instance."

    .line 38
    .line 39
    .line 40
    invoke-static {v2, v0}, Lcom/android/installreferrer/commons/InstallReferrerCommons;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-interface {p1, v3}, Lcom/android/installreferrer/api/InstallReferrerStateListener;->onInstallReferrerSetupFinished(I)V

    .line 44
    return-void

    .line 45
    .line 46
    :cond_2
    const-string v0, "Starting install referrer service setup."

    .line 47
    .line 48
    .line 49
    invoke-static {v2, v0}, Lcom/android/installreferrer/commons/InstallReferrerCommons;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    new-instance v0, Lcom/android/installreferrer/api/InstallReferrerClientImpl$b;

    .line 52
    const/4 v3, 0x0

    .line 53
    .line 54
    .line 55
    invoke-direct {v0, p0, p1, v3}, Lcom/android/installreferrer/api/InstallReferrerClientImpl$b;-><init>(Lcom/android/installreferrer/api/InstallReferrerClientImpl;Lcom/android/installreferrer/api/InstallReferrerStateListener;Lcom/android/installreferrer/api/InstallReferrerClientImpl$a;)V

    .line 56
    .line 57
    iput-object v0, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 58
    .line 59
    new-instance v0, Landroid/content/Intent;

    .line 60
    .line 61
    const-string v3, "com.google.android.finsky.BIND_GET_INSTALL_REFERRER_SERVICE"

    .line 62
    .line 63
    .line 64
    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    new-instance v3, Landroid/content/ComponentName;

    .line 67
    .line 68
    const-string v5, "com.google.android.finsky.externalreferrer.GetInstallReferrerService"

    .line 69
    .line 70
    const-string v6, "com.android.vending"

    .line 71
    .line 72
    .line 73
    invoke-direct {v3, v6, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 77
    .line 78
    iget-object v3, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->mApplicationContext:Landroid/content/Context;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 82
    move-result-object v3

    .line 83
    .line 84
    .line 85
    invoke-virtual {v3, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    .line 86
    move-result-object v3

    .line 87
    const/4 v5, 0x2

    .line 88
    .line 89
    if-eqz v3, :cond_5

    .line 90
    .line 91
    .line 92
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 93
    move-result v7

    .line 94
    .line 95
    if-nez v7, :cond_5

    .line 96
    .line 97
    .line 98
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 99
    move-result-object v3

    .line 100
    .line 101
    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 102
    .line 103
    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 104
    .line 105
    if-eqz v3, :cond_5

    .line 106
    .line 107
    iget-object v7, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 108
    .line 109
    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 113
    move-result v6

    .line 114
    .line 115
    if-eqz v6, :cond_4

    .line 116
    .line 117
    if-eqz v3, :cond_4

    .line 118
    .line 119
    .line 120
    invoke-direct {p0}, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->c()Z

    .line 121
    move-result v3

    .line 122
    .line 123
    if-eqz v3, :cond_4

    .line 124
    .line 125
    new-instance v3, Landroid/content/Intent;

    .line 126
    .line 127
    .line 128
    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 129
    .line 130
    iget-object v0, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->mApplicationContext:Landroid/content/Context;

    .line 131
    .line 132
    iget-object v5, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0, v3, v5, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 136
    move-result v0

    .line 137
    .line 138
    if-eqz v0, :cond_3

    .line 139
    .line 140
    const-string p1, "Service was bonded successfully."

    .line 141
    .line 142
    .line 143
    invoke-static {v2, p1}, Lcom/android/installreferrer/commons/InstallReferrerCommons;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    return-void

    .line 145
    .line 146
    :cond_3
    const-string v0, "Connection to service is blocked."

    .line 147
    .line 148
    .line 149
    invoke-static {v2, v0}, Lcom/android/installreferrer/commons/InstallReferrerCommons;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    .line 151
    iput v1, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->mClientState:I

    .line 152
    .line 153
    .line 154
    invoke-interface {p1, v4}, Lcom/android/installreferrer/api/InstallReferrerStateListener;->onInstallReferrerSetupFinished(I)V

    .line 155
    return-void

    .line 156
    .line 157
    :cond_4
    const-string v0, "Play Store missing or incompatible. Version 8.3.73 or later required."

    .line 158
    .line 159
    .line 160
    invoke-static {v2, v0}, Lcom/android/installreferrer/commons/InstallReferrerCommons;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    .line 162
    iput v1, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->mClientState:I

    .line 163
    .line 164
    .line 165
    invoke-interface {p1, v5}, Lcom/android/installreferrer/api/InstallReferrerStateListener;->onInstallReferrerSetupFinished(I)V

    .line 166
    return-void

    .line 167
    .line 168
    :cond_5
    iput v1, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->mClientState:I

    .line 169
    .line 170
    const-string v0, "Install Referrer service unavailable on device."

    .line 171
    .line 172
    .line 173
    invoke-static {v2, v0}, Lcom/android/installreferrer/commons/InstallReferrerCommons;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    invoke-interface {p1, v5}, Lcom/android/installreferrer/api/InstallReferrerStateListener;->onInstallReferrerSetupFinished(I)V

    .line 177
    return-void
.end method
