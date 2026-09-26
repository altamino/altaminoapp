.class public Lcom/google/firebase/crashlytics/internal/common/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/crashlytics/internal/common/i$a;
    }
.end annotation


# static fields
.field static final BUILD_IDS_ARCH_RESOURCE_NAME:Ljava/lang/String; = "com.google.firebase.crashlytics.build_ids_arch"

.field static final BUILD_IDS_BUILD_ID_RESOURCE_NAME:Ljava/lang/String; = "com.google.firebase.crashlytics.build_ids_build_id"

.field static final BUILD_IDS_LIB_NAMES_RESOURCE_NAME:Ljava/lang/String; = "com.google.firebase.crashlytics.build_ids_lib"

.field public static final DEVICE_STATE_BETAOS:I = 0x8

.field public static final DEVICE_STATE_COMPROMISEDLIBRARIES:I = 0x20

.field public static final DEVICE_STATE_DEBUGGERATTACHED:I = 0x4

.field public static final DEVICE_STATE_ISSIMULATOR:I = 0x1

.field public static final DEVICE_STATE_JAILBROKEN:I = 0x2

.field public static final DEVICE_STATE_VENDORINTERNAL:I = 0x10

.field private static final GOLDFISH:Ljava/lang/String; = "goldfish"

.field private static final HEX_VALUES:[C

.field static final LEGACY_MAPPING_FILE_ID_RESOURCE_NAME:Ljava/lang/String; = "com.crashlytics.android.build_id"

.field public static final LEGACY_SHARED_PREFS_NAME:Ljava/lang/String; = "com.crashlytics.prefs"

.field static final MAPPING_FILE_ID_RESOURCE_NAME:Ljava/lang/String; = "com.google.firebase.crashlytics.mapping_file_id"

.field private static final RANCHU:Ljava/lang/String; = "ranchu"

.field private static final SDK:Ljava/lang/String; = "sdk"

.field private static final SHA1_INSTANCE:Ljava/lang/String; = "SHA-1"

.field public static final SHARED_PREFS_NAME:Ljava/lang/String; = "com.google.firebase.crashlytics"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/firebase/crashlytics/internal/common/i;->HEX_VALUES:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static A(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Ljava/util/Scanner;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    .line 6
    .line 7
    const-string p0, "\\A"

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p0}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    .line 11
    move-result-object p0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/util/Scanner;->hasNext()Z

    .line 15
    move-result v0

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/util/Scanner;->next()Ljava/lang/String;

    .line 21
    move-result-object p0

    .line 22
    goto :goto_0

    .line 23
    .line 24
    :cond_0
    const-string p0, ""

    .line 25
    :goto_0
    return-object p0
.end method

.method public static a(Landroid/content/Context;)J
    .locals 2

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
    iget-wide v0, v0, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    .line 19
    return-wide v0
.end method

.method public static declared-synchronized b(Landroid/content/Context;)J
    .locals 3

    .line 1
    .line 2
    const-class v0, Lcom/google/firebase/crashlytics/internal/common/i;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    :try_start_0
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    .line 6
    .line 7
    .line 8
    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 9
    .line 10
    const-string v2, "activity"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    move-result-object p0

    .line 15
    .line 16
    check-cast p0, Landroid/app/ActivityManager;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 20
    .line 21
    iget-wide v1, v1, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    monitor-exit v0

    .line 23
    return-wide v1

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    monitor-exit v0

    .line 26
    throw p0
.end method

.method public static c(Ljava/lang/String;)J
    .locals 7

    .line 1
    .line 2
    new-instance v0, Landroid/os/StatFs;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    .line 9
    move-result p0

    .line 10
    int-to-long v1, p0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCount()I

    .line 14
    move-result p0

    .line 15
    int-to-long v3, p0

    .line 16
    mul-long/2addr v3, v1

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    .line 20
    move-result p0

    .line 21
    int-to-long v5, p0

    .line 22
    mul-long/2addr v1, v5

    .line 23
    sub-long/2addr v3, v1

    .line 24
    return-wide v3
.end method

.method public static d(Landroid/content/Context;)Z
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lcom/google/firebase/crashlytics/internal/common/i;->e(Landroid/content/Context;Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    const-string v0, "connectivity"

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    move-result-object p0

    .line 16
    .line 17
    check-cast p0, Landroid/net/ConnectivityManager;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 21
    move-result-object p0

    .line 22
    .line 23
    if-eqz p0, :cond_0

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    .line 27
    move-result p0

    .line 28
    .line 29
    if-eqz p0, :cond_0

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v1, 0x0

    .line 32
    :cond_1
    :goto_0
    return v1
.end method

.method public static e(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 4
    move-result p0

    .line 5
    .line 6
    if-nez p0, :cond_0

    .line 7
    const/4 p0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    :goto_0
    return p0
.end method

.method public static f(Ljava/io/Closeable;Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    if-eqz p0, :cond_0

    .line 3
    .line 4
    .line 5
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    goto :goto_0

    .line 7
    :catch_0
    move-exception p0

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/g;->f()Lcom/google/firebase/crashlytics/internal/g;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1, p0}, Lcom/google/firebase/crashlytics/internal/g;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 15
    :cond_0
    :goto_0
    return-void
.end method

.method public static g(Ljava/io/Closeable;)V
    .locals 0

    .line 1
    .line 2
    if-eqz p0, :cond_0

    .line 3
    .line 4
    .line 5
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 6
    goto :goto_0

    .line 7
    :catch_0
    move-exception p0

    .line 8
    throw p0

    .line 9
    :catch_1
    :cond_0
    :goto_0
    return-void
.end method

.method public static varargs h([Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p0, :cond_4

    .line 4
    array-length v1, p0

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    goto :goto_2

    .line 8
    .line 9
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 10
    .line 11
    .line 12
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 13
    array-length v2, p0

    .line 14
    const/4 v3, 0x0

    .line 15
    .line 16
    :goto_0
    if-ge v3, v2, :cond_2

    .line 17
    .line 18
    aget-object v4, p0, v3

    .line 19
    .line 20
    if-eqz v4, :cond_1

    .line 21
    .line 22
    const-string v5, "-"

    .line 23
    .line 24
    const-string v6, ""

    .line 25
    .line 26
    .line 27
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 28
    move-result-object v4

    .line 29
    .line 30
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 34
    move-result-object v4

    .line 35
    .line 36
    .line 37
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 40
    goto :goto_0

    .line 41
    .line 42
    .line 43
    :cond_2
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 44
    .line 45
    new-instance p0, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 52
    move-result-object v1

    .line 53
    .line 54
    .line 55
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    move-result v2

    .line 57
    .line 58
    if-eqz v2, :cond_3

    .line 59
    .line 60
    .line 61
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    move-result-object v2

    .line 63
    .line 64
    check-cast v2, Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    goto :goto_1

    .line 69
    .line 70
    .line 71
    :cond_3
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    move-result-object p0

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 76
    move-result v1

    .line 77
    .line 78
    if-lez v1, :cond_4

    .line 79
    .line 80
    .line 81
    invoke-static {p0}, Lcom/google/firebase/crashlytics/internal/common/i;->z(Ljava/lang/String;)Ljava/lang/String;

    .line 82
    move-result-object v0

    .line 83
    :cond_4
    :goto_2
    return-object v0
.end method

.method public static i(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 2

    .line 1
    .line 2
    if-eqz p0, :cond_1

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    const-string v1, "bool"

    .line 11
    .line 12
    .line 13
    invoke-static {p0, p1, v1}, Lcom/google/firebase/crashlytics/internal/common/i;->p(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    move-result v1

    .line 15
    .line 16
    if-lez v1, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 20
    move-result p0

    .line 21
    return p0

    .line 22
    .line 23
    :cond_0
    const-string v0, "string"

    .line 24
    .line 25
    .line 26
    invoke-static {p0, p1, v0}, Lcom/google/firebase/crashlytics/internal/common/i;->p(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    move-result p1

    .line 28
    .line 29
    if-lez p1, :cond_1

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 33
    move-result-object p0

    .line 34
    .line 35
    .line 36
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 37
    move-result p0

    .line 38
    return p0

    .line 39
    :cond_1
    return p2
.end method

.method public static j(Landroid/content/Context;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/firebase/crashlytics/internal/common/f;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    const-string v1, "com.google.firebase.crashlytics.build_ids_lib"

    .line 8
    .line 9
    const-string v2, "array"

    .line 10
    .line 11
    .line 12
    invoke-static {p0, v1, v2}, Lcom/google/firebase/crashlytics/internal/common/i;->p(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    move-result v1

    .line 14
    .line 15
    const-string v3, "com.google.firebase.crashlytics.build_ids_arch"

    .line 16
    .line 17
    .line 18
    invoke-static {p0, v3, v2}, Lcom/google/firebase/crashlytics/internal/common/i;->p(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    move-result v3

    .line 20
    .line 21
    const-string v4, "com.google.firebase.crashlytics.build_ids_build_id"

    .line 22
    .line 23
    .line 24
    invoke-static {p0, v4, v2}, Lcom/google/firebase/crashlytics/internal/common/i;->p(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    move-result v2

    .line 26
    const/4 v4, 0x2

    .line 27
    const/4 v5, 0x3

    .line 28
    const/4 v6, 0x1

    .line 29
    const/4 v7, 0x0

    .line 30
    .line 31
    if-eqz v1, :cond_4

    .line 32
    .line 33
    if-eqz v3, :cond_4

    .line 34
    .line 35
    if-nez v2, :cond_0

    .line 36
    goto :goto_2

    .line 37
    .line 38
    .line 39
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 40
    move-result-object v8

    .line 41
    .line 42
    .line 43
    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 44
    move-result-object v1

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 48
    move-result-object v8

    .line 49
    .line 50
    .line 51
    invoke-virtual {v8, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 52
    move-result-object v3

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 56
    move-result-object p0

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 60
    move-result-object p0

    .line 61
    array-length v2, v1

    .line 62
    array-length v8, p0

    .line 63
    .line 64
    if-ne v2, v8, :cond_3

    .line 65
    array-length v2, v3

    .line 66
    array-length v8, p0

    .line 67
    .line 68
    if-eq v2, v8, :cond_1

    .line 69
    goto :goto_1

    .line 70
    :cond_1
    :goto_0
    array-length v2, p0

    .line 71
    .line 72
    if-ge v7, v2, :cond_2

    .line 73
    .line 74
    new-instance v2, Lcom/google/firebase/crashlytics/internal/common/f;

    .line 75
    .line 76
    aget-object v4, v1, v7

    .line 77
    .line 78
    aget-object v5, v3, v7

    .line 79
    .line 80
    aget-object v6, p0, v7

    .line 81
    .line 82
    .line 83
    invoke-direct {v2, v4, v5, v6}, Lcom/google/firebase/crashlytics/internal/common/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    .line 88
    add-int/lit8 v7, v7, 0x1

    .line 89
    goto :goto_0

    .line 90
    :cond_2
    return-object v0

    .line 91
    .line 92
    .line 93
    :cond_3
    :goto_1
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/g;->f()Lcom/google/firebase/crashlytics/internal/g;

    .line 94
    move-result-object v2

    .line 95
    .line 96
    new-array v5, v5, [Ljava/lang/Object;

    .line 97
    array-length v1, v1

    .line 98
    .line 99
    .line 100
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 101
    move-result-object v1

    .line 102
    .line 103
    aput-object v1, v5, v7

    .line 104
    array-length v1, v3

    .line 105
    .line 106
    .line 107
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 108
    move-result-object v1

    .line 109
    .line 110
    aput-object v1, v5, v6

    .line 111
    array-length p0, p0

    .line 112
    .line 113
    .line 114
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 115
    move-result-object p0

    .line 116
    .line 117
    aput-object p0, v5, v4

    .line 118
    .line 119
    const-string p0, "Lengths did not match: %d %d %d"

    .line 120
    .line 121
    .line 122
    invoke-static {p0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 123
    move-result-object p0

    .line 124
    .line 125
    .line 126
    invoke-virtual {v2, p0}, Lcom/google/firebase/crashlytics/internal/g;->b(Ljava/lang/String;)V

    .line 127
    return-object v0

    .line 128
    .line 129
    .line 130
    :cond_4
    :goto_2
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/g;->f()Lcom/google/firebase/crashlytics/internal/g;

    .line 131
    move-result-object p0

    .line 132
    .line 133
    new-array v5, v5, [Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 137
    move-result-object v1

    .line 138
    .line 139
    aput-object v1, v5, v7

    .line 140
    .line 141
    .line 142
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 143
    move-result-object v1

    .line 144
    .line 145
    aput-object v1, v5, v6

    .line 146
    .line 147
    .line 148
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 149
    move-result-object v1

    .line 150
    .line 151
    aput-object v1, v5, v4

    .line 152
    .line 153
    const-string v1, "Could not find resources: %d %d %d"

    .line 154
    .line 155
    .line 156
    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 157
    move-result-object v1

    .line 158
    .line 159
    .line 160
    invoke-virtual {p0, v1}, Lcom/google/firebase/crashlytics/internal/g;->b(Ljava/lang/String;)V

    .line 161
    return-object v0
.end method

.method public static k()I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/common/i$a;->a()Lcom/google/firebase/crashlytics/internal/common/i$a;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public static l()I
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/common/i;->w()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/common/i;->x()Z

    .line 8
    move-result v1

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    or-int/lit8 v0, v0, 0x2

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/common/i;->v()Z

    .line 16
    move-result v1

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    or-int/lit8 v0, v0, 0x4

    .line 21
    :cond_1
    return v0
.end method

.method public static m(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    const-string v0, "com.google.firebase.crashlytics.mapping_file_id"

    .line 3
    .line 4
    const-string v1, "string"

    .line 5
    .line 6
    .line 7
    invoke-static {p0, v0, v1}, Lcom/google/firebase/crashlytics/internal/common/i;->p(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    move-result v0

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    const-string v0, "com.crashlytics.android.build_id"

    .line 13
    .line 14
    .line 15
    invoke-static {p0, v0, v1}, Lcom/google/firebase/crashlytics/internal/common/i;->p(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    move-result v0

    .line 17
    .line 18
    :cond_0
    if-eqz v0, :cond_1

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 22
    move-result-object p0

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 26
    move-result-object p0

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/4 p0, 0x0

    .line 29
    :goto_0
    return-object p0
.end method

.method public static n(Landroid/content/Context;)Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/common/i;->w()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    return v1

    .line 9
    .line 10
    :cond_0
    const-string v0, "sensor"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    move-result-object p0

    .line 15
    .line 16
    check-cast p0, Landroid/hardware/SensorManager;

    .line 17
    .line 18
    const/16 v0, 0x8

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 22
    move-result-object p0

    .line 23
    .line 24
    if-eqz p0, :cond_1

    .line 25
    const/4 v1, 0x1

    .line 26
    :cond_1
    return v1
.end method

.method public static o(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 11
    .line 12
    if-lez v0, :cond_0

    .line 13
    .line 14
    .line 15
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    const-string v1, "android"

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    move-result v1

    .line 27
    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 32
    move-result-object v0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    goto :goto_0

    .line 34
    .line 35
    .line 36
    :catch_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 37
    move-result-object v0

    .line 38
    goto :goto_0

    .line 39
    .line 40
    .line 41
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 42
    move-result-object v0

    .line 43
    :cond_1
    :goto_0
    return-object v0
.end method

.method public static p(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {p0}, Lcom/google/firebase/crashlytics/internal/common/i;->o(Landroid/content/Context;)Ljava/lang/String;

    .line 8
    move-result-object p0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1, p2, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public static q(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    .line 1
    .line 2
    const-string v0, "com.google.firebase.crashlytics"

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 7
    move-result-object p0

    .line 8
    return-object p0
.end method

.method private static r(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    .line 4
    move-result-object p0

    .line 5
    .line 6
    .line 7
    invoke-static {p0, p1}, Lcom/google/firebase/crashlytics/internal/common/i;->s([BLjava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method private static s([BLjava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    .line 2
    .line 3
    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 4
    move-result-object p1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    .line 11
    move-result-object p0

    .line 12
    .line 13
    .line 14
    invoke-static {p0}, Lcom/google/firebase/crashlytics/internal/common/i;->t([B)Ljava/lang/String;

    .line 15
    move-result-object p0

    .line 16
    return-object p0

    .line 17
    :catch_0
    move-exception p0

    .line 18
    .line 19
    .line 20
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/g;->f()Lcom/google/firebase/crashlytics/internal/g;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    const-string v2, "Could not create hashing algorithm: "

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string p1, ", returning empty string."

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object p1

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, p1, p0}, Lcom/google/firebase/crashlytics/internal/g;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 47
    .line 48
    const-string p0, ""

    .line 49
    return-object p0
.end method

.method public static t([B)Ljava/lang/String;
    .locals 6

    .line 1
    array-length v0, p0

    .line 2
    .line 3
    mul-int/lit8 v0, v0, 0x2

    .line 4
    .line 5
    new-array v0, v0, [C

    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    array-length v2, p0

    .line 8
    .line 9
    if-ge v1, v2, :cond_0

    .line 10
    .line 11
    aget-byte v2, p0, v1

    .line 12
    .line 13
    and-int/lit16 v3, v2, 0xff

    .line 14
    .line 15
    mul-int/lit8 v4, v1, 0x2

    .line 16
    .line 17
    sget-object v5, Lcom/google/firebase/crashlytics/internal/common/i;->HEX_VALUES:[C

    .line 18
    .line 19
    ushr-int/lit8 v3, v3, 0x4

    .line 20
    .line 21
    aget-char v3, v5, v3

    .line 22
    .line 23
    aput-char v3, v0, v4

    .line 24
    .line 25
    add-int/lit8 v4, v4, 0x1

    .line 26
    .line 27
    and-int/lit8 v2, v2, 0xf

    .line 28
    .line 29
    aget-char v2, v5, v2

    .line 30
    .line 31
    aput-char v2, v0, v4

    .line 32
    .line 33
    add-int/lit8 v1, v1, 0x1

    .line 34
    goto :goto_0

    .line 35
    .line 36
    :cond_0
    new-instance p0, Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    .line 40
    return-object p0
.end method

.method public static u(Landroid/content/Context;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 7
    .line 8
    and-int/lit8 p0, p0, 0x2

    .line 9
    .line 10
    if-eqz p0, :cond_0

    .line 11
    const/4 p0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    return p0
.end method

.method public static v()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    .line 9
    invoke-static {}, Landroid/os/Debug;->waitingForDebugger()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 17
    :goto_1
    return v0
.end method

.method public static w()Z
    .locals 2

    .line 1
    .line 2
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 3
    .line 4
    const-string v1, "sdk"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    .line 13
    .line 14
    const-string v1, "goldfish"

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 18
    move-result v1

    .line 19
    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    const-string v1, "ranchu"

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 26
    move-result v0

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v0, 0x0

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 33
    :goto_1
    return v0
.end method

.method public static x()Z
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/common/i;->w()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    sget-object v1, Landroid/os/Build;->TAGS:Ljava/lang/String;

    .line 7
    const/4 v2, 0x1

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    const-string v3, "test-keys"

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 17
    move-result v1

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    return v2

    .line 21
    .line 22
    :cond_0
    new-instance v1, Ljava/io/File;

    .line 23
    .line 24
    const-string v3, "/system/app/Superuser.apk"

    .line 25
    .line 26
    .line 27
    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 31
    move-result v1

    .line 32
    .line 33
    if-eqz v1, :cond_1

    .line 34
    return v2

    .line 35
    .line 36
    :cond_1
    new-instance v1, Ljava/io/File;

    .line 37
    .line 38
    const-string v3, "/system/xbin/su"

    .line 39
    .line 40
    .line 41
    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    if-nez v0, :cond_2

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 47
    move-result v0

    .line 48
    .line 49
    if-eqz v0, :cond_2

    .line 50
    return v2

    .line 51
    :cond_2
    const/4 v0, 0x0

    .line 52
    return v0
.end method

.method public static y(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-nez p0, :cond_1

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    const/4 p0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    :goto_0
    return p0

    .line 9
    .line 10
    .line 11
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public static z(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    const-string v0, "SHA-1"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lcom/google/firebase/crashlytics/internal/common/i;->r(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method
