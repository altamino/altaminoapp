.class public Lcom/narvii/modulization/ConfigPath;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CHAT_SPAM_PROTECTION:[Ljava/lang/String;

.field public static final FEATURED_LAYOUT:[Ljava/lang/String;

.field public static final RANKING_LEADERBOARD_LIST_PATH:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "featured"

    const-string v1, "layout"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/narvii/modulization/ConfigPath;->FEATURED_LAYOUT:[Ljava/lang/String;

    const-string v0, "chat"

    const-string/jumbo v1, "spamProtectionEnabled"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/narvii/modulization/ConfigPath;->CHAT_SPAM_PROTECTION:[Ljava/lang/String;

    const-string/jumbo v0, "ranking"

    const-string v1, "leaderboardList"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/narvii/modulization/ConfigPath;->RANKING_LEADERBOARD_LIST_PATH:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method
