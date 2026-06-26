.class final enum Lnet/protyposis/android/mediaplayer/MediaPlayer$VideoRenderTimingMode;
.super Ljava/lang/Enum;
.source "MediaPlayer.java"


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
.method static constructor <clinit>()V
    .locals 5

    .line 121
    new-instance v0, Lnet/protyposis/android/mediaplayer/MediaPlayer$VideoRenderTimingMode;

    const/4 v1, 0x0

    const-string v2, "AUTO"

    invoke-direct {v0, v2, v1}, Lnet/protyposis/android/mediaplayer/MediaPlayer$VideoRenderTimingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/protyposis/android/mediaplayer/MediaPlayer$VideoRenderTimingMode;->AUTO:Lnet/protyposis/android/mediaplayer/MediaPlayer$VideoRenderTimingMode;

    .line 127
    new-instance v0, Lnet/protyposis/android/mediaplayer/MediaPlayer$VideoRenderTimingMode;

    const/4 v2, 0x1

    const-string v3, "SLEEP"

    invoke-direct {v0, v3, v2}, Lnet/protyposis/android/mediaplayer/MediaPlayer$VideoRenderTimingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/protyposis/android/mediaplayer/MediaPlayer$VideoRenderTimingMode;->SLEEP:Lnet/protyposis/android/mediaplayer/MediaPlayer$VideoRenderTimingMode;

    .line 133
    new-instance v0, Lnet/protyposis/android/mediaplayer/MediaPlayer$VideoRenderTimingMode;

    const/4 v3, 0x2

    const-string v4, "SURFACEVIEW_TIMESTAMP_API21"

    invoke-direct {v0, v4, v3}, Lnet/protyposis/android/mediaplayer/MediaPlayer$VideoRenderTimingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/protyposis/android/mediaplayer/MediaPlayer$VideoRenderTimingMode;->SURFACEVIEW_TIMESTAMP_API21:Lnet/protyposis/android/mediaplayer/MediaPlayer$VideoRenderTimingMode;

    const/4 v0, 0x3

    new-array v0, v0, [Lnet/protyposis/android/mediaplayer/MediaPlayer$VideoRenderTimingMode;

    .line 115
    sget-object v4, Lnet/protyposis/android/mediaplayer/MediaPlayer$VideoRenderTimingMode;->AUTO:Lnet/protyposis/android/mediaplayer/MediaPlayer$VideoRenderTimingMode;

    aput-object v4, v0, v1

    sget-object v1, Lnet/protyposis/android/mediaplayer/MediaPlayer$VideoRenderTimingMode;->SLEEP:Lnet/protyposis/android/mediaplayer/MediaPlayer$VideoRenderTimingMode;

    aput-object v1, v0, v2

    sget-object v1, Lnet/protyposis/android/mediaplayer/MediaPlayer$VideoRenderTimingMode;->SURFACEVIEW_TIMESTAMP_API21:Lnet/protyposis/android/mediaplayer/MediaPlayer$VideoRenderTimingMode;

    aput-object v1, v0, v3

    sput-object v0, Lnet/protyposis/android/mediaplayer/MediaPlayer$VideoRenderTimingMode;->$VALUES:[Lnet/protyposis/android/mediaplayer/MediaPlayer$VideoRenderTimingMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 115
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/protyposis/android/mediaplayer/MediaPlayer$VideoRenderTimingMode;
    .locals 1

    .line 115
    const-class v0, Lnet/protyposis/android/mediaplayer/MediaPlayer$VideoRenderTimingMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$VideoRenderTimingMode;

    return-object p0
.end method

.method public static values()[Lnet/protyposis/android/mediaplayer/MediaPlayer$VideoRenderTimingMode;
    .locals 1

    .line 115
    sget-object v0, Lnet/protyposis/android/mediaplayer/MediaPlayer$VideoRenderTimingMode;->$VALUES:[Lnet/protyposis/android/mediaplayer/MediaPlayer$VideoRenderTimingMode;

    invoke-virtual {v0}, [Lnet/protyposis/android/mediaplayer/MediaPlayer$VideoRenderTimingMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/protyposis/android/mediaplayer/MediaPlayer$VideoRenderTimingMode;

    return-object v0
.end method


# virtual methods
.method public isRenderModeApi21()Z
    .locals 4

    .line 136
    sget-object v0, Lnet/protyposis/android/mediaplayer/MediaPlayer$3;->$SwitchMap$net$protyposis$android$mediaplayer$MediaPlayer$VideoRenderTimingMode:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    return v1

    :cond_0
    return v2

    :cond_1
    return v1

    .line 138
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v0, v3, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method
