.class public Lio/agora/rtc/utils/AgoraUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "AgoraUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ensureNativeLibsInitialized()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lio/agora/rtc/internal/RtcEngineImpl;->initializeNativeLibs()Z

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public static getAppStorageDir(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

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
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 8
    move-result v1

    .line 9
    .line 10
    .line 11
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 12
    move-result v2

    .line 13
    .line 14
    const-string v3, "android.permission.READ_EXTERNAL_STORAGE"

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v3, v1, v2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    .line 18
    move-result v1

    .line 19
    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    const-string v1, "/sdcard/"

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 34
    move-result-object p0

    .line 35
    .line 36
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object p0

    .line 44
    return-object p0

    .line 45
    :cond_1
    return-object v0
.end method

.method public static getDisplayRotation(Landroid/content/Context;)I
    .locals 1
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
    .line 3
    const-string/jumbo v0, "window"

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    move-result-object p0

    .line 8
    .line 9
    check-cast p0, Landroid/view/WindowManager;

    .line 10
    .line 11
    .line 12
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 13
    move-result-object p0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    .line 17
    move-result p0

    .line 18
    const/4 v0, 0x1

    .line 19
    .line 20
    if-eq p0, v0, :cond_2

    .line 21
    const/4 v0, 0x2

    .line 22
    .line 23
    if-eq p0, v0, :cond_1

    .line 24
    const/4 v0, 0x3

    .line 25
    .line 26
    if-eq p0, v0, :cond_0

    .line 27
    const/4 p0, 0x0

    .line 28
    return p0

    .line 29
    .line 30
    :cond_0
    const/16 p0, 0x10e

    .line 31
    return p0

    .line 32
    .line 33
    :cond_1
    const/16 p0, 0xb4

    .line 34
    return p0

    .line 35
    .line 36
    :cond_2
    const/16 p0, 0x5a

    .line 37
    return p0
.end method

.method public static getFrameOrientation(IIZZ)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "displayRotation",
            "sensorOrientation",
            "isFrontFacing",
            "compensateForMirroring"
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p2, :cond_0

    .line 3
    add-int/2addr p1, p0

    .line 4
    .line 5
    rem-int/lit16 p1, p1, 0x168

    .line 6
    .line 7
    if-eqz p3, :cond_1

    .line 8
    .line 9
    rsub-int p0, p1, 0x168

    .line 10
    .line 11
    rem-int/lit16 p1, p0, 0x168

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    sub-int/2addr p1, p0

    .line 14
    .line 15
    add-int/lit16 p1, p1, 0x168

    .line 16
    .line 17
    rem-int/lit16 p1, p1, 0x168

    .line 18
    :cond_1
    :goto_0
    return p1
.end method
