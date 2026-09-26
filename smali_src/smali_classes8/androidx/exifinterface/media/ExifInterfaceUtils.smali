.class Landroidx/exifinterface/media/ExifInterfaceUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/exifinterface/media/ExifInterfaceUtils$Api23Impl;,
        Landroidx/exifinterface/media/ExifInterfaceUtils$Api21Impl;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ExifInterfaceUtils"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method static a([B)Ljava/lang/String;
    .locals 5

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    array-length v1, p0

    .line 4
    .line 5
    mul-int/lit8 v1, v1, 0x2

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 9
    const/4 v1, 0x0

    .line 10
    move v2, v1

    .line 11
    :goto_0
    array-length v3, p0

    .line 12
    .line 13
    if-ge v2, v3, :cond_0

    .line 14
    const/4 v3, 0x1

    .line 15
    .line 16
    new-array v3, v3, [Ljava/lang/Object;

    .line 17
    .line 18
    aget-byte v4, p0, v2

    .line 19
    .line 20
    .line 21
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 22
    move-result-object v4

    .line 23
    .line 24
    aput-object v4, v3, v1

    .line 25
    .line 26
    const-string v4, "%02x"

    .line 27
    .line 28
    .line 29
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 30
    move-result-object v3

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    add-int/lit8 v2, v2, 0x1

    .line 36
    goto :goto_0

    .line 37
    .line 38
    .line 39
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object p0

    .line 41
    return-object p0
.end method

.method static b(Ljava/io/FileDescriptor;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    :try_start_0
    invoke-static {p0}, Landroidx/exifinterface/media/ExifInterfaceUtils$Api21Impl;->a(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    goto :goto_0

    .line 5
    .line 6
    :catch_0
    const-string p0, "ExifInterfaceUtils"

    .line 7
    .line 8
    const-string v0, "Error closing fd."

    .line 9
    .line 10
    .line 11
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    :goto_0
    return-void
.end method

.method static c(Ljava/io/Closeable;)V
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

.method static d(Ljava/lang/Object;)[J
    .locals 4

    .line 1
    .line 2
    instance-of v0, p0, [I

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    check-cast p0, [I

    .line 7
    array-length v0, p0

    .line 8
    .line 9
    new-array v0, v0, [J

    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_0
    array-length v2, p0

    .line 12
    .line 13
    if-ge v1, v2, :cond_0

    .line 14
    .line 15
    aget v2, p0, v1

    .line 16
    int-to-long v2, v2

    .line 17
    .line 18
    aput-wide v2, v0, v1

    .line 19
    .line 20
    add-int/lit8 v1, v1, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    return-object v0

    .line 23
    .line 24
    :cond_1
    instance-of v0, p0, [J

    .line 25
    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    check-cast p0, [J

    .line 29
    return-object p0

    .line 30
    :cond_2
    const/4 p0, 0x0

    .line 31
    return-object p0
.end method

.method static e([B[B)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p0, :cond_4

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    goto :goto_1

    .line 7
    :cond_0
    array-length v1, p0

    .line 8
    array-length v2, p1

    .line 9
    .line 10
    if-ge v1, v2, :cond_1

    .line 11
    return v0

    .line 12
    :cond_1
    move v1, v0

    .line 13
    :goto_0
    array-length v2, p1

    .line 14
    .line 15
    if-ge v1, v2, :cond_3

    .line 16
    .line 17
    aget-byte v2, p0, v1

    .line 18
    .line 19
    aget-byte v3, p1, v1

    .line 20
    .line 21
    if-eq v2, v3, :cond_2

    .line 22
    return v0

    .line 23
    .line 24
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_3
    const/4 p0, 0x1

    .line 27
    return p0

    .line 28
    :cond_4
    :goto_1
    return v0
.end method
