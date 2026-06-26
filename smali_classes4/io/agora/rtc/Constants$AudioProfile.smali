.class public final enum Lio/agora/rtc/Constants$AudioProfile;
.super Ljava/lang/Enum;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AudioProfile"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/agora/rtc/Constants$AudioProfile;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/agora/rtc/Constants$AudioProfile;

.field public static final enum DEFAULT:Lio/agora/rtc/Constants$AudioProfile;

.field public static final enum MUSIC_HIGH_QUALITY:Lio/agora/rtc/Constants$AudioProfile;

.field public static final enum MUSIC_HIGH_QUALITY_STEREO:Lio/agora/rtc/Constants$AudioProfile;

.field public static final enum MUSIC_STANDARD:Lio/agora/rtc/Constants$AudioProfile;

.field public static final enum MUSIC_STANDARD_STEREO:Lio/agora/rtc/Constants$AudioProfile;

.field public static final enum SPEECH_STANDARD:Lio/agora/rtc/Constants$AudioProfile;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1622
    new-instance v0, Lio/agora/rtc/Constants$AudioProfile;

    const/4 v1, 0x0

    const-string v2, "DEFAULT"

    invoke-direct {v0, v2, v1, v1}, Lio/agora/rtc/Constants$AudioProfile;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/agora/rtc/Constants$AudioProfile;->DEFAULT:Lio/agora/rtc/Constants$AudioProfile;

    .line 1626
    new-instance v0, Lio/agora/rtc/Constants$AudioProfile;

    const/4 v2, 0x1

    const-string v3, "SPEECH_STANDARD"

    invoke-direct {v0, v3, v2, v2}, Lio/agora/rtc/Constants$AudioProfile;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/agora/rtc/Constants$AudioProfile;->SPEECH_STANDARD:Lio/agora/rtc/Constants$AudioProfile;

    .line 1630
    new-instance v0, Lio/agora/rtc/Constants$AudioProfile;

    const/4 v3, 0x2

    const-string v4, "MUSIC_STANDARD"

    invoke-direct {v0, v4, v3, v3}, Lio/agora/rtc/Constants$AudioProfile;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/agora/rtc/Constants$AudioProfile;->MUSIC_STANDARD:Lio/agora/rtc/Constants$AudioProfile;

    .line 1634
    new-instance v0, Lio/agora/rtc/Constants$AudioProfile;

    const/4 v4, 0x3

    const-string v5, "MUSIC_STANDARD_STEREO"

    invoke-direct {v0, v5, v4, v4}, Lio/agora/rtc/Constants$AudioProfile;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/agora/rtc/Constants$AudioProfile;->MUSIC_STANDARD_STEREO:Lio/agora/rtc/Constants$AudioProfile;

    .line 1638
    new-instance v0, Lio/agora/rtc/Constants$AudioProfile;

    const/4 v5, 0x4

    const-string v6, "MUSIC_HIGH_QUALITY"

    invoke-direct {v0, v6, v5, v5}, Lio/agora/rtc/Constants$AudioProfile;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/agora/rtc/Constants$AudioProfile;->MUSIC_HIGH_QUALITY:Lio/agora/rtc/Constants$AudioProfile;

    .line 1642
    new-instance v0, Lio/agora/rtc/Constants$AudioProfile;

    const/4 v6, 0x5

    const-string v7, "MUSIC_HIGH_QUALITY_STEREO"

    invoke-direct {v0, v7, v6, v6}, Lio/agora/rtc/Constants$AudioProfile;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/agora/rtc/Constants$AudioProfile;->MUSIC_HIGH_QUALITY_STEREO:Lio/agora/rtc/Constants$AudioProfile;

    const/4 v0, 0x6

    new-array v0, v0, [Lio/agora/rtc/Constants$AudioProfile;

    .line 1618
    sget-object v7, Lio/agora/rtc/Constants$AudioProfile;->DEFAULT:Lio/agora/rtc/Constants$AudioProfile;

    aput-object v7, v0, v1

    sget-object v1, Lio/agora/rtc/Constants$AudioProfile;->SPEECH_STANDARD:Lio/agora/rtc/Constants$AudioProfile;

    aput-object v1, v0, v2

    sget-object v1, Lio/agora/rtc/Constants$AudioProfile;->MUSIC_STANDARD:Lio/agora/rtc/Constants$AudioProfile;

    aput-object v1, v0, v3

    sget-object v1, Lio/agora/rtc/Constants$AudioProfile;->MUSIC_STANDARD_STEREO:Lio/agora/rtc/Constants$AudioProfile;

    aput-object v1, v0, v4

    sget-object v1, Lio/agora/rtc/Constants$AudioProfile;->MUSIC_HIGH_QUALITY:Lio/agora/rtc/Constants$AudioProfile;

    aput-object v1, v0, v5

    sget-object v1, Lio/agora/rtc/Constants$AudioProfile;->MUSIC_HIGH_QUALITY_STEREO:Lio/agora/rtc/Constants$AudioProfile;

    aput-object v1, v0, v6

    sput-object v0, Lio/agora/rtc/Constants$AudioProfile;->$VALUES:[Lio/agora/rtc/Constants$AudioProfile;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1645
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1646
    iput p3, p0, Lio/agora/rtc/Constants$AudioProfile;->value:I

    return-void
.end method

.method public static getValue(Lio/agora/rtc/Constants$AudioProfile;)I
    .locals 0

    .line 1650
    iget p0, p0, Lio/agora/rtc/Constants$AudioProfile;->value:I

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/agora/rtc/Constants$AudioProfile;
    .locals 1

    .line 1618
    const-class v0, Lio/agora/rtc/Constants$AudioProfile;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/agora/rtc/Constants$AudioProfile;

    return-object p0
.end method

.method public static values()[Lio/agora/rtc/Constants$AudioProfile;
    .locals 1

    .line 1618
    sget-object v0, Lio/agora/rtc/Constants$AudioProfile;->$VALUES:[Lio/agora/rtc/Constants$AudioProfile;

    invoke-virtual {v0}, [Lio/agora/rtc/Constants$AudioProfile;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/agora/rtc/Constants$AudioProfile;

    return-object v0
.end method
