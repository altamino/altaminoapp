.class public final enum Lcom/huawei/multimedia/audiokit/interfaces/c$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/multimedia/audiokit/interfaces/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/huawei/multimedia/audiokit/interfaces/c$c;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/huawei/multimedia/audiokit/interfaces/c$c;

.field public static final enum CMD_SET_AUDIO_EFFECT_MODE_BASE:Lcom/huawei/multimedia/audiokit/interfaces/c$c;

.field public static final enum CMD_SET_VOCAL_EQUALIZER_MODE:Lcom/huawei/multimedia/audiokit/interfaces/c$c;

.field public static final enum CMD_SET_VOCAL_VOLUME_BASE:Lcom/huawei/multimedia/audiokit/interfaces/c$c;


# instance fields
.field private mParameName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    .line 2
    new-instance v0, Lcom/huawei/multimedia/audiokit/interfaces/c$c;

    .line 3
    .line 4
    const-string v1, "Karaoke_reverb_mode="

    .line 5
    .line 6
    const-string v2, "CMD_SET_AUDIO_EFFECT_MODE_BASE"

    .line 7
    const/4 v3, 0x0

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v2, v3, v1}, Lcom/huawei/multimedia/audiokit/interfaces/c$c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 11
    .line 12
    sput-object v0, Lcom/huawei/multimedia/audiokit/interfaces/c$c;->CMD_SET_AUDIO_EFFECT_MODE_BASE:Lcom/huawei/multimedia/audiokit/interfaces/c$c;

    .line 13
    .line 14
    new-instance v1, Lcom/huawei/multimedia/audiokit/interfaces/c$c;

    .line 15
    .line 16
    const-string v2, "Karaoke_volume="

    .line 17
    .line 18
    const-string v4, "CMD_SET_VOCAL_VOLUME_BASE"

    .line 19
    const/4 v5, 0x1

    .line 20
    .line 21
    .line 22
    invoke-direct {v1, v4, v5, v2}, Lcom/huawei/multimedia/audiokit/interfaces/c$c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 23
    .line 24
    sput-object v1, Lcom/huawei/multimedia/audiokit/interfaces/c$c;->CMD_SET_VOCAL_VOLUME_BASE:Lcom/huawei/multimedia/audiokit/interfaces/c$c;

    .line 25
    .line 26
    new-instance v2, Lcom/huawei/multimedia/audiokit/interfaces/c$c;

    .line 27
    .line 28
    const-string v4, "Karaoke_eq_mode="

    .line 29
    .line 30
    const-string v6, "CMD_SET_VOCAL_EQUALIZER_MODE"

    .line 31
    const/4 v7, 0x2

    .line 32
    .line 33
    .line 34
    invoke-direct {v2, v6, v7, v4}, Lcom/huawei/multimedia/audiokit/interfaces/c$c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 35
    .line 36
    sput-object v2, Lcom/huawei/multimedia/audiokit/interfaces/c$c;->CMD_SET_VOCAL_EQUALIZER_MODE:Lcom/huawei/multimedia/audiokit/interfaces/c$c;

    .line 37
    const/4 v4, 0x3

    .line 38
    .line 39
    new-array v4, v4, [Lcom/huawei/multimedia/audiokit/interfaces/c$c;

    .line 40
    .line 41
    aput-object v0, v4, v3

    .line 42
    .line 43
    aput-object v1, v4, v5

    .line 44
    .line 45
    aput-object v2, v4, v7

    .line 46
    .line 47
    sput-object v4, Lcom/huawei/multimedia/audiokit/interfaces/c$c;->$VALUES:[Lcom/huawei/multimedia/audiokit/interfaces/c$c;

    .line 48
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    .line 5
    iput-object p3, p0, Lcom/huawei/multimedia/audiokit/interfaces/c$c;->mParameName:Ljava/lang/String;

    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/multimedia/audiokit/interfaces/c$c;
    .locals 1

    .line 1
    .line 2
    const-class v0, Lcom/huawei/multimedia/audiokit/interfaces/c$c;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    check-cast p0, Lcom/huawei/multimedia/audiokit/interfaces/c$c;

    .line 9
    return-object p0
.end method

.method public static values()[Lcom/huawei/multimedia/audiokit/interfaces/c$c;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/huawei/multimedia/audiokit/interfaces/c$c;->$VALUES:[Lcom/huawei/multimedia/audiokit/interfaces/c$c;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, [Lcom/huawei/multimedia/audiokit/interfaces/c$c;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, [Lcom/huawei/multimedia/audiokit/interfaces/c$c;

    .line 9
    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/multimedia/audiokit/interfaces/c$c;->mParameName:Ljava/lang/String;

    return-object v0
.end method
