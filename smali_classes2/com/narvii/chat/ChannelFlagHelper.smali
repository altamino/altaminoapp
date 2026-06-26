.class public Lcom/narvii/chat/ChannelFlagHelper;
.super Ljava/lang/Object;
.source "ChannelFlagHelper.java"


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

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/narvii/chat/ChannelFlagHelper;->context:Lcom/narvii/app/NVContext;

    const/4 v0, 0x0

    .line 75
    iput-boolean v0, p0, Lcom/narvii/chat/ChannelFlagHelper;->isScreenShotDone:Z

    const-string v0, "rtc"

    .line 76
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/chat/rtc/RtcService;

    iput-object p1, p0, Lcom/narvii/chat/ChannelFlagHelper;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/chat/ChannelFlagHelper;)I
    .locals 0

    .line 51
    iget p0, p0, Lcom/narvii/chat/ChannelFlagHelper;->flagType:I

    return p0
.end method

.method static synthetic access$002(Lcom/narvii/chat/ChannelFlagHelper;I)I
    .locals 0

    .line 51
    iput p1, p0, Lcom/narvii/chat/ChannelFlagHelper;->flagType:I

    return p1
.end method

.method static synthetic access$100(Lcom/narvii/chat/ChannelFlagHelper;Ljava/lang/String;)I
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/narvii/chat/ChannelFlagHelper;->getFlagType(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$1000(Lcom/narvii/chat/ChannelFlagHelper;)Z
    .locals 0

    .line 51
    iget-boolean p0, p0, Lcom/narvii/chat/ChannelFlagHelper;->blockVideo:Z

    return p0
.end method

.method static synthetic access$1100()Ljava/lang/String;
    .locals 1

    .line 51
    sget-object v0, Lcom/narvii/chat/ChannelFlagHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/narvii/chat/ChannelFlagHelper;)I
    .locals 0

    .line 51
    iget p0, p0, Lcom/narvii/chat/ChannelFlagHelper;->uid:I

    return p0
.end method

.method static synthetic access$1300(Lcom/narvii/chat/ChannelFlagHelper;)Lcom/narvii/chat/rtc/RtcService;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/narvii/chat/ChannelFlagHelper;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/narvii/chat/ChannelFlagHelper;)Z
    .locals 0

    .line 51
    iget-boolean p0, p0, Lcom/narvii/chat/ChannelFlagHelper;->isScreenShotDone:Z

    return p0
.end method

.method static synthetic access$1402(Lcom/narvii/chat/ChannelFlagHelper;Z)Z
    .locals 0

    .line 51
    iput-boolean p1, p0, Lcom/narvii/chat/ChannelFlagHelper;->isScreenShotDone:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/narvii/chat/ChannelFlagHelper;)Z
    .locals 0

    .line 51
    iget-boolean p0, p0, Lcom/narvii/chat/ChannelFlagHelper;->isFlagRequestSent:Z

    return p0
.end method

.method static synthetic access$1502(Lcom/narvii/chat/ChannelFlagHelper;Z)Z
    .locals 0

    .line 51
    iput-boolean p1, p0, Lcom/narvii/chat/ChannelFlagHelper;->isFlagRequestSent:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/narvii/chat/ChannelFlagHelper;)Ljava/io/File;
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/narvii/chat/ChannelFlagHelper;->getSnapshotFile()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1800(Lcom/narvii/chat/ChannelFlagHelper;[B[BII)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/narvii/chat/ChannelFlagHelper;->swapYUV420ToNV21([B[BII)V

    return-void
.end method

.method static synthetic access$1900(Lcom/narvii/chat/ChannelFlagHelper;Ljava/io/File;Lcom/narvii/util/Callback;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/narvii/chat/ChannelFlagHelper;->uploadFlagScreenShot(Ljava/io/File;Lcom/narvii/util/Callback;)V

    return-void
.end method

.method static synthetic access$200(Lcom/narvii/chat/ChannelFlagHelper;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/narvii/chat/ChannelFlagHelper;->showResonDialog()V

    return-void
.end method

.method static synthetic access$300(Lcom/narvii/chat/ChannelFlagHelper;)Z
    .locals 0

    .line 51
    iget-boolean p0, p0, Lcom/narvii/chat/ChannelFlagHelper;->showBlock:Z

    return p0
.end method

.method static synthetic access$400(Lcom/narvii/chat/ChannelFlagHelper;)Lcom/narvii/model/User;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/narvii/chat/ChannelFlagHelper;->user:Lcom/narvii/model/User;

    return-object p0
.end method

.method static synthetic access$500(Lcom/narvii/chat/ChannelFlagHelper;)I
    .locals 0

    .line 51
    iget p0, p0, Lcom/narvii/chat/ChannelFlagHelper;->cid:I

    return p0
.end method

.method static synthetic access$600(Lcom/narvii/chat/ChannelFlagHelper;)Ljava/lang/String;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/narvii/chat/ChannelFlagHelper;->threadId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/narvii/chat/ChannelFlagHelper;)Ljava/lang/String;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/narvii/chat/ChannelFlagHelper;->mediaUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$702(Lcom/narvii/chat/ChannelFlagHelper;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/narvii/chat/ChannelFlagHelper;->mediaUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/narvii/chat/ChannelFlagHelper;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/narvii/chat/ChannelFlagHelper;->context:Lcom/narvii/app/NVContext;

    return-object p0
.end method

.method static synthetic access$900(Lcom/narvii/chat/ChannelFlagHelper;)I
    .locals 0

    .line 51
    iget p0, p0, Lcom/narvii/chat/ChannelFlagHelper;->channelType:I

    return p0
.end method

.method private getFlagType(Ljava/lang/String;)I
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/narvii/chat/ChannelFlagHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/narvii/flag/model/Flag;->getFlagType(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private getSnapshotFile()Ljava/io/File;
    .locals 5

    .line 153
    iget-object v0, p0, Lcom/narvii/chat/ChannelFlagHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/video/ui/Utils;->getAvailableFileDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 154
    new-instance v1, Ljava/io/File;

    const-string v2, "AVChat"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 155
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 156
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 157
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 158
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 159
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 162
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 164
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method private showFlagDialog()V
    .locals 4

    .line 118
    new-instance v0, Lcom/narvii/chat/video/flag/VVChannelFlagReportDialog;

    iget-object v1, p0, Lcom/narvii/chat/ChannelFlagHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/narvii/chat/ChannelFlagHelper;->channelType:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-direct {v0, v1, v2}, Lcom/narvii/chat/video/flag/VVChannelFlagReportDialog;-><init>(Landroid/content/Context;Z)V

    .line 119
    new-instance v1, Lcom/narvii/chat/ChannelFlagHelper$1;

    invoke-direct {v1, p0, v0}, Lcom/narvii/chat/ChannelFlagHelper$1;-><init>(Lcom/narvii/chat/ChannelFlagHelper;Lcom/narvii/chat/video/flag/VVChannelFlagReportDialog;)V

    invoke-virtual {v0, v1}, Lcom/narvii/chat/video/flag/VVChannelFlagReportDialog;->setItemClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    invoke-virtual {v0}, Lcom/narvii/chat/video/flag/VVChannelFlagReportDialog;->show()V

    return-void
.end method

.method private showResonDialog()V
    .locals 4

    .line 132
    new-instance v0, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;

    iget-object v1, p0, Lcom/narvii/chat/ChannelFlagHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-boolean v2, p0, Lcom/narvii/chat/ChannelFlagHelper;->shouldTakeScreenShoot:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/narvii/chat/ChannelFlagHelper;->channelType:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-direct {v0, p0, v1, v2}, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;-><init>(Lcom/narvii/chat/ChannelFlagHelper;Landroid/content/Context;Z)V

    .line 136
    iget v1, p0, Lcom/narvii/chat/ChannelFlagHelper;->cid:I

    iget-object v2, p0, Lcom/narvii/chat/ChannelFlagHelper;->user:Lcom/narvii/model/User;

    invoke-virtual {v2}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/narvii/flag/report/FlagRequestDialog;->setFlagUserInfo(ILjava/lang/String;)V

    .line 137
    iget-object v1, p0, Lcom/narvii/chat/ChannelFlagHelper;->hintLanguage:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/narvii/chat/ChannelFlagHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f01c9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/narvii/chat/ChannelFlagHelper;->hintLanguage:Ljava/lang/String;

    :goto_1
    invoke-virtual {v0, v1}, Lcom/narvii/flag/report/FlagRequestDialog;->setEditHint(Ljava/lang/String;)V

    .line 138
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    return-void
.end method

.method private swapYUV420ToNV21([B[BII)V
    .locals 5

    mul-int p3, p3, p4

    const/4 p4, 0x0

    .line 142
    invoke-static {p1, p4, p2, p4, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 145
    div-int/lit8 v0, p3, 0x4

    add-int v1, p3, v0

    :goto_0
    if-ge p4, v0, :cond_0

    mul-int/lit8 v2, p4, 0x2

    add-int/2addr v2, p3

    add-int/lit8 v3, v2, 0x0

    add-int v4, v1, p4

    .line 147
    aget-byte v4, p1, v4

    aput-byte v4, p2, v3

    add-int/lit8 v2, v2, 0x1

    add-int v3, p3, p4

    .line 148
    aget-byte v3, p1, v3

    aput-byte v3, p2, v2

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_0
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

    .line 170
    iget-object v0, p0, Lcom/narvii/chat/ChannelFlagHelper;->context:Lcom/narvii/app/NVContext;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "photo"

    .line 174
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/photos/PhotoManager;

    const/4 v1, 0x0

    .line 176
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Lcom/narvii/photos/PhotoManager;->importPhoto(Ljava/io/File;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 178
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    move-object p1, v1

    :goto_0
    if-nez p1, :cond_2

    if-eqz p2, :cond_1

    .line 182
    invoke-interface {p2, v1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_1
    return-void

    .line 186
    :cond_2
    new-instance v1, Lcom/narvii/chat/ChannelFlagHelper$2;

    invoke-direct {v1, p0, p2}, Lcom/narvii/chat/ChannelFlagHelper$2;-><init>(Lcom/narvii/chat/ChannelFlagHelper;Lcom/narvii/util/Callback;)V

    const-string p2, "flag-image"

    invoke-virtual {v0, p1, p2, v1}, Lcom/narvii/photos/PhotoManager;->upload(Ljava/lang/String;Ljava/lang/String;Lcom/narvii/photos/PhotoUploadListener;)V

    return-void
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

    .line 80
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

    .line 85
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

    .line 91
    invoke-virtual/range {v0 .. v8}, Lcom/narvii/chat/ChannelFlagHelper;->flagUserInChannel(ILcom/narvii/model/User;ILjava/lang/String;IZZZ)V

    return-void
.end method

.method public flagUserInChannel(ILcom/narvii/model/User;ILjava/lang/String;IZZZ)V
    .locals 0

    .line 96
    iput p1, p0, Lcom/narvii/chat/ChannelFlagHelper;->cid:I

    .line 97
    iput-object p2, p0, Lcom/narvii/chat/ChannelFlagHelper;->user:Lcom/narvii/model/User;

    .line 98
    iput p3, p0, Lcom/narvii/chat/ChannelFlagHelper;->channelType:I

    .line 99
    iput-object p4, p0, Lcom/narvii/chat/ChannelFlagHelper;->threadId:Ljava/lang/String;

    .line 100
    iput p5, p0, Lcom/narvii/chat/ChannelFlagHelper;->uid:I

    .line 101
    iput-boolean p7, p0, Lcom/narvii/chat/ChannelFlagHelper;->showBlock:Z

    .line 102
    iput-boolean p8, p0, Lcom/narvii/chat/ChannelFlagHelper;->blockVideo:Z

    const/4 p1, 0x0

    .line 103
    iput-object p1, p0, Lcom/narvii/chat/ChannelFlagHelper;->mediaUrl:Ljava/lang/String;

    .line 104
    iput-boolean p6, p0, Lcom/narvii/chat/ChannelFlagHelper;->shouldTakeScreenShoot:Z

    .line 105
    invoke-direct {p0}, Lcom/narvii/chat/ChannelFlagHelper;->showFlagDialog()V

    return-void
.end method

.method public setHintLanguage(Ljava/lang/String;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/narvii/chat/ChannelFlagHelper;->hintLanguage:Ljava/lang/String;

    return-void
.end method
