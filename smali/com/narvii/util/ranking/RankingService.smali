.class public Lcom/narvii/util/ranking/RankingService;
.super Ljava/lang/Object;
.source "RankingService.java"


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

    .line 26
    sput-object v0, Lcom/narvii/util/ranking/RankingService;->EMPTY:[Lcom/narvii/util/ranking/RankingLevel;

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Landroid/util/SparseArray;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/narvii/util/ranking/RankingService;->map:Landroid/util/SparseArray;

    .line 29
    iput-object p1, p0, Lcom/narvii/util/ranking/RankingService;->context:Lcom/narvii/app/NVContext;

    return-void
.end method

.method private getBadgeLargeId(I)I
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    .line 172
    :pswitch_0
    sget p1, Lcom/narvii/lib/R$drawable;->ranking_badge_large_lvl20:I

    return p1

    .line 170
    :pswitch_1
    sget p1, Lcom/narvii/lib/R$drawable;->ranking_badge_large_lvl19:I

    return p1

    .line 168
    :pswitch_2
    sget p1, Lcom/narvii/lib/R$drawable;->ranking_badge_large_lvl18:I

    return p1

    .line 166
    :pswitch_3
    sget p1, Lcom/narvii/lib/R$drawable;->ranking_badge_large_lvl17:I

    return p1

    .line 164
    :pswitch_4
    sget p1, Lcom/narvii/lib/R$drawable;->ranking_badge_large_lvl16:I

    return p1

    .line 162
    :pswitch_5
    sget p1, Lcom/narvii/lib/R$drawable;->ranking_badge_large_lvl15:I

    return p1

    .line 160
    :pswitch_6
    sget p1, Lcom/narvii/lib/R$drawable;->ranking_badge_large_lvl14:I

    return p1

    .line 158
    :pswitch_7
    sget p1, Lcom/narvii/lib/R$drawable;->ranking_badge_large_lvl13:I

    return p1

    .line 156
    :pswitch_8
    sget p1, Lcom/narvii/lib/R$drawable;->ranking_badge_large_lvl12:I

    return p1

    .line 154
    :pswitch_9
    sget p1, Lcom/narvii/lib/R$drawable;->ranking_badge_large_lvl11:I

    return p1

    .line 152
    :pswitch_a
    sget p1, Lcom/narvii/lib/R$drawable;->ranking_badge_large_lvl10:I

    return p1

    .line 150
    :pswitch_b
    sget p1, Lcom/narvii/lib/R$drawable;->ranking_badge_large_lvl9:I

    return p1

    .line 148
    :pswitch_c
    sget p1, Lcom/narvii/lib/R$drawable;->ranking_badge_large_lvl8:I

    return p1

    .line 146
    :pswitch_d
    sget p1, Lcom/narvii/lib/R$drawable;->ranking_badge_large_lvl7:I

    return p1

    .line 144
    :pswitch_e
    sget p1, Lcom/narvii/lib/R$drawable;->ranking_badge_large_lvl6:I

    return p1

    .line 142
    :pswitch_f
    sget p1, Lcom/narvii/lib/R$drawable;->ranking_badge_large_lvl5:I

    return p1

    .line 140
    :pswitch_10
    sget p1, Lcom/narvii/lib/R$drawable;->ranking_badge_large_lvl4:I

    return p1

    .line 138
    :pswitch_11
    sget p1, Lcom/narvii/lib/R$drawable;->ranking_badge_large_lvl3:I

    return p1

    .line 136
    :pswitch_12
    sget p1, Lcom/narvii/lib/R$drawable;->ranking_badge_large_lvl2:I

    return p1

    .line 134
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

    .line 219
    :pswitch_0
    sget p1, Lcom/narvii/lib/R$drawable;->ranking_badge_small_lvl20:I

    return p1

    .line 217
    :pswitch_1
    sget p1, Lcom/narvii/lib/R$drawable;->ranking_badge_small_lvl19:I

    return p1

    .line 215
    :pswitch_2
    sget p1, Lcom/narvii/lib/R$drawable;->ranking_badge_small_lvl18:I

    return p1

    .line 213
    :pswitch_3
    sget p1, Lcom/narvii/lib/R$drawable;->ranking_badge_small_lvl17:I

    return p1

    .line 211
    :pswitch_4
    sget p1, Lcom/narvii/lib/R$drawable;->ranking_badge_small_lvl16:I

    return p1

    .line 209
    :pswitch_5
    sget p1, Lcom/narvii/lib/R$drawable;->ranking_badge_small_lvl15:I

    return p1

    .line 207
    :pswitch_6
    sget p1, Lcom/narvii/lib/R$drawable;->ranking_badge_small_lvl14:I

    return p1

    .line 205
    :pswitch_7
    sget p1, Lcom/narvii/lib/R$drawable;->ranking_badge_small_lvl13:I

    return p1

    .line 203
    :pswitch_8
    sget p1, Lcom/narvii/lib/R$drawable;->ranking_badge_small_lvl12:I

    return p1

    .line 201
    :pswitch_9
    sget p1, Lcom/narvii/lib/R$drawable;->ranking_badge_small_lvl11:I

    return p1

    .line 199
    :pswitch_a
    sget p1, Lcom/narvii/lib/R$drawable;->ranking_badge_small_lvl10:I

    return p1

    .line 197
    :pswitch_b
    sget p1, Lcom/narvii/lib/R$drawable;->ranking_badge_small_lvl9:I

    return p1

    .line 195
    :pswitch_c
    sget p1, Lcom/narvii/lib/R$drawable;->ranking_badge_small_lvl8:I

    return p1

    .line 193
    :pswitch_d
    sget p1, Lcom/narvii/lib/R$drawable;->ranking_badge_small_lvl7:I

    return p1

    .line 191
    :pswitch_e
    sget p1, Lcom/narvii/lib/R$drawable;->ranking_badge_small_lvl6:I

    return p1

    .line 189
    :pswitch_f
    sget p1, Lcom/narvii/lib/R$drawable;->ranking_badge_small_lvl5:I

    return p1

    .line 187
    :pswitch_10
    sget p1, Lcom/narvii/lib/R$drawable;->ranking_badge_small_lvl4:I

    return p1

    .line 185
    :pswitch_11
    sget p1, Lcom/narvii/lib/R$drawable;->ranking_badge_small_lvl3:I

    return p1

    .line 183
    :pswitch_12
    sget p1, Lcom/narvii/lib/R$drawable;->ranking_badge_small_lvl2:I

    return p1

    .line 181
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

    .line 33
    new-instance v0, Lcom/narvii/modulization/CommunityConfigHelper;

    iget-object v1, p0, Lcom/narvii/util/ranking/RankingService;->context:Lcom/narvii/app/NVContext;

    invoke-direct {v0, v1}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "ranking"

    aput-object v3, v1, v2

    const/4 v3, 0x1

    const-string/jumbo v4, "rankingTable"

    aput-object v4, v1, v3

    .line 34
    invoke-virtual {v0, v1}, Lcom/narvii/modulization/CommunityConfigHelper;->getModuleNode([Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    .line 35
    sget-object v1, Lcom/narvii/util/ranking/RankingService;->EMPTY:[Lcom/narvii/util/ranking/RankingLevel;

    iput-object v1, p0, Lcom/narvii/util/ranking/RankingService;->levels:[Lcom/narvii/util/ranking/RankingLevel;

    if-eqz v0, :cond_1

    .line 36
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->isArray()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 39
    :cond_0
    :try_start_0
    sget-object v1, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    const-class v3, [Lcom/narvii/util/ranking/RankingLevel;

    invoke-virtual {v1, v0, v3}, Lcom/fasterxml/jackson/databind/ObjectMapper;->treeToValue(Lcom/fasterxml/jackson/core/TreeNode;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/narvii/util/ranking/RankingLevel;

    iput-object v0, p0, Lcom/narvii/util/ranking/RankingService;->levels:[Lcom/narvii/util/ranking/RankingLevel;

    .line 40
    iget-object v0, p0, Lcom/narvii/util/ranking/RankingService;->levels:[Lcom/narvii/util/ranking/RankingLevel;

    if-nez v0, :cond_1

    .line 41
    sget-object v0, Lcom/narvii/util/ranking/RankingService;->EMPTY:[Lcom/narvii/util/ranking/RankingLevel;

    iput-object v0, p0, Lcom/narvii/util/ranking/RankingService;->levels:[Lcom/narvii/util/ranking/RankingLevel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :catch_0
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/narvii/util/ranking/RankingService;->map:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 47
    iget-object v0, p0, Lcom/narvii/util/ranking/RankingService;->levels:[Lcom/narvii/util/ranking/RankingLevel;

    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 48
    iget-object v4, p0, Lcom/narvii/util/ranking/RankingService;->map:Landroid/util/SparseArray;

    iget v5, v3, Lcom/narvii/util/ranking/RankingLevel;->level:I

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public getBadge(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    .line 74
    invoke-virtual {p0, p1, v0}, Lcom/narvii/util/ranking/RankingService;->getBadge(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getBadge(IZ)Landroid/graphics/drawable/Drawable;
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 79
    new-instance p2, Lcom/narvii/modulization/CommunityConfigHelper;

    iget-object v1, p0, Lcom/narvii/util/ranking/RankingService;->context:Lcom/narvii/app/NVContext;

    invoke-direct {p2, v1}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 80
    invoke-virtual {p2}, Lcom/narvii/modulization/CommunityConfigHelper;->isRankingModuleEnabled()Z

    move-result p2

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    if-lez p1, :cond_2

    .line 85
    invoke-direct {p0, p1}, Lcom/narvii/util/ranking/RankingService;->getBadgeLargeId(I)I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 86
    :cond_1
    iget-object p2, p0, Lcom/narvii/util/ranking/RankingService;->context:Lcom/narvii/app/NVContext;

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

    .line 127
    invoke-virtual {p0, p1, v0}, Lcom/narvii/util/ranking/RankingService;->getBadgeSmall(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getBadgeSmall(IZ)Landroid/graphics/drawable/Drawable;
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 94
    new-instance p2, Lcom/narvii/modulization/CommunityConfigHelper;

    iget-object v1, p0, Lcom/narvii/util/ranking/RankingService;->context:Lcom/narvii/app/NVContext;

    invoke-direct {p2, v1}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 95
    invoke-virtual {p2}, Lcom/narvii/modulization/CommunityConfigHelper;->getModuleNode()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lcom/narvii/modulization/CommunityConfigHelper;->isRankingModuleEnabled()Z

    move-result p2

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    if-lez p1, :cond_2

    .line 100
    invoke-direct {p0, p1}, Lcom/narvii/util/ranking/RankingService;->getBadgeSmallId(I)I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 101
    :cond_1
    iget-object p2, p0, Lcom/narvii/util/ranking/RankingService;->context:Lcom/narvii/app/NVContext;

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

    .line 123
    invoke-virtual {p0, p1, v0}, Lcom/narvii/util/ranking/RankingService;->getInfluencerOrRankingBadge(Lcom/narvii/model/User;Z)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getInfluencerOrRankingBadge(Lcom/narvii/model/User;Z)Landroid/graphics/drawable/Drawable;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 111
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/model/User;->isInfluencer()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    iget-object p1, p0, Lcom/narvii/util/ranking/RankingService;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/narvii/lib/R$drawable;->ic_badge_influencer:I

    invoke-static {p1, p2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    :cond_1
    if-eqz p2, :cond_2

    .line 115
    iget p1, p1, Lcom/narvii/model/User;->level:I

    invoke-virtual {p0, p1}, Lcom/narvii/util/ranking/RankingService;->getBadge(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 117
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

    .line 229
    iget-object v0, p0, Lcom/narvii/util/ranking/RankingService;->levels:[Lcom/narvii/util/ranking/RankingLevel;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/narvii/util/ranking/RankingService;->EMPTY:[Lcom/narvii/util/ranking/RankingLevel;

    if-ne v0, v1, :cond_1

    .line 230
    :cond_0
    invoke-direct {p0}, Lcom/narvii/util/ranking/RankingService;->prepare()V

    .line 232
    :cond_1
    iget-object v0, p0, Lcom/narvii/util/ranking/RankingService;->levels:[Lcom/narvii/util/ranking/RankingLevel;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getReputation(I)I
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/narvii/util/ranking/RankingService;->levels:[Lcom/narvii/util/ranking/RankingLevel;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/narvii/util/ranking/RankingService;->EMPTY:[Lcom/narvii/util/ranking/RankingLevel;

    if-ne v0, v1, :cond_1

    .line 67
    :cond_0
    invoke-direct {p0}, Lcom/narvii/util/ranking/RankingService;->prepare()V

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/narvii/util/ranking/RankingService;->map:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/ranking/RankingLevel;

    if-nez p1, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    .line 70
    :cond_2
    iget p1, p1, Lcom/narvii/util/ranking/RankingLevel;->reputation:I

    :goto_0
    return p1
.end method

.method public getTitle(I)Ljava/lang/CharSequence;
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/narvii/util/ranking/RankingService;->levels:[Lcom/narvii/util/ranking/RankingLevel;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/narvii/util/ranking/RankingService;->EMPTY:[Lcom/narvii/util/ranking/RankingLevel;

    if-ne v0, v1, :cond_1

    .line 59
    :cond_0
    invoke-direct {p0}, Lcom/narvii/util/ranking/RankingService;->prepare()V

    .line 61
    :cond_1
    iget-object v0, p0, Lcom/narvii/util/ranking/RankingService;->map:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/ranking/RankingLevel;

    if-nez p1, :cond_2

    const-string p1, ""

    goto :goto_0

    .line 62
    :cond_2
    iget-object p1, p1, Lcom/narvii/util/ranking/RankingLevel;->title:Ljava/lang/String;

    :goto_0
    return-object p1
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lcom/narvii/util/ranking/RankingService;->levels:[Lcom/narvii/util/ranking/RankingLevel;

    .line 54
    iget-object v0, p0, Lcom/narvii/util/ranking/RankingService;->map:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method
