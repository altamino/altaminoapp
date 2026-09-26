.class public Lio/agora/rtc/audio/OppoHardwareEarback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/agora/rtc/audio/IHardwareEarback;


# static fields
.field private static TAG:Ljava/lang/String; = "AG-OPPO"


# instance fields
.field private isConnected:Z

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput-boolean v0, p0, Lio/agora/rtc/audio/OppoHardwareEarback;->isConnected:Z

    .line 7
    .line 8
    iput-object p1, p0, Lio/agora/rtc/audio/OppoHardwareEarback;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lio/agora/rtc/audio/OppoHardwareEarback;->initialize()V

    .line 12
    return-void
.end method

.method static synthetic access$002(Lio/agora/rtc/audio/OppoHardwareEarback;Z)Z
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lio/agora/rtc/audio/OppoHardwareEarback;->isConnected:Z

    .line 3
    return p1
.end method

.method static synthetic access$100(Lio/agora/rtc/audio/OppoHardwareEarback;)Landroid/content/Context;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lio/agora/rtc/audio/OppoHardwareEarback;->mContext:Landroid/content/Context;

    .line 3
    return-object p0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 1
    .line 2
    :try_start_0
    iget-object v0, p0, Lio/agora/rtc/audio/OppoHardwareEarback;->mContext:Landroid/content/Context;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lcom/coloros/ocs/mediaunit/d;->a(Landroid/content/Context;)Lcom/coloros/ocs/mediaunit/e;

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lcom/coloros/ocs/mediaunit/e;->q()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    goto :goto_0

    .line 12
    :catch_0
    move-exception v0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;)V

    .line 20
    :cond_0
    :goto_0
    return-void
.end method

.method public enableEarbackFeature(Z)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 1
    .line 2
    :try_start_0
    iget-object v0, p0, Lio/agora/rtc/audio/OppoHardwareEarback;->mContext:Landroid/content/Context;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-boolean v1, p0, Lio/agora/rtc/audio/OppoHardwareEarback;->isConnected:Z

    .line 7
    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/coloros/ocs/mediaunit/d;->a(Landroid/content/Context;)Lcom/coloros/ocs/mediaunit/e;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    new-instance v0, Lio/agora/rtc/audio/OppoHardwareEarback$2;

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, p0}, Lio/agora/rtc/audio/OppoHardwareEarback$2;-><init>(Lio/agora/rtc/audio/OppoHardwareEarback;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v0}, Lcom/coloros/ocs/base/common/api/c;->a(Lcom/coloros/ocs/base/common/api/f;)Lcom/coloros/ocs/base/common/api/c;

    .line 23
    goto :goto_0

    .line 24
    :catch_0
    move-exception p1

    .line 25
    goto :goto_1

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-static {v0}, Lcom/coloros/ocs/mediaunit/d;->a(Landroid/content/Context;)Lcom/coloros/ocs/mediaunit/e;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    new-instance v0, Lio/agora/rtc/audio/OppoHardwareEarback$3;

    .line 32
    .line 33
    .line 34
    invoke-direct {v0, p0}, Lio/agora/rtc/audio/OppoHardwareEarback$3;-><init>(Lio/agora/rtc/audio/OppoHardwareEarback;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v0}, Lcom/coloros/ocs/base/common/api/c;->a(Lcom/coloros/ocs/base/common/api/f;)Lcom/coloros/ocs/base/common/api/c;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    :goto_0
    const/4 p1, 0x0

    .line 39
    return p1

    .line 40
    .line 41
    .line 42
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 43
    move-result-object p1

    .line 44
    .line 45
    .line 46
    invoke-static {p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;)V

    .line 47
    :cond_1
    const/4 p1, -0x1

    .line 48
    return p1
.end method

.method public initialize()V
    .locals 2

    .line 1
    .line 2
    :try_start_0
    iget-object v0, p0, Lio/agora/rtc/audio/OppoHardwareEarback;->mContext:Landroid/content/Context;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lcom/coloros/ocs/mediaunit/d;->a(Landroid/content/Context;)Lcom/coloros/ocs/mediaunit/e;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    new-instance v1, Lio/agora/rtc/audio/OppoHardwareEarback$1;

    .line 11
    .line 12
    .line 13
    invoke-direct {v1, p0}, Lio/agora/rtc/audio/OppoHardwareEarback$1;-><init>(Lio/agora/rtc/audio/OppoHardwareEarback;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/coloros/ocs/base/common/api/c;->a(Lcom/coloros/ocs/base/common/api/f;)Lcom/coloros/ocs/base/common/api/c;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    goto :goto_0

    .line 18
    :catch_0
    move-exception v0

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;)V

    .line 26
    :cond_0
    :goto_0
    return-void
.end method

.method public isHardwareEarbackSupported()Z
    .locals 1

    iget-boolean v0, p0, Lio/agora/rtc/audio/OppoHardwareEarback;->isConnected:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setHardwareEarbackVolume(I)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vol"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method
