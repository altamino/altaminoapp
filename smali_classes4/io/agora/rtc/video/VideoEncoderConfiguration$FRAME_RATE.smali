.class public final enum Lio/agora/rtc/video/VideoEncoderConfiguration$FRAME_RATE;
.super Ljava/lang/Enum;
.source "VideoEncoderConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/video/VideoEncoderConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FRAME_RATE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/agora/rtc/video/VideoEncoderConfiguration$FRAME_RATE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/agora/rtc/video/VideoEncoderConfiguration$FRAME_RATE;

.field public static final enum FRAME_RATE_FPS_1:Lio/agora/rtc/video/VideoEncoderConfiguration$FRAME_RATE;

.field public static final enum FRAME_RATE_FPS_10:Lio/agora/rtc/video/VideoEncoderConfiguration$FRAME_RATE;

.field public static final enum FRAME_RATE_FPS_15:Lio/agora/rtc/video/VideoEncoderConfiguration$FRAME_RATE;

.field public static final enum FRAME_RATE_FPS_24:Lio/agora/rtc/video/VideoEncoderConfiguration$FRAME_RATE;

.field public static final enum FRAME_RATE_FPS_30:Lio/agora/rtc/video/VideoEncoderConfiguration$FRAME_RATE;

.field public static final enum FRAME_RATE_FPS_7:Lio/agora/rtc/video/VideoEncoderConfiguration$FRAME_RATE;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 103
    new-instance v0, Lio/agora/rtc/video/VideoEncoderConfiguration$FRAME_RATE;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "FRAME_RATE_FPS_1"

    invoke-direct {v0, v3, v1, v2}, Lio/agora/rtc/video/VideoEncoderConfiguration$FRAME_RATE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/agora/rtc/video/VideoEncoderConfiguration$FRAME_RATE;->FRAME_RATE_FPS_1:Lio/agora/rtc/video/VideoEncoderConfiguration$FRAME_RATE;

    .line 107
    new-instance v0, Lio/agora/rtc/video/VideoEncoderConfiguration$FRAME_RATE;

    const-string v3, "FRAME_RATE_FPS_7"

    const/4 v4, 0x7

    invoke-direct {v0, v3, v2, v4}, Lio/agora/rtc/video/VideoEncoderConfiguration$FRAME_RATE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/agora/rtc/video/VideoEncoderConfiguration$FRAME_RATE;->FRAME_RATE_FPS_7:Lio/agora/rtc/video/VideoEncoderConfiguration$FRAME_RATE;

    .line 111
    new-instance v0, Lio/agora/rtc/video/VideoEncoderConfiguration$FRAME_RATE;

    const/4 v3, 0x2

    const-string v4, "FRAME_RATE_FPS_10"

    const/16 v5, 0xa

    invoke-direct {v0, v4, v3, v5}, Lio/agora/rtc/video/VideoEncoderConfiguration$FRAME_RATE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/agora/rtc/video/VideoEncoderConfiguration$FRAME_RATE;->FRAME_RATE_FPS_10:Lio/agora/rtc/video/VideoEncoderConfiguration$FRAME_RATE;

    .line 115
    new-instance v0, Lio/agora/rtc/video/VideoEncoderConfiguration$FRAME_RATE;

    const/4 v4, 0x3

    const-string v5, "FRAME_RATE_FPS_15"

    const/16 v6, 0xf

    invoke-direct {v0, v5, v4, v6}, Lio/agora/rtc/video/VideoEncoderConfiguration$FRAME_RATE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/agora/rtc/video/VideoEncoderConfiguration$FRAME_RATE;->FRAME_RATE_FPS_15:Lio/agora/rtc/video/VideoEncoderConfiguration$FRAME_RATE;

    .line 119
    new-instance v0, Lio/agora/rtc/video/VideoEncoderConfiguration$FRAME_RATE;

    const/4 v5, 0x4

    const-string v6, "FRAME_RATE_FPS_24"

    const/16 v7, 0x18

    invoke-direct {v0, v6, v5, v7}, Lio/agora/rtc/video/VideoEncoderConfiguration$FRAME_RATE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/agora/rtc/video/VideoEncoderConfiguration$FRAME_RATE;->FRAME_RATE_FPS_24:Lio/agora/rtc/video/VideoEncoderConfiguration$FRAME_RATE;

    .line 123
    new-instance v0, Lio/agora/rtc/video/VideoEncoderConfiguration$FRAME_RATE;

    const/4 v6, 0x5

    const-string v7, "FRAME_RATE_FPS_30"

    const/16 v8, 0x1e

    invoke-direct {v0, v7, v6, v8}, Lio/agora/rtc/video/VideoEncoderConfiguration$FRAME_RATE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/agora/rtc/video/VideoEncoderConfiguration$FRAME_RATE;->FRAME_RATE_FPS_30:Lio/agora/rtc/video/VideoEncoderConfiguration$FRAME_RATE;

    const/4 v0, 0x6

    new-array v0, v0, [Lio/agora/rtc/video/VideoEncoderConfiguration$FRAME_RATE;

    .line 99
    sget-object v7, Lio/agora/rtc/video/VideoEncoderConfiguration$FRAME_RATE;->FRAME_RATE_FPS_1:Lio/agora/rtc/video/VideoEncoderConfiguration$FRAME_RATE;

    aput-object v7, v0, v1

    sget-object v1, Lio/agora/rtc/video/VideoEncoderConfiguration$FRAME_RATE;->FRAME_RATE_FPS_7:Lio/agora/rtc/video/VideoEncoderConfiguration$FRAME_RATE;

    aput-object v1, v0, v2

    sget-object v1, Lio/agora/rtc/video/VideoEncoderConfiguration$FRAME_RATE;->FRAME_RATE_FPS_10:Lio/agora/rtc/video/VideoEncoderConfiguration$FRAME_RATE;

    aput-object v1, v0, v3

    sget-object v1, Lio/agora/rtc/video/VideoEncoderConfiguration$FRAME_RATE;->FRAME_RATE_FPS_15:Lio/agora/rtc/video/VideoEncoderConfiguration$FRAME_RATE;

    aput-object v1, v0, v4

    sget-object v1, Lio/agora/rtc/video/VideoEncoderConfiguration$FRAME_RATE;->FRAME_RATE_FPS_24:Lio/agora/rtc/video/VideoEncoderConfiguration$FRAME_RATE;

    aput-object v1, v0, v5

    sget-object v1, Lio/agora/rtc/video/VideoEncoderConfiguration$FRAME_RATE;->FRAME_RATE_FPS_30:Lio/agora/rtc/video/VideoEncoderConfiguration$FRAME_RATE;

    aput-object v1, v0, v6

    sput-object v0, Lio/agora/rtc/video/VideoEncoderConfiguration$FRAME_RATE;->$VALUES:[Lio/agora/rtc/video/VideoEncoderConfiguration$FRAME_RATE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 128
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 129
    iput p3, p0, Lio/agora/rtc/video/VideoEncoderConfiguration$FRAME_RATE;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/agora/rtc/video/VideoEncoderConfiguration$FRAME_RATE;
    .locals 1

    .line 99
    const-class v0, Lio/agora/rtc/video/VideoEncoderConfiguration$FRAME_RATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/agora/rtc/video/VideoEncoderConfiguration$FRAME_RATE;

    return-object p0
.end method

.method public static values()[Lio/agora/rtc/video/VideoEncoderConfiguration$FRAME_RATE;
    .locals 1

    .line 99
    sget-object v0, Lio/agora/rtc/video/VideoEncoderConfiguration$FRAME_RATE;->$VALUES:[Lio/agora/rtc/video/VideoEncoderConfiguration$FRAME_RATE;

    invoke-virtual {v0}, [Lio/agora/rtc/video/VideoEncoderConfiguration$FRAME_RATE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/agora/rtc/video/VideoEncoderConfiguration$FRAME_RATE;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 134
    iget v0, p0, Lio/agora/rtc/video/VideoEncoderConfiguration$FRAME_RATE;->value:I

    return v0
.end method
