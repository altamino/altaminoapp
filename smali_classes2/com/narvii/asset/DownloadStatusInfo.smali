.class public Lcom/narvii/asset/DownloadStatusInfo;
.super Ljava/lang/Object;
.source "DownloadStatusInfo.java"


# static fields
.field public static final FAIL:Lcom/narvii/asset/DownloadStatusInfo;

.field public static final IDLE:Lcom/narvii/asset/DownloadStatusInfo;

.field public static final READY:Lcom/narvii/asset/DownloadStatusInfo;

.field public static final STATUS_DOWNLOADING:I = 0x1

.field public static final STATUS_FAIL:I = -0x1

.field public static final STATUS_IDLE:I = 0x0

.field public static final STATUS_READY:I = 0x2


# instance fields
.field public progress:F

.field public status:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Lcom/narvii/asset/DownloadStatusInfo;

    const/4 v1, 0x2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Lcom/narvii/asset/DownloadStatusInfo;-><init>(IF)V

    sput-object v0, Lcom/narvii/asset/DownloadStatusInfo;->READY:Lcom/narvii/asset/DownloadStatusInfo;

    .line 17
    new-instance v0, Lcom/narvii/asset/DownloadStatusInfo;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/narvii/asset/DownloadStatusInfo;-><init>(IF)V

    sput-object v0, Lcom/narvii/asset/DownloadStatusInfo;->IDLE:Lcom/narvii/asset/DownloadStatusInfo;

    .line 18
    new-instance v0, Lcom/narvii/asset/DownloadStatusInfo;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Lcom/narvii/asset/DownloadStatusInfo;-><init>(IF)V

    sput-object v0, Lcom/narvii/asset/DownloadStatusInfo;->FAIL:Lcom/narvii/asset/DownloadStatusInfo;

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p1, p0, Lcom/narvii/asset/DownloadStatusInfo;->status:I

    .line 22
    iput p2, p0, Lcom/narvii/asset/DownloadStatusInfo;->progress:F

    return-void
.end method


# virtual methods
.method public isDownloading()Z
    .locals 2

    .line 34
    iget v0, p0, Lcom/narvii/asset/DownloadStatusInfo;->status:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isFailed()Z
    .locals 2

    .line 38
    iget v0, p0, Lcom/narvii/asset/DownloadStatusInfo;->status:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFinished()Z
    .locals 2

    .line 26
    iget v0, p0, Lcom/narvii/asset/DownloadStatusInfo;->status:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isIdle()Z
    .locals 1

    .line 42
    iget v0, p0, Lcom/narvii/asset/DownloadStatusInfo;->status:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isReady()Z
    .locals 2

    .line 30
    iget v0, p0, Lcom/narvii/asset/DownloadStatusInfo;->status:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
