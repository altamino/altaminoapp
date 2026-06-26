.class final enum Lnet/protyposis/android/mediaplayer/MediaPlayer$State;
.super Ljava/lang/Enum;
.source "MediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/protyposis/android/mediaplayer/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/protyposis/android/mediaplayer/MediaPlayer$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/protyposis/android/mediaplayer/MediaPlayer$State;

.field public static final enum ERROR:Lnet/protyposis/android/mediaplayer/MediaPlayer$State;

.field public static final enum IDLE:Lnet/protyposis/android/mediaplayer/MediaPlayer$State;

.field public static final enum INITIALIZED:Lnet/protyposis/android/mediaplayer/MediaPlayer$State;

.field public static final enum PREPARED:Lnet/protyposis/android/mediaplayer/MediaPlayer$State;

.field public static final enum PREPARING:Lnet/protyposis/android/mediaplayer/MediaPlayer$State;

.field public static final enum RELEASED:Lnet/protyposis/android/mediaplayer/MediaPlayer$State;

.field public static final enum RELEASING:Lnet/protyposis/android/mediaplayer/MediaPlayer$State;

.field public static final enum STOPPED:Lnet/protyposis/android/mediaplayer/MediaPlayer$State;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 150
    new-instance v0, Lnet/protyposis/android/mediaplayer/MediaPlayer$State;

    const/4 v1, 0x0

    const-string v2, "IDLE"

    invoke-direct {v0, v2, v1}, Lnet/protyposis/android/mediaplayer/MediaPlayer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/protyposis/android/mediaplayer/MediaPlayer$State;->IDLE:Lnet/protyposis/android/mediaplayer/MediaPlayer$State;

    .line 151
    new-instance v0, Lnet/protyposis/android/mediaplayer/MediaPlayer$State;

    const/4 v2, 0x1

    const-string v3, "INITIALIZED"

    invoke-direct {v0, v3, v2}, Lnet/protyposis/android/mediaplayer/MediaPlayer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/protyposis/android/mediaplayer/MediaPlayer$State;->INITIALIZED:Lnet/protyposis/android/mediaplayer/MediaPlayer$State;

    .line 152
    new-instance v0, Lnet/protyposis/android/mediaplayer/MediaPlayer$State;

    const/4 v3, 0x2

    const-string v4, "PREPARING"

    invoke-direct {v0, v4, v3}, Lnet/protyposis/android/mediaplayer/MediaPlayer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/protyposis/android/mediaplayer/MediaPlayer$State;->PREPARING:Lnet/protyposis/android/mediaplayer/MediaPlayer$State;

    .line 153
    new-instance v0, Lnet/protyposis/android/mediaplayer/MediaPlayer$State;

    const/4 v4, 0x3

    const-string v5, "PREPARED"

    invoke-direct {v0, v5, v4}, Lnet/protyposis/android/mediaplayer/MediaPlayer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/protyposis/android/mediaplayer/MediaPlayer$State;->PREPARED:Lnet/protyposis/android/mediaplayer/MediaPlayer$State;

    .line 154
    new-instance v0, Lnet/protyposis/android/mediaplayer/MediaPlayer$State;

    const/4 v5, 0x4

    const-string v6, "STOPPED"

    invoke-direct {v0, v6, v5}, Lnet/protyposis/android/mediaplayer/MediaPlayer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/protyposis/android/mediaplayer/MediaPlayer$State;->STOPPED:Lnet/protyposis/android/mediaplayer/MediaPlayer$State;

    .line 155
    new-instance v0, Lnet/protyposis/android/mediaplayer/MediaPlayer$State;

    const/4 v6, 0x5

    const-string v7, "RELEASING"

    invoke-direct {v0, v7, v6}, Lnet/protyposis/android/mediaplayer/MediaPlayer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/protyposis/android/mediaplayer/MediaPlayer$State;->RELEASING:Lnet/protyposis/android/mediaplayer/MediaPlayer$State;

    .line 156
    new-instance v0, Lnet/protyposis/android/mediaplayer/MediaPlayer$State;

    const/4 v7, 0x6

    const-string v8, "RELEASED"

    invoke-direct {v0, v8, v7}, Lnet/protyposis/android/mediaplayer/MediaPlayer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/protyposis/android/mediaplayer/MediaPlayer$State;->RELEASED:Lnet/protyposis/android/mediaplayer/MediaPlayer$State;

    .line 157
    new-instance v0, Lnet/protyposis/android/mediaplayer/MediaPlayer$State;

    const/4 v8, 0x7

    const-string v9, "ERROR"

    invoke-direct {v0, v9, v8}, Lnet/protyposis/android/mediaplayer/MediaPlayer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/protyposis/android/mediaplayer/MediaPlayer$State;->ERROR:Lnet/protyposis/android/mediaplayer/MediaPlayer$State;

    const/16 v0, 0x8

    new-array v0, v0, [Lnet/protyposis/android/mediaplayer/MediaPlayer$State;

    .line 149
    sget-object v9, Lnet/protyposis/android/mediaplayer/MediaPlayer$State;->IDLE:Lnet/protyposis/android/mediaplayer/MediaPlayer$State;

    aput-object v9, v0, v1

    sget-object v1, Lnet/protyposis/android/mediaplayer/MediaPlayer$State;->INITIALIZED:Lnet/protyposis/android/mediaplayer/MediaPlayer$State;

    aput-object v1, v0, v2

    sget-object v1, Lnet/protyposis/android/mediaplayer/MediaPlayer$State;->PREPARING:Lnet/protyposis/android/mediaplayer/MediaPlayer$State;

    aput-object v1, v0, v3

    sget-object v1, Lnet/protyposis/android/mediaplayer/MediaPlayer$State;->PREPARED:Lnet/protyposis/android/mediaplayer/MediaPlayer$State;

    aput-object v1, v0, v4

    sget-object v1, Lnet/protyposis/android/mediaplayer/MediaPlayer$State;->STOPPED:Lnet/protyposis/android/mediaplayer/MediaPlayer$State;

    aput-object v1, v0, v5

    sget-object v1, Lnet/protyposis/android/mediaplayer/MediaPlayer$State;->RELEASING:Lnet/protyposis/android/mediaplayer/MediaPlayer$State;

    aput-object v1, v0, v6

    sget-object v1, Lnet/protyposis/android/mediaplayer/MediaPlayer$State;->RELEASED:Lnet/protyposis/android/mediaplayer/MediaPlayer$State;

    aput-object v1, v0, v7

    sget-object v1, Lnet/protyposis/android/mediaplayer/MediaPlayer$State;->ERROR:Lnet/protyposis/android/mediaplayer/MediaPlayer$State;

    aput-object v1, v0, v8

    sput-object v0, Lnet/protyposis/android/mediaplayer/MediaPlayer$State;->$VALUES:[Lnet/protyposis/android/mediaplayer/MediaPlayer$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 149
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/protyposis/android/mediaplayer/MediaPlayer$State;
    .locals 1

    .line 149
    const-class v0, Lnet/protyposis/android/mediaplayer/MediaPlayer$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$State;

    return-object p0
.end method

.method public static values()[Lnet/protyposis/android/mediaplayer/MediaPlayer$State;
    .locals 1

    .line 149
    sget-object v0, Lnet/protyposis/android/mediaplayer/MediaPlayer$State;->$VALUES:[Lnet/protyposis/android/mediaplayer/MediaPlayer$State;

    invoke-virtual {v0}, [Lnet/protyposis/android/mediaplayer/MediaPlayer$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/protyposis/android/mediaplayer/MediaPlayer$State;

    return-object v0
.end method
