.class public Lcom/narvii/util/crashlytics/DevLogger;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/log/Logger;


# instance fields
.field private list:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/narvii/util/log/LogEntry;",
            ">;"
        }
    .end annotation
.end field

.field private size:I

.field private time0:J


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput p1, p0, Lcom/narvii/util/crashlytics/DevLogger;->size:I

    .line 6
    .line 7
    .line 8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 9
    move-result-wide v0

    .line 10
    .line 11
    iput-wide v0, p0, Lcom/narvii/util/crashlytics/DevLogger;->time0:J

    .line 12
    .line 13
    new-instance p1, Ljava/util/LinkedList;

    .line 14
    .line 15
    .line 16
    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    .line 17
    .line 18
    iput-object p1, p0, Lcom/narvii/util/crashlytics/DevLogger;->list:Ljava/util/LinkedList;

    .line 19
    return-void
.end method

.method private onError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x1

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-static {p1, p2, v0}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/narvii/util/NVToast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    :catch_0
    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 18
    .line 19
    if-nez p3, :cond_0

    .line 20
    .line 21
    .line 22
    invoke-static {p2}, Lcom/narvii/util/Log;->msgException(Ljava/lang/String;)Ljava/lang/Exception;

    .line 23
    move-result-object p3

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-static {v0}, Lcom/narvii/notification/channel/NotificationChannelHelper;->setAlertChannel(Landroidx/core/app/NotificationCompat$Builder;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p2}, Landroidx/core/app/NotificationCompat$Builder;->E(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 30
    .line 31
    new-instance p2, Ljava/io/StringWriter;

    .line 32
    .line 33
    .line 34
    invoke-direct {p2}, Ljava/io/StringWriter;-><init>()V

    .line 35
    .line 36
    new-instance v1, Ljava/io/PrintWriter;

    .line 37
    .line 38
    .line 39
    invoke-direct {v1, p2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p3, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    .line 46
    move-result-object p3

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, p3}, Landroidx/core/app/NotificationCompat$Builder;->D(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 50
    .line 51
    sget p3, Lcom/narvii/lib/R$drawable;->ic_stat_notification_err:I

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, p3}, Landroidx/core/app/NotificationCompat$Builder;->a0(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 55
    .line 56
    new-instance p3, Landroidx/core/app/NotificationCompat$BigTextStyle;

    .line 57
    .line 58
    .line 59
    invoke-direct {p3, v0}, Landroidx/core/app/NotificationCompat$BigTextStyle;-><init>(Landroidx/core/app/NotificationCompat$Builder;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    .line 63
    move-result-object v1

    .line 64
    .line 65
    .line 66
    invoke-virtual {p3, v1}, Landroidx/core/app/NotificationCompat$BigTextStyle;->x(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, p3}, Landroidx/core/app/NotificationCompat$Builder;->f0(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    .line 70
    .line 71
    new-instance p3, Landroid/content/Intent;

    .line 72
    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .line 78
    const-string v2, "ndc://fragment/"

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    const-class v2, Lcom/narvii/util/debug/ShowDebugTextFragment;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 87
    move-result-object v2

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    move-result-object v1

    .line 95
    .line 96
    .line 97
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 98
    move-result-object v1

    .line 99
    .line 100
    const-string v2, "android.intent.action.VIEW"

    .line 101
    .line 102
    .line 103
    invoke-direct {p3, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 104
    .line 105
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    .line 109
    move-result-object p2

    .line 110
    .line 111
    .line 112
    invoke-direct {v1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    const-string p2, "\n\n"

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0, v1}, Lcom/narvii/util/crashlytics/DevLogger;->appendTo(Ljava/lang/StringBuilder;)V

    .line 121
    .line 122
    .line 123
    const-string/jumbo p2, "text"

    .line 124
    .line 125
    .line 126
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    move-result-object v1

    .line 128
    .line 129
    .line 130
    invoke-virtual {p3, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    .line 131
    goto :goto_0

    .line 132
    :catch_1
    move-exception p2

    .line 133
    .line 134
    const-string v1, "narvii"

    .line 135
    .line 136
    const-string v2, "OutOfMemory when build error log"

    .line 137
    .line 138
    .line 139
    invoke-static {v1, v2, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 140
    .line 141
    :goto_0
    const/high16 p2, 0x10000000

    .line 142
    .line 143
    .line 144
    invoke-virtual {p3, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 145
    .line 146
    .line 147
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 148
    move-result-object p2

    .line 149
    .line 150
    const-string v1, "navigator"

    .line 151
    .line 152
    .line 153
    invoke-virtual {p2, v1}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 154
    move-result-object p2

    .line 155
    .line 156
    check-cast p2, Lcom/narvii/navigator/Navigator;

    .line 157
    .line 158
    .line 159
    invoke-interface {p2, p3}, Lcom/narvii/navigator/Navigator;->intentMapping(Landroid/content/Intent;)Landroid/content/Intent;

    .line 160
    move-result-object p2

    .line 161
    .line 162
    sget-object p3, Lcom/narvii/util/PendingIntentUtils;->INSTANCE:Lcom/narvii/util/PendingIntentUtils;

    .line 163
    .line 164
    const/high16 v1, 0x8000000

    .line 165
    .line 166
    .line 167
    invoke-virtual {p3, v1}, Lcom/narvii/util/PendingIntentUtils;->getCurrentImmutableFlag(I)I

    .line 168
    move-result p3

    .line 169
    const/4 v1, 0x0

    .line 170
    .line 171
    .line 172
    invoke-static {p1, v1, p2, p3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 173
    move-result-object p2

    .line 174
    .line 175
    .line 176
    invoke-virtual {v0, p2}, Landroidx/core/app/NotificationCompat$Builder;->C(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 177
    .line 178
    const-string p2, "notification"

    .line 179
    .line 180
    .line 181
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 182
    move-result-object p1

    .line 183
    .line 184
    check-cast p1, Landroid/app/NotificationManager;

    .line 185
    .line 186
    .line 187
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 188
    move-result-wide p2

    .line 189
    .line 190
    const-wide/16 v1, 0x2710

    .line 191
    rem-long/2addr p2, v1

    .line 192
    long-to-int p2, p2

    .line 193
    .line 194
    .line 195
    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->n()Landroid/app/Notification;

    .line 196
    move-result-object p3

    .line 197
    .line 198
    .line 199
    invoke-virtual {p1, p2, p3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 200
    return-void
.end method

.method public static prefs(Lcom/narvii/app/NVContext;)Ljava/lang/String;
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 13
    move-result-object p0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 17
    move-result-object p0

    .line 18
    .line 19
    new-instance v1, Ljava/io/File;

    .line 20
    .line 21
    const-string v2, "shared_prefs"

    .line 22
    .line 23
    .line 24
    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 28
    move-result-object p0

    .line 29
    array-length v1, p0

    .line 30
    const/4 v2, 0x0

    .line 31
    .line 32
    :goto_0
    if-ge v2, v1, :cond_0

    .line 33
    .line 34
    aget-object v3, p0, v2

    .line 35
    .line 36
    new-instance v4, Ljava/io/FileInputStream;

    .line 37
    .line 38
    .line 39
    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v4}, Ljava/io/FileInputStream;->available()I

    .line 43
    move-result v5

    .line 44
    .line 45
    new-array v5, v5, [B

    .line 46
    .line 47
    .line 48
    invoke-virtual {v4, v5}, Ljava/io/FileInputStream;->read([B)I

    .line 49
    .line 50
    .line 51
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 52
    .line 53
    new-instance v4, Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 60
    move-result-object v3

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    const-string v3, ":\n"

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    const-string v3, "\n\n"

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .line 78
    add-int/lit8 v2, v2, 0x1

    .line 79
    goto :goto_0

    .line 80
    .line 81
    .line 82
    :catch_0
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    move-result-object p0

    .line 84
    return-object p0
.end method

.method public static summary(Lcom/narvii/app/NVContext;)Ljava/lang/String;
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    new-instance v1, Lcom/narvii/util/PackageUtils;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1, v0}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    const-string v3, "appName: "

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/narvii/util/PackageUtils;->getAppName()Ljava/lang/String;

    .line 23
    move-result-object v3

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const/16 v3, 0xa

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    sget-boolean v4, Lcom/narvii/app/NVApplication;->DEBUG:Z

    .line 34
    .line 35
    if-eqz v4, :cond_0

    .line 36
    .line 37
    const-string v4, "packageName: "

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    :cond_0
    const-string v0, "appVersion: "

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Lcom/narvii/util/PackageUtils;->getVersionName()Ljava/lang/String;

    .line 59
    move-result-object v0

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    const-string v0, "androidApi: "

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    const-string v0, "device: "

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    const-string v0, " ("

    .line 91
    .line 92
    .line 93
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    const-string v0, ")\n"

    .line 101
    .line 102
    .line 103
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string/jumbo v0, "userAgent: "

    .line 107
    .line 108
    .line 109
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    const-string v0, "http.agent"

    .line 112
    .line 113
    .line 114
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 115
    move-result-object v0

    .line 116
    .line 117
    .line 118
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    const-string v0, "account"

    .line 124
    .line 125
    .line 126
    invoke-interface {p0, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 127
    move-result-object v0

    .line 128
    .line 129
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 133
    move-result v1

    .line 134
    .line 135
    if-eqz v1, :cond_1

    .line 136
    .line 137
    .line 138
    const-string/jumbo v1, "userId: "

    .line 139
    .line 140
    .line 141
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 145
    move-result-object v1

    .line 146
    .line 147
    .line 148
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    :cond_1
    const-string v1, "auid"

    .line 154
    .line 155
    .line 156
    invoke-interface {p0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 157
    move-result-object v1

    .line 158
    .line 159
    check-cast v1, Lcom/narvii/account/AuidService;

    .line 160
    .line 161
    const-string v4, "auid: "

    .line 162
    .line 163
    .line 164
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v1}, Lcom/narvii/account/AuidService;->getAuid()Ljava/lang/String;

    .line 168
    move-result-object v1

    .line 169
    .line 170
    .line 171
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    new-instance v1, Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 180
    .line 181
    sget-object v4, La0/a;->n:Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    const-string v4, ": "

    .line 187
    .line 188
    .line 189
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 193
    move-result-object v1

    .line 194
    .line 195
    .line 196
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getDeviceId()Ljava/lang/String;

    .line 200
    move-result-object v1

    .line 201
    .line 202
    .line 203
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getKeychainStatus()I

    .line 210
    move-result v1

    .line 211
    .line 212
    if-eqz v1, :cond_2

    .line 213
    .line 214
    const-string v1, "keychainStatus: "

    .line 215
    .line 216
    .line 217
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getKeychainStatus()I

    .line 221
    move-result v1

    .line 222
    .line 223
    .line 224
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    :cond_2
    sget-boolean v1, Lcom/narvii/app/NVApplication;->DEBUG:Z

    .line 230
    .line 231
    if-eqz v1, :cond_3

    .line 232
    .line 233
    const-string v1, "email: "

    .line 234
    .line 235
    .line 236
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getEmail()Ljava/lang/String;

    .line 240
    move-result-object v1

    .line 241
    .line 242
    .line 243
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    :cond_3
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 250
    move-result v1

    .line 251
    const/4 v4, 0x0

    .line 252
    .line 253
    if-eqz v1, :cond_4

    .line 254
    .line 255
    const-string v1, "sid: "

    .line 256
    .line 257
    .line 258
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getPrefs()Landroid/content/SharedPreferences;

    .line 262
    move-result-object v0

    .line 263
    .line 264
    const-string v1, "sid"

    .line 265
    .line 266
    .line 267
    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 268
    move-result-object v0

    .line 269
    .line 270
    .line 271
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    :cond_4
    invoke-interface {p0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 278
    move-result-object v0

    .line 279
    .line 280
    const-string v1, "push"

    .line 281
    const/4 v5, 0x0

    .line 282
    .line 283
    .line 284
    invoke-virtual {v0, v1, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 285
    move-result-object v0

    .line 286
    .line 287
    const-string v1, "gcmToken: "

    .line 288
    .line 289
    .line 290
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    const-string v1, "gcmToken"

    .line 293
    .line 294
    .line 295
    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 296
    move-result-object v0

    .line 297
    .line 298
    .line 299
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    .line 302
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    const-string v0, "ab: "

    .line 305
    .line 306
    .line 307
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    .line 309
    .line 310
    invoke-static {p0, v2}, Lcom/narvii/util/ABTest2;->allTags(Lcom/narvii/app/NVContext;Ljava/lang/StringBuilder;)Z

    .line 311
    .line 312
    .line 313
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 314
    .line 315
    const-string v0, "config"

    .line 316
    .line 317
    .line 318
    invoke-interface {p0, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 319
    move-result-object p0

    .line 320
    .line 321
    check-cast p0, Lcom/narvii/config/ConfigService;

    .line 322
    .line 323
    .line 324
    invoke-virtual {p0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 325
    move-result v0

    .line 326
    .line 327
    if-lez v0, :cond_5

    .line 328
    .line 329
    const-string v0, "communityId: "

    .line 330
    .line 331
    .line 332
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    .line 334
    .line 335
    invoke-virtual {p0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 336
    move-result p0

    .line 337
    .line 338
    .line 339
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 340
    .line 341
    .line 342
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 343
    .line 344
    .line 345
    :cond_5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 346
    move-result-object p0

    .line 347
    return-object p0
.end method


# virtual methods
.method public declared-synchronized appendTo(Ljava/lang/StringBuilder;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/narvii/util/crashlytics/DevLogger;->list:Ljava/util/LinkedList;

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    .line 10
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    move-result v1

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    check-cast v1, Lcom/narvii/util/log/LogEntry;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, p1}, Lcom/narvii/util/log/LogEntry;->appendTo(Ljava/lang/StringBuilder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    monitor-exit p0

    .line 27
    return-void

    .line 28
    :goto_1
    monitor-exit p0

    .line 29
    throw p1
.end method

.method public log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/narvii/util/crashlytics/DevLogger;->list:Ljava/util/LinkedList;

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    .line 7
    move-result v0

    .line 8
    .line 9
    iget v1, p0, Lcom/narvii/util/crashlytics/DevLogger;->size:I

    .line 10
    .line 11
    if-lt v0, v1, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/narvii/util/crashlytics/DevLogger;->list:Ljava/util/LinkedList;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    check-cast v0, Lcom/narvii/util/log/LogEntry;

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    goto :goto_1

    .line 23
    .line 24
    :cond_0
    new-instance v0, Lcom/narvii/util/log/LogEntry;

    .line 25
    .line 26
    .line 27
    invoke-direct {v0}, Lcom/narvii/util/log/LogEntry;-><init>()V

    .line 28
    .line 29
    .line 30
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 31
    move-result-wide v1

    .line 32
    .line 33
    iget-wide v3, p0, Lcom/narvii/util/crashlytics/DevLogger;->time0:J

    .line 34
    sub-long/2addr v1, v3

    .line 35
    .line 36
    iput-wide v1, v0, Lcom/narvii/util/log/LogEntry;->time:J

    .line 37
    .line 38
    iput p1, v0, Lcom/narvii/util/log/LogEntry;->level:I

    .line 39
    .line 40
    iput-object p2, v0, Lcom/narvii/util/log/LogEntry;->tag:Ljava/lang/String;

    .line 41
    .line 42
    iput-object p3, v0, Lcom/narvii/util/log/LogEntry;->message:Ljava/lang/String;

    .line 43
    .line 44
    iput-object p4, v0, Lcom/narvii/util/log/LogEntry;->error:Ljava/lang/Throwable;

    .line 45
    .line 46
    iget-object v1, p0, Lcom/narvii/util/crashlytics/DevLogger;->list:Ljava/util/LinkedList;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 50
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    const/4 v0, 0x6

    .line 52
    .line 53
    if-ne p1, v0, :cond_1

    .line 54
    .line 55
    .line 56
    invoke-direct {p0, p2, p3, p4}, Lcom/narvii/util/crashlytics/DevLogger;->onError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 57
    :cond_1
    return-void

    .line 58
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    throw p1
.end method
