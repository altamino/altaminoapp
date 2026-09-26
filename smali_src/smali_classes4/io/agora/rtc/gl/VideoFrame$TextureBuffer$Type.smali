.class public final enum Lio/agora/rtc/gl/VideoFrame$TextureBuffer$Type;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/gl/VideoFrame$TextureBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/agora/rtc/gl/VideoFrame$TextureBuffer$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/agora/rtc/gl/VideoFrame$TextureBuffer$Type;

.field public static final enum OES:Lio/agora/rtc/gl/VideoFrame$TextureBuffer$Type;

.field public static final enum RGB:Lio/agora/rtc/gl/VideoFrame$TextureBuffer$Type;


# instance fields
.field private final glTarget:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    .line 2
    new-instance v0, Lio/agora/rtc/gl/VideoFrame$TextureBuffer$Type;

    .line 3
    .line 4
    .line 5
    const v1, 0x8d65

    .line 6
    .line 7
    const-string v2, "OES"

    .line 8
    const/4 v3, 0x0

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v2, v3, v1}, Lio/agora/rtc/gl/VideoFrame$TextureBuffer$Type;-><init>(Ljava/lang/String;II)V

    .line 12
    .line 13
    sput-object v0, Lio/agora/rtc/gl/VideoFrame$TextureBuffer$Type;->OES:Lio/agora/rtc/gl/VideoFrame$TextureBuffer$Type;

    .line 14
    .line 15
    new-instance v1, Lio/agora/rtc/gl/VideoFrame$TextureBuffer$Type;

    .line 16
    .line 17
    const/16 v2, 0xde1

    .line 18
    .line 19
    const-string v4, "RGB"

    .line 20
    const/4 v5, 0x1

    .line 21
    .line 22
    .line 23
    invoke-direct {v1, v4, v5, v2}, Lio/agora/rtc/gl/VideoFrame$TextureBuffer$Type;-><init>(Ljava/lang/String;II)V

    .line 24
    .line 25
    sput-object v1, Lio/agora/rtc/gl/VideoFrame$TextureBuffer$Type;->RGB:Lio/agora/rtc/gl/VideoFrame$TextureBuffer$Type;

    .line 26
    const/4 v2, 0x2

    .line 27
    .line 28
    new-array v2, v2, [Lio/agora/rtc/gl/VideoFrame$TextureBuffer$Type;

    .line 29
    .line 30
    aput-object v0, v2, v3

    .line 31
    .line 32
    aput-object v1, v2, v5

    .line 33
    .line 34
    sput-object v2, Lio/agora/rtc/gl/VideoFrame$TextureBuffer$Type;->$VALUES:[Lio/agora/rtc/gl/VideoFrame$TextureBuffer$Type;

    .line 35
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x10
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "glTarget"
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
    iput p3, p0, Lio/agora/rtc/gl/VideoFrame$TextureBuffer$Type;->glTarget:I

    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/agora/rtc/gl/VideoFrame$TextureBuffer$Type;
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
    const-class v0, Lio/agora/rtc/gl/VideoFrame$TextureBuffer$Type;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    check-cast p0, Lio/agora/rtc/gl/VideoFrame$TextureBuffer$Type;

    .line 9
    return-object p0
.end method

.method public static values()[Lio/agora/rtc/gl/VideoFrame$TextureBuffer$Type;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lio/agora/rtc/gl/VideoFrame$TextureBuffer$Type;->$VALUES:[Lio/agora/rtc/gl/VideoFrame$TextureBuffer$Type;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, [Lio/agora/rtc/gl/VideoFrame$TextureBuffer$Type;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, [Lio/agora/rtc/gl/VideoFrame$TextureBuffer$Type;

    .line 9
    return-object v0
.end method


# virtual methods
.method public getGlTarget()I
    .locals 1

    iget v0, p0, Lio/agora/rtc/gl/VideoFrame$TextureBuffer$Type;->glTarget:I

    return v0
.end method
