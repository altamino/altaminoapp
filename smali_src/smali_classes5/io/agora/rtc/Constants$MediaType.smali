.class public final enum Lio/agora/rtc/Constants$MediaType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MediaType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/agora/rtc/Constants$MediaType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/agora/rtc/Constants$MediaType;

.field public static final enum AUDIO_AND_VIDEO:Lio/agora/rtc/Constants$MediaType;

.field public static final enum AUDIO_ONLY:Lio/agora/rtc/Constants$MediaType;

.field public static final enum NONE:Lio/agora/rtc/Constants$MediaType;

.field public static final enum VIDEO_ONLY:Lio/agora/rtc/Constants$MediaType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    .line 2
    new-instance v0, Lio/agora/rtc/Constants$MediaType;

    .line 3
    .line 4
    const-string v1, "NONE"

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1, v2, v2}, Lio/agora/rtc/Constants$MediaType;-><init>(Ljava/lang/String;II)V

    .line 9
    .line 10
    sput-object v0, Lio/agora/rtc/Constants$MediaType;->NONE:Lio/agora/rtc/Constants$MediaType;

    .line 11
    .line 12
    new-instance v1, Lio/agora/rtc/Constants$MediaType;

    .line 13
    .line 14
    const-string v3, "AUDIO_ONLY"

    .line 15
    const/4 v4, 0x1

    .line 16
    .line 17
    .line 18
    invoke-direct {v1, v3, v4, v4}, Lio/agora/rtc/Constants$MediaType;-><init>(Ljava/lang/String;II)V

    .line 19
    .line 20
    sput-object v1, Lio/agora/rtc/Constants$MediaType;->AUDIO_ONLY:Lio/agora/rtc/Constants$MediaType;

    .line 21
    .line 22
    new-instance v3, Lio/agora/rtc/Constants$MediaType;

    .line 23
    .line 24
    const-string v5, "VIDEO_ONLY"

    .line 25
    const/4 v6, 0x2

    .line 26
    .line 27
    .line 28
    invoke-direct {v3, v5, v6, v6}, Lio/agora/rtc/Constants$MediaType;-><init>(Ljava/lang/String;II)V

    .line 29
    .line 30
    sput-object v3, Lio/agora/rtc/Constants$MediaType;->VIDEO_ONLY:Lio/agora/rtc/Constants$MediaType;

    .line 31
    .line 32
    new-instance v5, Lio/agora/rtc/Constants$MediaType;

    .line 33
    .line 34
    const-string v7, "AUDIO_AND_VIDEO"

    .line 35
    const/4 v8, 0x3

    .line 36
    .line 37
    .line 38
    invoke-direct {v5, v7, v8, v8}, Lio/agora/rtc/Constants$MediaType;-><init>(Ljava/lang/String;II)V

    .line 39
    .line 40
    sput-object v5, Lio/agora/rtc/Constants$MediaType;->AUDIO_AND_VIDEO:Lio/agora/rtc/Constants$MediaType;

    .line 41
    const/4 v7, 0x4

    .line 42
    .line 43
    new-array v7, v7, [Lio/agora/rtc/Constants$MediaType;

    .line 44
    .line 45
    aput-object v0, v7, v2

    .line 46
    .line 47
    aput-object v1, v7, v4

    .line 48
    .line 49
    aput-object v3, v7, v6

    .line 50
    .line 51
    aput-object v5, v7, v8

    .line 52
    .line 53
    sput-object v7, Lio/agora/rtc/Constants$MediaType;->$VALUES:[Lio/agora/rtc/Constants$MediaType;

    .line 54
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
    iput p3, p0, Lio/agora/rtc/Constants$MediaType;->value:I

    .line 6
    return-void
.end method

.method public static getValue(Lio/agora/rtc/Constants$MediaType;)I
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
    iget p0, p0, Lio/agora/rtc/Constants$MediaType;->value:I

    .line 3
    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/agora/rtc/Constants$MediaType;
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
    const-class v0, Lio/agora/rtc/Constants$MediaType;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    check-cast p0, Lio/agora/rtc/Constants$MediaType;

    .line 9
    return-object p0
.end method

.method public static values()[Lio/agora/rtc/Constants$MediaType;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lio/agora/rtc/Constants$MediaType;->$VALUES:[Lio/agora/rtc/Constants$MediaType;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, [Lio/agora/rtc/Constants$MediaType;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, [Lio/agora/rtc/Constants$MediaType;

    .line 9
    return-object v0
.end method
