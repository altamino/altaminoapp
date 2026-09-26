.class public final enum Lio/agora/rtc/video/VideoEncoderConfiguration$FRAME_RATE;
.super Ljava/lang/Enum;
.source "SourceFile"


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
    .locals 14

    .line 1
    .line 2
    new-instance v0, Lio/agora/rtc/video/VideoEncoderConfiguration$FRAME_RATE;

    .line 3
    .line 4
    const-string v1, "FRAME_RATE_FPS_1"

    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1, v2, v3}, Lio/agora/rtc/video/VideoEncoderConfiguration$FRAME_RATE;-><init>(Ljava/lang/String;II)V

    .line 10
    .line 11
    sput-object v0, Lio/agora/rtc/video/VideoEncoderConfiguration$FRAME_RATE;->FRAME_RATE_FPS_1:Lio/agora/rtc/video/VideoEncoderConfiguration$FRAME_RATE;

    .line 12
    .line 13
    new-instance v1, Lio/agora/rtc/video/VideoEncoderConfiguration$FRAME_RATE;

    .line 14
    .line 15
    const-string v4, "FRAME_RATE_FPS_7"

    .line 16
    const/4 v5, 0x7

    .line 17
    .line 18
    .line 19
    invoke-direct {v1, v4, v3, v5}, Lio/agora/rtc/video/VideoEncoderConfiguration$FRAME_RATE;-><init>(Ljava/lang/String;II)V

    .line 20
    .line 21
    sput-object v1, Lio/agora/rtc/video/VideoEncoderConfiguration$FRAME_RATE;->FRAME_RATE_FPS_7:Lio/agora/rtc/video/VideoEncoderConfiguration$FRAME_RATE;

    .line 22
    .line 23
    new-instance v4, Lio/agora/rtc/video/VideoEncoderConfiguration$FRAME_RATE;

    .line 24
    .line 25
    const/16 v5, 0xa

    .line 26
    .line 27
    const-string v6, "FRAME_RATE_FPS_10"

    .line 28
    const/4 v7, 0x2

    .line 29
    .line 30
    .line 31
    invoke-direct {v4, v6, v7, v5}, Lio/agora/rtc/video/VideoEncoderConfiguration$FRAME_RATE;-><init>(Ljava/lang/String;II)V

    .line 32
    .line 33
    sput-object v4, Lio/agora/rtc/video/VideoEncoderConfiguration$FRAME_RATE;->FRAME_RATE_FPS_10:Lio/agora/rtc/video/VideoEncoderConfiguration$FRAME_RATE;

    .line 34
    .line 35
    new-instance v5, Lio/agora/rtc/video/VideoEncoderConfiguration$FRAME_RATE;

    .line 36
    .line 37
    const/16 v6, 0xf

    .line 38
    .line 39
    const-string v8, "FRAME_RATE_FPS_15"

    .line 40
    const/4 v9, 0x3

    .line 41
    .line 42
    .line 43
    invoke-direct {v5, v8, v9, v6}, Lio/agora/rtc/video/VideoEncoderConfiguration$FRAME_RATE;-><init>(Ljava/lang/String;II)V

    .line 44
    .line 45
    sput-object v5, Lio/agora/rtc/video/VideoEncoderConfiguration$FRAME_RATE;->FRAME_RATE_FPS_15:Lio/agora/rtc/video/VideoEncoderConfiguration$FRAME_RATE;

    .line 46
    .line 47
    new-instance v6, Lio/agora/rtc/video/VideoEncoderConfiguration$FRAME_RATE;

    .line 48
    .line 49
    const/16 v8, 0x18

    .line 50
    .line 51
    const-string v10, "FRAME_RATE_FPS_24"

    .line 52
    const/4 v11, 0x4

    .line 53
    .line 54
    .line 55
    invoke-direct {v6, v10, v11, v8}, Lio/agora/rtc/video/VideoEncoderConfiguration$FRAME_RATE;-><init>(Ljava/lang/String;II)V

    .line 56
    .line 57
    sput-object v6, Lio/agora/rtc/video/VideoEncoderConfiguration$FRAME_RATE;->FRAME_RATE_FPS_24:Lio/agora/rtc/video/VideoEncoderConfiguration$FRAME_RATE;

    .line 58
    .line 59
    new-instance v8, Lio/agora/rtc/video/VideoEncoderConfiguration$FRAME_RATE;

    .line 60
    .line 61
    const/16 v10, 0x1e

    .line 62
    .line 63
    const-string v12, "FRAME_RATE_FPS_30"

    .line 64
    const/4 v13, 0x5

    .line 65
    .line 66
    .line 67
    invoke-direct {v8, v12, v13, v10}, Lio/agora/rtc/video/VideoEncoderConfiguration$FRAME_RATE;-><init>(Ljava/lang/String;II)V

    .line 68
    .line 69
    sput-object v8, Lio/agora/rtc/video/VideoEncoderConfiguration$FRAME_RATE;->FRAME_RATE_FPS_30:Lio/agora/rtc/video/VideoEncoderConfiguration$FRAME_RATE;

    .line 70
    const/4 v10, 0x6

    .line 71
    .line 72
    new-array v10, v10, [Lio/agora/rtc/video/VideoEncoderConfiguration$FRAME_RATE;

    .line 73
    .line 74
    aput-object v0, v10, v2

    .line 75
    .line 76
    aput-object v1, v10, v3

    .line 77
    .line 78
    aput-object v4, v10, v7

    .line 79
    .line 80
    aput-object v5, v10, v9

    .line 81
    .line 82
    aput-object v6, v10, v11

    .line 83
    .line 84
    aput-object v8, v10, v13

    .line 85
    .line 86
    sput-object v10, Lio/agora/rtc/video/VideoEncoderConfiguration$FRAME_RATE;->$VALUES:[Lio/agora/rtc/video/VideoEncoderConfiguration$FRAME_RATE;

    .line 87
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "v"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    .line 5
    iput p3, p0, Lio/agora/rtc/video/VideoEncoderConfiguration$FRAME_RATE;->value:I

    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/agora/rtc/video/VideoEncoderConfiguration$FRAME_RATE;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 1
    .line 2
    const-class v0, Lio/agora/rtc/video/VideoEncoderConfiguration$FRAME_RATE;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    check-cast p0, Lio/agora/rtc/video/VideoEncoderConfiguration$FRAME_RATE;

    .line 9
    return-object p0
.end method

.method public static values()[Lio/agora/rtc/video/VideoEncoderConfiguration$FRAME_RATE;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lio/agora/rtc/video/VideoEncoderConfiguration$FRAME_RATE;->$VALUES:[Lio/agora/rtc/video/VideoEncoderConfiguration$FRAME_RATE;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, [Lio/agora/rtc/video/VideoEncoderConfiguration$FRAME_RATE;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, [Lio/agora/rtc/video/VideoEncoderConfiguration$FRAME_RATE;

    .line 9
    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lio/agora/rtc/video/VideoEncoderConfiguration$FRAME_RATE;->value:I

    return v0
.end method
