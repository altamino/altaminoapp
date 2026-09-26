.class Lcom/narvii/achievements/AchievementsFragment$AchievementAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/achievements/AchievementsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AchievementAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/achievements/AchievementsFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/achievements/AchievementsFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/achievements/AchievementsFragment$AchievementAdapter;->this$0:Lcom/narvii/achievements/AchievementsFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/achievements/AchievementsFragment$AchievementAdapter;->this$0:Lcom/narvii/achievements/AchievementsFragment;

    .line 3
    .line 4
    iget-object v1, v0, Lcom/narvii/achievements/AchievementsFragment;->user:Lcom/narvii/model/User;

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    return v2

    .line 9
    .line 10
    :cond_0
    iget-boolean v1, v0, Lcom/narvii/achievements/AchievementsFragment;->isRankingEnabled:Z

    .line 11
    .line 12
    if-eqz v1, :cond_2

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lcom/narvii/achievements/AchievementsFragment;->u(Lcom/narvii/achievements/AchievementsFragment;)Lcom/narvii/list/MergeAdapter;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/narvii/list/MergeAdapter;->errorMessage()Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    return v2

    .line 24
    :cond_1
    const/4 v0, 0x1

    .line 25
    return v0

    .line 26
    :cond_2
    return v2
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 1
    .line 2
    .line 3
    const p1, 0x7f0d04aa

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    const-string p2, "ranking"

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p2}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    move-result-object p2

    .line 14
    .line 15
    check-cast p2, Lcom/narvii/util/ranking/RankingService;

    .line 16
    .line 17
    .line 18
    const p3, 0x7f0a01a7

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 22
    move-result-object p3

    .line 23
    .line 24
    check-cast p3, Landroid/widget/ImageView;

    .line 25
    .line 26
    iget-object v0, p0, Lcom/narvii/achievements/AchievementsFragment$AchievementAdapter;->this$0:Lcom/narvii/achievements/AchievementsFragment;

    .line 27
    .line 28
    iget-object v0, v0, Lcom/narvii/achievements/AchievementsFragment;->user:Lcom/narvii/model/User;

    .line 29
    .line 30
    iget v0, v0, Lcom/narvii/model/User;->level:I

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2, v0}, Lcom/narvii/util/ranking/RankingService;->getBadge(I)Landroid/graphics/drawable/Drawable;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    .line 37
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 38
    .line 39
    .line 40
    const p3, 0x7f0a0e9e

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 44
    move-result-object p3

    .line 45
    .line 46
    check-cast p3, Landroid/widget/TextView;

    .line 47
    .line 48
    iget-object v0, p0, Lcom/narvii/achievements/AchievementsFragment$AchievementAdapter;->this$0:Lcom/narvii/achievements/AchievementsFragment;

    .line 49
    .line 50
    iget-object v0, v0, Lcom/narvii/achievements/AchievementsFragment;->user:Lcom/narvii/model/User;

    .line 51
    .line 52
    iget v0, v0, Lcom/narvii/model/User;->level:I

    .line 53
    .line 54
    .line 55
    invoke-virtual {p2, v0}, Lcom/narvii/util/ranking/RankingService;->getTitle(I)Ljava/lang/CharSequence;

    .line 56
    move-result-object p2

    .line 57
    .line 58
    .line 59
    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    .line 61
    .line 62
    const p2, 0x7f0a0cbe

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 66
    move-result-object p2

    .line 67
    .line 68
    check-cast p2, Landroid/widget/TextView;

    .line 69
    .line 70
    new-instance p3, Landroid/text/SpannableStringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 74
    move-result-object v0

    .line 75
    .line 76
    .line 77
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 78
    move-result-object v0

    .line 79
    .line 80
    .line 81
    invoke-direct {p3, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 82
    .line 83
    new-instance v0, Landroid/text/style/UnderlineSpan;

    .line 84
    .line 85
    .line 86
    invoke-direct {v0}, Landroid/text/style/UnderlineSpan;-><init>()V

    .line 87
    const/4 v1, 0x0

    .line 88
    .line 89
    .line 90
    invoke-virtual {p3}, Landroid/text/SpannableStringBuilder;->length()I

    .line 91
    move-result v2

    .line 92
    .line 93
    .line 94
    invoke-virtual {p3, v0, v1, v2, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 95
    .line 96
    new-instance v0, Lcom/narvii/achievements/AchievementsFragment$AchievementAdapter$1;

    .line 97
    .line 98
    .line 99
    invoke-direct {v0, p0}, Lcom/narvii/achievements/AchievementsFragment$AchievementAdapter$1;-><init>(Lcom/narvii/achievements/AchievementsFragment$AchievementAdapter;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    .line 107
    .line 108
    const p2, 0x7f0a0bce

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 112
    move-result-object p2

    .line 113
    .line 114
    check-cast p2, Lcom/narvii/widget/RankingTitleView;

    .line 115
    const/4 p3, 0x1

    .line 116
    .line 117
    .line 118
    invoke-virtual {p2, p3}, Lcom/narvii/widget/RankingTitleView;->setOthersCanSeeProgress(Z)V

    .line 119
    .line 120
    iget-object p3, p0, Lcom/narvii/achievements/AchievementsFragment$AchievementAdapter;->this$0:Lcom/narvii/achievements/AchievementsFragment;

    .line 121
    .line 122
    iget-object p3, p3, Lcom/narvii/achievements/AchievementsFragment;->user:Lcom/narvii/model/User;

    .line 123
    .line 124
    .line 125
    invoke-virtual {p2, p3, p0}, Lcom/narvii/widget/RankingTitleView;->setUser(Lcom/narvii/model/User;Lcom/narvii/app/NVContext;)V

    .line 126
    return-object p1
.end method

.method public isEnabled(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
