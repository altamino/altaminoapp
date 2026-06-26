.class public final enum Lio/agora/rtc/mediaio/MediaIO$BufferType;
.super Ljava/lang/Enum;
.source "MediaIO.java"


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
    .locals 6

    .line 21
    new-instance v0, Lio/agora/rtc/mediaio/MediaIO$BufferType;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "BYTE_BUFFER"

    invoke-direct {v0, v3, v1, v2}, Lio/agora/rtc/mediaio/MediaIO$BufferType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/agora/rtc/mediaio/MediaIO$BufferType;->BYTE_BUFFER:Lio/agora/rtc/mediaio/MediaIO$BufferType;

    .line 25
    new-instance v0, Lio/agora/rtc/mediaio/MediaIO$BufferType;

    const/4 v3, 0x2

    const-string v4, "BYTE_ARRAY"

    invoke-direct {v0, v4, v2, v3}, Lio/agora/rtc/mediaio/MediaIO$BufferType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/agora/rtc/mediaio/MediaIO$BufferType;->BYTE_ARRAY:Lio/agora/rtc/mediaio/MediaIO$BufferType;

    .line 29
    new-instance v0, Lio/agora/rtc/mediaio/MediaIO$BufferType;

    const/4 v4, 0x3

    const-string v5, "TEXTURE"

    invoke-direct {v0, v5, v3, v4}, Lio/agora/rtc/mediaio/MediaIO$BufferType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/agora/rtc/mediaio/MediaIO$BufferType;->TEXTURE:Lio/agora/rtc/mediaio/MediaIO$BufferType;

    new-array v0, v4, [Lio/agora/rtc/mediaio/MediaIO$BufferType;

    .line 17
    sget-object v4, Lio/agora/rtc/mediaio/MediaIO$BufferType;->BYTE_BUFFER:Lio/agora/rtc/mediaio/MediaIO$BufferType;

    aput-object v4, v0, v1

    sget-object v1, Lio/agora/rtc/mediaio/MediaIO$BufferType;->BYTE_ARRAY:Lio/agora/rtc/mediaio/MediaIO$BufferType;

    aput-object v1, v0, v2

    sget-object v1, Lio/agora/rtc/mediaio/MediaIO$BufferType;->TEXTURE:Lio/agora/rtc/mediaio/MediaIO$BufferType;

    aput-object v1, v0, v3

    sput-object v0, Lio/agora/rtc/mediaio/MediaIO$BufferType;->$VALUES:[Lio/agora/rtc/mediaio/MediaIO$BufferType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 32
    iput p3, p0, Lio/agora/rtc/mediaio/MediaIO$BufferType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/agora/rtc/mediaio/MediaIO$BufferType;
    .locals 1

    .line 17
    const-class v0, Lio/agora/rtc/mediaio/MediaIO$BufferType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/agora/rtc/mediaio/MediaIO$BufferType;

    return-object p0
.end method

.method public static values()[Lio/agora/rtc/mediaio/MediaIO$BufferType;
    .locals 1

    .line 17
    sget-object v0, Lio/agora/rtc/mediaio/MediaIO$BufferType;->$VALUES:[Lio/agora/rtc/mediaio/MediaIO$BufferType;

    invoke-virtual {v0}, [Lio/agora/rtc/mediaio/MediaIO$BufferType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/agora/rtc/mediaio/MediaIO$BufferType;

    return-object v0
.end method


# virtual methods
.method public intValue()I
    .locals 1

    .line 35
    iget v0, p0, Lio/agora/rtc/mediaio/MediaIO$BufferType;->value:I

    return v0
.end method
