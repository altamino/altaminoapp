.class public final enum Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;
.super Ljava/lang/Enum;
.source "SourceFile"


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
.method private static synthetic $values()[Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;

    const/4 v1, 0x0

    sget-object v2, Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;->FAST:Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;->FAST_TO_PREVIOUS_SYNC:Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;->FAST_TO_NEXT_SYNC:Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;->FAST_TO_CLOSEST_SYNC:Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;->PRECISE:Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;->EXACT:Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;->FAST_EXACT:Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 1
    .line 2
    new-instance v0, Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;

    .line 3
    .line 4
    const-string v1, "FAST"

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1, v2, v2}, Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;-><init>(Ljava/lang/String;II)V

    .line 9
    .line 10
    sput-object v0, Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;->FAST:Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;

    .line 11
    .line 12
    new-instance v0, Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;

    .line 13
    .line 14
    const-string v1, "FAST_TO_PREVIOUS_SYNC"

    .line 15
    const/4 v3, 0x1

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1, v3, v2}, Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;-><init>(Ljava/lang/String;II)V

    .line 19
    .line 20
    sput-object v0, Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;->FAST_TO_PREVIOUS_SYNC:Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;

    .line 21
    .line 22
    new-instance v0, Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;

    .line 23
    .line 24
    const-string v1, "FAST_TO_NEXT_SYNC"

    .line 25
    const/4 v4, 0x2

    .line 26
    .line 27
    .line 28
    invoke-direct {v0, v1, v4, v3}, Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;-><init>(Ljava/lang/String;II)V

    .line 29
    .line 30
    sput-object v0, Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;->FAST_TO_NEXT_SYNC:Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;

    .line 31
    .line 32
    new-instance v0, Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;

    .line 33
    .line 34
    const-string v1, "FAST_TO_CLOSEST_SYNC"

    .line 35
    const/4 v3, 0x3

    .line 36
    .line 37
    .line 38
    invoke-direct {v0, v1, v3, v4}, Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;-><init>(Ljava/lang/String;II)V

    .line 39
    .line 40
    sput-object v0, Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;->FAST_TO_CLOSEST_SYNC:Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;

    .line 41
    .line 42
    new-instance v0, Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;

    .line 43
    .line 44
    const-string v1, "PRECISE"

    .line 45
    const/4 v3, 0x4

    .line 46
    .line 47
    .line 48
    invoke-direct {v0, v1, v3, v2}, Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;-><init>(Ljava/lang/String;II)V

    .line 49
    .line 50
    sput-object v0, Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;->PRECISE:Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;

    .line 51
    .line 52
    new-instance v0, Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;

    .line 53
    .line 54
    const-string v1, "EXACT"

    .line 55
    const/4 v3, 0x5

    .line 56
    .line 57
    .line 58
    invoke-direct {v0, v1, v3, v2}, Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;-><init>(Ljava/lang/String;II)V

    .line 59
    .line 60
    sput-object v0, Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;->EXACT:Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;

    .line 61
    .line 62
    new-instance v0, Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;

    .line 63
    .line 64
    const-string v1, "FAST_EXACT"

    .line 65
    const/4 v3, 0x6

    .line 66
    .line 67
    .line 68
    invoke-direct {v0, v1, v3, v2}, Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;-><init>(Ljava/lang/String;II)V

    .line 69
    .line 70
    sput-object v0, Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;->FAST_EXACT:Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;

    .line 71
    .line 72
    .line 73
    invoke-static {}, Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;->$values()[Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;

    .line 74
    move-result-object v0

    .line 75
    .line 76
    sput-object v0, Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;->$VALUES:[Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;

    .line 77
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
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
    iput p3, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;->baseSeekMode:I

    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;
    .locals 1

    .line 1
    .line 2
    const-class v0, Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    check-cast p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;

    .line 9
    return-object p0
.end method

.method public static values()[Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;->$VALUES:[Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, [Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, [Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;

    .line 9
    return-object v0
.end method


# virtual methods
.method public getBaseSeekMode()I
    .locals 1

    iget v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;->baseSeekMode:I

    return v0
.end method
