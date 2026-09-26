.class Lcom/narvii/achievements/AllRanksFragment$Adapter;
.super Lcom/narvii/list/NVAdapter;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/achievements/AllRanksFragment$Adapter;->this$0:Lcom/narvii/achievements/AllRanksFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    const-string p1, "ranking"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    check-cast p1, Lcom/narvii/util/ranking/RankingService;

    .line 14
    .line 15
    iput-object p1, p0, Lcom/narvii/achievements/AllRanksFragment$Adapter;->rankingService:Lcom/narvii/util/ranking/RankingService;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/narvii/util/ranking/RankingService;->getLevels()Ljava/util/List;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    iput-object p1, p0, Lcom/narvii/achievements/AllRanksFragment$Adapter;->rankingLevelList:Ljava/util/List;

    .line 22
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

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/achievements/AllRanksFragment$Adapter;->rankingLevelList:Ljava/util/List;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 10
    move-result v0

    .line 11
    :goto_0
    return v0
.end method

.method public getItem(I)Lcom/narvii/util/ranking/RankingLevel;
    .locals 1

    iget-object v0, p0, Lcom/narvii/achievements/AllRanksFragment$Adapter;->rankingLevelList:Ljava/util/List;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/ranking/RankingLevel;

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 1
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
    .locals 6

    .line 1
    .line 2
    .line 3
    const v0, 0x7f0d0691

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 7
    move-result-object p2

    .line 8
    .line 9
    .line 10
    const p3, 0x7f0a01a7

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 14
    move-result-object p3

    .line 15
    .line 16
    check-cast p3, Landroid/widget/ImageView;

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/achievements/AllRanksFragment$Adapter;->rankingService:Lcom/narvii/util/ranking/RankingService;

    .line 19
    .line 20
    add-int/lit8 v1, p1, 0x1

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/narvii/util/ranking/RankingService;->getBadge(I)Landroid/graphics/drawable/Drawable;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    .line 27
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 28
    .line 29
    .line 30
    const p3, 0x7f0a0e9e

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 34
    move-result-object p3

    .line 35
    .line 36
    check-cast p3, Landroid/widget/TextView;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, p1}, Lcom/narvii/achievements/AllRanksFragment$Adapter;->getItem(I)Lcom/narvii/util/ranking/RankingLevel;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    iget-object v0, v0, Lcom/narvii/util/ranking/RankingLevel;->title:Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    .line 47
    .line 48
    const p3, 0x7f0a0dea

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 52
    move-result-object p3

    .line 53
    .line 54
    check-cast p3, Landroid/widget/TextView;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/narvii/achievements/AllRanksFragment$Adapter;->getCount()I

    .line 58
    move-result v0

    .line 59
    const/4 v1, 0x0

    .line 60
    const/4 v2, 0x1

    .line 61
    .line 62
    if-le v0, v2, :cond_0

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, v2}, Lcom/narvii/achievements/AllRanksFragment$Adapter;->getItem(I)Lcom/narvii/util/ranking/RankingLevel;

    .line 66
    move-result-object v0

    .line 67
    .line 68
    iget v0, v0, Lcom/narvii/util/ranking/RankingLevel;->reputation:I

    .line 69
    goto :goto_0

    .line 70
    :cond_0
    move v0, v1

    .line 71
    .line 72
    :goto_0
    if-nez p1, :cond_1

    .line 73
    .line 74
    iget-object p1, p0, Lcom/narvii/achievements/AllRanksFragment$Adapter;->this$0:Lcom/narvii/achievements/AllRanksFragment;

    .line 75
    .line 76
    new-array v2, v2, [Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    invoke-static {p1}, Lcom/narvii/achievements/AllRanksFragment;->t(Lcom/narvii/achievements/AllRanksFragment;)Ljava/text/NumberFormat;

    .line 80
    move-result-object v3

    .line 81
    int-to-long v4, v0

    .line 82
    .line 83
    .line 84
    invoke-virtual {v3, v4, v5}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    .line 85
    move-result-object v0

    .line 86
    .line 87
    aput-object v0, v2, v1

    .line 88
    .line 89
    .line 90
    const v0, 0x7f120b89

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, v0, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 94
    move-result-object p1

    .line 95
    goto :goto_1

    .line 96
    .line 97
    :cond_1
    iget-object v0, p0, Lcom/narvii/achievements/AllRanksFragment$Adapter;->this$0:Lcom/narvii/achievements/AllRanksFragment;

    .line 98
    .line 99
    new-array v2, v2, [Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    invoke-static {v0}, Lcom/narvii/achievements/AllRanksFragment;->t(Lcom/narvii/achievements/AllRanksFragment;)Ljava/text/NumberFormat;

    .line 103
    move-result-object v3

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0, p1}, Lcom/narvii/achievements/AllRanksFragment$Adapter;->getItem(I)Lcom/narvii/util/ranking/RankingLevel;

    .line 107
    move-result-object p1

    .line 108
    .line 109
    iget p1, p1, Lcom/narvii/util/ranking/RankingLevel;->reputation:I

    .line 110
    int-to-long v4, p1

    .line 111
    .line 112
    .line 113
    invoke-virtual {v3, v4, v5}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    .line 114
    move-result-object p1

    .line 115
    .line 116
    aput-object p1, v2, v1

    .line 117
    .line 118
    .line 119
    const p1, 0x7f120d2e

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0, p1, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 123
    move-result-object p1

    .line 124
    .line 125
    .line 126
    :goto_1
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    return-object p2
.end method

.method public isEnabled(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
