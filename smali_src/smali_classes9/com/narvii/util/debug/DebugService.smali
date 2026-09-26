.class public Lcom/narvii/util/debug/DebugService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/squareup/seismic/a$a;


# static fields
.field public static final LAUNCH_APP_LOVIN_MEDIATOR_DEBUGGER:Ljava/lang/String; = "Launch AppLovinMediatorDebugger"


# instance fields
.field context:Lcom/narvii/app/NVContext;

.field preferences:Landroid/content/SharedPreferences;

.field shakeDetector:Lcom/squareup/seismic/a;

.field shakeDialogShown:Z

.field showingFPS:Z

.field topActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/util/debug/DebugService;->context:Lcom/narvii/app/NVContext;

    .line 6
    .line 7
    new-instance v0, Lcom/squareup/seismic/a;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, p0}, Lcom/squareup/seismic/a;-><init>(Lcom/squareup/seismic/a$a;)V

    .line 11
    .line 12
    iput-object v0, p0, Lcom/narvii/util/debug/DebugService;->shakeDetector:Lcom/squareup/seismic/a;

    .line 13
    .line 14
    const/16 v1, 0xf

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/squareup/seismic/a;->b(I)V

    .line 18
    .line 19
    .line 20
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    const-string v0, "__debug"

    .line 24
    const/4 v1, 0x0

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    iput-object p1, p0, Lcom/narvii/util/debug/DebugService;->preferences:Landroid/content/SharedPreferences;

    .line 31
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/util/debug/DebugService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/util/debug/DebugService;->restartApp()V

    return-void
.end method

.method private launchAppLovingMediatorDebugger()V
    .locals 4

    .line 1
    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/narvii/util/debug/DebugService;->context:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lcom/applovin/sdk/AppLovinSdk;->getInstance(Landroid/content/Context;)Lcom/applovin/sdk/AppLovinSdk;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/applovin/sdk/AppLovinSdk;->showMediationDebugger()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    goto :goto_0

    .line 15
    :catch_0
    move-exception v0

    .line 16
    .line 17
    iget-object v1, p0, Lcom/narvii/util/debug/DebugService;->context:Lcom/narvii/app/NVContext;

    .line 18
    .line 19
    .line 20
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    const-string v3, "App Lovin Mediator can not be launched: "

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object v0

    .line 43
    const/4 v2, 0x1

    .line 44
    .line 45
    .line 46
    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 47
    move-result-object v0

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 51
    :goto_0
    return-void
.end method

.method private restartApp()V
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/debug/DebugService;->context:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    iget-object v1, p0, Lcom/narvii/util/debug/DebugService;->context:Lcom/narvii/app/NVContext;

    .line 13
    .line 14
    .line 15
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    iget-object v1, p0, Lcom/narvii/util/debug/DebugService;->context:Lcom/narvii/app/NVContext;

    .line 27
    .line 28
    .line 29
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 34
    move-result-object v1

    .line 35
    .line 36
    sget-object v2, Lcom/narvii/util/PendingIntentUtils;->INSTANCE:Lcom/narvii/util/PendingIntentUtils;

    .line 37
    .line 38
    const/high16 v3, 0x10000000

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, v3}, Lcom/narvii/util/PendingIntentUtils;->getCurrentImmutableFlag(I)I

    .line 42
    move-result v2

    .line 43
    .line 44
    const/16 v3, 0x3e8

    .line 45
    .line 46
    .line 47
    invoke-static {v1, v3, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 48
    move-result-object v0

    .line 49
    .line 50
    iget-object v1, p0, Lcom/narvii/util/debug/DebugService;->context:Lcom/narvii/app/NVContext;

    .line 51
    .line 52
    .line 53
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 54
    move-result-object v1

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 58
    move-result-object v1

    .line 59
    .line 60
    const-string v2, "alarm"

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 64
    move-result-object v1

    .line 65
    .line 66
    check-cast v1, Landroid/app/AlarmManager;

    .line 67
    .line 68
    .line 69
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 70
    move-result-wide v2

    .line 71
    .line 72
    const-wide/16 v4, 0x64

    .line 73
    add-long/2addr v2, v4

    .line 74
    const/4 v4, 0x1

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, v4, v2, v3, v0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 78
    const/4 v0, 0x0

    .line 79
    .line 80
    .line 81
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 82
    return-void
.end method

.method public static safedk_Activity_startActivity_9d898b58165fa4ba0e12c3900a2b8533(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Landroid/app/Activity;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method apiServerHostDialog(Landroid/app/Activity;)V
    .locals 4

    .line 1
    .line 2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    const-string v1, "API Server"

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 11
    .line 12
    new-instance v1, Landroid/widget/EditText;

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 16
    .line 17
    const-string p1, "services.pabkit.com"

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 21
    .line 22
    const/16 p1, 0xa0

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setInputType(I)V

    .line 26
    .line 27
    iget-object p1, p0, Lcom/narvii/util/debug/DebugService;->preferences:Landroid/content/SharedPreferences;

    .line 28
    .line 29
    const-string v2, "apiServerHost"

    .line 30
    const/4 v3, 0x0

    .line 31
    .line 32
    .line 33
    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 41
    .line 42
    new-instance p1, Lcom/narvii/util/debug/DebugService$3;

    .line 43
    .line 44
    .line 45
    invoke-direct {p1, p0, v1}, Lcom/narvii/util/debug/DebugService$3;-><init>(Lcom/narvii/util/debug/DebugService;Landroid/widget/EditText;)V

    .line 46
    .line 47
    .line 48
    const v1, 0x104000a

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 52
    .line 53
    new-instance p1, Lcom/narvii/util/debug/DebugService$4;

    .line 54
    .line 55
    .line 56
    invoke-direct {p1, p0}, Lcom/narvii/util/debug/DebugService$4;-><init>(Lcom/narvii/util/debug/DebugService;)V

    .line 57
    .line 58
    const/high16 v1, 0x1040000

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 62
    .line 63
    new-instance p1, Lcom/narvii/util/debug/DebugService$5;

    .line 64
    .line 65
    .line 66
    invoke-direct {p1, p0}, Lcom/narvii/util/debug/DebugService$5;-><init>(Lcom/narvii/util/debug/DebugService;)V

    .line 67
    .line 68
    const-string v1, "PROD"

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 75
    return-void
.end method

.method protected createDebugMenu(Landroid/app/Activity;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string p1, "Current Activity Info"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    .line 7
    const-string p1, "Recreate Activity"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    .line 12
    const-string p1, "Reset Process"

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    .line 17
    iget-object p1, p0, Lcom/narvii/util/debug/DebugService;->preferences:Landroid/content/SharedPreferences;

    .line 18
    .line 19
    const-string v0, "fakeProduction"

    .line 20
    const/4 v1, 0x0

    .line 21
    .line 22
    .line 23
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 24
    move-result p1

    .line 25
    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    const-string p1, "PROD"

    .line 29
    goto :goto_0

    .line 30
    .line 31
    :cond_0
    iget-object p1, p0, Lcom/narvii/util/debug/DebugService;->preferences:Landroid/content/SharedPreferences;

    .line 32
    .line 33
    const-string v0, "apiServerHost"

    .line 34
    const/4 v2, 0x0

    .line 35
    .line 36
    .line 37
    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 38
    move-result-object p1

    .line 39
    .line 40
    if-eqz p1, :cond_1

    .line 41
    .line 42
    iget-object p1, p0, Lcom/narvii/util/debug/DebugService;->preferences:Landroid/content/SharedPreferences;

    .line 43
    .line 44
    .line 45
    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 46
    move-result-object p1

    .line 47
    goto :goto_0

    .line 48
    .line 49
    :cond_1
    const-string p1, "DEV"

    .line 50
    .line 51
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    const-string v2, "API Server: "

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    move-result-object p1

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    .line 71
    iget-object p1, p0, Lcom/narvii/util/debug/DebugService;->preferences:Landroid/content/SharedPreferences;

    .line 72
    .line 73
    const-string v0, "leakCanary"

    .line 74
    .line 75
    .line 76
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 77
    move-result p1

    .line 78
    .line 79
    if-eqz p1, :cond_2

    .line 80
    .line 81
    const-string p1, "Disable LeakCanary"

    .line 82
    goto :goto_1

    .line 83
    .line 84
    :cond_2
    const-string p1, "Enable LeakCanary"

    .line 85
    .line 86
    .line 87
    :goto_1
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    .line 89
    iget-boolean p1, p0, Lcom/narvii/util/debug/DebugService;->showingFPS:Z

    .line 90
    .line 91
    if-eqz p1, :cond_3

    .line 92
    .line 93
    const-string p1, "Hide FPS"

    .line 94
    goto :goto_2

    .line 95
    .line 96
    :cond_3
    const-string p1, "FPS"

    .line 97
    .line 98
    .line 99
    :goto_2
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    .line 101
    iget-object p1, p0, Lcom/narvii/util/debug/DebugService;->preferences:Landroid/content/SharedPreferences;

    .line 102
    .line 103
    .line 104
    const-string/jumbo v0, "verboseLog"

    .line 105
    .line 106
    .line 107
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 108
    move-result p1

    .line 109
    .line 110
    if-eqz p1, :cond_4

    .line 111
    .line 112
    const-string p1, "Disable Verbose Log"

    .line 113
    goto :goto_3

    .line 114
    .line 115
    :cond_4
    const-string p1, "Enable Verbose Log"

    .line 116
    .line 117
    .line 118
    :goto_3
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    .line 120
    const-string p1, "Launch AppLovinMediatorDebugger"

    .line 121
    .line 122
    .line 123
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    return-void
.end method

.method public hearShake()V
    .locals 5

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/util/debug/DebugService;->shakeDialogShown:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iget-object v0, p0, Lcom/narvii/util/debug/DebugService;->topActivity:Ljava/lang/ref/WeakReference;

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    const/4 v0, 0x0

    .line 11
    goto :goto_0

    .line 12
    .line 13
    .line 14
    :cond_1
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    check-cast v0, Landroid/app/Activity;

    .line 18
    .line 19
    :goto_0
    if-eqz v0, :cond_3

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    .line 23
    move-result v1

    .line 24
    .line 25
    if-eqz v1, :cond_2

    .line 26
    goto :goto_1

    .line 27
    .line 28
    :cond_2
    new-instance v1, Landroid/app/AlertDialog$Builder;

    .line 29
    .line 30
    .line 31
    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 32
    .line 33
    const-string v2, "Shake Detected!"

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 37
    .line 38
    new-instance v2, Ljava/util/ArrayList;

    .line 39
    .line 40
    .line 41
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v0, v2}, Lcom/narvii/util/debug/DebugService;->createDebugMenu(Landroid/app/Activity;Ljava/util/ArrayList;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 48
    move-result v3

    .line 49
    .line 50
    new-array v3, v3, [Ljava/lang/CharSequence;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 54
    move-result-object v3

    .line 55
    .line 56
    check-cast v3, [Ljava/lang/CharSequence;

    .line 57
    .line 58
    new-instance v4, Lcom/narvii/util/debug/DebugService$1;

    .line 59
    .line 60
    .line 61
    invoke-direct {v4, p0, v2, v0}, Lcom/narvii/util/debug/DebugService$1;-><init>(Lcom/narvii/util/debug/DebugService;Ljava/util/ArrayList;Landroid/app/Activity;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 65
    .line 66
    new-instance v0, Lcom/narvii/util/debug/DebugService$2;

    .line 67
    .line 68
    .line 69
    invoke-direct {v0, p0}, Lcom/narvii/util/debug/DebugService$2;-><init>(Lcom/narvii/util/debug/DebugService;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 73
    const/4 v0, 0x1

    .line 74
    .line 75
    iput-boolean v0, p0, Lcom/narvii/util/debug/DebugService;->shakeDialogShown:Z

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 79
    :cond_3
    :goto_1
    return-void
.end method

.method protected onDebugMenuClick(Landroid/app/Activity;Ljava/lang/CharSequence;)V
    .locals 4

    .line 1
    .line 2
    const-string v0, "Current Activity Info"

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    instance-of v0, p1, Lcom/narvii/app/NVActivity;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    move-object v0, p1

    .line 15
    .line 16
    check-cast v0, Lcom/narvii/app/NVActivity;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/narvii/app/NVActivity;->getCrashlyticsFootprint()Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    new-instance v2, Landroid/widget/TextView;

    .line 23
    .line 24
    .line 25
    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 26
    .line 27
    sget-object v3, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 31
    .line 32
    const/high16 v3, 0x41400000    # 12.0f

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2, v1, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    .line 40
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 41
    .line 42
    .line 43
    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 47
    move-result-object v0

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 51
    .line 52
    :cond_0
    const-string v0, "Recreate Activity"

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    move-result v0

    .line 57
    .line 58
    if-eqz v0, :cond_1

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1}, Landroid/app/Activity;->recreate()V

    .line 62
    .line 63
    :cond_1
    const-string v0, "Reset Process"

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    move-result v0

    .line 68
    .line 69
    if-eqz v0, :cond_2

    .line 70
    .line 71
    new-instance v0, Landroid/content/Intent;

    .line 72
    .line 73
    const-class v2, Lcom/narvii/util/debug/ResetProcessActivity;

    .line 74
    .line 75
    .line 76
    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 77
    .line 78
    .line 79
    invoke-static {p1, v0}, Lcom/narvii/util/debug/DebugService;->safedk_Activity_startActivity_9d898b58165fa4ba0e12c3900a2b8533(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 80
    .line 81
    .line 82
    :cond_2
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 83
    move-result-object v0

    .line 84
    .line 85
    const-string v2, "API Server:"

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 89
    move-result v0

    .line 90
    .line 91
    if-eqz v0, :cond_3

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0, p1}, Lcom/narvii/util/debug/DebugService;->apiServerHostDialog(Landroid/app/Activity;)V

    .line 95
    .line 96
    :cond_3
    const-string p1, "Enable LeakCanary"

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 100
    move-result p1

    .line 101
    .line 102
    const-string v0, "leakCanary"

    .line 103
    .line 104
    if-eqz p1, :cond_4

    .line 105
    .line 106
    iget-object p1, p0, Lcom/narvii/util/debug/DebugService;->preferences:Landroid/content/SharedPreferences;

    .line 107
    .line 108
    .line 109
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 110
    move-result-object p1

    .line 111
    .line 112
    .line 113
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 114
    move-result-object p1

    .line 115
    .line 116
    .line 117
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 118
    .line 119
    .line 120
    invoke-direct {p0}, Lcom/narvii/util/debug/DebugService;->restartApp()V

    .line 121
    .line 122
    :cond_4
    const-string p1, "Disable LeakCanary"

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 126
    move-result p1

    .line 127
    const/4 v2, 0x0

    .line 128
    .line 129
    if-eqz p1, :cond_5

    .line 130
    .line 131
    iget-object p1, p0, Lcom/narvii/util/debug/DebugService;->preferences:Landroid/content/SharedPreferences;

    .line 132
    .line 133
    .line 134
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 135
    move-result-object p1

    .line 136
    .line 137
    .line 138
    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 139
    move-result-object p1

    .line 140
    .line 141
    .line 142
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 143
    .line 144
    .line 145
    invoke-direct {p0}, Lcom/narvii/util/debug/DebugService;->restartApp()V

    .line 146
    .line 147
    :cond_5
    const-string p1, "FPS"

    .line 148
    .line 149
    .line 150
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 151
    move-result p1

    .line 152
    .line 153
    if-eqz p1, :cond_6

    .line 154
    .line 155
    .line 156
    invoke-static {}, Lcom/codemonkeylabs/fpslibrary/h;->a()Lcom/codemonkeylabs/fpslibrary/i;

    .line 157
    move-result-object p1

    .line 158
    .line 159
    iget-object v0, p0, Lcom/narvii/util/debug/DebugService;->context:Lcom/narvii/app/NVContext;

    .line 160
    .line 161
    .line 162
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 163
    move-result-object v0

    .line 164
    .line 165
    .line 166
    invoke-virtual {p1, v0}, Lcom/codemonkeylabs/fpslibrary/i;->e(Landroid/content/Context;)V

    .line 167
    .line 168
    iput-boolean v1, p0, Lcom/narvii/util/debug/DebugService;->showingFPS:Z

    .line 169
    .line 170
    :cond_6
    const-string p1, "Hide FPS"

    .line 171
    .line 172
    .line 173
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 174
    move-result p1

    .line 175
    .line 176
    if-eqz p1, :cond_7

    .line 177
    .line 178
    iget-object p1, p0, Lcom/narvii/util/debug/DebugService;->context:Lcom/narvii/app/NVContext;

    .line 179
    .line 180
    .line 181
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 182
    move-result-object p1

    .line 183
    .line 184
    .line 185
    invoke-static {p1}, Lcom/codemonkeylabs/fpslibrary/h;->b(Landroid/content/Context;)V

    .line 186
    .line 187
    iput-boolean v2, p0, Lcom/narvii/util/debug/DebugService;->showingFPS:Z

    .line 188
    .line 189
    :cond_7
    const-string p1, "Enable Verbose Log"

    .line 190
    .line 191
    .line 192
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 193
    move-result p1

    .line 194
    .line 195
    .line 196
    const-string/jumbo v0, "verboseLog"

    .line 197
    .line 198
    if-eqz p1, :cond_8

    .line 199
    .line 200
    iget-object p1, p0, Lcom/narvii/util/debug/DebugService;->preferences:Landroid/content/SharedPreferences;

    .line 201
    .line 202
    .line 203
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 204
    move-result-object p1

    .line 205
    .line 206
    .line 207
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 208
    move-result-object p1

    .line 209
    .line 210
    .line 211
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 212
    .line 213
    :cond_8
    const-string p1, "Disable Verbose Log"

    .line 214
    .line 215
    .line 216
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 217
    move-result p1

    .line 218
    .line 219
    if-eqz p1, :cond_9

    .line 220
    .line 221
    iget-object p1, p0, Lcom/narvii/util/debug/DebugService;->preferences:Landroid/content/SharedPreferences;

    .line 222
    .line 223
    .line 224
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 225
    move-result-object p1

    .line 226
    .line 227
    .line 228
    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 229
    move-result-object p1

    .line 230
    .line 231
    .line 232
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 233
    .line 234
    :cond_9
    const-string p1, "Launch AppLovinMediatorDebugger"

    .line 235
    .line 236
    .line 237
    invoke-virtual {p1, p2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    .line 238
    move-result p1

    .line 239
    .line 240
    if-eqz p1, :cond_a

    .line 241
    .line 242
    .line 243
    invoke-direct {p0}, Lcom/narvii/util/debug/DebugService;->launchAppLovingMediatorDebugger()V

    .line 244
    :cond_a
    return-void
.end method

.method public takeScreenshot()Landroid/graphics/Bitmap;
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/debug/DebugService;->topActivity:Ljava/lang/ref/WeakReference;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    move-object v0, v1

    .line 7
    goto :goto_0

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    check-cast v0, Landroid/app/Activity;

    .line 14
    .line 15
    :goto_0
    if-eqz v0, :cond_1

    .line 16
    .line 17
    const/16 v2, 0x21c

    .line 18
    .line 19
    const/16 v3, 0x3c0

    .line 20
    .line 21
    const/high16 v4, 0x3f800000    # 1.0f

    .line 22
    .line 23
    .line 24
    :try_start_0
    invoke-static {v0, v4, v2, v3}, Lcom/narvii/util/image/Screenshot;->takeScreenshot(Landroid/app/Activity;FII)Landroid/graphics/Bitmap;

    .line 25
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    return-object v0

    .line 27
    :catchall_0
    move-exception v0

    .line 28
    .line 29
    const-string v2, "fail to take screenshot"

    .line 30
    .line 31
    .line 32
    invoke-static {v2, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 33
    :cond_1
    return-object v1
.end method
