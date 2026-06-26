.class public final enum Lcom/narvii/util/logging/LoggingOrigin;
.super Ljava/lang/Enum;
.source "LoggingOrigin.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/narvii/util/logging/LoggingOrigin;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/narvii/util/logging/LoggingOrigin;

.field public static final enum Explore:Lcom/narvii/util/logging/LoggingOrigin;

.field public static final enum GlobalSearch:Lcom/narvii/util/logging/LoggingOrigin;

.field public static final enum Headlines:Lcom/narvii/util/logging/LoggingOrigin;

.field public static final enum Search:Lcom/narvii/util/logging/LoggingOrigin;

.field public static final enum Suggest:Lcom/narvii/util/logging/LoggingOrigin;

.field public static final enum SuggestPopup:Lcom/narvii/util/logging/LoggingOrigin;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 9
    new-instance v0, Lcom/narvii/util/logging/LoggingOrigin;

    const/4 v1, 0x0

    const-string v2, "Headlines"

    invoke-direct {v0, v2, v1}, Lcom/narvii/util/logging/LoggingOrigin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/narvii/util/logging/LoggingOrigin;->Headlines:Lcom/narvii/util/logging/LoggingOrigin;

    .line 11
    new-instance v0, Lcom/narvii/util/logging/LoggingOrigin;

    const/4 v2, 0x1

    const-string v3, "GlobalSearch"

    invoke-direct {v0, v3, v2}, Lcom/narvii/util/logging/LoggingOrigin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/narvii/util/logging/LoggingOrigin;->GlobalSearch:Lcom/narvii/util/logging/LoggingOrigin;

    .line 14
    new-instance v0, Lcom/narvii/util/logging/LoggingOrigin;

    const/4 v3, 0x2

    const-string v4, "Search"

    invoke-direct {v0, v4, v3}, Lcom/narvii/util/logging/LoggingOrigin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/narvii/util/logging/LoggingOrigin;->Search:Lcom/narvii/util/logging/LoggingOrigin;

    .line 15
    new-instance v0, Lcom/narvii/util/logging/LoggingOrigin;

    const/4 v4, 0x3

    const-string v5, "Suggest"

    invoke-direct {v0, v5, v4}, Lcom/narvii/util/logging/LoggingOrigin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/narvii/util/logging/LoggingOrigin;->Suggest:Lcom/narvii/util/logging/LoggingOrigin;

    .line 16
    new-instance v0, Lcom/narvii/util/logging/LoggingOrigin;

    const/4 v5, 0x4

    const-string v6, "SuggestPopup"

    invoke-direct {v0, v6, v5}, Lcom/narvii/util/logging/LoggingOrigin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/narvii/util/logging/LoggingOrigin;->SuggestPopup:Lcom/narvii/util/logging/LoggingOrigin;

    .line 17
    new-instance v0, Lcom/narvii/util/logging/LoggingOrigin;

    const/4 v6, 0x5

    const-string v7, "Explore"

    invoke-direct {v0, v7, v6}, Lcom/narvii/util/logging/LoggingOrigin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/narvii/util/logging/LoggingOrigin;->Explore:Lcom/narvii/util/logging/LoggingOrigin;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/narvii/util/logging/LoggingOrigin;

    .line 7
    sget-object v7, Lcom/narvii/util/logging/LoggingOrigin;->Headlines:Lcom/narvii/util/logging/LoggingOrigin;

    aput-object v7, v0, v1

    sget-object v1, Lcom/narvii/util/logging/LoggingOrigin;->GlobalSearch:Lcom/narvii/util/logging/LoggingOrigin;

    aput-object v1, v0, v2

    sget-object v1, Lcom/narvii/util/logging/LoggingOrigin;->Search:Lcom/narvii/util/logging/LoggingOrigin;

    aput-object v1, v0, v3

    sget-object v1, Lcom/narvii/util/logging/LoggingOrigin;->Suggest:Lcom/narvii/util/logging/LoggingOrigin;

    aput-object v1, v0, v4

    sget-object v1, Lcom/narvii/util/logging/LoggingOrigin;->SuggestPopup:Lcom/narvii/util/logging/LoggingOrigin;

    aput-object v1, v0, v5

    sget-object v1, Lcom/narvii/util/logging/LoggingOrigin;->Explore:Lcom/narvii/util/logging/LoggingOrigin;

    aput-object v1, v0, v6

    sput-object v0, Lcom/narvii/util/logging/LoggingOrigin;->$VALUES:[Lcom/narvii/util/logging/LoggingOrigin;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/narvii/util/logging/LoggingOrigin;
    .locals 1

    .line 7
    const-class v0, Lcom/narvii/util/logging/LoggingOrigin;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/narvii/util/logging/LoggingOrigin;

    return-object p0
.end method

.method public static values()[Lcom/narvii/util/logging/LoggingOrigin;
    .locals 1

    .line 7
    sget-object v0, Lcom/narvii/util/logging/LoggingOrigin;->$VALUES:[Lcom/narvii/util/logging/LoggingOrigin;

    invoke-virtual {v0}, [Lcom/narvii/util/logging/LoggingOrigin;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/narvii/util/logging/LoggingOrigin;

    return-object v0
.end method
