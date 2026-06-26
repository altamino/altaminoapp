.class public final enum Lcom/narvii/util/ABTest;
.super Ljava/lang/Enum;
.source "ABTest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/narvii/util/ABTest;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/narvii/util/ABTest;

.field public static AMPLITUDE_USER_PROPS:[Lcom/narvii/util/ABTest;

.field public static LOGGING_USER_PROPS:[Lcom/narvii/util/ABTest;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [Lcom/narvii/util/ABTest;

    .line 15
    sput-object v1, Lcom/narvii/util/ABTest;->$VALUES:[Lcom/narvii/util/ABTest;

    new-array v1, v0, [Lcom/narvii/util/ABTest;

    .line 29
    sput-object v1, Lcom/narvii/util/ABTest;->AMPLITUDE_USER_PROPS:[Lcom/narvii/util/ABTest;

    new-array v0, v0, [Lcom/narvii/util/ABTest;

    .line 30
    sput-object v0, Lcom/narvii/util/ABTest;->LOGGING_USER_PROPS:[Lcom/narvii/util/ABTest;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static ab(Lcom/narvii/util/ABTest;)Z
    .locals 5

    .line 33
    sget-boolean v0, Lcom/narvii/app/NVApplication;->DEBUG:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 34
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "ab.txt"

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/narvii/util/Utils;->readStringFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 36
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 45
    :catch_0
    :cond_1
    sget-object v0, Lcom/narvii/util/ABTest$1;->$SwitchMap$com$narvii$util$ABTest:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v0, v0, v3

    .line 49
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v0

    const-string v3, "account"

    invoke-virtual {v0, v3}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 50
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 53
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v0

    const-string v3, "deviceid"

    invoke-virtual {v0, v3}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/deviceid/DeviceIDService;

    .line 54
    invoke-virtual {v0}, Lcom/narvii/util/deviceid/DeviceIDService;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 57
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/narvii/util/StringUtils;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 59
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result p0

    .line 60
    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/narvii/util/ABTest;
    .locals 1

    .line 15
    const-class v0, Lcom/narvii/util/ABTest;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/narvii/util/ABTest;

    return-object p0
.end method

.method public static values()[Lcom/narvii/util/ABTest;
    .locals 1

    .line 15
    sget-object v0, Lcom/narvii/util/ABTest;->$VALUES:[Lcom/narvii/util/ABTest;

    invoke-virtual {v0}, [Lcom/narvii/util/ABTest;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/narvii/util/ABTest;

    return-object v0
.end method
