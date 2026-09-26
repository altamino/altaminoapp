.class public final enum Lio/agora/rtc/mediaio/MediaIO$BufferType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/mediaio/MediaIO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BufferType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/agora/rtc/mediaio/MediaIO$BufferType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/agora/rtc/mediaio/MediaIO$BufferType;

.field public static final enum BYTE_ARRAY:Lio/agora/rtc/mediaio/MediaIO$BufferType;

.field public static final enum BYTE_BUFFER:Lio/agora/rtc/mediaio/MediaIO$BufferType;

.field public static final enum TEXTURE:Lio/agora/rtc/mediaio/MediaIO$BufferType;


# instance fields
.field final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    .line 2
    new-instance v0, Lio/agora/rtc/mediaio/MediaIO$BufferType;

    .line 3
    .line 4
    const-string v1, "BYTE_BUFFER"

    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1, v2, v3}, Lio/agora/rtc/mediaio/MediaIO$BufferType;-><init>(Ljava/lang/String;II)V

    .line 10
    .line 11
    sput-object v0, Lio/agora/rtc/mediaio/MediaIO$BufferType;->BYTE_BUFFER:Lio/agora/rtc/mediaio/MediaIO$BufferType;

    .line 12
    .line 13
    new-instance v1, Lio/agora/rtc/mediaio/MediaIO$BufferType;

    .line 14
    .line 15
    const-string v4, "BYTE_ARRAY"

    .line 16
    const/4 v5, 0x2

    .line 17
    .line 18
    .line 19
    invoke-direct {v1, v4, v3, v5}, Lio/agora/rtc/mediaio/MediaIO$BufferType;-><init>(Ljava/lang/String;II)V

    .line 20
    .line 21
    sput-object v1, Lio/agora/rtc/mediaio/MediaIO$BufferType;->BYTE_ARRAY:Lio/agora/rtc/mediaio/MediaIO$BufferType;

    .line 22
    .line 23
    new-instance v4, Lio/agora/rtc/mediaio/MediaIO$BufferType;

    .line 24
    .line 25
    const-string v6, "TEXTURE"

    .line 26
    const/4 v7, 0x3

    .line 27
    .line 28
    .line 29
    invoke-direct {v4, v6, v5, v7}, Lio/agora/rtc/mediaio/MediaIO$BufferType;-><init>(Ljava/lang/String;II)V

    .line 30
    .line 31
    sput-object v4, Lio/agora/rtc/mediaio/MediaIO$BufferType;->TEXTURE:Lio/agora/rtc/mediaio/MediaIO$BufferType;

    .line 32
    .line 33
    new-array v6, v7, [Lio/agora/rtc/mediaio/MediaIO$BufferType;

    .line 34
    .line 35
    aput-object v0, v6, v2

    .line 36
    .line 37
    aput-object v1, v6, v3

    .line 38
    .line 39
    aput-object v4, v6, v5

    .line 40
    .line 41
    sput-object v6, Lio/agora/rtc/mediaio/MediaIO$BufferType;->$VALUES:[Lio/agora/rtc/mediaio/MediaIO$BufferType;

    .line 42
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
    iput p3, p0, Lio/agora/rtc/mediaio/MediaIO$BufferType;->value:I

    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/agora/rtc/mediaio/MediaIO$BufferType;
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
    const-class v0, Lio/agora/rtc/mediaio/MediaIO$BufferType;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    check-cast p0, Lio/agora/rtc/mediaio/MediaIO$BufferType;

    .line 9
    return-object p0
.end method

.method public static values()[Lio/agora/rtc/mediaio/MediaIO$BufferType;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lio/agora/rtc/mediaio/MediaIO$BufferType;->$VALUES:[Lio/agora/rtc/mediaio/MediaIO$BufferType;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, [Lio/agora/rtc/mediaio/MediaIO$BufferType;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, [Lio/agora/rtc/mediaio/MediaIO$BufferType;

    .line 9
    return-object v0
.end method


# virtual methods
.method public intValue()I
    .locals 1

    iget v0, p0, Lio/agora/rtc/mediaio/MediaIO$BufferType;->value:I

    return v0
.end method
