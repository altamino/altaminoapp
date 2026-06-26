.class Lcom/narvii/achievements/AchievementsFragment$AchievementAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "AchievementsFragment.java"


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

    .line 284
    iput-object p1, p0, Lcom/narvii/achievements/AchievementsFragment$AchievementAdapter;->this$0:Lcom/narvii/achievements/AchievementsFragment;

    .line 285
    invoke-direct {p0, p2}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 3

    .line 290
    iget-object v0, p0, Lcom/narvii/achievements/AchievementsFragment$AchievementAdapter;->this$0:Lcom/narvii/achievements/AchievementsFragment;

    iget-object v1, v0, Lcom/narvii/achievements/AchievementsFragment;->user:Lcom/narvii/model/User;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 293
    :cond_0
    iget-boolean v1, v0, Lcom/narvii/achievements/AchievementsFragment;->isRankingEnabled:Z

    if-eqz v1, :cond_2

    .line 294
    invoke-static {v0}, Lcom/narvii/achievements/AchievementsFragment;->access$500(Lcom/narvii/achievements/AchievementsFragment;)Lcom/narvii/list/MergeAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/list/MergeAdapter;->errorMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x1

    return v0

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

    const p1, 0x7f0b047b

    .line 320
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    const-string p2, "ranking"

    .line 321
    invoke-virtual {p0, p2}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/util/ranking/RankingService;

    const p3, 0x7f090115

    .line 323
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    .line 324
    iget-object v0, p0, Lcom/narvii/achievements/AchievementsFragment$AchievementAdapter;->this$0:Lcom/narvii/achievements/AchievementsFragment;

    iget-object v0, v0, Lcom/narvii/achievements/AchievementsFragment;->user:Lcom/narvii/model/User;

    iget v0, v0, Lcom/narvii/model/User;->level:I

    invoke-virtual {p2, v0}, Lcom/narvii/util/ranking/RankingService;->getBadge(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const p3, 0x7f090b9a

    .line 326
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 327
    iget-object v0, p0, Lcom/narvii/achievements/AchievementsFragment$AchievementAdapter;->this$0:Lcom/narvii/achievements/AchievementsFragment;

    iget-object v0, v0, Lcom/narvii/achievements/AchievementsFragment;->user:Lcom/narvii/model/User;

    iget v0, v0, Lcom/narvii/model/User;->level:I

    invoke-virtual {p2, v0}, Lcom/narvii/util/ranking/RankingService;->getTitle(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f0909f8

    .line 330
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 331
    new-instance p3, Landroid/text/SpannableStringBuilder;

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p3, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 332
    new-instance v0, Landroid/text/style/UnderlineSpan;

    invoke-direct {v0}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {p3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p3, v0, v2, v1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 333
    new-instance v0, Lcom/narvii/achievements/AchievementsFragment$AchievementAdapter$1;

    invoke-direct {v0, p0}, Lcom/narvii/achievements/AchievementsFragment$AchievementAdapter$1;-><init>(Lcom/narvii/achievements/AchievementsFragment$AchievementAdapter;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 341
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f090911

    .line 343
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/RankingTitleView;

    const/4 p3, 0x1

    .line 344
    invoke-virtual {p2, p3}, Lcom/narvii/widget/RankingTitleView;->setOthersCanSeeProgress(Z)V

    .line 345
    iget-object p3, p0, Lcom/narvii/achievements/AchievementsFragment$AchievementAdapter;->this$0:Lcom/narvii/achievements/AchievementsFragment;

    iget-object p3, p3, Lcom/narvii/achievements/AchievementsFragment;->user:Lcom/narvii/model/User;

    invoke-virtual {p2, p3, p0}, Lcom/narvii/widget/RankingTitleView;->setUser(Lcom/narvii/model/User;Lcom/narvii/app/NVContext;)V

    return-object p1
.end method

.method public isEnabled(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
