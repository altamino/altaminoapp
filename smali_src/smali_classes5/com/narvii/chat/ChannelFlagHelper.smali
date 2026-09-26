.class public Lcom/narvii/chat/ChannelFlagHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;
    }
.end annotation


# static fields
.field private static final SCREEN_SHOOT_INTERVAL:I = 0x4e20

.field private static final TAG:Ljava/lang/String; = "ChannelFlagHelper"


# instance fields
.field private blockVideo:Z

.field private channelType:I

.field private cid:I

.field private context:Lcom/narvii/app/NVContext;

.field private flagType:I

.field private hintLanguage:Ljava/lang/String;

.field private isFlagRequestSent:Z

.field private isScreenShotDone:Z

.field private mediaUrl:Ljava/lang/String;

.field private rtcService:Lcom/narvii/chat/rtc/RtcService;

.field screenShootFile:Ljava/io/File;

.field private shouldTakeScreenShoot:Z

.field private showBlock:Z

.field private threadId:Ljava/lang/String;

.field private uid:I

.field private user:Lcom/narvii/model/User;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/chat/ChannelFlagHelper;->context:Lcom/narvii/app/NVContext;

    .line 6
    const/4 v0, 0x0

    .line 7
    .line 8
    iput-boolean v0, p0, Lcom/narvii/chat/ChannelFlagHelper;->isScreenShotDone:Z

    .line 9
    .line 10
    const-string v0, "rtc"

    .line 11
    .line 12
    .line 13
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    check-cast p1, Lcom/narvii/chat/rtc/RtcService;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/narvii/chat/ChannelFlagHelper;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 19
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/chat/ChannelFlagHelper;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/narvii/chat/ChannelFlagHelper;->blockVideo:Z

    return p0
.end method

.method static bridge synthetic b(Lcom/narvii/chat/ChannelFlagHelper;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/narvii/chat/ChannelFlagHelper;->channelType:I

    return p0
.end method

.method static bridge synthetic c(Lcom/narvii/chat/ChannelFlagHelper;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/narvii/chat/ChannelFlagHelper;->cid:I

    return p0
.end method

.method static bridge synthetic d(Lcom/narvii/chat/ChannelFlagHelper;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/ChannelFlagHelper;->context:Lcom/narvii/app/NVContext;

    return-object p0
.end method

.method static bridge synthetic e(Lcom/narvii/chat/ChannelFlagHelper;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/narvii/chat/ChannelFlagHelper;->flagType:I

    return p0
.end method

.method static bridge synthetic f(Lcom/narvii/chat/ChannelFlagHelper;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/narvii/chat/ChannelFlagHelper;->isFlagRequestSent:Z

    return p0
.end method

.method static bridge synthetic g(Lcom/narvii/chat/ChannelFlagHelper;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/narvii/chat/ChannelFlagHelper;->isScreenShotDone:Z

    return p0
.end method

.method private getFlagType(Ljava/lang/String;)I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/ChannelFlagHelper;->context:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-static {v0, p1}, Lcom/narvii/flag/model/Flag;->getFlagType(Landroid/content/Context;Ljava/lang/String;)I

    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method private getSnapshotFile()Ljava/io/File;
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/ChannelFlagHelper;->context:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lcom/narvii/video/ui/Utils;->getAvailableFileDir(Landroid/content/Context;)Ljava/io/File;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    new-instance v1, Ljava/io/File;

    .line 13
    .line 14
    const-string v2, "AVChat"

    .line 15
    .line 16
    .line 17
    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 21
    .line 22
    new-instance v0, Ljava/io/File;

    .line 23
    .line 24
    new-instance v2, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 31
    move-result-wide v3

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string v3, ".jpg"

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object v2

    .line 44
    .line 45
    .line 46
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 50
    move-result-object v1

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 54
    move-result v2

    .line 55
    .line 56
    if-nez v2, :cond_0

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 60
    .line 61
    .line 62
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    goto :goto_0

    .line 64
    :catch_0
    move-exception v1

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 68
    :goto_0
    return-object v0
.end method

.method static bridge synthetic h(Lcom/narvii/chat/ChannelFlagHelper;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/ChannelFlagHelper;->mediaUrl:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic i(Lcom/narvii/chat/ChannelFlagHelper;)Lcom/narvii/chat/rtc/RtcService;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/ChannelFlagHelper;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    return-object p0
.end method

.method static bridge synthetic j(Lcom/narvii/chat/ChannelFlagHelper;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/narvii/chat/ChannelFlagHelper;->showBlock:Z

    return p0
.end method

.method static bridge synthetic k(Lcom/narvii/chat/ChannelFlagHelper;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/ChannelFlagHelper;->threadId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic l(Lcom/narvii/chat/ChannelFlagHelper;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/narvii/chat/ChannelFlagHelper;->uid:I

    return p0
.end method

.method static bridge synthetic m(Lcom/narvii/chat/ChannelFlagHelper;)Lcom/narvii/model/User;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/ChannelFlagHelper;->user:Lcom/narvii/model/User;

    return-object p0
.end method

.method static bridge synthetic n(Lcom/narvii/chat/ChannelFlagHelper;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/narvii/chat/ChannelFlagHelper;->flagType:I

    return-void
.end method

.method static bridge synthetic o(Lcom/narvii/chat/ChannelFlagHelper;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/narvii/chat/ChannelFlagHelper;->isFlagRequestSent:Z

    return-void
.end method

.method static bridge synthetic p(Lcom/narvii/chat/ChannelFlagHelper;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/narvii/chat/ChannelFlagHelper;->isScreenShotDone:Z

    return-void
.end method

.method static bridge synthetic q(Lcom/narvii/chat/ChannelFlagHelper;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/chat/ChannelFlagHelper;->mediaUrl:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic r(Lcom/narvii/chat/ChannelFlagHelper;Ljava/lang/String;)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/chat/ChannelFlagHelper;->getFlagType(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic s(Lcom/narvii/chat/ChannelFlagHelper;)Ljava/io/File;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/chat/ChannelFlagHelper;->getSnapshotFile()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method private showFlagDialog()V
    .locals 4

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/chat/video/flag/VVChannelFlagReportDialog;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/chat/ChannelFlagHelper;->context:Lcom/narvii/app/NVContext;

    .line 5
    .line 6
    .line 7
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    iget v2, p0, Lcom/narvii/chat/ChannelFlagHelper;->channelType:I

    .line 11
    const/4 v3, 0x5

    .line 12
    .line 13
    if-ne v2, v3, :cond_0

    .line 14
    const/4 v2, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v2, 0x0

    .line 17
    .line 18
    .line 19
    :goto_0
    invoke-direct {v0, v1, v2}, Lcom/narvii/chat/video/flag/VVChannelFlagReportDialog;-><init>(Landroid/content/Context;Z)V

    .line 20
    .line 21
    new-instance v1, Lcom/narvii/chat/ChannelFlagHelper$1;

    .line 22
    .line 23
    .line 24
    invoke-direct {v1, p0, v0}, Lcom/narvii/chat/ChannelFlagHelper$1;-><init>(Lcom/narvii/chat/ChannelFlagHelper;Lcom/narvii/chat/video/flag/VVChannelFlagReportDialog;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lcom/narvii/chat/video/flag/VVChannelFlagReportDialog;->setItemClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/narvii/chat/video/flag/VVChannelFlagReportDialog;->show()V

    .line 31
    return-void
.end method

.method private showResonDialog()V
    .locals 4

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/chat/ChannelFlagHelper;->context:Lcom/narvii/app/NVContext;

    .line 5
    .line 6
    .line 7
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    iget-boolean v2, p0, Lcom/narvii/chat/ChannelFlagHelper;->shouldTakeScreenShoot:Z

    .line 11
    .line 12
    if-eqz v2, :cond_1

    .line 13
    .line 14
    iget v2, p0, Lcom/narvii/chat/ChannelFlagHelper;->channelType:I

    .line 15
    const/4 v3, 0x4

    .line 16
    .line 17
    if-eq v2, v3, :cond_0

    .line 18
    const/4 v3, 0x3

    .line 19
    .line 20
    if-eq v2, v3, :cond_0

    .line 21
    const/4 v3, 0x5

    .line 22
    .line 23
    if-ne v2, v3, :cond_1

    .line 24
    :cond_0
    const/4 v2, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/4 v2, 0x0

    .line 27
    .line 28
    .line 29
    :goto_0
    invoke-direct {v0, p0, v1, v2}, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;-><init>(Lcom/narvii/chat/ChannelFlagHelper;Landroid/content/Context;Z)V

    .line 30
    .line 31
    iget v1, p0, Lcom/narvii/chat/ChannelFlagHelper;->cid:I

    .line 32
    .line 33
    iget-object v2, p0, Lcom/narvii/chat/ChannelFlagHelper;->user:Lcom/narvii/model/User;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    .line 37
    move-result-object v2

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1, v2}, Lcom/narvii/flag/report/FlagRequestDialog;->setFlagUserInfo(ILjava/lang/String;)V

    .line 41
    .line 42
    iget-object v1, p0, Lcom/narvii/chat/ChannelFlagHelper;->hintLanguage:Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 46
    move-result v1

    .line 47
    .line 48
    if-eqz v1, :cond_2

    .line 49
    .line 50
    iget-object v1, p0, Lcom/narvii/chat/ChannelFlagHelper;->context:Lcom/narvii/app/NVContext;

    .line 51
    .line 52
    .line 53
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 54
    move-result-object v1

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 58
    move-result-object v1

    .line 59
    .line 60
    .line 61
    const v2, 0x7f120219

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 65
    move-result-object v1

    .line 66
    goto :goto_1

    .line 67
    .line 68
    :cond_2
    iget-object v1, p0, Lcom/narvii/chat/ChannelFlagHelper;->hintLanguage:Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    :goto_1
    invoke-virtual {v0, v1}, Lcom/narvii/flag/report/FlagRequestDialog;->setEditHint(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    .line 75
    return-void
.end method

.method private swapYUV420ToNV21([B[BII)V
    .locals 4

    .line 1
    mul-int/2addr p3, p4

    .line 2
    const/4 p4, 0x0

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p4, p2, p4, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    .line 7
    div-int/lit8 v0, p3, 0x4

    .line 8
    .line 9
    add-int v1, p3, v0

    .line 10
    .line 11
    :goto_0
    if-ge p4, v0, :cond_0

    .line 12
    .line 13
    mul-int/lit8 v2, p4, 0x2

    .line 14
    add-int/2addr v2, p3

    .line 15
    .line 16
    add-int v3, v1, p4

    .line 17
    .line 18
    aget-byte v3, p1, v3

    .line 19
    .line 20
    aput-byte v3, p2, v2

    .line 21
    .line 22
    add-int/lit8 v2, v2, 0x1

    .line 23
    .line 24
    add-int v3, p3, p4

    .line 25
    .line 26
    aget-byte v3, p1, v3

    .line 27
    .line 28
    aput-byte v3, p2, v2

    .line 29
    .line 30
    add-int/lit8 p4, p4, 0x1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    return-void
.end method

.method static bridge synthetic t(Lcom/narvii/chat/ChannelFlagHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/chat/ChannelFlagHelper;->showResonDialog()V

    return-void
.end method

.method static bridge synthetic u(Lcom/narvii/chat/ChannelFlagHelper;[B[BII)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/narvii/chat/ChannelFlagHelper;->swapYUV420ToNV21([B[BII)V

    return-void
.end method

.method private uploadFlagScreenShot(Ljava/io/File;Lcom/narvii/util/Callback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/ChannelFlagHelper;->context:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    const-string v1, "photo"

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    check-cast v0, Lcom/narvii/photos/PhotoManager;

    .line 14
    const/4 v1, 0x0

    .line 15
    .line 16
    .line 17
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 18
    move-result-object v2

    .line 19
    .line 20
    .line 21
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v2, p1}, Lcom/narvii/photos/PhotoManager;->importPhoto(Ljava/io/File;Landroid/net/Uri;)Ljava/lang/String;

    .line 26
    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    goto :goto_0

    .line 28
    :catch_0
    move-exception p1

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 32
    move-object p1, v1

    .line 33
    .line 34
    :goto_0
    if-nez p1, :cond_2

    .line 35
    .line 36
    if-eqz p2, :cond_1

    .line 37
    .line 38
    .line 39
    invoke-interface {p2, v1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 40
    :cond_1
    return-void

    .line 41
    .line 42
    :cond_2
    new-instance v1, Lcom/narvii/chat/ChannelFlagHelper$2;

    .line 43
    .line 44
    .line 45
    invoke-direct {v1, p0, p2}, Lcom/narvii/chat/ChannelFlagHelper$2;-><init>(Lcom/narvii/chat/ChannelFlagHelper;Lcom/narvii/util/Callback;)V

    .line 46
    .line 47
    const-string p2, "flag-image"

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, p1, p2, v1}, Lcom/narvii/photos/PhotoManager;->upload(Ljava/lang/String;Ljava/lang/String;Lcom/narvii/photos/PhotoUploadListener;)V

    .line 51
    return-void
.end method

.method static bridge synthetic v(Lcom/narvii/chat/ChannelFlagHelper;Ljava/io/File;Lcom/narvii/util/Callback;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/chat/ChannelFlagHelper;->uploadFlagScreenShot(Ljava/io/File;Lcom/narvii/util/Callback;)V

    return-void
.end method

.method static bridge synthetic w()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/narvii/chat/ChannelFlagHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public flagUserInChannel(ILcom/narvii/model/User;ILjava/lang/String;I)V
    .locals 7

    const/4 v6, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    .line 1
    invoke-virtual/range {v0 .. v6}, Lcom/narvii/chat/ChannelFlagHelper;->flagUserInChannel(ILcom/narvii/model/User;ILjava/lang/String;IZ)V

    return-void
.end method

.method public flagUserInChannel(ILcom/narvii/model/User;ILjava/lang/String;IZ)V
    .locals 8

    const/4 v7, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    .line 2
    invoke-virtual/range {v0 .. v7}, Lcom/narvii/chat/ChannelFlagHelper;->flagUserInChannel(ILcom/narvii/model/User;ILjava/lang/String;IZZ)V

    return-void
.end method

.method public flagUserInChannel(ILcom/narvii/model/User;ILjava/lang/String;IZZ)V
    .locals 9

    const/4 v8, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    .line 3
    invoke-virtual/range {v0 .. v8}, Lcom/narvii/chat/ChannelFlagHelper;->flagUserInChannel(ILcom/narvii/model/User;ILjava/lang/String;IZZZ)V

    return-void
.end method

.method public flagUserInChannel(ILcom/narvii/model/User;ILjava/lang/String;IZZZ)V
    .locals 0

    iput p1, p0, Lcom/narvii/chat/ChannelFlagHelper;->cid:I

    iput-object p2, p0, Lcom/narvii/chat/ChannelFlagHelper;->user:Lcom/narvii/model/User;

    iput p3, p0, Lcom/narvii/chat/ChannelFlagHelper;->channelType:I

    iput-object p4, p0, Lcom/narvii/chat/ChannelFlagHelper;->threadId:Ljava/lang/String;

    iput p5, p0, Lcom/narvii/chat/ChannelFlagHelper;->uid:I

    iput-boolean p7, p0, Lcom/narvii/chat/ChannelFlagHelper;->showBlock:Z

    iput-boolean p8, p0, Lcom/narvii/chat/ChannelFlagHelper;->blockVideo:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/narvii/chat/ChannelFlagHelper;->mediaUrl:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/narvii/chat/ChannelFlagHelper;->shouldTakeScreenShoot:Z

    .line 4
    invoke-direct {p0}, Lcom/narvii/chat/ChannelFlagHelper;->showFlagDialog()V

    return-void
.end method

.method public setHintLanguage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/ChannelFlagHelper;->hintLanguage:Ljava/lang/String;

    return-void
.end method
