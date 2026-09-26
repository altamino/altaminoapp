.class public Lcom/narvii/video/model/Constant;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final MEDIA_SDK_VERSION:Ljava/lang/String;

.field public static PRP_DEFAULT_LIGHTNESS:F = 0.0f

.field public static PRP_DEFAULT_SMOOTHNESS:I = 0x0

.field public static PRP_ENABLED:Z = false

.field public static final PRP_MAX_LIGHTNESS:F = 1.5f

.field public static final PRP_MAX_SMOOTHNESS:I = 0xf

.field public static SHOW_VIDEO_INFO:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    .line 3
    :try_start_0
    invoke-static {}, Lio/agora/rtc/RtcEngine;->getSdkVersion()Ljava/lang/String;

    .line 4
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    goto :goto_0

    .line 6
    .line 7
    .line 8
    :catchall_0
    const-string/jumbo v0, "undefined"

    .line 9
    .line 10
    :goto_0
    sput-object v0, Lcom/narvii/video/model/Constant;->MEDIA_SDK_VERSION:Ljava/lang/String;

    .line 11
    const/4 v0, 0x1

    .line 12
    .line 13
    sput-boolean v0, Lcom/narvii/video/model/Constant;->PRP_ENABLED:Z

    .line 14
    .line 15
    .line 16
    const v1, 0x3f8ccccd    # 1.1f

    .line 17
    .line 18
    sput v1, Lcom/narvii/video/model/Constant;->PRP_DEFAULT_LIGHTNESS:F

    .line 19
    .line 20
    const/16 v1, 0xc

    .line 21
    .line 22
    sput v1, Lcom/narvii/video/model/Constant;->PRP_DEFAULT_SMOOTHNESS:I

    .line 23
    .line 24
    sput-boolean v0, Lcom/narvii/video/model/Constant;->SHOW_VIDEO_INFO:Z

    .line 25
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method
