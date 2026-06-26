.class public final enum Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;
.super Ljava/lang/Enum;
.source "MediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/protyposis/android/mediaplayer/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SeekMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;

.field public static final enum EXACT:Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;

.field public static final enum FAST:Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum FAST_EXACT:Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;

.field public static final enum FAST_TO_CLOSEST_SYNC:Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;

.field public static final enum FAST_TO_NEXT_SYNC:Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;

.field public static final enum FAST_TO_PREVIOUS_SYNC:Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;

.field public static final enum PRECISE:Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;


# instance fields
.field private baseSeekMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 62
    new-instance v0, Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;

    const/4 v1, 0x0

    const-string v2, "FAST"

    invoke-direct {v0, v2, v1, v1}, Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;->FAST:Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;

    .line 69
    new-instance v0, Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;

    const/4 v2, 0x1

    const-string v3, "FAST_TO_PREVIOUS_SYNC"

    invoke-direct {v0, v3, v2, v1}, Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;->FAST_TO_PREVIOUS_SYNC:Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;

    .line 75
    new-instance v0, Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;

    const/4 v3, 0x2

    const-string v4, "FAST_TO_NEXT_SYNC"

    invoke-direct {v0, v4, v3, v2}, Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;->FAST_TO_NEXT_SYNC:Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;

    .line 81
    new-instance v0, Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;

    const/4 v4, 0x3

    const-string v5, "FAST_TO_CLOSEST_SYNC"

    invoke-direct {v0, v5, v4, v3}, Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;->FAST_TO_CLOSEST_SYNC:Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;

    .line 87
    new-instance v0, Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;

    const/4 v5, 0x4

    const-string v6, "PRECISE"

    invoke-direct {v0, v6, v5, v1}, Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;->PRECISE:Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;

    .line 93
    new-instance v0, Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;

    const/4 v6, 0x5

    const-string v7, "EXACT"

    invoke-direct {v0, v7, v6, v1}, Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;->EXACT:Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;

    .line 99
    new-instance v0, Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;

    const/4 v7, 0x6

    const-string v8, "FAST_EXACT"

    invoke-direct {v0, v8, v7, v1}, Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;->FAST_EXACT:Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;

    const/4 v0, 0x7

    new-array v0, v0, [Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;

    .line 57
    sget-object v8, Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;->FAST:Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;

    aput-object v8, v0, v1

    sget-object v1, Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;->FAST_TO_PREVIOUS_SYNC:Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;

    aput-object v1, v0, v2

    sget-object v1, Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;->FAST_TO_NEXT_SYNC:Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;

    aput-object v1, v0, v3

    sget-object v1, Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;->FAST_TO_CLOSEST_SYNC:Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;

    aput-object v1, v0, v4

    sget-object v1, Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;->PRECISE:Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;

    aput-object v1, v0, v5

    sget-object v1, Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;->EXACT:Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;

    aput-object v1, v0, v6

    sget-object v1, Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;->FAST_EXACT:Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;

    aput-object v1, v0, v7

    sput-object v0, Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;->$VALUES:[Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 103
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x0

    .line 101
    iput p1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;->baseSeekMode:I

    .line 104
    iput p3, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;->baseSeekMode:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;
    .locals 1

    .line 57
    const-class v0, Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;

    return-object p0
.end method

.method public static values()[Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;
    .locals 1

    .line 57
    sget-object v0, Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;->$VALUES:[Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;

    invoke-virtual {v0}, [Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;

    return-object v0
.end method


# virtual methods
.method public getBaseSeekMode()I
    .locals 1

    .line 108
    iget v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;->baseSeekMode:I

    return v0
.end method
