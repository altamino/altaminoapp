.class public Lcom/narvii/util/deviceid/DeviceIDService;
.super Ljava/lang/Object;
.source "DeviceIDService.java"


# static fields
.field public static pendingDeviceIdPlaceholder:Ljava/lang/String;


# instance fields
.field private context:Lcom/narvii/app/NVContext;

.field public deviceId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 4

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/narvii/util/deviceid/DeviceIDService;->context:Lcom/narvii/app/NVContext;

    .line 62
    invoke-virtual {p0}, Lcom/narvii/util/deviceid/DeviceIDService;->getFile()Ljava/io/File;

    move-result-object v2

    .line 64
    invoke-static {v2}, Lcom/narvii/util/Utils;->readStringFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 65
    const-string v1, "19"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/narvii/util/deviceid/GetDeviceIdHelper;

    invoke-direct {v1, p1}, Lcom/narvii/util/deviceid/GetDeviceIdHelper;-><init>(Lcom/narvii/app/NVContext;)V

    invoke-virtual {p0}, Lcom/narvii/util/deviceid/DeviceIDService;->getUniquePsuedoID()[B

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/NativeHelper;->C([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/deviceid/GetDeviceIdHelper;->writeDeviceId(Ljava/lang/String;Ljava/io/File;)V

    .line 26
    goto :goto_0

    .line 24
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v3, 0x52

    if-ne v1, v3, :cond_1

    iput-object v0, p0, Lcom/narvii/util/deviceid/DeviceIDService;->deviceId:Ljava/lang/String;

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/narvii/util/deviceid/DeviceIDService;->deviceId:Ljava/lang/String;

    if-nez v0, :cond_2

    new-instance v0, Lcom/narvii/util/deviceid/GetDeviceIdHelper;

    iget-object v1, p0, Lcom/narvii/util/deviceid/DeviceIDService;->context:Lcom/narvii/app/NVContext;

    invoke-direct {v0, p1}, Lcom/narvii/util/deviceid/GetDeviceIdHelper;-><init>(Lcom/narvii/app/NVContext;)V

    invoke-virtual {p0}, Lcom/narvii/util/deviceid/DeviceIDService;->getUniquePsuedoID()[B

    move-result-object v1

    invoke-static {v1}, Lcom/narvii/util/NativeHelper;->C([B)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/narvii/util/NativeHelper;->test()V

    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/deviceid/GetDeviceIdHelper;->writeDeviceId(Ljava/lang/String;Ljava/io/File;)V

    iput-object v1, p0, Lcom/narvii/util/deviceid/DeviceIDService;->deviceId:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method private deviceId1()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method private deviceId2()Ljava/lang/String;
    .locals 2

    .line 221
    :try_start_0
    iget-object v0, p0, Lcom/narvii/util/deviceid/DeviceIDService;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private deviceIdHw()Ljava/lang/String;
    .locals 7

    .line 178
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    .line 179
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_1

    .line 180
    new-instance v1, Ljava/util/HashSet;

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "armeabi"

    aput-object v4, v2, v3

    const/4 v4, 0x1

    const-string v5, "armeabi-v7a"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string v5, "arm64-v8a"

    aput-object v5, v2, v4

    const/4 v4, 0x3

    const-string v5, "x86"

    aput-object v5, v2, v4

    const/4 v4, 0x4

    const-string v5, "x86_64"

    aput-object v5, v2, v4

    const/4 v4, 0x5

    const-string v5, "mips"

    aput-object v5, v2, v4

    const/4 v4, 0x6

    const-string v5, "mips64"

    aput-object v5, v2, v4

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 189
    sget-object v2, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    array-length v4, v2

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v5, v2, v3

    .line 190
    invoke-virtual {v1, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v0, v5

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 197
    :cond_1
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 198
    sget-object v2, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getVersionPrefix()Ljava/lang/String;
    .locals 3

    .line 98
    iget-object v0, p0, Lcom/narvii/util/deviceid/DeviceIDService;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/narvii/lib/R$string;->didsver:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 99
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private sha1([B)[B
    .locals 1

    :try_start_0
    const-string v0, "SHA-1"

    .line 149
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 150
    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/16 p1, 0x14

    new-array p1, p1, [B

    return-object p1
.end method


# virtual methods
.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/narvii/util/deviceid/DeviceIDService;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getFile()Ljava/io/File;
    .locals 3

    .line 106
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/narvii/util/deviceid/DeviceIDService;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "did"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getGenTime()J
    .locals 2

    .line 137
    iget-wide v0, p0, Lcom/narvii/util/deviceid/DeviceIDService;->time:J

    return-wide v0
.end method

.method public getUniquePsuedoID()[B
    .locals 5

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 164
    invoke-direct {p0}, Lcom/narvii/util/deviceid/DeviceIDService;->deviceIdHw()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    invoke-direct {p0}, Lcom/narvii/util/deviceid/DeviceIDService;->deviceId1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-direct {p0}, Lcom/narvii/util/deviceid/DeviceIDService;->deviceId2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 169
    new-array v2, v1, [B

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 171
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 174
    :cond_0
    invoke-direct {p0, v2}, Lcom/narvii/util/deviceid/DeviceIDService;->sha1([B)[B

    move-result-object v0

    return-object v0
.end method

.method public isReady()Z
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/narvii/util/deviceid/DeviceIDService;->deviceId:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
