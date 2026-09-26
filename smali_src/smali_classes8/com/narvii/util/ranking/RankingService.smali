.class public Lcom/narvii/util/ranking/RankingService;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static EMPTY:[Lcom/narvii/util/ranking/RankingLevel;


# instance fields
.field private context:Lcom/narvii/app/NVContext;

.field private levels:[Lcom/narvii/util/ranking/RankingLevel;

.field private final map:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/narvii/util/ranking/RankingLevel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/narvii/util/ranking/RankingLevel;

    sput-object v0, Lcom/narvii/util/ranking/RankingService;->EMPTY:[Lcom/narvii/util/ranking/RankingLevel;

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Landroid/util/SparseArray;

    .line 6
    .line 7
    const/16 v1, 0x14

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    .line 11
    .line 12
    iput-object v0, p0, Lcom/narvii/util/ranking/RankingService;->map:Landroid/util/SparseArray;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/narvii/util/ranking/RankingService;->context:Lcom/narvii/app/NVContext;

    .line 15
    return-void
.end method

.method private getBadgeLargeId(I)I
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    :pswitch_0
    sget p1, Lcom/narvii/lib/R$drawable;->ranking_badge_large_lvl20:I

    return p1

    :pswitch_1
    sget p1, Lcom/narvii/lib/R$drawable;->ranking_badge_large_lvl19:I

    return p1

    :pswitch_2
    sget p1, Lcom/narvii/lib/R$drawable;->ranking_badge_large_lvl18:I

    return p1

    :pswitch_3
    sget p1, Lcom/narvii/lib/R$drawable;->ranking_badge_large_lvl17:I

    return p1

    :pswitch_4
    sget p1, Lcom/narvii/lib/R$drawable;->ranking_badge_large_lvl16:I

    return p1

    :pswitch_5
    sget p1, Lcom/narvii/lib/R$drawable;->ranking_badge_large_lvl15:I

    return p1

    :pswitch_6
    sget p1, Lcom/narvii/lib/R$drawable;->ranking_badge_large_lvl14:I

    return p1

    :pswitch_7
    sget p1, Lcom/narvii/lib/R$drawable;->ranking_badge_large_lvl13:I

    return p1

    :pswitch_8
    sget p1, Lcom/narvii/lib/R$drawable;->ranking_badge_large_lvl12:I

    return p1

    :pswitch_9
    sget p1, Lcom/narvii/lib/R$drawable;->ranking_badge_large_lvl11:I

    return p1

    :pswitch_a
    sget p1, Lcom/narvii/lib/R$drawable;->ranking_badge_large_lvl10:I

    return p1

    :pswitch_b
    sget p1, Lcom/narvii/lib/R$drawable;->ranking_badge_large_lvl9:I

    return p1

    :pswitch_c
    sget p1, Lcom/narvii/lib/R$drawable;->ranking_badge_large_lvl8:I

    return p1

    :pswitch_d
    sget p1, Lcom/narvii/lib/R$drawable;->ranking_badge_large_lvl7:I

    return p1

    :pswitch_e
    sget p1, Lcom/narvii/lib/R$drawable;->ranking_badge_large_lvl6:I

    return p1

    :pswitch_f
    sget p1, Lcom/narvii/lib/R$drawable;->ranking_badge_large_lvl5:I

    return p1

    :pswitch_10
    sget p1, Lcom/narvii/lib/R$drawable;->ranking_badge_large_lvl4:I

    return p1

    :pswitch_11
    sget p1, Lcom/narvii/lib/R$drawable;->ranking_badge_large_lvl3:I

    return p1

    :pswitch_12
    sget p1, Lcom/narvii/lib/R$drawable;->ranking_badge_large_lvl2:I

    return p1

    :pswitch_13
    sget p1, Lcom/narvii/lib/R$drawable;->ranking_badge_large_lvl1:I

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getBadgeSmallId(I)I
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    :pswitch_0
    sget p1, Lcom/narvii/lib/R$drawable;->ranking_badge_small_lvl20:I

    return p1

    :pswitch_1
    sget p1, Lcom/narvii/lib/R$drawable;->ranking_badge_small_lvl19:I

    return p1

    :pswitch_2
    sget p1, Lcom/narvii/lib/R$drawable;->ranking_badge_small_lvl18:I

    return p1

    :pswitch_3
    sget p1, Lcom/narvii/lib/R$drawable;->ranking_badge_small_lvl17:I

    return p1

    :pswitch_4
    sget p1, Lcom/narvii/lib/R$drawable;->ranking_badge_small_lvl16:I

    return p1

    :pswitch_5
    sget p1, Lcom/narvii/lib/R$drawable;->ranking_badge_small_lvl15:I

    return p1

    :pswitch_6
    sget p1, Lcom/narvii/lib/R$drawable;->ranking_badge_small_lvl14:I

    return p1

    :pswitch_7
    sget p1, Lcom/narvii/lib/R$drawable;->ranking_badge_small_lvl13:I

    return p1

    :pswitch_8
    sget p1, Lcom/narvii/lib/R$drawable;->ranking_badge_small_lvl12:I

    return p1

    :pswitch_9
    sget p1, Lcom/narvii/lib/R$drawable;->ranking_badge_small_lvl11:I

    return p1

    :pswitch_a
    sget p1, Lcom/narvii/lib/R$drawable;->ranking_badge_small_lvl10:I

    return p1

    :pswitch_b
    sget p1, Lcom/narvii/lib/R$drawable;->ranking_badge_small_lvl9:I

    return p1

    :pswitch_c
    sget p1, Lcom/narvii/lib/R$drawable;->ranking_badge_small_lvl8:I

    return p1

    :pswitch_d
    sget p1, Lcom/narvii/lib/R$drawable;->ranking_badge_small_lvl7:I

    return p1

    :pswitch_e
    sget p1, Lcom/narvii/lib/R$drawable;->ranking_badge_small_lvl6:I

    return p1

    :pswitch_f
    sget p1, Lcom/narvii/lib/R$drawable;->ranking_badge_small_lvl5:I

    return p1

    :pswitch_10
    sget p1, Lcom/narvii/lib/R$drawable;->ranking_badge_small_lvl4:I

    return p1

    :pswitch_11
    sget p1, Lcom/narvii/lib/R$drawable;->ranking_badge_small_lvl3:I

    return p1

    :pswitch_12
    sget p1, Lcom/narvii/lib/R$drawable;->ranking_badge_small_lvl2:I

    return p1

    :pswitch_13
    sget p1, Lcom/narvii/lib/R$drawable;->ranking_badge_small_lvl1:I

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private prepare()V
    .locals 6

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/modulization/CommunityConfigHelper;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/util/ranking/RankingService;->context:Lcom/narvii/app/NVContext;

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 8
    .line 9
    const-string v1, "ranking"

    .line 10
    .line 11
    const-string v2, "rankingTable"

    .line 12
    .line 13
    .line 14
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/narvii/modulization/CommunityConfigHelper;->getModuleNode([Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    sget-object v1, Lcom/narvii/util/ranking/RankingService;->EMPTY:[Lcom/narvii/util/ranking/RankingLevel;

    .line 22
    .line 23
    iput-object v1, p0, Lcom/narvii/util/ranking/RankingService;->levels:[Lcom/narvii/util/ranking/RankingLevel;

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->isArray()Z

    .line 29
    move-result v1

    .line 30
    .line 31
    if-nez v1, :cond_0

    .line 32
    goto :goto_0

    .line 33
    .line 34
    :cond_0
    :try_start_0
    sget-object v1, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 35
    .line 36
    const-class v2, [Lcom/narvii/util/ranking/RankingLevel;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v0, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->treeToValue(Lcom/fasterxml/jackson/core/TreeNode;Ljava/lang/Class;)Ljava/lang/Object;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    check-cast v0, [Lcom/narvii/util/ranking/RankingLevel;

    .line 43
    .line 44
    iput-object v0, p0, Lcom/narvii/util/ranking/RankingService;->levels:[Lcom/narvii/util/ranking/RankingLevel;

    .line 45
    .line 46
    if-nez v0, :cond_1

    .line 47
    .line 48
    sget-object v0, Lcom/narvii/util/ranking/RankingService;->EMPTY:[Lcom/narvii/util/ranking/RankingLevel;

    .line 49
    .line 50
    iput-object v0, p0, Lcom/narvii/util/ranking/RankingService;->levels:[Lcom/narvii/util/ranking/RankingLevel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .line 52
    :catch_0
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/narvii/util/ranking/RankingService;->map:Landroid/util/SparseArray;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 56
    .line 57
    iget-object v0, p0, Lcom/narvii/util/ranking/RankingService;->levels:[Lcom/narvii/util/ranking/RankingLevel;

    .line 58
    array-length v1, v0

    .line 59
    const/4 v2, 0x0

    .line 60
    .line 61
    :goto_1
    if-ge v2, v1, :cond_2

    .line 62
    .line 63
    aget-object v3, v0, v2

    .line 64
    .line 65
    iget-object v4, p0, Lcom/narvii/util/ranking/RankingService;->map:Landroid/util/SparseArray;

    .line 66
    .line 67
    iget v5, v3, Lcom/narvii/util/ranking/RankingLevel;->level:I

    .line 68
    .line 69
    .line 70
    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 71
    .line 72
    add-int/lit8 v2, v2, 0x1

    .line 73
    goto :goto_1

    .line 74
    :cond_2
    return-void
.end method


# virtual methods
.method public getBadge(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/narvii/util/ranking/RankingService;->getBadge(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getBadge(IZ)Landroid/graphics/drawable/Drawable;
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 2
    new-instance p2, Lcom/narvii/modulization/CommunityConfigHelper;

    iget-object v1, p0, Lcom/narvii/util/ranking/RankingService;->context:Lcom/narvii/app/NVContext;

    invoke-direct {p2, v1}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 3
    invoke-virtual {p2}, Lcom/narvii/modulization/CommunityConfigHelper;->isRankingModuleEnabled()Z

    move-result p2

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    if-lez p1, :cond_2

    .line 4
    invoke-direct {p0, p1}, Lcom/narvii/util/ranking/RankingService;->getBadgeLargeId(I)I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/narvii/util/ranking/RankingService;->context:Lcom/narvii/app/NVContext;

    .line 5
    invoke-interface {p2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public getBadgeSmall(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/narvii/util/ranking/RankingService;->getBadgeSmall(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getBadgeSmall(IZ)Landroid/graphics/drawable/Drawable;
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 1
    new-instance p2, Lcom/narvii/modulization/CommunityConfigHelper;

    iget-object v1, p0, Lcom/narvii/util/ranking/RankingService;->context:Lcom/narvii/app/NVContext;

    invoke-direct {p2, v1}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 2
    invoke-virtual {p2}, Lcom/narvii/modulization/CommunityConfigHelper;->getModuleNode()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lcom/narvii/modulization/CommunityConfigHelper;->isRankingModuleEnabled()Z

    move-result p2

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    if-lez p1, :cond_2

    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/util/ranking/RankingService;->getBadgeSmallId(I)I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/narvii/util/ranking/RankingService;->context:Lcom/narvii/app/NVContext;

    .line 4
    invoke-interface {p2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public getInfluencerOrRankingBadge(Lcom/narvii/model/User;)Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/narvii/util/ranking/RankingService;->getInfluencerOrRankingBadge(Lcom/narvii/model/User;Z)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getInfluencerOrRankingBadge(Lcom/narvii/model/User;Z)Landroid/graphics/drawable/Drawable;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/model/User;->isInfluencer()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/narvii/util/ranking/RankingService;->context:Lcom/narvii/app/NVContext;

    .line 2
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/narvii/lib/R$drawable;->ic_badge_influencer:I

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    :cond_1
    if-eqz p2, :cond_2

    .line 3
    iget p1, p1, Lcom/narvii/model/User;->level:I

    invoke-virtual {p0, p1}, Lcom/narvii/util/ranking/RankingService;->getBadge(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 4
    :cond_2
    iget p1, p1, Lcom/narvii/model/User;->level:I

    invoke-virtual {p0, p1}, Lcom/narvii/util/ranking/RankingService;->getBadgeSmall(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getLevels()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/util/ranking/RankingLevel;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/ranking/RankingService;->levels:[Lcom/narvii/util/ranking/RankingLevel;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    sget-object v1, Lcom/narvii/util/ranking/RankingService;->EMPTY:[Lcom/narvii/util/ranking/RankingLevel;

    .line 7
    .line 8
    if-ne v0, v1, :cond_1

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-direct {p0}, Lcom/narvii/util/ranking/RankingService;->prepare()V

    .line 12
    .line 13
    :cond_1
    iget-object v0, p0, Lcom/narvii/util/ranking/RankingService;->levels:[Lcom/narvii/util/ranking/RankingLevel;

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 17
    move-result-object v0

    .line 18
    return-object v0
.end method

.method public getReputation(I)I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/ranking/RankingService;->levels:[Lcom/narvii/util/ranking/RankingLevel;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    sget-object v1, Lcom/narvii/util/ranking/RankingService;->EMPTY:[Lcom/narvii/util/ranking/RankingLevel;

    .line 7
    .line 8
    if-ne v0, v1, :cond_1

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-direct {p0}, Lcom/narvii/util/ranking/RankingService;->prepare()V

    .line 12
    .line 13
    :cond_1
    iget-object v0, p0, Lcom/narvii/util/ranking/RankingService;->map:Landroid/util/SparseArray;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    check-cast p1, Lcom/narvii/util/ranking/RankingLevel;

    .line 20
    .line 21
    if-nez p1, :cond_2

    .line 22
    const/4 p1, 0x0

    .line 23
    goto :goto_0

    .line 24
    .line 25
    :cond_2
    iget p1, p1, Lcom/narvii/util/ranking/RankingLevel;->reputation:I

    .line 26
    :goto_0
    return p1
.end method

.method public getTitle(I)Ljava/lang/CharSequence;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/ranking/RankingService;->levels:[Lcom/narvii/util/ranking/RankingLevel;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    sget-object v1, Lcom/narvii/util/ranking/RankingService;->EMPTY:[Lcom/narvii/util/ranking/RankingLevel;

    .line 7
    .line 8
    if-ne v0, v1, :cond_1

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-direct {p0}, Lcom/narvii/util/ranking/RankingService;->prepare()V

    .line 12
    .line 13
    :cond_1
    iget-object v0, p0, Lcom/narvii/util/ranking/RankingService;->map:Landroid/util/SparseArray;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    check-cast p1, Lcom/narvii/util/ranking/RankingLevel;

    .line 20
    .line 21
    if-nez p1, :cond_2

    .line 22
    .line 23
    const-string p1, ""

    .line 24
    goto :goto_0

    .line 25
    .line 26
    :cond_2
    iget-object p1, p1, Lcom/narvii/util/ranking/RankingLevel;->title:Ljava/lang/String;

    .line 27
    :goto_0
    return-object p1
.end method

.method public reset()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-object v0, p0, Lcom/narvii/util/ranking/RankingService;->levels:[Lcom/narvii/util/ranking/RankingLevel;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/util/ranking/RankingService;->map:Landroid/util/SparseArray;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 9
    return-void
.end method
