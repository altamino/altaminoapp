.class final enum Lnet/protyposis/android/mediaplayer/MediaPlayer$State;
.super Ljava/lang/Enum;
.source "SourceFile"


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
.method private static synthetic $values()[Lnet/protyposis/android/mediaplayer/MediaPlayer$State;
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Lnet/protyposis/android/mediaplayer/MediaPlayer$State;

    const/4 v1, 0x0

    sget-object v2, Lnet/protyposis/android/mediaplayer/MediaPlayer$State;->IDLE:Lnet/protyposis/android/mediaplayer/MediaPlayer$State;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lnet/protyposis/android/mediaplayer/MediaPlayer$State;->INITIALIZED:Lnet/protyposis/android/mediaplayer/MediaPlayer$State;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lnet/protyposis/android/mediaplayer/MediaPlayer$State;->PREPARING:Lnet/protyposis/android/mediaplayer/MediaPlayer$State;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lnet/protyposis/android/mediaplayer/MediaPlayer$State;->PREPARED:Lnet/protyposis/android/mediaplayer/MediaPlayer$State;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lnet/protyposis/android/mediaplayer/MediaPlayer$State;->STOPPED:Lnet/protyposis/android/mediaplayer/MediaPlayer$State;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lnet/protyposis/android/mediaplayer/MediaPlayer$State;->RELEASING:Lnet/protyposis/android/mediaplayer/MediaPlayer$State;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lnet/protyposis/android/mediaplayer/MediaPlayer$State;->RELEASED:Lnet/protyposis/android/mediaplayer/MediaPlayer$State;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lnet/protyposis/android/mediaplayer/MediaPlayer$State;->ERROR:Lnet/protyposis/android/mediaplayer/MediaPlayer$State;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lnet/protyposis/android/mediaplayer/MediaPlayer$State;

    .line 3
    .line 4
    const-string v1, "IDLE"

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1, v2}, Lnet/protyposis/android/mediaplayer/MediaPlayer$State;-><init>(Ljava/lang/String;I)V

    .line 9
    .line 10
    sput-object v0, Lnet/protyposis/android/mediaplayer/MediaPlayer$State;->IDLE:Lnet/protyposis/android/mediaplayer/MediaPlayer$State;

    .line 11
    .line 12
    new-instance v0, Lnet/protyposis/android/mediaplayer/MediaPlayer$State;

    .line 13
    .line 14
    const-string v1, "INITIALIZED"

    .line 15
    const/4 v2, 0x1

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1, v2}, Lnet/protyposis/android/mediaplayer/MediaPlayer$State;-><init>(Ljava/lang/String;I)V

    .line 19
    .line 20
    sput-object v0, Lnet/protyposis/android/mediaplayer/MediaPlayer$State;->INITIALIZED:Lnet/protyposis/android/mediaplayer/MediaPlayer$State;

    .line 21
    .line 22
    new-instance v0, Lnet/protyposis/android/mediaplayer/MediaPlayer$State;

    .line 23
    .line 24
    const-string v1, "PREPARING"

    .line 25
    const/4 v2, 0x2

    .line 26
    .line 27
    .line 28
    invoke-direct {v0, v1, v2}, Lnet/protyposis/android/mediaplayer/MediaPlayer$State;-><init>(Ljava/lang/String;I)V

    .line 29
    .line 30
    sput-object v0, Lnet/protyposis/android/mediaplayer/MediaPlayer$State;->PREPARING:Lnet/protyposis/android/mediaplayer/MediaPlayer$State;

    .line 31
    .line 32
    new-instance v0, Lnet/protyposis/android/mediaplayer/MediaPlayer$State;

    .line 33
    .line 34
    const-string v1, "PREPARED"

    .line 35
    const/4 v2, 0x3

    .line 36
    .line 37
    .line 38
    invoke-direct {v0, v1, v2}, Lnet/protyposis/android/mediaplayer/MediaPlayer$State;-><init>(Ljava/lang/String;I)V

    .line 39
    .line 40
    sput-object v0, Lnet/protyposis/android/mediaplayer/MediaPlayer$State;->PREPARED:Lnet/protyposis/android/mediaplayer/MediaPlayer$State;

    .line 41
    .line 42
    new-instance v0, Lnet/protyposis/android/mediaplayer/MediaPlayer$State;

    .line 43
    .line 44
    const-string v1, "STOPPED"

    .line 45
    const/4 v2, 0x4

    .line 46
    .line 47
    .line 48
    invoke-direct {v0, v1, v2}, Lnet/protyposis/android/mediaplayer/MediaPlayer$State;-><init>(Ljava/lang/String;I)V

    .line 49
    .line 50
    sput-object v0, Lnet/protyposis/android/mediaplayer/MediaPlayer$State;->STOPPED:Lnet/protyposis/android/mediaplayer/MediaPlayer$State;

    .line 51
    .line 52
    new-instance v0, Lnet/protyposis/android/mediaplayer/MediaPlayer$State;

    .line 53
    .line 54
    const-string v1, "RELEASING"

    .line 55
    const/4 v2, 0x5

    .line 56
    .line 57
    .line 58
    invoke-direct {v0, v1, v2}, Lnet/protyposis/android/mediaplayer/MediaPlayer$State;-><init>(Ljava/lang/String;I)V

    .line 59
    .line 60
    sput-object v0, Lnet/protyposis/android/mediaplayer/MediaPlayer$State;->RELEASING:Lnet/protyposis/android/mediaplayer/MediaPlayer$State;

    .line 61
    .line 62
    new-instance v0, Lnet/protyposis/android/mediaplayer/MediaPlayer$State;

    .line 63
    .line 64
    const-string v1, "RELEASED"

    .line 65
    const/4 v2, 0x6

    .line 66
    .line 67
    .line 68
    invoke-direct {v0, v1, v2}, Lnet/protyposis/android/mediaplayer/MediaPlayer$State;-><init>(Ljava/lang/String;I)V

    .line 69
    .line 70
    sput-object v0, Lnet/protyposis/android/mediaplayer/MediaPlayer$State;->RELEASED:Lnet/protyposis/android/mediaplayer/MediaPlayer$State;

    .line 71
    .line 72
    new-instance v0, Lnet/protyposis/android/mediaplayer/MediaPlayer$State;

    .line 73
    .line 74
    const-string v1, "ERROR"

    .line 75
    const/4 v2, 0x7

    .line 76
    .line 77
    .line 78
    invoke-direct {v0, v1, v2}, Lnet/protyposis/android/mediaplayer/MediaPlayer$State;-><init>(Ljava/lang/String;I)V

    .line 79
    .line 80
    sput-object v0, Lnet/protyposis/android/mediaplayer/MediaPlayer$State;->ERROR:Lnet/protyposis/android/mediaplayer/MediaPlayer$State;

    .line 81
    .line 82
    .line 83
    invoke-static {}, Lnet/protyposis/android/mediaplayer/MediaPlayer$State;->$values()[Lnet/protyposis/android/mediaplayer/MediaPlayer$State;

    .line 84
    move-result-object v0

    .line 85
    .line 86
    sput-object v0, Lnet/protyposis/android/mediaplayer/MediaPlayer$State;->$VALUES:[Lnet/protyposis/android/mediaplayer/MediaPlayer$State;

    .line 87
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

.method public static valueOf(Ljava/lang/String;)Lnet/protyposis/android/mediaplayer/MediaPlayer$State;
    .locals 1

    .line 1
    .line 2
    const-class v0, Lnet/protyposis/android/mediaplayer/MediaPlayer$State;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    check-cast p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$State;

    .line 9
    return-object p0
.end method

.method public static values()[Lnet/protyposis/android/mediaplayer/MediaPlayer$State;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lnet/protyposis/android/mediaplayer/MediaPlayer$State;->$VALUES:[Lnet/protyposis/android/mediaplayer/MediaPlayer$State;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, [Lnet/protyposis/android/mediaplayer/MediaPlayer$State;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, [Lnet/protyposis/android/mediaplayer/MediaPlayer$State;

    .line 9
    return-object v0
.end method
