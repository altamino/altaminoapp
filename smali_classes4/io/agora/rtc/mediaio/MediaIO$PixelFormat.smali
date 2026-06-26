.class public final enum Lio/agora/rtc/mediaio/MediaIO$PixelFormat;
.super Ljava/lang/Enum;
.source "MediaIO.java"


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
    .locals 8

    .line 48
    new-instance v0, Lio/agora/rtc/mediaio/MediaIO$PixelFormat;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "I420"

    invoke-direct {v0, v3, v1, v2}, Lio/agora/rtc/mediaio/MediaIO$PixelFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/agora/rtc/mediaio/MediaIO$PixelFormat;->I420:Lio/agora/rtc/mediaio/MediaIO$PixelFormat;

    .line 52
    new-instance v0, Lio/agora/rtc/mediaio/MediaIO$PixelFormat;

    const/4 v3, 0x3

    const-string v4, "NV21"

    invoke-direct {v0, v4, v2, v3}, Lio/agora/rtc/mediaio/MediaIO$PixelFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/agora/rtc/mediaio/MediaIO$PixelFormat;->NV21:Lio/agora/rtc/mediaio/MediaIO$PixelFormat;

    .line 56
    new-instance v0, Lio/agora/rtc/mediaio/MediaIO$PixelFormat;

    const/4 v4, 0x2

    const/4 v5, 0x4

    const-string v6, "RGBA"

    invoke-direct {v0, v6, v4, v5}, Lio/agora/rtc/mediaio/MediaIO$PixelFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/agora/rtc/mediaio/MediaIO$PixelFormat;->RGBA:Lio/agora/rtc/mediaio/MediaIO$PixelFormat;

    .line 60
    new-instance v0, Lio/agora/rtc/mediaio/MediaIO$PixelFormat;

    const-string v6, "TEXTURE_2D"

    const/16 v7, 0xa

    invoke-direct {v0, v6, v3, v7}, Lio/agora/rtc/mediaio/MediaIO$PixelFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/agora/rtc/mediaio/MediaIO$PixelFormat;->TEXTURE_2D:Lio/agora/rtc/mediaio/MediaIO$PixelFormat;

    .line 64
    new-instance v0, Lio/agora/rtc/mediaio/MediaIO$PixelFormat;

    const-string v6, "TEXTURE_OES"

    const/16 v7, 0xb

    invoke-direct {v0, v6, v5, v7}, Lio/agora/rtc/mediaio/MediaIO$PixelFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/agora/rtc/mediaio/MediaIO$PixelFormat;->TEXTURE_OES:Lio/agora/rtc/mediaio/MediaIO$PixelFormat;

    const/4 v0, 0x5

    new-array v0, v0, [Lio/agora/rtc/mediaio/MediaIO$PixelFormat;

    .line 44
    sget-object v6, Lio/agora/rtc/mediaio/MediaIO$PixelFormat;->I420:Lio/agora/rtc/mediaio/MediaIO$PixelFormat;

    aput-object v6, v0, v1

    sget-object v1, Lio/agora/rtc/mediaio/MediaIO$PixelFormat;->NV21:Lio/agora/rtc/mediaio/MediaIO$PixelFormat;

    aput-object v1, v0, v2

    sget-object v1, Lio/agora/rtc/mediaio/MediaIO$PixelFormat;->RGBA:Lio/agora/rtc/mediaio/MediaIO$PixelFormat;

    aput-object v1, v0, v4

    sget-object v1, Lio/agora/rtc/mediaio/MediaIO$PixelFormat;->TEXTURE_2D:Lio/agora/rtc/mediaio/MediaIO$PixelFormat;

    aput-object v1, v0, v3

    sget-object v1, Lio/agora/rtc/mediaio/MediaIO$PixelFormat;->TEXTURE_OES:Lio/agora/rtc/mediaio/MediaIO$PixelFormat;

    aput-object v1, v0, v5

    sput-object v0, Lio/agora/rtc/mediaio/MediaIO$PixelFormat;->$VALUES:[Lio/agora/rtc/mediaio/MediaIO$PixelFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 66
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 67
    iput p3, p0, Lio/agora/rtc/mediaio/MediaIO$PixelFormat;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/agora/rtc/mediaio/MediaIO$PixelFormat;
    .locals 1

    .line 44
    const-class v0, Lio/agora/rtc/mediaio/MediaIO$PixelFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/agora/rtc/mediaio/MediaIO$PixelFormat;

    return-object p0
.end method

.method public static values()[Lio/agora/rtc/mediaio/MediaIO$PixelFormat;
    .locals 1

    .line 44
    sget-object v0, Lio/agora/rtc/mediaio/MediaIO$PixelFormat;->$VALUES:[Lio/agora/rtc/mediaio/MediaIO$PixelFormat;

    invoke-virtual {v0}, [Lio/agora/rtc/mediaio/MediaIO$PixelFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/agora/rtc/mediaio/MediaIO$PixelFormat;

    return-object v0
.end method


# virtual methods
.method public intValue()I
    .locals 1

    .line 70
    iget v0, p0, Lio/agora/rtc/mediaio/MediaIO$PixelFormat;->value:I

    return v0
.end method
