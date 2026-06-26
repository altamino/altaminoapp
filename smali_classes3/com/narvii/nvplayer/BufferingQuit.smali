.class public final enum Lcom/narvii/nvplayer/BufferingQuit;
.super Ljava/lang/Enum;
.source "BufferingQuit.java"


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
.method static constructor <clinit>()V
    .locals 5

    .line 4
    new-instance v0, Lcom/narvii/nvplayer/BufferingQuit;

    const/4 v1, 0x0

    const-string v2, "HOME"

    invoke-direct {v0, v2, v1}, Lcom/narvii/nvplayer/BufferingQuit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/narvii/nvplayer/BufferingQuit;->HOME:Lcom/narvii/nvplayer/BufferingQuit;

    new-instance v0, Lcom/narvii/nvplayer/BufferingQuit;

    const/4 v2, 0x1

    const-string v3, "BACK"

    invoke-direct {v0, v3, v2}, Lcom/narvii/nvplayer/BufferingQuit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/narvii/nvplayer/BufferingQuit;->BACK:Lcom/narvii/nvplayer/BufferingQuit;

    new-instance v0, Lcom/narvii/nvplayer/BufferingQuit;

    const/4 v3, 0x2

    const-string v4, "TAB"

    invoke-direct {v0, v4, v3}, Lcom/narvii/nvplayer/BufferingQuit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/narvii/nvplayer/BufferingQuit;->TAB:Lcom/narvii/nvplayer/BufferingQuit;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/narvii/nvplayer/BufferingQuit;

    .line 3
    sget-object v4, Lcom/narvii/nvplayer/BufferingQuit;->HOME:Lcom/narvii/nvplayer/BufferingQuit;

    aput-object v4, v0, v1

    sget-object v1, Lcom/narvii/nvplayer/BufferingQuit;->BACK:Lcom/narvii/nvplayer/BufferingQuit;

    aput-object v1, v0, v2

    sget-object v1, Lcom/narvii/nvplayer/BufferingQuit;->TAB:Lcom/narvii/nvplayer/BufferingQuit;

    aput-object v1, v0, v3

    sput-object v0, Lcom/narvii/nvplayer/BufferingQuit;->$VALUES:[Lcom/narvii/nvplayer/BufferingQuit;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/narvii/nvplayer/BufferingQuit;
    .locals 1

    .line 3
    const-class v0, Lcom/narvii/nvplayer/BufferingQuit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/narvii/nvplayer/BufferingQuit;

    return-object p0
.end method

.method public static values()[Lcom/narvii/nvplayer/BufferingQuit;
    .locals 1

    .line 3
    sget-object v0, Lcom/narvii/nvplayer/BufferingQuit;->$VALUES:[Lcom/narvii/nvplayer/BufferingQuit;

    invoke-virtual {v0}, [Lcom/narvii/nvplayer/BufferingQuit;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/narvii/nvplayer/BufferingQuit;

    return-object v0
.end method
