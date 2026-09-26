.class public final enum Lio/agora/rtc/mediaio/MediaIO$PixelFormat;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/mediaio/MediaIO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PixelFormat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/agora/rtc/mediaio/MediaIO$PixelFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/agora/rtc/mediaio/MediaIO$PixelFormat;

.field public static final enum I420:Lio/agora/rtc/mediaio/MediaIO$PixelFormat;

.field public static final enum NV21:Lio/agora/rtc/mediaio/MediaIO$PixelFormat;

.field public static final enum RGBA:Lio/agora/rtc/mediaio/MediaIO$PixelFormat;

.field public static final enum TEXTURE_2D:Lio/agora/rtc/mediaio/MediaIO$PixelFormat;

.field public static final enum TEXTURE_OES:Lio/agora/rtc/mediaio/MediaIO$PixelFormat;


# instance fields
.field final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 1
    .line 2
    new-instance v0, Lio/agora/rtc/mediaio/MediaIO$PixelFormat;

    .line 3
    .line 4
    const-string v1, "I420"

    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1, v2, v3}, Lio/agora/rtc/mediaio/MediaIO$PixelFormat;-><init>(Ljava/lang/String;II)V

    .line 10
    .line 11
    sput-object v0, Lio/agora/rtc/mediaio/MediaIO$PixelFormat;->I420:Lio/agora/rtc/mediaio/MediaIO$PixelFormat;

    .line 12
    .line 13
    new-instance v1, Lio/agora/rtc/mediaio/MediaIO$PixelFormat;

    .line 14
    .line 15
    const-string v4, "NV21"

    .line 16
    const/4 v5, 0x3

    .line 17
    .line 18
    .line 19
    invoke-direct {v1, v4, v3, v5}, Lio/agora/rtc/mediaio/MediaIO$PixelFormat;-><init>(Ljava/lang/String;II)V

    .line 20
    .line 21
    sput-object v1, Lio/agora/rtc/mediaio/MediaIO$PixelFormat;->NV21:Lio/agora/rtc/mediaio/MediaIO$PixelFormat;

    .line 22
    .line 23
    new-instance v4, Lio/agora/rtc/mediaio/MediaIO$PixelFormat;

    .line 24
    .line 25
    const-string v6, "RGBA"

    .line 26
    const/4 v7, 0x2

    .line 27
    const/4 v8, 0x4

    .line 28
    .line 29
    .line 30
    invoke-direct {v4, v6, v7, v8}, Lio/agora/rtc/mediaio/MediaIO$PixelFormat;-><init>(Ljava/lang/String;II)V

    .line 31
    .line 32
    sput-object v4, Lio/agora/rtc/mediaio/MediaIO$PixelFormat;->RGBA:Lio/agora/rtc/mediaio/MediaIO$PixelFormat;

    .line 33
    .line 34
    new-instance v6, Lio/agora/rtc/mediaio/MediaIO$PixelFormat;

    .line 35
    .line 36
    const-string v9, "TEXTURE_2D"

    .line 37
    .line 38
    const/16 v10, 0xa

    .line 39
    .line 40
    .line 41
    invoke-direct {v6, v9, v5, v10}, Lio/agora/rtc/mediaio/MediaIO$PixelFormat;-><init>(Ljava/lang/String;II)V

    .line 42
    .line 43
    sput-object v6, Lio/agora/rtc/mediaio/MediaIO$PixelFormat;->TEXTURE_2D:Lio/agora/rtc/mediaio/MediaIO$PixelFormat;

    .line 44
    .line 45
    new-instance v9, Lio/agora/rtc/mediaio/MediaIO$PixelFormat;

    .line 46
    .line 47
    const-string v10, "TEXTURE_OES"

    .line 48
    .line 49
    const/16 v11, 0xb

    .line 50
    .line 51
    .line 52
    invoke-direct {v9, v10, v8, v11}, Lio/agora/rtc/mediaio/MediaIO$PixelFormat;-><init>(Ljava/lang/String;II)V

    .line 53
    .line 54
    sput-object v9, Lio/agora/rtc/mediaio/MediaIO$PixelFormat;->TEXTURE_OES:Lio/agora/rtc/mediaio/MediaIO$PixelFormat;

    .line 55
    const/4 v10, 0x5

    .line 56
    .line 57
    new-array v10, v10, [Lio/agora/rtc/mediaio/MediaIO$PixelFormat;

    .line 58
    .line 59
    aput-object v0, v10, v2

    .line 60
    .line 61
    aput-object v1, v10, v3

    .line 62
    .line 63
    aput-object v4, v10, v7

    .line 64
    .line 65
    aput-object v6, v10, v5

    .line 66
    .line 67
    aput-object v9, v10, v8

    .line 68
    .line 69
    sput-object v10, Lio/agora/rtc/mediaio/MediaIO$PixelFormat;->$VALUES:[Lio/agora/rtc/mediaio/MediaIO$PixelFormat;

    .line 70
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
            "value"
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
    iput p3, p0, Lio/agora/rtc/mediaio/MediaIO$PixelFormat;->value:I

    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/agora/rtc/mediaio/MediaIO$PixelFormat;
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
    const-class v0, Lio/agora/rtc/mediaio/MediaIO$PixelFormat;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    check-cast p0, Lio/agora/rtc/mediaio/MediaIO$PixelFormat;

    .line 9
    return-object p0
.end method

.method public static values()[Lio/agora/rtc/mediaio/MediaIO$PixelFormat;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lio/agora/rtc/mediaio/MediaIO$PixelFormat;->$VALUES:[Lio/agora/rtc/mediaio/MediaIO$PixelFormat;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, [Lio/agora/rtc/mediaio/MediaIO$PixelFormat;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, [Lio/agora/rtc/mediaio/MediaIO$PixelFormat;

    .line 9
    return-object v0
.end method


# virtual methods
.method public intValue()I
    .locals 1

    iget v0, p0, Lio/agora/rtc/mediaio/MediaIO$PixelFormat;->value:I

    return v0
.end method
