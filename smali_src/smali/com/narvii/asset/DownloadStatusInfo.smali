.class public Lcom/narvii/asset/DownloadStatusInfo;
.super Ljava/lang/Object;
.source "SourceFile"


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

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/asset/DownloadStatusInfo;

    .line 3
    const/4 v1, 0x2

    .line 4
    .line 5
    const/high16 v2, 0x3f800000    # 1.0f

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1, v2}, Lcom/narvii/asset/DownloadStatusInfo;-><init>(IF)V

    .line 9
    .line 10
    sput-object v0, Lcom/narvii/asset/DownloadStatusInfo;->READY:Lcom/narvii/asset/DownloadStatusInfo;

    .line 11
    .line 12
    new-instance v0, Lcom/narvii/asset/DownloadStatusInfo;

    .line 13
    const/4 v1, 0x0

    .line 14
    const/4 v2, 0x0

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, v1, v2}, Lcom/narvii/asset/DownloadStatusInfo;-><init>(IF)V

    .line 18
    .line 19
    sput-object v0, Lcom/narvii/asset/DownloadStatusInfo;->IDLE:Lcom/narvii/asset/DownloadStatusInfo;

    .line 20
    .line 21
    new-instance v0, Lcom/narvii/asset/DownloadStatusInfo;

    .line 22
    const/4 v1, -0x1

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, v1, v2}, Lcom/narvii/asset/DownloadStatusInfo;-><init>(IF)V

    .line 26
    .line 27
    sput-object v0, Lcom/narvii/asset/DownloadStatusInfo;->FAIL:Lcom/narvii/asset/DownloadStatusInfo;

    .line 28
    return-void
.end method

.method public constructor <init>(IF)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput p1, p0, Lcom/narvii/asset/DownloadStatusInfo;->status:I

    .line 6
    .line 7
    iput p2, p0, Lcom/narvii/asset/DownloadStatusInfo;->progress:F

    .line 8
    return-void
.end method


# virtual methods
.method public isDownloading()Z
    .locals 2

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
