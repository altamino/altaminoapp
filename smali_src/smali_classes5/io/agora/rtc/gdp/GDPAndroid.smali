.class public Lio/agora/rtc/gdp/GDPAndroid;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CPU_FILTER:Ljava/io/FileFilter;

.field private static final CPU_TEMP_FILE_PATHS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEVICEINFO_UNKNOWN:I = -0x1

.field private static TAG:Ljava/lang/String; = "GDPAndroid"


# instance fields
.field private mAppContext:Landroid/content/Context;

.field private mGpuRenderer:Ljava/lang/String;

.field private mGpuVendor:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .line 1
    .line 2
    new-instance v0, Lio/agora/rtc/gdp/GDPAndroid$1;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lio/agora/rtc/gdp/GDPAndroid$1;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lio/agora/rtc/gdp/GDPAndroid;->CPU_FILTER:Ljava/io/FileFilter;

    .line 8
    .line 9
    const-string v1, "/sys/devices/system/cpu/cpu0/cpufreq/cpu_temp"

    .line 10
    .line 11
    const-string v2, "/sys/devices/system/cpu/cpu0/cpufreq/FakeShmoo_cpu_temp"

    .line 12
    .line 13
    const-string v3, "/sys/class/thermal/thermal_zone0/temp"

    .line 14
    .line 15
    const-string v4, "/sys/class/i2c-adapter/i2c-4/4-004c/temperature"

    .line 16
    .line 17
    const-string v5, "/sys/devices/platform/tegra-i2c.3/i2c-4/4-004c/temperature"

    .line 18
    .line 19
    const-string v6, "/sys/devices/platform/omap/omap_temp_sensor.0/temperature"

    .line 20
    .line 21
    const-string v7, "/sys/devices/platform/tegra_tmon/temp1_input"

    .line 22
    .line 23
    const-string v8, "/sys/kernel/debug/tegra_thermal/temp_tj"

    .line 24
    .line 25
    const-string v9, "/sys/devices/platform/s5p-tmu/temperature"

    .line 26
    .line 27
    const-string v10, "/sys/class/thermal/thermal_zone1/temp"

    .line 28
    .line 29
    const-string v11, "/sys/class/hwmon/hwmon0/device/temp1_input"

    .line 30
    .line 31
    const-string v12, "/sys/devices/virtual/thermal/thermal_zone1/temp"

    .line 32
    .line 33
    const-string v13, "/sys/devices/virtual/thermal/thermal_zone0/temp"

    .line 34
    .line 35
    const-string v14, "/sys/class/thermal/thermal_zone3/temp"

    .line 36
    .line 37
    const-string v15, "/sys/class/thermal/thermal_zone4/temp"

    .line 38
    .line 39
    const-string v16, "/sys/class/hwmon/hwmonX/temp1_input"

    .line 40
    .line 41
    const-string v17, "/sys/devices/platform/s5p-tmu/curr_temp"

    .line 42
    .line 43
    .line 44
    filled-new-array/range {v1 .. v17}, [Ljava/lang/String;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    .line 48
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    sput-object v0, Lio/agora/rtc/gdp/GDPAndroid;->CPU_TEMP_FILE_PATHS:Ljava/util/List;

    .line 52
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput-object v0, p0, Lio/agora/rtc/gdp/GDPAndroid;->mAppContext:Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    const-string/jumbo v0, "unkown"

    .line 10
    .line 11
    iput-object v0, p0, Lio/agora/rtc/gdp/GDPAndroid;->mGpuVendor:Ljava/lang/String;

    .line 12
    .line 13
    iput-object v0, p0, Lio/agora/rtc/gdp/GDPAndroid;->mGpuRenderer:Ljava/lang/String;

    .line 14
    return-void
.end method

.method private static extractValue([BI)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "buffer",
            "index"
        }
    .end annotation

    .line 1
    :goto_0
    array-length v0, p0

    .line 2
    .line 3
    if-ge p1, v0, :cond_2

    .line 4
    .line 5
    aget-byte v0, p0, p1

    .line 6
    .line 7
    const/16 v1, 0xa

    .line 8
    .line 9
    if-eq v0, v1, :cond_2

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Ljava/lang/Character;->isDigit(I)Z

    .line 13
    move-result v0

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    add-int/lit8 v0, p1, 0x1

    .line 18
    :goto_1
    array-length v1, p0

    .line 19
    .line 20
    if-ge v0, v1, :cond_0

    .line 21
    .line 22
    aget-byte v1, p0, v0

    .line 23
    .line 24
    .line 25
    invoke-static {v1}, Ljava/lang/Character;->isDigit(I)Z

    .line 26
    move-result v1

    .line 27
    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    add-int/lit8 v0, v0, 0x1

    .line 31
    goto :goto_1

    .line 32
    .line 33
    :cond_0
    new-instance v1, Ljava/lang/String;

    .line 34
    const/4 v2, 0x0

    .line 35
    sub-int/2addr v0, p1

    .line 36
    .line 37
    .line 38
    invoke-direct {v1, p0, v2, p1, v0}, Ljava/lang/String;-><init>([BIII)V

    .line 39
    .line 40
    .line 41
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 42
    move-result p0

    .line 43
    return p0

    .line 44
    .line 45
    :cond_1
    add-int/lit8 p1, p1, 0x1

    .line 46
    goto :goto_0

    .line 47
    :cond_2
    const/4 p0, -0x1

    .line 48
    return p0
.end method

.method private gatherGlInfo()V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lio/agora/rtc/gdp/EglCore;

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x2

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lio/agora/rtc/gdp/EglCore;-><init>(Landroid/opengl/EGLContext;I)V

    .line 8
    .line 9
    new-instance v1, Lio/agora/rtc/gdp/OffscreenSurface;

    .line 10
    const/4 v2, 0x1

    .line 11
    .line 12
    .line 13
    invoke-direct {v1, v0, v2, v2}, Lio/agora/rtc/gdp/OffscreenSurface;-><init>(Lio/agora/rtc/gdp/EglCore;II)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Lio/agora/rtc/gdp/EglSurfaceBase;->makeCurrent()V

    .line 17
    .line 18
    const/16 v2, 0x1f00

    .line 19
    .line 20
    .line 21
    invoke-static {v2}, Landroid/opengl/GLES20;->glGetString(I)Ljava/lang/String;

    .line 22
    move-result-object v2

    .line 23
    .line 24
    iput-object v2, p0, Lio/agora/rtc/gdp/GDPAndroid;->mGpuVendor:Ljava/lang/String;

    .line 25
    .line 26
    const/16 v2, 0x1f01

    .line 27
    .line 28
    .line 29
    invoke-static {v2}, Landroid/opengl/GLES20;->glGetString(I)Ljava/lang/String;

    .line 30
    move-result-object v2

    .line 31
    .line 32
    iput-object v2, p0, Lio/agora/rtc/gdp/GDPAndroid;->mGpuRenderer:Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Lio/agora/rtc/gdp/OffscreenSurface;->release()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Lio/agora/rtc/gdp/EglCore;->release()V

    .line 39
    return-void
.end method

.method private getBatteryLevel()I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/gdp/GDPAndroid;->mAppContext:Landroid/content/Context;

    .line 3
    .line 4
    const-string v1, "batterymanager"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    check-cast v0, Landroid/os/BatteryManager;

    .line 11
    const/4 v1, 0x4

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/os/BatteryManager;->getIntProperty(I)I

    .line 15
    move-result v0

    .line 16
    return v0
.end method

.method private static getCPUMaxFreqKHz()I
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, -0x1

    .line 3
    move v2, v0

    .line 4
    move v3, v1

    .line 5
    .line 6
    .line 7
    :goto_0
    :try_start_0
    invoke-static {}, Lio/agora/rtc/gdp/GDPAndroid;->getNumberOfCPUCores()I

    .line 8
    move-result v4

    .line 9
    .line 10
    if-ge v2, v4, :cond_3

    .line 11
    .line 12
    new-instance v4, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    const-string v5, "/sys/devices/system/cpu/cpu"

    .line 18
    .line 19
    .line 20
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v5, "/cpufreq/cpuinfo_max_freq"

    .line 26
    .line 27
    .line 28
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object v4

    .line 33
    .line 34
    new-instance v5, Ljava/io/File;

    .line 35
    .line 36
    .line 37
    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    .line 41
    move-result v4

    .line 42
    .line 43
    if-eqz v4, :cond_2

    .line 44
    .line 45
    .line 46
    invoke-virtual {v5}, Ljava/io/File;->canRead()Z

    .line 47
    move-result v4

    .line 48
    .line 49
    if-eqz v4, :cond_2

    .line 50
    .line 51
    const/16 v4, 0x80

    .line 52
    .line 53
    new-array v6, v4, [B

    .line 54
    .line 55
    new-instance v7, Ljava/io/FileInputStream;

    .line 56
    .line 57
    .line 58
    invoke-direct {v7, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 59
    .line 60
    .line 61
    :try_start_1
    invoke-virtual {v7, v6}, Ljava/io/FileInputStream;->read([B)I

    .line 62
    move v5, v0

    .line 63
    .line 64
    :goto_1
    aget-byte v8, v6, v5

    .line 65
    .line 66
    .line 67
    invoke-static {v8}, Ljava/lang/Character;->isDigit(I)Z

    .line 68
    move-result v8

    .line 69
    .line 70
    if-eqz v8, :cond_0

    .line 71
    .line 72
    if-ge v5, v4, :cond_0

    .line 73
    .line 74
    add-int/lit8 v5, v5, 0x1

    .line 75
    goto :goto_1

    .line 76
    .line 77
    :cond_0
    new-instance v4, Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    invoke-direct {v4, v6, v0, v5}, Ljava/lang/String;-><init>([BII)V

    .line 81
    .line 82
    .line 83
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 84
    move-result v4

    .line 85
    .line 86
    .line 87
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 88
    move-result-object v4

    .line 89
    .line 90
    .line 91
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 92
    move-result v5

    .line 93
    .line 94
    if-le v5, v3, :cond_1

    .line 95
    .line 96
    .line 97
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 98
    move-result v3
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    goto :goto_2

    .line 100
    :catchall_0
    move-exception v0

    .line 101
    goto :goto_3

    .line 102
    .line 103
    .line 104
    :catch_0
    :cond_1
    :goto_2
    :try_start_2
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    .line 105
    goto :goto_4

    .line 106
    .line 107
    .line 108
    :goto_3
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    .line 109
    throw v0

    .line 110
    .line 111
    :cond_2
    :goto_4
    add-int/lit8 v2, v2, 0x1

    .line 112
    goto :goto_0

    .line 113
    .line 114
    :cond_3
    if-ne v3, v1, :cond_5

    .line 115
    .line 116
    new-instance v0, Ljava/io/FileInputStream;

    .line 117
    .line 118
    const-string v2, "/proc/cpuinfo"

    .line 119
    .line 120
    .line 121
    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 122
    .line 123
    :try_start_3
    const-string v2, "cpu MHz"

    .line 124
    .line 125
    .line 126
    invoke-static {v2, v0}, Lio/agora/rtc/gdp/GDPAndroid;->parseFileForValue(Ljava/lang/String;Ljava/io/FileInputStream;)I

    .line 127
    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 128
    .line 129
    mul-int/lit16 v2, v2, 0x3e8

    .line 130
    .line 131
    if-le v2, v3, :cond_4

    .line 132
    move v3, v2

    .line 133
    .line 134
    .line 135
    :cond_4
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 136
    :cond_5
    move v1, v3

    .line 137
    goto :goto_5

    .line 138
    :catchall_1
    move-exception v2

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 142
    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 143
    .line 144
    :catch_1
    :goto_5
    sget-object v0, Lio/agora/rtc/gdp/GDPAndroid;->TAG:Ljava/lang/String;

    .line 145
    .line 146
    new-instance v2, Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    .line 151
    const-string v3, "max freq:"

    .line 152
    .line 153
    .line 154
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    move-result-object v2

    .line 162
    .line 163
    .line 164
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    return v1
.end method

.method private static getCoresFromCPUFileList()I
    .locals 2

    .line 1
    .line 2
    new-instance v0, Ljava/io/File;

    .line 3
    .line 4
    const-string v1, "/sys/devices/system/cpu/"

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    sget-object v1, Lio/agora/rtc/gdp/GDPAndroid;->CPU_FILTER:Ljava/io/FileFilter;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    .line 13
    move-result-object v0

    .line 14
    array-length v0, v0

    .line 15
    return v0
.end method

.method private static getCoresFromFileInfo(Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fileLocation"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    .line 4
    .line 5
    .line 6
    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    .line 8
    :try_start_1
    new-instance p0, Ljava/io/BufferedReader;

    .line 9
    .line 10
    new-instance v0, Ljava/io/InputStreamReader;

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V

    .line 24
    .line 25
    .line 26
    invoke-static {v0}, Lio/agora/rtc/gdp/GDPAndroid;->getCoresFromFileString(Ljava/lang/String;)I

    .line 27
    move-result p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    .line 29
    .line 30
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 31
    :catch_0
    return p0

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    move-object v0, v1

    .line 34
    goto :goto_0

    .line 35
    :catch_1
    move-object v0, v1

    .line 36
    goto :goto_1

    .line 37
    :catchall_1
    move-exception p0

    .line 38
    .line 39
    :goto_0
    if-eqz v0, :cond_0

    .line 40
    .line 41
    .line 42
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 43
    :catch_2
    :cond_0
    throw p0

    .line 44
    .line 45
    :catch_3
    :goto_1
    if-eqz v0, :cond_1

    .line 46
    .line 47
    .line 48
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 49
    :catch_4
    :cond_1
    const/4 p0, -0x1

    .line 50
    return p0
.end method

.method private static getCoresFromFileString(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p0, :cond_1

    .line 3
    .line 4
    const-string v0, "0-[\\d]+$"

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x2

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 16
    move-result-object p0

    .line 17
    .line 18
    .line 19
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 20
    move-result-object p0

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 24
    move-result p0

    .line 25
    .line 26
    add-int/lit8 p0, p0, 0x1

    .line 27
    return p0

    .line 28
    :cond_1
    :goto_0
    const/4 p0, -0x1

    .line 29
    return p0
.end method

.method private static getNumberOfCPUCores()I
    .locals 4

    .line 1
    const/4 v0, -0x1

    .line 2
    .line 3
    :try_start_0
    const-string v1, "/sys/devices/system/cpu/possible"

    .line 4
    .line 5
    .line 6
    invoke-static {v1}, Lio/agora/rtc/gdp/GDPAndroid;->getCoresFromFileInfo(Ljava/lang/String;)I

    .line 7
    move-result v1

    .line 8
    .line 9
    if-ne v1, v0, :cond_0

    .line 10
    .line 11
    const-string v1, "/sys/devices/system/cpu/present"

    .line 12
    .line 13
    .line 14
    invoke-static {v1}, Lio/agora/rtc/gdp/GDPAndroid;->getCoresFromFileInfo(Ljava/lang/String;)I

    .line 15
    move-result v1

    .line 16
    .line 17
    :cond_0
    if-ne v1, v0, :cond_1

    .line 18
    .line 19
    .line 20
    invoke-static {}, Lio/agora/rtc/gdp/GDPAndroid;->getCoresFromCPUFileList()I

    .line 21
    move-result v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    move v0, v1

    .line 24
    .line 25
    :catch_0
    :goto_0
    sget-object v1, Lio/agora/rtc/gdp/GDPAndroid;->TAG:Ljava/lang/String;

    .line 26
    .line 27
    new-instance v2, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    const-string v3, "cores:"

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object v2

    .line 43
    .line 44
    .line 45
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    return v0
.end method

.method private static getTotalMemory(Landroid/content/Context;)J
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "c"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 6
    .line 7
    const-string v1, "activity"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    move-result-object p0

    .line 12
    .line 13
    check-cast p0, Landroid/app/ActivityManager;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 17
    .line 18
    sget-object p0, Lio/agora/rtc/gdp/GDPAndroid;->TAG:Ljava/lang/String;

    .line 19
    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string/jumbo v2, "total mem:"

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    iget-wide v2, v0, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object v1

    .line 39
    .line 40
    .line 41
    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    iget-wide v0, v0, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    .line 44
    return-wide v0
.end method

.method private isEGL14SupportedHere()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private isTemperatureValid(D)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "temp"
        }
    .end annotation

    const-wide/high16 v0, -0x3fc2000000000000L    # -30.0

    cmpl-double v0, p1, v0

    if-ltz v0, :cond_0

    const-wide v0, 0x406f400000000000L    # 250.0

    cmpg-double p1, p1, v0

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private static parseFileForValue(Ljava/lang/String;Ljava/io/FileInputStream;)I
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "textToMatch",
            "stream"
        }
    .end annotation

    .line 1
    .line 2
    const/16 v0, 0x400

    .line 3
    .line 4
    new-array v0, v0, [B

    .line 5
    .line 6
    .line 7
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 8
    move-result p1

    .line 9
    const/4 v1, 0x0

    .line 10
    .line 11
    :goto_0
    if-ge v1, p1, :cond_5

    .line 12
    .line 13
    aget-byte v2, v0, v1

    .line 14
    .line 15
    const/16 v3, 0xa

    .line 16
    .line 17
    if-eq v2, v3, :cond_0

    .line 18
    .line 19
    if-nez v1, :cond_4

    .line 20
    .line 21
    :cond_0
    if-ne v2, v3, :cond_1

    .line 22
    .line 23
    add-int/lit8 v1, v1, 0x1

    .line 24
    :cond_1
    move v2, v1

    .line 25
    .line 26
    :goto_1
    if-ge v2, p1, :cond_4

    .line 27
    .line 28
    sub-int v3, v2, v1

    .line 29
    .line 30
    aget-byte v4, v0, v2

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    .line 34
    move-result v5

    .line 35
    .line 36
    if-eq v4, v5, :cond_2

    .line 37
    goto :goto_2

    .line 38
    .line 39
    .line 40
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 41
    move-result v4

    .line 42
    .line 43
    add-int/lit8 v4, v4, -0x1

    .line 44
    .line 45
    if-ne v3, v4, :cond_3

    .line 46
    .line 47
    .line 48
    invoke-static {v0, v2}, Lio/agora/rtc/gdp/GDPAndroid;->extractValue([BI)I

    .line 49
    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    return p0

    .line 51
    .line 52
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 53
    goto :goto_1

    .line 54
    .line 55
    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 56
    goto :goto_0

    .line 57
    :catch_0
    :cond_5
    const/4 p0, -0x1

    .line 58
    return p0
.end method

.method private readOneLine(Ljava/io/File;)D
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, ""

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 6
    move-result v1

    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    const-wide v2, -0x3f07960000000000L    # -100000.0

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    return-wide v2

    .line 15
    .line 16
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    .line 17
    .line 18
    .line 19
    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 20
    .line 21
    new-instance p1, Ljava/io/InputStreamReader;

    .line 22
    .line 23
    .line 24
    invoke-direct {p1, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 25
    .line 26
    new-instance v4, Ljava/io/BufferedReader;

    .line 27
    .line 28
    .line 29
    invoke-direct {v4, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/io/InputStreamReader;->close()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    goto :goto_0

    .line 44
    :catch_0
    move-exception p1

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 48
    .line 49
    .line 50
    :goto_0
    :try_start_1
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 51
    move-result-wide v2
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 52
    :catch_1
    return-wide v2
.end method


# virtual methods
.method public checkBackground()Z
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/gdp/GDPAndroid;->mAppContext:Landroid/content/Context;

    .line 3
    .line 4
    const-string v1, "activity"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    check-cast v0, Landroid/app/ActivityManager;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 18
    move-result v1

    .line 19
    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    move-result v1

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    .line 33
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    move-result-object v1

    .line 35
    .line 36
    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 37
    .line 38
    iget v1, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    .line 39
    .line 40
    const/16 v2, 0x64

    .line 41
    .line 42
    if-ne v1, v2, :cond_0

    .line 43
    const/4 v0, 0x0

    .line 44
    return v0

    .line 45
    :cond_1
    const/4 v0, 0x1

    .line 46
    return v0
.end method

.method public getBattery()I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lio/agora/rtc/gdp/GDPAndroid;->getBatteryLevel()I

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public getCpuClock()I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lio/agora/rtc/gdp/GDPAndroid;->getCPUMaxFreqKHz()I

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public getCpuCores()I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lio/agora/rtc/gdp/GDPAndroid;->getNumberOfCPUCores()I

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public getCpuTemperature()I
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    :goto_0
    sget-object v1, Lio/agora/rtc/gdp/GDPAndroid;->CPU_TEMP_FILE_PATHS:Ljava/util/List;

    .line 4
    .line 5
    .line 6
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 7
    move-result v2

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    const-wide v3, 0x408f400000000000L    # 1000.0

    .line 13
    .line 14
    if-ge v0, v2, :cond_2

    .line 15
    .line 16
    .line 17
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    check-cast v1, Ljava/lang/String;

    .line 21
    .line 22
    new-instance v2, Ljava/io/File;

    .line 23
    .line 24
    .line 25
    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-direct {p0, v2}, Lio/agora/rtc/gdp/GDPAndroid;->readOneLine(Ljava/io/File;)D

    .line 29
    move-result-wide v5

    .line 30
    .line 31
    .line 32
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 33
    move-result-object v2

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    .line 37
    move-result-wide v5

    .line 38
    .line 39
    .line 40
    invoke-direct {p0, v5, v6}, Lio/agora/rtc/gdp/GDPAndroid;->isTemperatureValid(D)Z

    .line 41
    move-result v5

    .line 42
    .line 43
    const-string v6, "getCpuTemperature valid path:"

    .line 44
    .line 45
    if-eqz v5, :cond_0

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    .line 49
    move-result-wide v7

    .line 50
    .line 51
    sget-object v0, Lio/agora/rtc/gdp/GDPAndroid;->TAG:Ljava/lang/String;

    .line 52
    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    move-result-object v1

    .line 67
    .line 68
    .line 69
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    goto :goto_1

    .line 71
    .line 72
    .line 73
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    .line 74
    move-result-wide v7

    .line 75
    div-double/2addr v7, v3

    .line 76
    .line 77
    .line 78
    invoke-direct {p0, v7, v8}, Lio/agora/rtc/gdp/GDPAndroid;->isTemperatureValid(D)Z

    .line 79
    move-result v5

    .line 80
    .line 81
    if-eqz v5, :cond_1

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    .line 85
    move-result-wide v7

    .line 86
    div-double/2addr v7, v3

    .line 87
    .line 88
    sget-object v0, Lio/agora/rtc/gdp/GDPAndroid;->TAG:Ljava/lang/String;

    .line 89
    .line 90
    new-instance v2, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    move-result-object v1

    .line 104
    .line 105
    .line 106
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    goto :goto_1

    .line 108
    .line 109
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 110
    goto :goto_0

    .line 111
    .line 112
    :cond_2
    const-wide/16 v7, 0x0

    .line 113
    :goto_1
    mul-double/2addr v7, v3

    .line 114
    double-to-int v0, v7

    .line 115
    return v0
.end method

.method public getCpuVendor()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getGpuRenderer()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/agora/rtc/gdp/GDPAndroid;->mGpuRenderer:Ljava/lang/String;

    return-object v0
.end method

.method public getGpuVendor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/agora/rtc/gdp/GDPAndroid;->mGpuVendor:Ljava/lang/String;

    return-object v0
.end method

.method public getOsVersion()I
    .locals 1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method public getRam()I
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/gdp/GDPAndroid;->mAppContext:Landroid/content/Context;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lio/agora/rtc/gdp/GDPAndroid;->getTotalMemory(Landroid/content/Context;)J

    .line 6
    move-result-wide v0

    .line 7
    .line 8
    const-wide/16 v2, 0x400

    .line 9
    div-long/2addr v0, v2

    .line 10
    long-to-int v0, v0

    .line 11
    return v0
.end method

.method public initGDP(Landroid/content/Context;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lio/agora/rtc/gdp/GDPAndroid;->mAppContext:Landroid/content/Context;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lio/agora/rtc/gdp/GDPAndroid;->isEGL14SupportedHere()Z

    .line 6
    move-result p1

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lio/agora/rtc/gdp/GDPAndroid;->gatherGlInfo()V

    .line 12
    :cond_0
    const/4 p1, 0x1

    .line 13
    return p1
.end method
