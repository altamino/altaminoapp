.class Lcom/narvii/achievements/AllRanksFragment$Adapter;
.super Lcom/narvii/list/NVAdapter;
.source "AllRanksFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/achievements/AllRanksFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Adapter"
.end annotation


# instance fields
.field rankingLevelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/util/ranking/RankingLevel;",
            ">;"
        }
    .end annotation
.end field

.field rankingService:Lcom/narvii/util/ranking/RankingService;

.field final synthetic this$0:Lcom/narvii/achievements/AllRanksFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/achievements/AllRanksFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/narvii/achievements/AllRanksFragment$Adapter;->this$0:Lcom/narvii/achievements/AllRanksFragment;

    .line 98
    invoke-direct {p0, p2}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    const-string p1, "ranking"

    .line 99
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/ranking/RankingService;

    iput-object p1, p0, Lcom/narvii/achievements/AllRanksFragment$Adapter;->rankingService:Lcom/narvii/util/ranking/RankingService;

    .line 100
    iget-object p1, p0, Lcom/narvii/achievements/AllRanksFragment$Adapter;->rankingService:Lcom/narvii/util/ranking/RankingService;

    invoke-virtual {p1}, Lcom/narvii/util/ranking/RankingService;->getLevels()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/achievements/AllRanksFragment$Adapter;->rankingLevelList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/narvii/achievements/AllRanksFragment$Adapter;->rankingLevelList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getItem(I)Lcom/narvii/util/ranking/RankingLevel;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/narvii/achievements/AllRanksFragment$Adapter;->rankingLevelList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/ranking/RankingLevel;

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 91
    invoke-virtual {p0, p1}, Lcom/narvii/achievements/AllRanksFragment$Adapter;->getItem(I)Lcom/narvii/util/ranking/RankingLevel;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    const v0, 0x7f0b05da

    .line 130
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f090115

    .line 131
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    .line 132
    iget-object v0, p0, Lcom/narvii/achievements/AllRanksFragment$Adapter;->rankingService:Lcom/narvii/util/ranking/RankingService;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/narvii/util/ranking/RankingService;->getBadge(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const p3, 0x7f090b9a

    .line 134
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 135
    invoke-virtual {p0, p1}, Lcom/narvii/achievements/AllRanksFragment$Adapter;->getItem(I)Lcom/narvii/util/ranking/RankingLevel;

    move-result-object v0

    iget-object v0, v0, Lcom/narvii/util/ranking/RankingLevel;->title:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p3, 0x7f090b08

    .line 137
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 138
    invoke-virtual {p0}, Lcom/narvii/achievements/AllRanksFragment$Adapter;->getCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    invoke-virtual {p0, v2}, Lcom/narvii/achievements/AllRanksFragment$Adapter;->getItem(I)Lcom/narvii/util/ranking/RankingLevel;

    move-result-object v0

    iget v0, v0, Lcom/narvii/util/ranking/RankingLevel;->reputation:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez p1, :cond_1

    .line 141
    iget-object p1, p0, Lcom/narvii/achievements/AllRanksFragment$Adapter;->this$0:Lcom/narvii/achievements/AllRanksFragment;

    const v3, 0x7f0f0add

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/narvii/achievements/AllRanksFragment;->access$000(Lcom/narvii/achievements/AllRanksFragment;)Ljava/text/NumberFormat;

    move-result-object v4

    int-to-long v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    invoke-virtual {p1, v3, v2}, Landroid/support/v4/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 143
    :cond_1
    iget-object v0, p0, Lcom/narvii/achievements/AllRanksFragment$Adapter;->this$0:Lcom/narvii/achievements/AllRanksFragment;

    const v3, 0x7f0f0c03

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/narvii/achievements/AllRanksFragment;->access$000(Lcom/narvii/achievements/AllRanksFragment;)Ljava/text/NumberFormat;

    move-result-object v4

    invoke-virtual {p0, p1}, Lcom/narvii/achievements/AllRanksFragment$Adapter;->getItem(I)Lcom/narvii/util/ranking/RankingLevel;

    move-result-object p1

    iget p1, p1, Lcom/narvii/util/ranking/RankingLevel;->reputation:I

    int-to-long v5, p1

    invoke-virtual {v4, v5, v6}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-virtual {v0, v3, v2}, Landroid/support/v4/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 146
    :goto_1
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method

.method public isEnabled(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
