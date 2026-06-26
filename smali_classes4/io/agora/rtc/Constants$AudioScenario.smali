.class public final enum Lio/agora/rtc/Constants$AudioScenario;
.super Ljava/lang/Enum;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AudioScenario"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/agora/rtc/Constants$AudioScenario;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/agora/rtc/Constants$AudioScenario;

.field public static final enum CHATROOM_ENTERTAINMENT:Lio/agora/rtc/Constants$AudioScenario;

.field public static final enum CHATROOM_GAMING:Lio/agora/rtc/Constants$AudioScenario;

.field public static final enum DEFAULT:Lio/agora/rtc/Constants$AudioScenario;

.field public static final enum EDUCATION:Lio/agora/rtc/Constants$AudioScenario;

.field public static final enum GAME_STREAMING:Lio/agora/rtc/Constants$AudioScenario;

.field public static final enum SHOWROOM:Lio/agora/rtc/Constants$AudioScenario;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1661
    new-instance v0, Lio/agora/rtc/Constants$AudioScenario;

    const/4 v1, 0x0

    const-string v2, "DEFAULT"

    invoke-direct {v0, v2, v1, v1}, Lio/agora/rtc/Constants$AudioScenario;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/agora/rtc/Constants$AudioScenario;->DEFAULT:Lio/agora/rtc/Constants$AudioScenario;

    .line 1665
    new-instance v0, Lio/agora/rtc/Constants$AudioScenario;

    const/4 v2, 0x1

    const-string v3, "CHATROOM_ENTERTAINMENT"

    invoke-direct {v0, v3, v2, v2}, Lio/agora/rtc/Constants$AudioScenario;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/agora/rtc/Constants$AudioScenario;->CHATROOM_ENTERTAINMENT:Lio/agora/rtc/Constants$AudioScenario;

    .line 1669
    new-instance v0, Lio/agora/rtc/Constants$AudioScenario;

    const/4 v3, 0x2

    const-string v4, "EDUCATION"

    invoke-direct {v0, v4, v3, v3}, Lio/agora/rtc/Constants$AudioScenario;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/agora/rtc/Constants$AudioScenario;->EDUCATION:Lio/agora/rtc/Constants$AudioScenario;

    .line 1673
    new-instance v0, Lio/agora/rtc/Constants$AudioScenario;

    const/4 v4, 0x3

    const-string v5, "GAME_STREAMING"

    invoke-direct {v0, v5, v4, v4}, Lio/agora/rtc/Constants$AudioScenario;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/agora/rtc/Constants$AudioScenario;->GAME_STREAMING:Lio/agora/rtc/Constants$AudioScenario;

    .line 1677
    new-instance v0, Lio/agora/rtc/Constants$AudioScenario;

    const/4 v5, 0x4

    const-string v6, "SHOWROOM"

    invoke-direct {v0, v6, v5, v5}, Lio/agora/rtc/Constants$AudioScenario;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/agora/rtc/Constants$AudioScenario;->SHOWROOM:Lio/agora/rtc/Constants$AudioScenario;

    .line 1681
    new-instance v0, Lio/agora/rtc/Constants$AudioScenario;

    const/4 v6, 0x5

    const-string v7, "CHATROOM_GAMING"

    invoke-direct {v0, v7, v6, v6}, Lio/agora/rtc/Constants$AudioScenario;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/agora/rtc/Constants$AudioScenario;->CHATROOM_GAMING:Lio/agora/rtc/Constants$AudioScenario;

    const/4 v0, 0x6

    new-array v0, v0, [Lio/agora/rtc/Constants$AudioScenario;

    .line 1657
    sget-object v7, Lio/agora/rtc/Constants$AudioScenario;->DEFAULT:Lio/agora/rtc/Constants$AudioScenario;

    aput-object v7, v0, v1

    sget-object v1, Lio/agora/rtc/Constants$AudioScenario;->CHATROOM_ENTERTAINMENT:Lio/agora/rtc/Constants$AudioScenario;

    aput-object v1, v0, v2

    sget-object v1, Lio/agora/rtc/Constants$AudioScenario;->EDUCATION:Lio/agora/rtc/Constants$AudioScenario;

    aput-object v1, v0, v3

    sget-object v1, Lio/agora/rtc/Constants$AudioScenario;->GAME_STREAMING:Lio/agora/rtc/Constants$AudioScenario;

    aput-object v1, v0, v4

    sget-object v1, Lio/agora/rtc/Constants$AudioScenario;->SHOWROOM:Lio/agora/rtc/Constants$AudioScenario;

    aput-object v1, v0, v5

    sget-object v1, Lio/agora/rtc/Constants$AudioScenario;->CHATROOM_GAMING:Lio/agora/rtc/Constants$AudioScenario;

    aput-object v1, v0, v6

    sput-object v0, Lio/agora/rtc/Constants$AudioScenario;->$VALUES:[Lio/agora/rtc/Constants$AudioScenario;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1684
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1685
    iput p3, p0, Lio/agora/rtc/Constants$AudioScenario;->value:I

    return-void
.end method

.method public static getValue(Lio/agora/rtc/Constants$AudioScenario;)I
    .locals 0

    .line 1689
    iget p0, p0, Lio/agora/rtc/Constants$AudioScenario;->value:I

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/agora/rtc/Constants$AudioScenario;
    .locals 1

    .line 1657
    const-class v0, Lio/agora/rtc/Constants$AudioScenario;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/agora/rtc/Constants$AudioScenario;

    return-object p0
.end method

.method public static values()[Lio/agora/rtc/Constants$AudioScenario;
    .locals 1

    .line 1657
    sget-object v0, Lio/agora/rtc/Constants$AudioScenario;->$VALUES:[Lio/agora/rtc/Constants$AudioScenario;

    invoke-virtual {v0}, [Lio/agora/rtc/Constants$AudioScenario;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/agora/rtc/Constants$AudioScenario;

    return-object v0
.end method
