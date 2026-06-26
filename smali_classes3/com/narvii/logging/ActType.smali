.class public final enum Lcom/narvii/logging/ActType;
.super Ljava/lang/Enum;
.source "ActType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/narvii/logging/ActType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/narvii/logging/ActType;

.field public static final enum APIRequest:Lcom/narvii/logging/ActType;

.field public static final enum auto:Lcom/narvii/logging/ActType;

.field public static final enum autoNextStory:Lcom/narvii/logging/ActType;

.field public static final enum autoPlay:Lcom/narvii/logging/ActType;

.field public static final enum click:Lcom/narvii/logging/ActType;

.field public static final enum doubleClick:Lcom/narvii/logging/ActType;

.field public static final enum downScroll:Lcom/narvii/logging/ActType;

.field public static final enum impression:Lcom/narvii/logging/ActType;

.field public static final enum leftScroll:Lcom/narvii/logging/ActType;

.field public static final enum pageView:Lcom/narvii/logging/ActType;

.field public static final enum rightScroll:Lcom/narvii/logging/ActType;

.field public static final enum upScroll:Lcom/narvii/logging/ActType;

.field public static final enum videoPlay:Lcom/narvii/logging/ActType;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 7
    new-instance v0, Lcom/narvii/logging/ActType;

    const/4 v1, 0x0

    const-string v2, "impression"

    invoke-direct {v0, v2, v1}, Lcom/narvii/logging/ActType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/narvii/logging/ActType;->impression:Lcom/narvii/logging/ActType;

    .line 8
    new-instance v0, Lcom/narvii/logging/ActType;

    const/4 v2, 0x1

    const-string v3, "APIRequest"

    invoke-direct {v0, v3, v2}, Lcom/narvii/logging/ActType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/narvii/logging/ActType;->APIRequest:Lcom/narvii/logging/ActType;

    .line 9
    new-instance v0, Lcom/narvii/logging/ActType;

    const/4 v3, 0x2

    const-string v4, "click"

    invoke-direct {v0, v4, v3}, Lcom/narvii/logging/ActType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/narvii/logging/ActType;->click:Lcom/narvii/logging/ActType;

    .line 10
    new-instance v0, Lcom/narvii/logging/ActType;

    const/4 v4, 0x3

    const-string v5, "autoPlay"

    invoke-direct {v0, v5, v4}, Lcom/narvii/logging/ActType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/narvii/logging/ActType;->autoPlay:Lcom/narvii/logging/ActType;

    .line 11
    new-instance v0, Lcom/narvii/logging/ActType;

    const/4 v5, 0x4

    const-string v6, "pageView"

    invoke-direct {v0, v6, v5}, Lcom/narvii/logging/ActType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/narvii/logging/ActType;->pageView:Lcom/narvii/logging/ActType;

    .line 12
    new-instance v0, Lcom/narvii/logging/ActType;

    const/4 v6, 0x5

    const-string v7, "upScroll"

    invoke-direct {v0, v7, v6}, Lcom/narvii/logging/ActType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/narvii/logging/ActType;->upScroll:Lcom/narvii/logging/ActType;

    .line 13
    new-instance v0, Lcom/narvii/logging/ActType;

    const/4 v7, 0x6

    const-string v8, "downScroll"

    invoke-direct {v0, v8, v7}, Lcom/narvii/logging/ActType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/narvii/logging/ActType;->downScroll:Lcom/narvii/logging/ActType;

    .line 14
    new-instance v0, Lcom/narvii/logging/ActType;

    const/4 v8, 0x7

    const-string v9, "leftScroll"

    invoke-direct {v0, v9, v8}, Lcom/narvii/logging/ActType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/narvii/logging/ActType;->leftScroll:Lcom/narvii/logging/ActType;

    .line 15
    new-instance v0, Lcom/narvii/logging/ActType;

    const/16 v9, 0x8

    const-string v10, "rightScroll"

    invoke-direct {v0, v10, v9}, Lcom/narvii/logging/ActType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/narvii/logging/ActType;->rightScroll:Lcom/narvii/logging/ActType;

    .line 16
    new-instance v0, Lcom/narvii/logging/ActType;

    const/16 v10, 0x9

    const-string v11, "videoPlay"

    invoke-direct {v0, v11, v10}, Lcom/narvii/logging/ActType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/narvii/logging/ActType;->videoPlay:Lcom/narvii/logging/ActType;

    .line 17
    new-instance v0, Lcom/narvii/logging/ActType;

    const/16 v11, 0xa

    const-string v12, "auto"

    invoke-direct {v0, v12, v11}, Lcom/narvii/logging/ActType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/narvii/logging/ActType;->auto:Lcom/narvii/logging/ActType;

    .line 18
    new-instance v0, Lcom/narvii/logging/ActType;

    const/16 v12, 0xb

    const-string v13, "doubleClick"

    invoke-direct {v0, v13, v12}, Lcom/narvii/logging/ActType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/narvii/logging/ActType;->doubleClick:Lcom/narvii/logging/ActType;

    .line 19
    new-instance v0, Lcom/narvii/logging/ActType;

    const/16 v13, 0xc

    const-string v14, "autoNextStory"

    invoke-direct {v0, v14, v13}, Lcom/narvii/logging/ActType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/narvii/logging/ActType;->autoNextStory:Lcom/narvii/logging/ActType;

    const/16 v0, 0xd

    new-array v0, v0, [Lcom/narvii/logging/ActType;

    .line 6
    sget-object v14, Lcom/narvii/logging/ActType;->impression:Lcom/narvii/logging/ActType;

    aput-object v14, v0, v1

    sget-object v1, Lcom/narvii/logging/ActType;->APIRequest:Lcom/narvii/logging/ActType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/narvii/logging/ActType;->click:Lcom/narvii/logging/ActType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/narvii/logging/ActType;->autoPlay:Lcom/narvii/logging/ActType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/narvii/logging/ActType;->pageView:Lcom/narvii/logging/ActType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/narvii/logging/ActType;->upScroll:Lcom/narvii/logging/ActType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/narvii/logging/ActType;->downScroll:Lcom/narvii/logging/ActType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/narvii/logging/ActType;->leftScroll:Lcom/narvii/logging/ActType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/narvii/logging/ActType;->rightScroll:Lcom/narvii/logging/ActType;

    aput-object v1, v0, v9

    sget-object v1, Lcom/narvii/logging/ActType;->videoPlay:Lcom/narvii/logging/ActType;

    aput-object v1, v0, v10

    sget-object v1, Lcom/narvii/logging/ActType;->auto:Lcom/narvii/logging/ActType;

    aput-object v1, v0, v11

    sget-object v1, Lcom/narvii/logging/ActType;->doubleClick:Lcom/narvii/logging/ActType;

    aput-object v1, v0, v12

    sget-object v1, Lcom/narvii/logging/ActType;->autoNextStory:Lcom/narvii/logging/ActType;

    aput-object v1, v0, v13

    sput-object v0, Lcom/narvii/logging/ActType;->$VALUES:[Lcom/narvii/logging/ActType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/narvii/logging/ActType;
    .locals 1

    .line 6
    const-class v0, Lcom/narvii/logging/ActType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/narvii/logging/ActType;

    return-object p0
.end method

.method public static values()[Lcom/narvii/logging/ActType;
    .locals 1

    .line 6
    sget-object v0, Lcom/narvii/logging/ActType;->$VALUES:[Lcom/narvii/logging/ActType;

    invoke-virtual {v0}, [Lcom/narvii/logging/ActType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/narvii/logging/ActType;

    return-object v0
.end method
