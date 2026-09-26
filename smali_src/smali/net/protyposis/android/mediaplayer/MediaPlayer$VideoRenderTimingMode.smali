.class final enum Lnet/protyposis/android/mediaplayer/MediaPlayer$VideoRenderTimingMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/protyposis/android/mediaplayer/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "VideoRenderTimingMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/protyposis/android/mediaplayer/MediaPlayer$VideoRenderTimingMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/protyposis/android/mediaplayer/MediaPlayer$VideoRenderTimingMode;

.field public static final enum AUTO:Lnet/protyposis/android/mediaplayer/MediaPlayer$VideoRenderTimingMode;

.field public static final enum SLEEP:Lnet/protyposis/android/mediaplayer/MediaPlayer$VideoRenderTimingMode;

.field public static final enum SURFACEVIEW_TIMESTAMP_API21:Lnet/protyposis/android/mediaplayer/MediaPlayer$VideoRenderTimingMode;


# direct methods
.method private static synthetic $values()[Lnet/protyposis/android/mediaplayer/MediaPlayer$VideoRenderTimingMode;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lnet/protyposis/android/mediaplayer/MediaPlayer$VideoRenderTimingMode;

    const/4 v1, 0x0

    sget-object v2, Lnet/protyposis/android/mediaplayer/MediaPlayer$VideoRenderTimingMode;->AUTO:Lnet/protyposis/android/mediaplayer/MediaPlayer$VideoRenderTimingMode;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lnet/protyposis/android/mediaplayer/MediaPlayer$VideoRenderTimingMode;->SLEEP:Lnet/protyposis/android/mediaplayer/MediaPlayer$VideoRenderTimingMode;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lnet/protyposis/android/mediaplayer/MediaPlayer$VideoRenderTimingMode;->SURFACEVIEW_TIMESTAMP_API21:Lnet/protyposis/android/mediaplayer/MediaPlayer$VideoRenderTimingMode;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lnet/protyposis/android/mediaplayer/MediaPlayer$VideoRenderTimingMode;

    .line 3
    .line 4
    const-string v1, "AUTO"

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1, v2}, Lnet/protyposis/android/mediaplayer/MediaPlayer$VideoRenderTimingMode;-><init>(Ljava/lang/String;I)V

    .line 9
    .line 10
    sput-object v0, Lnet/protyposis/android/mediaplayer/MediaPlayer$VideoRenderTimingMode;->AUTO:Lnet/protyposis/android/mediaplayer/MediaPlayer$VideoRenderTimingMode;

    .line 11
    .line 12
    new-instance v0, Lnet/protyposis/android/mediaplayer/MediaPlayer$VideoRenderTimingMode;

    .line 13
    .line 14
    const-string v1, "SLEEP"

    .line 15
    const/4 v2, 0x1

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1, v2}, Lnet/protyposis/android/mediaplayer/MediaPlayer$VideoRenderTimingMode;-><init>(Ljava/lang/String;I)V

    .line 19
    .line 20
    sput-object v0, Lnet/protyposis/android/mediaplayer/MediaPlayer$VideoRenderTimingMode;->SLEEP:Lnet/protyposis/android/mediaplayer/MediaPlayer$VideoRenderTimingMode;

    .line 21
    .line 22
    new-instance v0, Lnet/protyposis/android/mediaplayer/MediaPlayer$VideoRenderTimingMode;

    .line 23
    .line 24
    const-string v1, "SURFACEVIEW_TIMESTAMP_API21"

    .line 25
    const/4 v2, 0x2

    .line 26
    .line 27
    .line 28
    invoke-direct {v0, v1, v2}, Lnet/protyposis/android/mediaplayer/MediaPlayer$VideoRenderTimingMode;-><init>(Ljava/lang/String;I)V

    .line 29
    .line 30
    sput-object v0, Lnet/protyposis/android/mediaplayer/MediaPlayer$VideoRenderTimingMode;->SURFACEVIEW_TIMESTAMP_API21:Lnet/protyposis/android/mediaplayer/MediaPlayer$VideoRenderTimingMode;

    .line 31
    .line 32
    .line 33
    invoke-static {}, Lnet/protyposis/android/mediaplayer/MediaPlayer$VideoRenderTimingMode;->$values()[Lnet/protyposis/android/mediaplayer/MediaPlayer$VideoRenderTimingMode;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    sput-object v0, Lnet/protyposis/android/mediaplayer/MediaPlayer$VideoRenderTimingMode;->$VALUES:[Lnet/protyposis/android/mediaplayer/MediaPlayer$VideoRenderTimingMode;

    .line 37
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/protyposis/android/mediaplayer/MediaPlayer$VideoRenderTimingMode;
    .locals 1

    .line 1
    .line 2
    const-class v0, Lnet/protyposis/android/mediaplayer/MediaPlayer$VideoRenderTimingMode;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    check-cast p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$VideoRenderTimingMode;

    .line 9
    return-object p0
.end method

.method public static values()[Lnet/protyposis/android/mediaplayer/MediaPlayer$VideoRenderTimingMode;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lnet/protyposis/android/mediaplayer/MediaPlayer$VideoRenderTimingMode;->$VALUES:[Lnet/protyposis/android/mediaplayer/MediaPlayer$VideoRenderTimingMode;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, [Lnet/protyposis/android/mediaplayer/MediaPlayer$VideoRenderTimingMode;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, [Lnet/protyposis/android/mediaplayer/MediaPlayer$VideoRenderTimingMode;

    .line 9
    return-object v0
.end method


# virtual methods
.method public isRenderModeApi21()Z
    .locals 3

    .line 1
    .line 2
    sget-object v0, Lnet/protyposis/android/mediaplayer/MediaPlayer$3;->$SwitchMap$net$protyposis$android$mediaplayer$MediaPlayer$VideoRenderTimingMode:[I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 6
    move-result v1

    .line 7
    .line 8
    aget v0, v0, v1

    .line 9
    const/4 v1, 0x1

    .line 10
    .line 11
    if-eq v0, v1, :cond_0

    .line 12
    const/4 v2, 0x2

    .line 13
    .line 14
    if-eq v0, v2, :cond_0

    .line 15
    const/4 v0, 0x0

    .line 16
    return v0

    .line 17
    :cond_0
    return v1
.end method
