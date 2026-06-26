.class public Lcom/narvii/modulization/ConfigPath;
.super Ljava/lang/Object;
.source "ConfigPath.java"


# static fields
.field public static final CHAT_SPAM_PROTECTION:[Ljava/lang/String;

.field public static final FEATURED_LAYOUT:[Ljava/lang/String;

.field public static final RANKING_LEADERBOARD_LIST_PATH:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "featured"

    aput-object v3, v1, v2

    const/4 v3, 0x1

    const-string v4, "layout"

    aput-object v4, v1, v3

    .line 9
    sput-object v1, Lcom/narvii/modulization/ConfigPath;->FEATURED_LAYOUT:[Ljava/lang/String;

    new-array v1, v0, [Ljava/lang/String;

    const-string v4, "chat"

    aput-object v4, v1, v2

    const-string v4, "spamProtectionEnabled"

    aput-object v4, v1, v3

    .line 10
    sput-object v1, Lcom/narvii/modulization/ConfigPath;->CHAT_SPAM_PROTECTION:[Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "ranking"

    aput-object v1, v0, v2

    const-string v1, "leaderboardList"

    aput-object v1, v0, v3

    .line 12
    sput-object v0, Lcom/narvii/modulization/ConfigPath;->RANKING_LEADERBOARD_LIST_PATH:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
