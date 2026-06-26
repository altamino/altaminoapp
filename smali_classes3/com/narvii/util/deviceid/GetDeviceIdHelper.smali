.class public Lcom/narvii/util/deviceid/GetDeviceIdHelper;
.super Landroid/app/Activity;
.source "GetDeviceIdHelper.java"


# instance fields
.field private final context:Lcom/narvii/app/NVContext;

.field private final context2:Landroid/content/Context;

.field private deviceIdService:Lcom/narvii/util/deviceid/DeviceIDService;

.field private getDeviceIdHelper:Lcom/narvii/util/deviceid/GetDeviceIdHelper;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1
    .param p1, "context"    # Lcom/narvii/app/NVContext;

    .line 104
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 105
    iput-object p1, p0, Lcom/narvii/util/deviceid/GetDeviceIdHelper;->context:Lcom/narvii/app/NVContext;

    .line 106
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/util/deviceid/GetDeviceIdHelper;->context2:Landroid/content/Context;

    .line 107
    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;Landroid/view/View;)V
    .locals 1
    .param p1, "context"    # Lcom/narvii/app/NVContext;
    .param p2, "view"    # Landroid/view/View;

    .line 90
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 91
    iput-object p1, p0, Lcom/narvii/util/deviceid/GetDeviceIdHelper;->context:Lcom/narvii/app/NVContext;

    .line 92
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/util/deviceid/GetDeviceIdHelper;->context2:Landroid/content/Context;

    const-string v0, "deviceid"

    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/deviceid/DeviceIDService;

    iput-object v0, p0, Lcom/narvii/util/deviceid/GetDeviceIdHelper;->deviceIdService:Lcom/narvii/util/deviceid/DeviceIDService;

    return-void
.end method

.method private getUniqId()Ljava/lang/String;
    .locals 7

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 214
    .local v0, "result":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/narvii/util/deviceid/GetDeviceIdHelper;->deviceIdService:Lcom/narvii/util/deviceid/DeviceIDService;

    invoke-virtual {v1}, Lcom/narvii/util/deviceid/DeviceIDService;->getUniquePsuedoID()[B

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-byte v4, v1, v3

    .line 215
    .local v4, "value":B
    and-int/lit16 v5, v4, 0xff

    add-int/lit16 v5, v5, 0x100

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .end local v4    # "value":B
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 217
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getUniqId([B)Ljava/lang/String;
    .locals 6
    .param p1, "uniqId"    # [B

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 222
    .local v0, "result":Ljava/lang/StringBuilder;
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-byte v3, p1, v2

    .line 223
    .local v3, "value":B
    and-int/lit16 v4, v3, 0xff

    add-int/lit16 v4, v4, 0x100

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .end local v3    # "value":B
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 225
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public writeDeviceId(Ljava/lang/String;)V
    .locals 3
    .param p1, "deviceId"    # Ljava/lang/String;

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "write deviceId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "deviceId"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :try_start_0
    iget-object v0, p0, Lcom/narvii/util/deviceid/GetDeviceIdHelper;->deviceIdService:Lcom/narvii/util/deviceid/DeviceIDService;

    invoke-virtual {v0}, Lcom/narvii/util/deviceid/DeviceIDService;->getFile()Ljava/io/File;

    move-result-object v0

    .line 182
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 183
    invoke-static {v0, p1}, Lcom/narvii/util/Utils;->writeToFile(Ljava/io/File;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    nop

    .end local v0    # "file":Ljava/io/File;
    goto :goto_0

    .line 184
    :catch_0
    move-exception v0

    .line 185
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fail save deviceId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GetDeviceHelper"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public writeDeviceId(Ljava/lang/String;Ljava/io/File;)V
    .locals 3
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "write deviceId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "deviceId"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :try_start_0
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 193
    invoke-static {p2, p1}, Lcom/narvii/util/Utils;->writeToFile(Ljava/io/File;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    goto :goto_0

    .line 194
    :catch_0
    move-exception v0

    .line 195
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fail save deviceId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GetDeviceHelper"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
