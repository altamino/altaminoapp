.class public Lcom/narvii/util/debug/DebugService;
.super Ljava/lang/Object;
.source "DebugService.java"

# interfaces
.implements Lcom/squareup/seismic/ShakeDetector$Listener;


# instance fields
.field context:Lcom/narvii/app/NVContext;

.field preferences:Landroid/content/SharedPreferences;

.field shakeDetector:Lcom/squareup/seismic/ShakeDetector;

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

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/narvii/util/debug/DebugService;->context:Lcom/narvii/app/NVContext;

    .line 44
    new-instance v0, Lcom/squareup/seismic/ShakeDetector;

    invoke-direct {v0, p0}, Lcom/squareup/seismic/ShakeDetector;-><init>(Lcom/squareup/seismic/ShakeDetector$Listener;)V

    iput-object v0, p0, Lcom/narvii/util/debug/DebugService;->shakeDetector:Lcom/squareup/seismic/ShakeDetector;

    .line 45
    iget-object v0, p0, Lcom/narvii/util/debug/DebugService;->shakeDetector:Lcom/squareup/seismic/ShakeDetector;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/squareup/seismic/ShakeDetector;->setSensitivity(I)V

    .line 46
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "__debug"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/util/debug/DebugService;->preferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/util/debug/DebugService;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/narvii/util/debug/DebugService;->restartApp()V

    return-void
.end method

.method private restartApp()V
    .locals 6

    .line 151
    iget-object v0, p0, Lcom/narvii/util/debug/DebugService;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/util/debug/DebugService;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 153
    iget-object v1, p0, Lcom/narvii/util/debug/DebugService;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x3e8

    const/high16 v3, 0x10000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 154
    iget-object v1, p0, Lcom/narvii/util/debug/DebugService;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 155
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x64

    add-long/2addr v2, v4

    const/4 v4, 0x1

    invoke-virtual {v1, v4, v2, v3, v0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    const/4 v0, 0x0

    .line 156
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method


# virtual methods
.method apiServerHostDialog(Landroid/app/Activity;)V
    .locals 4

    .line 160
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "API Server"

    .line 161
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 162
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const-string/jumbo p1, "service.altamino.top"

    .line 163
    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const/16 p1, 0xa0

    .line 164
    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setInputType(I)V

    .line 165
    iget-object p1, p0, Lcom/narvii/util/debug/DebugService;->preferences:Landroid/content/SharedPreferences;

    const-string v2, "apiServerHost"

    const/4 v3, 0x0

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 166
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 167
    new-instance p1, Lcom/narvii/util/debug/DebugService$3;

    invoke-direct {p1, p0, v1}, Lcom/narvii/util/debug/DebugService$3;-><init>(Lcom/narvii/util/debug/DebugService;Landroid/widget/EditText;)V

    const v1, 0x104000a

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 179
    new-instance p1, Lcom/narvii/util/debug/DebugService$4;

    invoke-direct {p1, p0}, Lcom/narvii/util/debug/DebugService$4;-><init>(Lcom/narvii/util/debug/DebugService;)V

    const/high16 v1, 0x1040000

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 184
    new-instance p1, Lcom/narvii/util/debug/DebugService$5;

    invoke-direct {p1, p0}, Lcom/narvii/util/debug/DebugService$5;-><init>(Lcom/narvii/util/debug/DebugService;)V

    const-string v1, "PROD"

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 191
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

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

    const-string p1, "Current Activity Info"

    .line 86
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p1, "Recreate Activity"

    .line 87
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p1, "Reset Process"

    .line 88
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    iget-object p1, p0, Lcom/narvii/util/debug/DebugService;->preferences:Landroid/content/SharedPreferences;

    const/4 v0, 0x0

    const-string v1, "fakeProduction"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "PROD"

    goto :goto_0

    .line 92
    :cond_0
    iget-object p1, p0, Lcom/narvii/util/debug/DebugService;->preferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    const-string v2, "apiServerHost"

    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 93
    iget-object p1, p0, Lcom/narvii/util/debug/DebugService;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, "DEV"

    .line 95
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "API Server: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    iget-object p1, p0, Lcom/narvii/util/debug/DebugService;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "leakCanary"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "Disable LeakCanary"

    goto :goto_1

    :cond_2
    const-string p1, "Enable LeakCanary"

    :goto_1
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    iget-boolean p1, p0, Lcom/narvii/util/debug/DebugService;->showingFPS:Z

    if-eqz p1, :cond_3

    const-string p1, "Hide FPS"

    goto :goto_2

    :cond_3
    const-string p1, "FPS"

    :goto_2
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    iget-object p1, p0, Lcom/narvii/util/debug/DebugService;->preferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "verboseLog"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "Disable Verbose Log"

    goto :goto_3

    :cond_4
    const-string p1, "Enable Verbose Log"

    :goto_3
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public hearShake()V
    .locals 5

    .line 51
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-ge v0, v1, :cond_0

    return-void

    .line 55
    :cond_0
    iget-boolean v0, p0, Lcom/narvii/util/debug/DebugService;->shakeDialogShown:Z

    if-eqz v0, :cond_1

    return-void

    .line 58
    :cond_1
    iget-object v0, p0, Lcom/narvii/util/debug/DebugService;->topActivity:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    :goto_0
    if-eqz v0, :cond_4

    .line 59
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    .line 63
    :cond_3
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "Shake Detected!"

    .line 64
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 65
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 66
    invoke-virtual {p0, v0, v2}, Lcom/narvii/util/debug/DebugService;->createDebugMenu(Landroid/app/Activity;Ljava/util/ArrayList;)V

    .line 67
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/CharSequence;

    .line 68
    new-instance v4, Lcom/narvii/util/debug/DebugService$1;

    invoke-direct {v4, p0, v2, v0}, Lcom/narvii/util/debug/DebugService$1;-><init>(Lcom/narvii/util/debug/DebugService;Ljava/util/ArrayList;Landroid/app/Activity;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 75
    new-instance v0, Lcom/narvii/util/debug/DebugService$2;

    invoke-direct {v0, p0}, Lcom/narvii/util/debug/DebugService$2;-><init>(Lcom/narvii/util/debug/DebugService;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    const/4 v0, 0x1

    .line 81
    iput-boolean v0, p0, Lcom/narvii/util/debug/DebugService;->shakeDialogShown:Z

    .line 82
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_4
    :goto_1
    return-void
.end method

.method protected onDebugMenuClick(Landroid/app/Activity;Ljava/lang/CharSequence;)V
    .locals 4

    const-string v0, "Current Activity Info"

    .line 102
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 103
    instance-of v0, p1, Lcom/narvii/app/NVActivity;

    if-eqz v0, :cond_0

    .line 104
    move-object v0, p1

    check-cast v0, Lcom/narvii/app/NVActivity;

    invoke-virtual {v0}, Lcom/narvii/app/NVActivity;->getCrashlyticsFootprint()Ljava/lang/String;

    move-result-object v0

    .line 105
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 106
    sget-object v3, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 v3, 0x41400000    # 12.0f

    .line 107
    invoke-virtual {v2, v1, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 108
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_0
    const-string v0, "Recreate Activity"

    .line 112
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    invoke-virtual {p1}, Landroid/app/Activity;->recreate()V

    :cond_1
    const-string v0, "Reset Process"

    .line 115
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 116
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/narvii/util/debug/ResetProcessActivity;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 118
    :cond_2
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "API Server:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 119
    invoke-virtual {p0, p1}, Lcom/narvii/util/debug/DebugService;->apiServerHostDialog(Landroid/app/Activity;)V

    :cond_3
    const-string p1, "Enable LeakCanary"

    .line 122
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "leakCanary"

    if-eqz p1, :cond_4

    .line 123
    iget-object p1, p0, Lcom/narvii/util/debug/DebugService;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 124
    invoke-direct {p0}, Lcom/narvii/util/debug/DebugService;->restartApp()V

    :cond_4
    const-string p1, "Disable LeakCanary"

    .line 127
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v2, 0x0

    if-eqz p1, :cond_5

    .line 128
    iget-object p1, p0, Lcom/narvii/util/debug/DebugService;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 129
    invoke-direct {p0}, Lcom/narvii/util/debug/DebugService;->restartApp()V

    :cond_5
    const-string p1, "FPS"

    .line 132
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 133
    invoke-static {}, Lcom/codemonkeylabs/fpslibrary/TinyDancer;->create()Lcom/codemonkeylabs/fpslibrary/TinyDancerBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/util/debug/DebugService;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/codemonkeylabs/fpslibrary/TinyDancerBuilder;->show(Landroid/content/Context;)V

    .line 134
    iput-boolean v1, p0, Lcom/narvii/util/debug/DebugService;->showingFPS:Z

    :cond_6
    const-string p1, "Hide FPS"

    .line 136
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 137
    iget-object p1, p0, Lcom/narvii/util/debug/DebugService;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/codemonkeylabs/fpslibrary/TinyDancer;->hide(Landroid/content/Context;)V

    .line 138
    iput-boolean v2, p0, Lcom/narvii/util/debug/DebugService;->showingFPS:Z

    :cond_7
    const-string p1, "Enable Verbose Log"

    .line 141
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string/jumbo v0, "verboseLog"

    if-eqz p1, :cond_8

    .line 142
    iget-object p1, p0, Lcom/narvii/util/debug/DebugService;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_8
    const-string p1, "Disable Verbose Log"

    .line 145
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 146
    iget-object p1, p0, Lcom/narvii/util/debug/DebugService;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_9
    return-void
.end method

.method public takeScreenshot()Landroid/graphics/Bitmap;
    .locals 5

    .line 195
    iget-object v0, p0, Lcom/narvii/util/debug/DebugService;->topActivity:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    :goto_0
    if-eqz v0, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    const/16 v3, 0x21c

    const/16 v4, 0x3c0

    .line 198
    :try_start_0
    invoke-static {v0, v2, v3, v4}, Lcom/narvii/util/image/Screenshot;->takeScreenshot(Landroid/app/Activity;FII)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const-string v2, "fail to take screenshot"

    .line 200
    invoke-static {v2, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-object v1
.end method
