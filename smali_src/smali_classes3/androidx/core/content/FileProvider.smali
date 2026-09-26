.class public Landroidx/core/content/FileProvider;
.super Landroid/content/ContentProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/content/FileProvider$Api21Impl;,
        Landroidx/core/content/FileProvider$SimplePathStrategy;,
        Landroidx/core/content/FileProvider$PathStrategy;
    }
.end annotation


# static fields
.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_PATH:Ljava/lang/String; = "path"

.field private static final COLUMNS:[Ljava/lang/String;

.field private static final DEVICE_ROOT:Ljava/io/File;

.field private static final DISPLAYNAME_FIELD:Ljava/lang/String; = "displayName"

.field private static final META_DATA_FILE_PROVIDER_PATHS:Ljava/lang/String; = "android.support.FILE_PROVIDER_PATHS"

.field private static final TAG_CACHE_PATH:Ljava/lang/String; = "cache-path"

.field private static final TAG_EXTERNAL:Ljava/lang/String; = "external-path"

.field private static final TAG_EXTERNAL_CACHE:Ljava/lang/String; = "external-cache-path"

.field private static final TAG_EXTERNAL_FILES:Ljava/lang/String; = "external-files-path"

.field private static final TAG_EXTERNAL_MEDIA:Ljava/lang/String; = "external-media-path"

.field private static final TAG_FILES_PATH:Ljava/lang/String; = "files-path"

.field private static final TAG_ROOT_PATH:Ljava/lang/String; = "root-path"

.field private static final sCache:Ljava/util/HashMap;
    .annotation build Landroidx/annotation/GuardedBy;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/core/content/FileProvider$PathStrategy;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mResourceId:I

.field private mStrategy:Landroidx/core/content/FileProvider$PathStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    const-string v0, "_display_name"

    .line 3
    .line 4
    const-string v1, "_size"

    .line 5
    .line 6
    .line 7
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    sput-object v0, Landroidx/core/content/FileProvider;->COLUMNS:[Ljava/lang/String;

    .line 11
    .line 12
    new-instance v0, Ljava/io/File;

    .line 13
    .line 14
    const-string v1, "/"

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    sput-object v0, Landroidx/core/content/FileProvider;->DEVICE_ROOT:Ljava/io/File;

    .line 20
    .line 21
    new-instance v0, Ljava/util/HashMap;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 25
    .line 26
    sput-object v0, Landroidx/core/content/FileProvider;->sCache:Ljava/util/HashMap;

    .line 27
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/core/content/FileProvider;->mResourceId:I

    return-void
.end method

.method protected constructor <init>(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/XmlRes;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    iput p1, p0, Landroidx/core/content/FileProvider;->mResourceId:I

    return-void
.end method

.method private static varargs buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;
    .locals 4

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    .line 4
    :goto_0
    if-ge v1, v0, :cond_1

    .line 5
    .line 6
    aget-object v2, p1, v1

    .line 7
    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    new-instance v3, Ljava/io/File;

    .line 11
    .line 12
    .line 13
    invoke-direct {v3, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 14
    move-object p0, v3

    .line 15
    .line 16
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    return-object p0
.end method

.method private static copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 2

    .line 3
    new-array v0, p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 4
    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private static copyOf([Ljava/lang/String;I)[Ljava/lang/String;
    .locals 2

    .line 1
    new-array v0, p1, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 2
    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method static getFileProviderPathsMetaData(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ProviderInfo;I)Landroid/content/res/XmlResourceParser;
    .locals 2
    .param p2    # Landroid/content/pm/ProviderInfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    .line 2
    if-eqz p2, :cond_2

    .line 3
    .line 4
    iget-object p1, p2, Landroid/content/pm/ProviderInfo;->metaData:Landroid/os/Bundle;

    .line 5
    .line 6
    const-string v0, "android.support.FILE_PROVIDER_PATHS"

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    if-eqz p3, :cond_0

    .line 11
    .line 12
    new-instance p1, Landroid/os/Bundle;

    .line 13
    const/4 v1, 0x1

    .line 14
    .line 15
    .line 16
    invoke-direct {p1, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 17
    .line 18
    iput-object p1, p2, Landroid/content/pm/ProviderInfo;->metaData:Landroid/os/Bundle;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0, p3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 25
    move-result-object p0

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2, p0, v0}, Landroid/content/pm/PackageItemInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    .line 29
    move-result-object p0

    .line 30
    .line 31
    if-eqz p0, :cond_1

    .line 32
    return-object p0

    .line 33
    .line 34
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 35
    .line 36
    const-string p1, "Missing android.support.FILE_PROVIDER_PATHS meta-data"

    .line 37
    .line 38
    .line 39
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 40
    throw p0

    .line 41
    .line 42
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 43
    .line 44
    new-instance p2, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    const-string p3, "Couldn\'t find meta-data for provider with authority "

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    move-result-object p1

    .line 60
    .line 61
    .line 62
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 63
    throw p0
.end method

.method private static getPathStrategy(Landroid/content/Context;Ljava/lang/String;I)Landroidx/core/content/FileProvider$PathStrategy;
    .locals 2

    .line 1
    .line 2
    sget-object v0, Landroidx/core/content/FileProvider;->sCache:Ljava/util/HashMap;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    move-result-object v1

    .line 8
    .line 9
    check-cast v1, Landroidx/core/content/FileProvider$PathStrategy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    .line 14
    :try_start_1
    invoke-static {p0, p1, p2}, Landroidx/core/content/FileProvider;->parsePathStrategy(Landroid/content/Context;Ljava/lang/String;I)Landroidx/core/content/FileProvider$PathStrategy;

    .line 15
    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    .line 17
    .line 18
    :try_start_2
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    goto :goto_1

    .line 22
    :catch_0
    move-exception p0

    .line 23
    .line 24
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 25
    .line 26
    const-string p2, "Failed to parse android.support.FILE_PROVIDER_PATHS meta-data"

    .line 27
    .line 28
    .line 29
    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 30
    throw p1

    .line 31
    :catch_1
    move-exception p0

    .line 32
    .line 33
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 34
    .line 35
    const-string p2, "Failed to parse android.support.FILE_PROVIDER_PATHS meta-data"

    .line 36
    .line 37
    .line 38
    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 39
    throw p1

    .line 40
    :cond_0
    :goto_0
    monitor-exit v0

    .line 41
    return-object v1

    .line 42
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 43
    throw p0
.end method

.method public static getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Landroidx/core/content/FileProvider;->getPathStrategy(Landroid/content/Context;Ljava/lang/String;I)Landroidx/core/content/FileProvider$PathStrategy;

    move-result-object p0

    .line 2
    invoke-interface {p0, p2}, Landroidx/core/content/FileProvider$PathStrategy;->a(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Landroid/net/Uri;
    .locals 0
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StreamFiles"
        }
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 3
    invoke-static {p0, p1, p2}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    const-string p1, "displayName"

    invoke-virtual {p0, p1, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private static modeToMode(Ljava/lang/String;)I
    .locals 3

    .line 1
    .line 2
    const-string v0, "r"

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const/high16 p0, 0x10000000

    .line 11
    goto :goto_1

    .line 12
    .line 13
    :cond_0
    const-string v0, "w"

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    move-result v0

    .line 18
    .line 19
    if-nez v0, :cond_5

    .line 20
    .line 21
    const-string v0, "wt"

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    move-result v0

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    goto :goto_0

    .line 29
    .line 30
    :cond_1
    const-string v0, "wa"

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    move-result v0

    .line 35
    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    const/high16 p0, 0x2a000000

    .line 39
    goto :goto_1

    .line 40
    .line 41
    :cond_2
    const-string v0, "rw"

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    move-result v0

    .line 46
    .line 47
    if-eqz v0, :cond_3

    .line 48
    .line 49
    const/high16 p0, 0x38000000

    .line 50
    goto :goto_1

    .line 51
    .line 52
    :cond_3
    const-string v0, "rwt"

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    move-result v0

    .line 57
    .line 58
    if-eqz v0, :cond_4

    .line 59
    .line 60
    const/high16 p0, 0x3c000000    # 0.0078125f

    .line 61
    goto :goto_1

    .line 62
    .line 63
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 64
    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .line 70
    const-string v2, "Invalid mode: "

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    move-result-object p0

    .line 81
    .line 82
    .line 83
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 84
    throw v0

    .line 85
    .line 86
    :cond_5
    :goto_0
    const/high16 p0, 0x2c000000

    .line 87
    :goto_1
    return p0
.end method

.method private static parsePathStrategy(Landroid/content/Context;Ljava/lang/String;I)Landroidx/core/content/FileProvider$PathStrategy;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroidx/core/content/FileProvider$SimplePathStrategy;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p1}, Landroidx/core/content/FileProvider$SimplePathStrategy;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    const/16 v2, 0x80

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    .line 18
    invoke-static {p0, p1, v1, p2}, Landroidx/core/content/FileProvider;->getFileProviderPathsMetaData(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ProviderInfo;I)Landroid/content/res/XmlResourceParser;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    .line 22
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 23
    move-result p2

    .line 24
    const/4 v1, 0x1

    .line 25
    .line 26
    if-eq p2, v1, :cond_8

    .line 27
    const/4 v1, 0x2

    .line 28
    .line 29
    if-ne p2, v1, :cond_0

    .line 30
    .line 31
    .line 32
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 33
    move-result-object p2

    .line 34
    .line 35
    const-string v1, "name"

    .line 36
    const/4 v2, 0x0

    .line 37
    .line 38
    .line 39
    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 40
    move-result-object v1

    .line 41
    .line 42
    const-string v3, "path"

    .line 43
    .line 44
    .line 45
    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 46
    move-result-object v3

    .line 47
    .line 48
    const-string v4, "root-path"

    .line 49
    .line 50
    .line 51
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    move-result v4

    .line 53
    .line 54
    if-eqz v4, :cond_1

    .line 55
    .line 56
    sget-object v2, Landroidx/core/content/FileProvider;->DEVICE_ROOT:Ljava/io/File;

    .line 57
    goto :goto_1

    .line 58
    .line 59
    :cond_1
    const-string v4, "files-path"

    .line 60
    .line 61
    .line 62
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    move-result v4

    .line 64
    .line 65
    if-eqz v4, :cond_2

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 69
    move-result-object v2

    .line 70
    goto :goto_1

    .line 71
    .line 72
    :cond_2
    const-string v4, "cache-path"

    .line 73
    .line 74
    .line 75
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    move-result v4

    .line 77
    .line 78
    if-eqz v4, :cond_3

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 82
    move-result-object v2

    .line 83
    goto :goto_1

    .line 84
    .line 85
    :cond_3
    const-string v4, "external-path"

    .line 86
    .line 87
    .line 88
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 89
    move-result v4

    .line 90
    .line 91
    if-eqz v4, :cond_4

    .line 92
    .line 93
    .line 94
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    .line 95
    move-result-object v2

    .line 96
    goto :goto_1

    .line 97
    .line 98
    :cond_4
    const-string v4, "external-files-path"

    .line 99
    .line 100
    .line 101
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 102
    move-result v4

    .line 103
    const/4 v5, 0x0

    .line 104
    .line 105
    if-eqz v4, :cond_5

    .line 106
    .line 107
    .line 108
    invoke-static {p0, v2}, Landroidx/core/content/ContextCompat;->getExternalFilesDirs(Landroid/content/Context;Ljava/lang/String;)[Ljava/io/File;

    .line 109
    move-result-object p2

    .line 110
    array-length v4, p2

    .line 111
    .line 112
    if-lez v4, :cond_7

    .line 113
    .line 114
    aget-object v2, p2, v5

    .line 115
    goto :goto_1

    .line 116
    .line 117
    :cond_5
    const-string v4, "external-cache-path"

    .line 118
    .line 119
    .line 120
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 121
    move-result v4

    .line 122
    .line 123
    if-eqz v4, :cond_6

    .line 124
    .line 125
    .line 126
    invoke-static {p0}, Landroidx/core/content/ContextCompat;->getExternalCacheDirs(Landroid/content/Context;)[Ljava/io/File;

    .line 127
    move-result-object p2

    .line 128
    array-length v4, p2

    .line 129
    .line 130
    if-lez v4, :cond_7

    .line 131
    .line 132
    aget-object v2, p2, v5

    .line 133
    goto :goto_1

    .line 134
    .line 135
    :cond_6
    const-string v4, "external-media-path"

    .line 136
    .line 137
    .line 138
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 139
    move-result p2

    .line 140
    .line 141
    if-eqz p2, :cond_7

    .line 142
    .line 143
    .line 144
    invoke-static {p0}, Landroidx/core/content/FileProvider$Api21Impl;->a(Landroid/content/Context;)[Ljava/io/File;

    .line 145
    move-result-object p2

    .line 146
    array-length v4, p2

    .line 147
    .line 148
    if-lez v4, :cond_7

    .line 149
    .line 150
    aget-object v2, p2, v5

    .line 151
    .line 152
    :cond_7
    :goto_1
    if-eqz v2, :cond_0

    .line 153
    .line 154
    .line 155
    filled-new-array {v3}, [Ljava/lang/String;

    .line 156
    move-result-object p2

    .line 157
    .line 158
    .line 159
    invoke-static {v2, p2}, Landroidx/core/content/FileProvider;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    .line 160
    move-result-object p2

    .line 161
    .line 162
    .line 163
    invoke-virtual {v0, v1, p2}, Landroidx/core/content/FileProvider$SimplePathStrategy;->c(Ljava/lang/String;Ljava/io/File;)V

    .line 164
    .line 165
    goto/16 :goto_0

    .line 166
    :cond_8
    return-object v0
.end method


# virtual methods
.method public attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/pm/ProviderInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V

    .line 4
    .line 5
    iget-boolean v0, p2, Landroid/content/pm/ProviderInfo;->exported:Z

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-boolean v0, p2, Landroid/content/pm/ProviderInfo;->grantUriPermissions:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object p2, p2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 14
    .line 15
    const-string v0, ";"

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 19
    move-result-object p2

    .line 20
    const/4 v0, 0x0

    .line 21
    .line 22
    aget-object p2, p2, v0

    .line 23
    .line 24
    sget-object v0, Landroidx/core/content/FileProvider;->sCache:Ljava/util/HashMap;

    .line 25
    monitor-enter v0

    .line 26
    .line 27
    .line 28
    :try_start_0
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    iget v0, p0, Landroidx/core/content/FileProvider;->mResourceId:I

    .line 32
    .line 33
    .line 34
    invoke-static {p1, p2, v0}, Landroidx/core/content/FileProvider;->getPathStrategy(Landroid/content/Context;Ljava/lang/String;I)Landroidx/core/content/FileProvider$PathStrategy;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    iput-object p1, p0, Landroidx/core/content/FileProvider;->mStrategy:Landroidx/core/content/FileProvider$PathStrategy;

    .line 38
    return-void

    .line 39
    :catchall_0
    move-exception p1

    .line 40
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    throw p1

    .line 42
    .line 43
    :cond_0
    new-instance p1, Ljava/lang/SecurityException;

    .line 44
    .line 45
    const-string p2, "Provider must grant uri permissions"

    .line 46
    .line 47
    .line 48
    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 49
    throw p1

    .line 50
    .line 51
    :cond_1
    new-instance p1, Ljava/lang/SecurityException;

    .line 52
    .line 53
    const-string p2, "Provider must not be exported"

    .line 54
    .line 55
    .line 56
    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 57
    throw p1
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object p2, p0, Landroidx/core/content/FileProvider;->mStrategy:Landroidx/core/content/FileProvider$PathStrategy;

    .line 3
    .line 4
    .line 5
    invoke-interface {p2, p1}, Landroidx/core/content/FileProvider$PathStrategy;->b(Landroid/net/Uri;)Ljava/io/File;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/core/content/FileProvider;->mStrategy:Landroidx/core/content/FileProvider$PathStrategy;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Landroidx/core/content/FileProvider$PathStrategy;->b(Landroid/net/Uri;)Ljava/io/File;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    const/16 v1, 0x2e

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    .line 16
    move-result v0

    .line 17
    .line 18
    if-ltz v0, :cond_0

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    add-int/lit8 v0, v0, 0x1

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    .line 31
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    move-result-object p1

    .line 37
    .line 38
    if-eqz p1, :cond_0

    .line 39
    return-object p1

    .line 40
    .line 41
    :cond_0
    const-string p1, "application/octet-stream"

    .line 42
    return-object p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/ContentValues;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 3
    .line 4
    const-string p2, "No external inserts"

    .line 5
    .line 6
    .line 7
    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 8
    throw p1
.end method

.method public onCreate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnknownNullness"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/core/content/FileProvider;->mStrategy:Landroidx/core/content/FileProvider$PathStrategy;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Landroidx/core/content/FileProvider$PathStrategy;->b(Landroid/net/Uri;)Ljava/io/File;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-static {p2}, Landroidx/core/content/FileProvider;->modeToMode(Ljava/lang/String;)I

    .line 10
    move-result p2

    .line 11
    .line 12
    .line 13
    invoke-static {p1, p2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    iget-object p3, p0, Landroidx/core/content/FileProvider;->mStrategy:Landroidx/core/content/FileProvider$PathStrategy;

    .line 3
    .line 4
    .line 5
    invoke-interface {p3, p1}, Landroidx/core/content/FileProvider$PathStrategy;->b(Landroid/net/Uri;)Ljava/io/File;

    .line 6
    move-result-object p3

    .line 7
    .line 8
    const-string p4, "displayName"

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    if-nez p2, :cond_0

    .line 15
    .line 16
    sget-object p2, Landroidx/core/content/FileProvider;->COLUMNS:[Ljava/lang/String;

    .line 17
    :cond_0
    array-length p4, p2

    .line 18
    .line 19
    new-array p4, p4, [Ljava/lang/String;

    .line 20
    array-length p5, p2

    .line 21
    .line 22
    new-array p5, p5, [Ljava/lang/Object;

    .line 23
    array-length v0, p2

    .line 24
    const/4 v1, 0x0

    .line 25
    move v2, v1

    .line 26
    .line 27
    :goto_0
    if-ge v1, v0, :cond_4

    .line 28
    .line 29
    aget-object v3, p2, v1

    .line 30
    .line 31
    const-string v4, "_display_name"

    .line 32
    .line 33
    .line 34
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    move-result v5

    .line 36
    .line 37
    if-eqz v5, :cond_2

    .line 38
    .line 39
    aput-object v4, p4, v2

    .line 40
    .line 41
    add-int/lit8 v3, v2, 0x1

    .line 42
    .line 43
    if-nez p1, :cond_1

    .line 44
    .line 45
    .line 46
    invoke-virtual {p3}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 47
    move-result-object v4

    .line 48
    goto :goto_1

    .line 49
    :cond_1
    move-object v4, p1

    .line 50
    .line 51
    :goto_1
    aput-object v4, p5, v2

    .line 52
    :goto_2
    move v2, v3

    .line 53
    goto :goto_3

    .line 54
    .line 55
    :cond_2
    const-string v4, "_size"

    .line 56
    .line 57
    .line 58
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    move-result v3

    .line 60
    .line 61
    if-eqz v3, :cond_3

    .line 62
    .line 63
    aput-object v4, p4, v2

    .line 64
    .line 65
    add-int/lit8 v3, v2, 0x1

    .line 66
    .line 67
    .line 68
    invoke-virtual {p3}, Ljava/io/File;->length()J

    .line 69
    move-result-wide v4

    .line 70
    .line 71
    .line 72
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 73
    move-result-object v4

    .line 74
    .line 75
    aput-object v4, p5, v2

    .line 76
    goto :goto_2

    .line 77
    .line 78
    :cond_3
    :goto_3
    add-int/lit8 v1, v1, 0x1

    .line 79
    goto :goto_0

    .line 80
    .line 81
    .line 82
    :cond_4
    invoke-static {p4, v2}, Landroidx/core/content/FileProvider;->copyOf([Ljava/lang/String;I)[Ljava/lang/String;

    .line 83
    move-result-object p1

    .line 84
    .line 85
    .line 86
    invoke-static {p5, v2}, Landroidx/core/content/FileProvider;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 87
    move-result-object p2

    .line 88
    .line 89
    new-instance p3, Landroid/database/MatrixCursor;

    .line 90
    const/4 p4, 0x1

    .line 91
    .line 92
    .line 93
    invoke-direct {p3, p1, p4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p3, p2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 97
    return-object p3
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/ContentValues;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 3
    .line 4
    const-string p2, "No external updates"

    .line 5
    .line 6
    .line 7
    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 8
    throw p1
.end method
