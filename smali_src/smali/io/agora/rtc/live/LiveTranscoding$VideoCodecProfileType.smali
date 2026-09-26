.class public final enum Lio/agora/rtc/live/LiveTranscoding$VideoCodecProfileType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/live/LiveTranscoding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VideoCodecProfileType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/agora/rtc/live/LiveTranscoding$VideoCodecProfileType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/agora/rtc/live/LiveTranscoding$VideoCodecProfileType;

.field public static final enum BASELINE:Lio/agora/rtc/live/LiveTranscoding$VideoCodecProfileType;

.field public static final enum HIGH:Lio/agora/rtc/live/LiveTranscoding$VideoCodecProfileType;

.field public static final enum MAIN:Lio/agora/rtc/live/LiveTranscoding$VideoCodecProfileType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    .line 2
    new-instance v0, Lio/agora/rtc/live/LiveTranscoding$VideoCodecProfileType;

    .line 3
    .line 4
    const/16 v1, 0x42

    .line 5
    .line 6
    const-string v2, "BASELINE"

    .line 7
    const/4 v3, 0x0

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v2, v3, v1}, Lio/agora/rtc/live/LiveTranscoding$VideoCodecProfileType;-><init>(Ljava/lang/String;II)V

    .line 11
    .line 12
    sput-object v0, Lio/agora/rtc/live/LiveTranscoding$VideoCodecProfileType;->BASELINE:Lio/agora/rtc/live/LiveTranscoding$VideoCodecProfileType;

    .line 13
    .line 14
    new-instance v1, Lio/agora/rtc/live/LiveTranscoding$VideoCodecProfileType;

    .line 15
    .line 16
    const/16 v2, 0x4d

    .line 17
    .line 18
    const-string v4, "MAIN"

    .line 19
    const/4 v5, 0x1

    .line 20
    .line 21
    .line 22
    invoke-direct {v1, v4, v5, v2}, Lio/agora/rtc/live/LiveTranscoding$VideoCodecProfileType;-><init>(Ljava/lang/String;II)V

    .line 23
    .line 24
    sput-object v1, Lio/agora/rtc/live/LiveTranscoding$VideoCodecProfileType;->MAIN:Lio/agora/rtc/live/LiveTranscoding$VideoCodecProfileType;

    .line 25
    .line 26
    new-instance v2, Lio/agora/rtc/live/LiveTranscoding$VideoCodecProfileType;

    .line 27
    .line 28
    const/16 v4, 0x64

    .line 29
    .line 30
    const-string v6, "HIGH"

    .line 31
    const/4 v7, 0x2

    .line 32
    .line 33
    .line 34
    invoke-direct {v2, v6, v7, v4}, Lio/agora/rtc/live/LiveTranscoding$VideoCodecProfileType;-><init>(Ljava/lang/String;II)V

    .line 35
    .line 36
    sput-object v2, Lio/agora/rtc/live/LiveTranscoding$VideoCodecProfileType;->HIGH:Lio/agora/rtc/live/LiveTranscoding$VideoCodecProfileType;

    .line 37
    const/4 v4, 0x3

    .line 38
    .line 39
    new-array v4, v4, [Lio/agora/rtc/live/LiveTranscoding$VideoCodecProfileType;

    .line 40
    .line 41
    aput-object v0, v4, v3

    .line 42
    .line 43
    aput-object v1, v4, v5

    .line 44
    .line 45
    aput-object v2, v4, v7

    .line 46
    .line 47
    sput-object v4, Lio/agora/rtc/live/LiveTranscoding$VideoCodecProfileType;->$VALUES:[Lio/agora/rtc/live/LiveTranscoding$VideoCodecProfileType;

    .line 48
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
    iput p3, p0, Lio/agora/rtc/live/LiveTranscoding$VideoCodecProfileType;->value:I

    .line 6
    return-void
.end method

.method public static getValue(Lio/agora/rtc/live/LiveTranscoding$VideoCodecProfileType;)I
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
    iget p0, p0, Lio/agora/rtc/live/LiveTranscoding$VideoCodecProfileType;->value:I

    .line 3
    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/agora/rtc/live/LiveTranscoding$VideoCodecProfileType;
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
    const-class v0, Lio/agora/rtc/live/LiveTranscoding$VideoCodecProfileType;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    check-cast p0, Lio/agora/rtc/live/LiveTranscoding$VideoCodecProfileType;

    .line 9
    return-object p0
.end method

.method public static values()[Lio/agora/rtc/live/LiveTranscoding$VideoCodecProfileType;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lio/agora/rtc/live/LiveTranscoding$VideoCodecProfileType;->$VALUES:[Lio/agora/rtc/live/LiveTranscoding$VideoCodecProfileType;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, [Lio/agora/rtc/live/LiveTranscoding$VideoCodecProfileType;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, [Lio/agora/rtc/live/LiveTranscoding$VideoCodecProfileType;

    .line 9
    return-object v0
.end method
