.class public final enum Lio/agora/rtc/live/LiveInjectStreamConfig$AudioSampleRateType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/live/LiveInjectStreamConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AudioSampleRateType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/agora/rtc/live/LiveInjectStreamConfig$AudioSampleRateType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/agora/rtc/live/LiveInjectStreamConfig$AudioSampleRateType;

.field public static final enum TYPE_32000:Lio/agora/rtc/live/LiveInjectStreamConfig$AudioSampleRateType;

.field public static final enum TYPE_44100:Lio/agora/rtc/live/LiveInjectStreamConfig$AudioSampleRateType;

.field public static final enum TYPE_48000:Lio/agora/rtc/live/LiveInjectStreamConfig$AudioSampleRateType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    .line 2
    new-instance v0, Lio/agora/rtc/live/LiveInjectStreamConfig$AudioSampleRateType;

    .line 3
    .line 4
    const/16 v1, 0x7d00

    .line 5
    .line 6
    const-string v2, "TYPE_32000"

    .line 7
    const/4 v3, 0x0

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v2, v3, v1}, Lio/agora/rtc/live/LiveInjectStreamConfig$AudioSampleRateType;-><init>(Ljava/lang/String;II)V

    .line 11
    .line 12
    sput-object v0, Lio/agora/rtc/live/LiveInjectStreamConfig$AudioSampleRateType;->TYPE_32000:Lio/agora/rtc/live/LiveInjectStreamConfig$AudioSampleRateType;

    .line 13
    .line 14
    new-instance v1, Lio/agora/rtc/live/LiveInjectStreamConfig$AudioSampleRateType;

    .line 15
    .line 16
    .line 17
    const v2, 0xac44

    .line 18
    .line 19
    const-string v4, "TYPE_44100"

    .line 20
    const/4 v5, 0x1

    .line 21
    .line 22
    .line 23
    invoke-direct {v1, v4, v5, v2}, Lio/agora/rtc/live/LiveInjectStreamConfig$AudioSampleRateType;-><init>(Ljava/lang/String;II)V

    .line 24
    .line 25
    sput-object v1, Lio/agora/rtc/live/LiveInjectStreamConfig$AudioSampleRateType;->TYPE_44100:Lio/agora/rtc/live/LiveInjectStreamConfig$AudioSampleRateType;

    .line 26
    .line 27
    new-instance v2, Lio/agora/rtc/live/LiveInjectStreamConfig$AudioSampleRateType;

    .line 28
    .line 29
    .line 30
    const v4, 0xbb80

    .line 31
    .line 32
    const-string v6, "TYPE_48000"

    .line 33
    const/4 v7, 0x2

    .line 34
    .line 35
    .line 36
    invoke-direct {v2, v6, v7, v4}, Lio/agora/rtc/live/LiveInjectStreamConfig$AudioSampleRateType;-><init>(Ljava/lang/String;II)V

    .line 37
    .line 38
    sput-object v2, Lio/agora/rtc/live/LiveInjectStreamConfig$AudioSampleRateType;->TYPE_48000:Lio/agora/rtc/live/LiveInjectStreamConfig$AudioSampleRateType;

    .line 39
    const/4 v4, 0x3

    .line 40
    .line 41
    new-array v4, v4, [Lio/agora/rtc/live/LiveInjectStreamConfig$AudioSampleRateType;

    .line 42
    .line 43
    aput-object v0, v4, v3

    .line 44
    .line 45
    aput-object v1, v4, v5

    .line 46
    .line 47
    aput-object v2, v4, v7

    .line 48
    .line 49
    sput-object v4, Lio/agora/rtc/live/LiveInjectStreamConfig$AudioSampleRateType;->$VALUES:[Lio/agora/rtc/live/LiveInjectStreamConfig$AudioSampleRateType;

    .line 50
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
    iput p3, p0, Lio/agora/rtc/live/LiveInjectStreamConfig$AudioSampleRateType;->value:I

    .line 6
    return-void
.end method

.method public static getValue(Lio/agora/rtc/live/LiveInjectStreamConfig$AudioSampleRateType;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 1
    .line 2
    iget p0, p0, Lio/agora/rtc/live/LiveInjectStreamConfig$AudioSampleRateType;->value:I

    .line 3
    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/agora/rtc/live/LiveInjectStreamConfig$AudioSampleRateType;
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
    const-class v0, Lio/agora/rtc/live/LiveInjectStreamConfig$AudioSampleRateType;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    check-cast p0, Lio/agora/rtc/live/LiveInjectStreamConfig$AudioSampleRateType;

    .line 9
    return-object p0
.end method

.method public static values()[Lio/agora/rtc/live/LiveInjectStreamConfig$AudioSampleRateType;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lio/agora/rtc/live/LiveInjectStreamConfig$AudioSampleRateType;->$VALUES:[Lio/agora/rtc/live/LiveInjectStreamConfig$AudioSampleRateType;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, [Lio/agora/rtc/live/LiveInjectStreamConfig$AudioSampleRateType;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, [Lio/agora/rtc/live/LiveInjectStreamConfig$AudioSampleRateType;

    .line 9
    return-object v0
.end method
