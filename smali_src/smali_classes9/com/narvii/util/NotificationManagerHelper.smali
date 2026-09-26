.class public Lcom/narvii/util/NotificationManagerHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CHECK_OP_NO_THROW:Ljava/lang/String; = "checkOpNoThrow"

.field private static final OP_POST_NOTIFICATION:Ljava/lang/String; = "OP_POST_NOTIFICATION"


# instance fields
.field context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/util/NotificationManagerHelper;->context:Landroid/content/Context;

    .line 6
    return-void
.end method


# virtual methods
.method public areNotificationChannelEnabled(Ljava/lang/String;)Z
    .locals 2

    .line 1
    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    .line 4
    const/16 v1, 0x1a

    .line 5
    .line 6
    if-lt v0, v1, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/util/NotificationManagerHelper;->context:Landroid/content/Context;

    .line 9
    .line 10
    const-string v1, "notification"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    check-cast v0, Landroid/app/NotificationManager;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/narvii/util/NotificationManagerHelper;->areNotificationsEnabled()Z

    .line 20
    move-result v1

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    .line 25
    invoke-static {v0, p1}, Landroidx/browser/trusted/b;->a(Landroid/app/NotificationManager;Ljava/lang/String;)Landroid/app/NotificationChannel;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    .line 29
    invoke-static {p1}, Landroidx/browser/trusted/c;->a(Landroid/app/NotificationChannel;)I

    .line 30
    move-result p1

    .line 31
    .line 32
    if-eqz p1, :cond_0

    .line 33
    const/4 p1, 0x1

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 p1, 0x0

    .line 36
    :goto_0
    return p1

    .line 37
    .line 38
    .line 39
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/util/NotificationManagerHelper;->areNotificationsEnabled()Z

    .line 40
    move-result p1

    .line 41
    return p1
.end method

.method public areNotificationsEnabled()Z
    .locals 11

    .line 1
    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    .line 4
    const/16 v1, 0x18

    .line 5
    .line 6
    if-lt v0, v1, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/util/NotificationManagerHelper;->context:Landroid/content/Context;

    .line 9
    .line 10
    const-string v1, "notification"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    check-cast v0, Landroid/app/NotificationManager;

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Landroidx/core/app/g1;->a(Landroid/app/NotificationManager;)Z

    .line 20
    move-result v0

    .line 21
    return v0

    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Lcom/narvii/util/NotificationManagerHelper;->context:Landroid/content/Context;

    .line 24
    .line 25
    const-string v1, "appops"

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    check-cast v0, Landroid/app/AppOpsManager;

    .line 32
    .line 33
    iget-object v1, p0, Lcom/narvii/util/NotificationManagerHelper;->context:Landroid/content/Context;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 37
    move-result-object v1

    .line 38
    .line 39
    iget-object v2, p0, Lcom/narvii/util/NotificationManagerHelper;->context:Landroid/content/Context;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 43
    move-result-object v2

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 47
    move-result-object v2

    .line 48
    .line 49
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 50
    const/4 v3, 0x1

    .line 51
    .line 52
    :try_start_0
    const-class v4, Landroid/app/AppOpsManager;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 56
    move-result-object v4

    .line 57
    .line 58
    .line 59
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 60
    move-result-object v4

    .line 61
    .line 62
    const-string v5, "checkOpNoThrow"

    .line 63
    const/4 v6, 0x3

    .line 64
    .line 65
    new-array v7, v6, [Ljava/lang/Class;

    .line 66
    .line 67
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 68
    const/4 v9, 0x0

    .line 69
    .line 70
    aput-object v8, v7, v9

    .line 71
    .line 72
    aput-object v8, v7, v3

    .line 73
    .line 74
    const-class v8, Ljava/lang/String;

    .line 75
    const/4 v10, 0x2

    .line 76
    .line 77
    aput-object v8, v7, v10

    .line 78
    .line 79
    .line 80
    invoke-virtual {v4, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 81
    move-result-object v5

    .line 82
    .line 83
    const-string v7, "OP_POST_NOTIFICATION"

    .line 84
    .line 85
    .line 86
    invoke-virtual {v4, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 87
    move-result-object v4

    .line 88
    .line 89
    const-class v7, Ljava/lang/Integer;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v4, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    move-result-object v4

    .line 94
    .line 95
    check-cast v4, Ljava/lang/Integer;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 99
    move-result v4

    .line 100
    .line 101
    new-array v6, v6, [Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 105
    move-result-object v4

    .line 106
    .line 107
    aput-object v4, v6, v9

    .line 108
    .line 109
    .line 110
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 111
    move-result-object v1

    .line 112
    .line 113
    aput-object v1, v6, v3

    .line 114
    .line 115
    aput-object v2, v6, v10

    .line 116
    .line 117
    .line 118
    invoke-virtual {v5, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    move-result-object v0

    .line 120
    .line 121
    check-cast v0, Ljava/lang/Integer;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 125
    move-result v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    .line 127
    if-nez v0, :cond_1

    .line 128
    goto :goto_0

    .line 129
    :cond_1
    move v3, v9

    .line 130
    :catch_0
    :goto_0
    return v3
.end method

.method public getNotificationSettingIntent()Landroid/content/Intent;
    .locals 3

    .line 1
    .line 2
    new-instance v0, Landroid/content/Intent;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 6
    .line 7
    const-string v1, "com.android.settings"

    .line 8
    .line 9
    const-string v2, "com.android.settings.Settings$AppNotificationSettingsActivity"

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/narvii/util/NotificationManagerHelper;->context:Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    const-string v2, "app_package"

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 24
    .line 25
    iget-object v1, p0, Lcom/narvii/util/NotificationManagerHelper;->context:Landroid/content/Context;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 32
    .line 33
    const-string v2, "app_uid"

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 37
    .line 38
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 39
    .line 40
    const/16 v2, 0x1a

    .line 41
    .line 42
    if-lt v1, v2, :cond_0

    .line 43
    .line 44
    iget-object v1, p0, Lcom/narvii/util/NotificationManagerHelper;->context:Landroid/content/Context;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 48
    move-result-object v1

    .line 49
    .line 50
    const-string v2, "android.provider.extra.APP_PACKAGE"

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    :cond_0
    return-object v0
.end method

.method public isNotificationSettingAvailable()Z
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/NotificationManagerHelper;->context:Landroid/content/Context;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/util/NotificationManagerHelper;->getNotificationSettingIntent()Landroid/content/Intent;

    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    const/4 v2, 0x1

    .line 19
    :cond_0
    return v2
.end method
