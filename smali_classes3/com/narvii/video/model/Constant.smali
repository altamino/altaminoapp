.class public Lcom/narvii/video/model/Constant;
.super Ljava/lang/Object;
.source "Constant.java"


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

    .line 12
    :try_start_0
    invoke-static {}, Lio/agora/rtc/RtcEngine;->getSdkVersion()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const-string v0, "undefined"

    .line 15
    :goto_0
    sput-object v0, Lcom/narvii/video/model/Constant;->MEDIA_SDK_VERSION:Ljava/lang/String;

    const/4 v0, 0x1

    .line 18
    sput-boolean v0, Lcom/narvii/video/model/Constant;->PRP_ENABLED:Z

    const v1, 0x3f8ccccd    # 1.1f

    .line 19
    sput v1, Lcom/narvii/video/model/Constant;->PRP_DEFAULT_LIGHTNESS:F

    const/16 v1, 0xc

    .line 20
    sput v1, Lcom/narvii/video/model/Constant;->PRP_DEFAULT_SMOOTHNESS:I

    .line 24
    sput-boolean v0, Lcom/narvii/video/model/Constant;->SHOW_VIDEO_INFO:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
