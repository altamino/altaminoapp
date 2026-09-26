.class public final enum Lio/agora/rtc/Constants$LogLevel;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LogLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/agora/rtc/Constants$LogLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/agora/rtc/Constants$LogLevel;

.field public static final enum LOG_LEVEL_ERROR:Lio/agora/rtc/Constants$LogLevel;

.field public static final enum LOG_LEVEL_FATAL:Lio/agora/rtc/Constants$LogLevel;

.field public static final enum LOG_LEVEL_INFO:Lio/agora/rtc/Constants$LogLevel;

.field public static final enum LOG_LEVEL_NONE:Lio/agora/rtc/Constants$LogLevel;

.field public static final enum LOG_LEVEL_WARN:Lio/agora/rtc/Constants$LogLevel;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 1
    .line 2
    new-instance v0, Lio/agora/rtc/Constants$LogLevel;

    .line 3
    .line 4
    const-string v1, "LOG_LEVEL_NONE"

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1, v2, v2}, Lio/agora/rtc/Constants$LogLevel;-><init>(Ljava/lang/String;II)V

    .line 9
    .line 10
    sput-object v0, Lio/agora/rtc/Constants$LogLevel;->LOG_LEVEL_NONE:Lio/agora/rtc/Constants$LogLevel;

    .line 11
    .line 12
    new-instance v1, Lio/agora/rtc/Constants$LogLevel;

    .line 13
    .line 14
    const-string v3, "LOG_LEVEL_INFO"

    .line 15
    const/4 v4, 0x1

    .line 16
    .line 17
    .line 18
    invoke-direct {v1, v3, v4, v4}, Lio/agora/rtc/Constants$LogLevel;-><init>(Ljava/lang/String;II)V

    .line 19
    .line 20
    sput-object v1, Lio/agora/rtc/Constants$LogLevel;->LOG_LEVEL_INFO:Lio/agora/rtc/Constants$LogLevel;

    .line 21
    .line 22
    new-instance v3, Lio/agora/rtc/Constants$LogLevel;

    .line 23
    .line 24
    const-string v5, "LOG_LEVEL_WARN"

    .line 25
    const/4 v6, 0x2

    .line 26
    .line 27
    .line 28
    invoke-direct {v3, v5, v6, v6}, Lio/agora/rtc/Constants$LogLevel;-><init>(Ljava/lang/String;II)V

    .line 29
    .line 30
    sput-object v3, Lio/agora/rtc/Constants$LogLevel;->LOG_LEVEL_WARN:Lio/agora/rtc/Constants$LogLevel;

    .line 31
    .line 32
    new-instance v5, Lio/agora/rtc/Constants$LogLevel;

    .line 33
    .line 34
    const-string v7, "LOG_LEVEL_ERROR"

    .line 35
    const/4 v8, 0x3

    .line 36
    const/4 v9, 0x4

    .line 37
    .line 38
    .line 39
    invoke-direct {v5, v7, v8, v9}, Lio/agora/rtc/Constants$LogLevel;-><init>(Ljava/lang/String;II)V

    .line 40
    .line 41
    sput-object v5, Lio/agora/rtc/Constants$LogLevel;->LOG_LEVEL_ERROR:Lio/agora/rtc/Constants$LogLevel;

    .line 42
    .line 43
    new-instance v7, Lio/agora/rtc/Constants$LogLevel;

    .line 44
    .line 45
    const-string v10, "LOG_LEVEL_FATAL"

    .line 46
    .line 47
    const/16 v11, 0x8

    .line 48
    .line 49
    .line 50
    invoke-direct {v7, v10, v9, v11}, Lio/agora/rtc/Constants$LogLevel;-><init>(Ljava/lang/String;II)V

    .line 51
    .line 52
    sput-object v7, Lio/agora/rtc/Constants$LogLevel;->LOG_LEVEL_FATAL:Lio/agora/rtc/Constants$LogLevel;

    .line 53
    const/4 v10, 0x5

    .line 54
    .line 55
    new-array v10, v10, [Lio/agora/rtc/Constants$LogLevel;

    .line 56
    .line 57
    aput-object v0, v10, v2

    .line 58
    .line 59
    aput-object v1, v10, v4

    .line 60
    .line 61
    aput-object v3, v10, v6

    .line 62
    .line 63
    aput-object v5, v10, v8

    .line 64
    .line 65
    aput-object v7, v10, v9

    .line 66
    .line 67
    sput-object v10, Lio/agora/rtc/Constants$LogLevel;->$VALUES:[Lio/agora/rtc/Constants$LogLevel;

    .line 68
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
    iput p3, p0, Lio/agora/rtc/Constants$LogLevel;->value:I

    .line 6
    return-void
.end method

.method public static getValue(Lio/agora/rtc/Constants$LogLevel;)I
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
    iget p0, p0, Lio/agora/rtc/Constants$LogLevel;->value:I

    .line 3
    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/agora/rtc/Constants$LogLevel;
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
    const-class v0, Lio/agora/rtc/Constants$LogLevel;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    check-cast p0, Lio/agora/rtc/Constants$LogLevel;

    .line 9
    return-object p0
.end method

.method public static values()[Lio/agora/rtc/Constants$LogLevel;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lio/agora/rtc/Constants$LogLevel;->$VALUES:[Lio/agora/rtc/Constants$LogLevel;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, [Lio/agora/rtc/Constants$LogLevel;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, [Lio/agora/rtc/Constants$LogLevel;

    .line 9
    return-object v0
.end method
