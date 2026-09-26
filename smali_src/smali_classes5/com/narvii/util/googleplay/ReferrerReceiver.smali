.class public Lcom/narvii/util/googleplay/ReferrerReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    return-void
.end method

.method protected static query(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    return-object v0

    .line 5
    .line 6
    .line 7
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    move v3, v2

    .line 11
    .line 12
    :goto_0
    const/16 v4, 0x26

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->indexOf(II)I

    .line 16
    move-result v4

    .line 17
    const/4 v5, -0x1

    .line 18
    .line 19
    if-eq v4, v5, :cond_1

    .line 20
    move v6, v4

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    move v6, v1

    .line 23
    .line 24
    :goto_1
    const/16 v7, 0x3d

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v7, v3}, Ljava/lang/String;->indexOf(II)I

    .line 28
    move-result v7

    .line 29
    .line 30
    if-gt v7, v6, :cond_2

    .line 31
    .line 32
    if-ne v7, v5, :cond_3

    .line 33
    :cond_2
    move v7, v6

    .line 34
    .line 35
    :cond_3
    sub-int v8, v7, v3

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 39
    move-result v9

    .line 40
    .line 41
    if-ne v8, v9, :cond_5

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 45
    move-result v8

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, v3, p1, v2, v8}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    .line 49
    move-result v3

    .line 50
    .line 51
    if-eqz v3, :cond_5

    .line 52
    .line 53
    if-ne v7, v6, :cond_4

    .line 54
    .line 55
    const-string p0, ""

    .line 56
    return-object p0

    .line 57
    .line 58
    :cond_4
    add-int/lit8 v7, v7, 0x1

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 62
    move-result-object p0

    .line 63
    .line 64
    .line 65
    :try_start_0
    const-string/jumbo p1, "utf-8"

    .line 66
    .line 67
    .line 68
    invoke-static {p0, p1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 69
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    return-object p0

    .line 71
    :catch_0
    return-object v0

    .line 72
    .line 73
    :cond_5
    if-eq v4, v5, :cond_6

    .line 74
    .line 75
    add-int/lit8 v3, v4, 0x1

    .line 76
    goto :goto_0

    .line 77
    :cond_6
    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 1
    .line 2
    const-string v0, "referrer"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object p2

    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    const-string v1, "referrer: "

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    .line 26
    invoke-static {v0}, Lcom/narvii/util/Log;->i(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 30
    move-result v0

    .line 31
    .line 32
    if-nez v0, :cond_0

    .line 33
    const/4 v0, 0x4

    .line 34
    .line 35
    const-string v1, "narvii.referrer"

    .line 36
    .line 37
    .line 38
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 39
    move-result v0

    .line 40
    .line 41
    if-eqz v0, :cond_0

    .line 42
    .line 43
    .line 44
    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    new-instance v0, Ljava/io/File;

    .line 47
    .line 48
    .line 49
    invoke-static {p1}, Lcom/narvii/util/Utils;->getAvailableFileDir(Landroid/content/Context;)Ljava/io/File;

    .line 50
    move-result-object p1

    .line 51
    .line 52
    const-string v1, "referrer.txt"

    .line 53
    .line 54
    .line 55
    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    .line 59
    move-result p1

    .line 60
    .line 61
    if-eqz p1, :cond_0

    .line 62
    .line 63
    :try_start_0
    new-instance p1, Ljava/io/FileOutputStream;

    .line 64
    .line 65
    .line 66
    invoke-direct {p1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    .line 70
    move-result-object v0

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .line 78
    :catch_0
    :cond_0
    const-string p1, "amino_tracking_id"

    .line 79
    .line 80
    .line 81
    invoke-static {p2, p1}, Lcom/narvii/util/googleplay/ReferrerReceiver;->query(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 82
    move-result-object p2

    .line 83
    .line 84
    .line 85
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 86
    move-result v0

    .line 87
    .line 88
    if-nez v0, :cond_1

    .line 89
    .line 90
    .line 91
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 92
    move-result-object v0

    .line 93
    .line 94
    .line 95
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 96
    move-result-object v1

    .line 97
    .line 98
    const-string v2, "prefs"

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1, v2}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 102
    move-result-object v1

    .line 103
    .line 104
    check-cast v1, Landroid/content/SharedPreferences;

    .line 105
    .line 106
    .line 107
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 108
    move-result-object v1

    .line 109
    .line 110
    .line 111
    const-string/jumbo v2, "trackingId"

    .line 112
    .line 113
    .line 114
    invoke-interface {v1, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 115
    move-result-object v1

    .line 116
    .line 117
    .line 118
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 119
    .line 120
    const-string v1, "statistics"

    .line 121
    .line 122
    .line 123
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 124
    move-result-object v0

    .line 125
    .line 126
    check-cast v0, Lcom/narvii/util/statistics/StatisticsService;

    .line 127
    .line 128
    .line 129
    invoke-interface {v0, p1, p2}, Lcom/narvii/util/statistics/StatisticsService;->setDeviceProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 130
    :cond_1
    return-void
.end method
