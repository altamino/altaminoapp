.class public final enum Lcom/narvii/util/logging/LoggingOrigin;
.super Ljava/lang/Enum;
.source "SourceFile"


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
.method private static synthetic $values()[Lcom/narvii/util/logging/LoggingOrigin;
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/narvii/util/logging/LoggingOrigin;

    const/4 v1, 0x0

    sget-object v2, Lcom/narvii/util/logging/LoggingOrigin;->Headlines:Lcom/narvii/util/logging/LoggingOrigin;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/narvii/util/logging/LoggingOrigin;->GlobalSearch:Lcom/narvii/util/logging/LoggingOrigin;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/narvii/util/logging/LoggingOrigin;->Search:Lcom/narvii/util/logging/LoggingOrigin;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/narvii/util/logging/LoggingOrigin;->Suggest:Lcom/narvii/util/logging/LoggingOrigin;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/narvii/util/logging/LoggingOrigin;->SuggestPopup:Lcom/narvii/util/logging/LoggingOrigin;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/narvii/util/logging/LoggingOrigin;->Explore:Lcom/narvii/util/logging/LoggingOrigin;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/logging/LoggingOrigin;

    .line 3
    .line 4
    const-string v1, "Headlines"

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1, v2}, Lcom/narvii/util/logging/LoggingOrigin;-><init>(Ljava/lang/String;I)V

    .line 9
    .line 10
    sput-object v0, Lcom/narvii/util/logging/LoggingOrigin;->Headlines:Lcom/narvii/util/logging/LoggingOrigin;

    .line 11
    .line 12
    new-instance v0, Lcom/narvii/util/logging/LoggingOrigin;

    .line 13
    .line 14
    const-string v1, "GlobalSearch"

    .line 15
    const/4 v2, 0x1

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1, v2}, Lcom/narvii/util/logging/LoggingOrigin;-><init>(Ljava/lang/String;I)V

    .line 19
    .line 20
    sput-object v0, Lcom/narvii/util/logging/LoggingOrigin;->GlobalSearch:Lcom/narvii/util/logging/LoggingOrigin;

    .line 21
    .line 22
    new-instance v0, Lcom/narvii/util/logging/LoggingOrigin;

    .line 23
    .line 24
    const-string v1, "Search"

    .line 25
    const/4 v2, 0x2

    .line 26
    .line 27
    .line 28
    invoke-direct {v0, v1, v2}, Lcom/narvii/util/logging/LoggingOrigin;-><init>(Ljava/lang/String;I)V

    .line 29
    .line 30
    sput-object v0, Lcom/narvii/util/logging/LoggingOrigin;->Search:Lcom/narvii/util/logging/LoggingOrigin;

    .line 31
    .line 32
    new-instance v0, Lcom/narvii/util/logging/LoggingOrigin;

    .line 33
    .line 34
    const-string v1, "Suggest"

    .line 35
    const/4 v2, 0x3

    .line 36
    .line 37
    .line 38
    invoke-direct {v0, v1, v2}, Lcom/narvii/util/logging/LoggingOrigin;-><init>(Ljava/lang/String;I)V

    .line 39
    .line 40
    sput-object v0, Lcom/narvii/util/logging/LoggingOrigin;->Suggest:Lcom/narvii/util/logging/LoggingOrigin;

    .line 41
    .line 42
    new-instance v0, Lcom/narvii/util/logging/LoggingOrigin;

    .line 43
    .line 44
    const-string v1, "SuggestPopup"

    .line 45
    const/4 v2, 0x4

    .line 46
    .line 47
    .line 48
    invoke-direct {v0, v1, v2}, Lcom/narvii/util/logging/LoggingOrigin;-><init>(Ljava/lang/String;I)V

    .line 49
    .line 50
    sput-object v0, Lcom/narvii/util/logging/LoggingOrigin;->SuggestPopup:Lcom/narvii/util/logging/LoggingOrigin;

    .line 51
    .line 52
    new-instance v0, Lcom/narvii/util/logging/LoggingOrigin;

    .line 53
    .line 54
    const-string v1, "Explore"

    .line 55
    const/4 v2, 0x5

    .line 56
    .line 57
    .line 58
    invoke-direct {v0, v1, v2}, Lcom/narvii/util/logging/LoggingOrigin;-><init>(Ljava/lang/String;I)V

    .line 59
    .line 60
    sput-object v0, Lcom/narvii/util/logging/LoggingOrigin;->Explore:Lcom/narvii/util/logging/LoggingOrigin;

    .line 61
    .line 62
    .line 63
    invoke-static {}, Lcom/narvii/util/logging/LoggingOrigin;->$values()[Lcom/narvii/util/logging/LoggingOrigin;

    .line 64
    move-result-object v0

    .line 65
    .line 66
    sput-object v0, Lcom/narvii/util/logging/LoggingOrigin;->$VALUES:[Lcom/narvii/util/logging/LoggingOrigin;

    .line 67
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

.method public static valueOf(Ljava/lang/String;)Lcom/narvii/util/logging/LoggingOrigin;
    .locals 1

    .line 1
    .line 2
    const-class v0, Lcom/narvii/util/logging/LoggingOrigin;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    check-cast p0, Lcom/narvii/util/logging/LoggingOrigin;

    .line 9
    return-object p0
.end method

.method public static values()[Lcom/narvii/util/logging/LoggingOrigin;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/util/logging/LoggingOrigin;->$VALUES:[Lcom/narvii/util/logging/LoggingOrigin;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, [Lcom/narvii/util/logging/LoggingOrigin;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, [Lcom/narvii/util/logging/LoggingOrigin;

    .line 9
    return-object v0
.end method
