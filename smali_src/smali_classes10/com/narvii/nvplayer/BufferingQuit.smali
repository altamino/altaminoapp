.class public final enum Lcom/narvii/nvplayer/BufferingQuit;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/narvii/nvplayer/BufferingQuit;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/narvii/nvplayer/BufferingQuit;

.field public static final enum BACK:Lcom/narvii/nvplayer/BufferingQuit;

.field public static final enum HOME:Lcom/narvii/nvplayer/BufferingQuit;

.field public static final enum TAB:Lcom/narvii/nvplayer/BufferingQuit;


# direct methods
.method private static synthetic $values()[Lcom/narvii/nvplayer/BufferingQuit;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/narvii/nvplayer/BufferingQuit;

    const/4 v1, 0x0

    sget-object v2, Lcom/narvii/nvplayer/BufferingQuit;->HOME:Lcom/narvii/nvplayer/BufferingQuit;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/narvii/nvplayer/BufferingQuit;->BACK:Lcom/narvii/nvplayer/BufferingQuit;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/narvii/nvplayer/BufferingQuit;->TAB:Lcom/narvii/nvplayer/BufferingQuit;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/nvplayer/BufferingQuit;

    .line 3
    .line 4
    const-string v1, "HOME"

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1, v2}, Lcom/narvii/nvplayer/BufferingQuit;-><init>(Ljava/lang/String;I)V

    .line 9
    .line 10
    sput-object v0, Lcom/narvii/nvplayer/BufferingQuit;->HOME:Lcom/narvii/nvplayer/BufferingQuit;

    .line 11
    .line 12
    new-instance v0, Lcom/narvii/nvplayer/BufferingQuit;

    .line 13
    .line 14
    const-string v1, "BACK"

    .line 15
    const/4 v2, 0x1

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1, v2}, Lcom/narvii/nvplayer/BufferingQuit;-><init>(Ljava/lang/String;I)V

    .line 19
    .line 20
    sput-object v0, Lcom/narvii/nvplayer/BufferingQuit;->BACK:Lcom/narvii/nvplayer/BufferingQuit;

    .line 21
    .line 22
    new-instance v0, Lcom/narvii/nvplayer/BufferingQuit;

    .line 23
    .line 24
    const-string v1, "TAB"

    .line 25
    const/4 v2, 0x2

    .line 26
    .line 27
    .line 28
    invoke-direct {v0, v1, v2}, Lcom/narvii/nvplayer/BufferingQuit;-><init>(Ljava/lang/String;I)V

    .line 29
    .line 30
    sput-object v0, Lcom/narvii/nvplayer/BufferingQuit;->TAB:Lcom/narvii/nvplayer/BufferingQuit;

    .line 31
    .line 32
    .line 33
    invoke-static {}, Lcom/narvii/nvplayer/BufferingQuit;->$values()[Lcom/narvii/nvplayer/BufferingQuit;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    sput-object v0, Lcom/narvii/nvplayer/BufferingQuit;->$VALUES:[Lcom/narvii/nvplayer/BufferingQuit;

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

.method public static valueOf(Ljava/lang/String;)Lcom/narvii/nvplayer/BufferingQuit;
    .locals 1

    .line 1
    .line 2
    const-class v0, Lcom/narvii/nvplayer/BufferingQuit;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    check-cast p0, Lcom/narvii/nvplayer/BufferingQuit;

    .line 9
    return-object p0
.end method

.method public static values()[Lcom/narvii/nvplayer/BufferingQuit;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/nvplayer/BufferingQuit;->$VALUES:[Lcom/narvii/nvplayer/BufferingQuit;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, [Lcom/narvii/nvplayer/BufferingQuit;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, [Lcom/narvii/nvplayer/BufferingQuit;

    .line 9
    return-object v0
.end method
