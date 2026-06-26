.class public abstract Lcom/narvii/feed/quizzes/QuizzesRankingListAdapter;
.super Lcom/narvii/list/NVPagedAdapter;
.source "QuizzesRankingListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/feed/quizzes/QuizzesRankingListAdapter$RankingListTitleAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/list/NVPagedAdapter<",
        "Lcom/narvii/feed/quizzes/mode/QuizzesResultWrapper;",
        "Lcom/narvii/feed/quizzes/mode/QuizzesResultResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private itemClickListener:Lcom/narvii/list/ObjectItemClickListener;

.field private needImpression:Z


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/narvii/list/NVPagedAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    const/4 p1, 0x1

    .line 38
    iput-boolean p1, p0, Lcom/narvii/feed/quizzes/QuizzesRankingListAdapter;->needImpression:Z

    .line 44
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->setDarkTheme(Z)V

    return-void
.end method

.method private isMe(Lcom/narvii/model/User;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-string v1, "account"

    .line 229
    invoke-virtual {p0, v1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/account/AccountService;

    .line 230
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v1

    .line 231
    invoke-virtual {p1}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method


# virtual methods
.method protected dataType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/narvii/feed/quizzes/mode/QuizzesResultWrapper;",
            ">;"
        }
    .end annotation

    .line 66
    const-class v0, Lcom/narvii/feed/quizzes/mode/QuizzesResultWrapper;

    return-object v0
.end method

.method protected filterResponseList(Ljava/util/List;I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/feed/quizzes/mode/QuizzesResultWrapper;",
            ">;I)",
            "Ljava/util/List<",
            "Lcom/narvii/feed/quizzes/mode/QuizzesResultWrapper;",
            ">;"
        }
    .end annotation

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 99
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVPagedAdapter;->filterResponseList(Ljava/util/List;I)Ljava/util/List;

    move-result-object p1

    .line 101
    invoke-virtual {p0}, Lcom/narvii/feed/quizzes/QuizzesRankingListAdapter;->getBlog()Lcom/narvii/model/Blog;

    move-result-object p2

    const-string v1, "account"

    .line 103
    invoke-virtual {p0, v1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/account/AccountService;

    if-eqz v1, :cond_4

    if-eqz p2, :cond_4

    .line 105
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    .line 106
    :cond_0
    invoke-virtual {v1}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {p2}, Lcom/narvii/model/Blog;->uid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 108
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0

    .line 111
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/feed/quizzes/mode/QuizzesResultWrapper;

    .line 112
    invoke-virtual {p2}, Lcom/narvii/model/Blog;->uid()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lcom/narvii/feed/quizzes/mode/QuizzesResultWrapper;->userProfile:Lcom/narvii/model/User;

    if-nez v4, :cond_3

    move-object v4, v2

    goto :goto_2

    .line 113
    :cond_3
    invoke-virtual {v4}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    move-result-object v4

    .line 112
    :goto_2
    invoke-static {v3, v4}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 114
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 119
    :cond_4
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_5
    return-object v0
.end method

.method public fitHoverTitleView(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x0

    .line 243
    invoke-virtual {p0, v0}, Lcom/narvii/feed/quizzes/QuizzesRankingListAdapter;->getBackgroundColor(Z)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 244
    instance-of v1, p1, Lcom/narvii/widget/RadiusLayout;

    if-eqz v1, :cond_0

    .line 245
    check-cast p1, Lcom/narvii/widget/RadiusLayout;

    invoke-virtual {p0}, Lcom/narvii/feed/quizzes/QuizzesRankingListAdapter;->getRadius()I

    move-result v1

    invoke-virtual {p0}, Lcom/narvii/feed/quizzes/QuizzesRankingListAdapter;->getRadius()I

    move-result v2

    invoke-virtual {p1, v1, v2, v0, v0}, Lcom/narvii/widget/RadiusLayout;->setRadius(IIII)V

    :cond_0
    return-void
.end method

.method public getAreaName()Ljava/lang/String;
    .locals 1

    const-string v0, "UserList"

    return-object v0
.end method

.method protected getBackgroundColor(Z)I
    .locals 0

    if-eqz p1, :cond_0

    const p1, 0x19ffffff

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected abstract getBlog()Lcom/narvii/model/Blog;
.end method

.method protected getItemType(Ljava/lang/Object;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected getItemTypeCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    .line 126
    instance-of v0, p1, Lcom/narvii/feed/quizzes/mode/QuizzesResultWrapper;

    if-eqz v0, :cond_c

    .line 128
    move-object v0, p1

    check-cast v0, Lcom/narvii/feed/quizzes/mode/QuizzesResultWrapper;

    iget-object v1, v0, Lcom/narvii/feed/quizzes/mode/QuizzesResultWrapper;->userProfile:Lcom/narvii/model/User;

    const v2, 0x7f0b0421

    .line 129
    invoke-virtual {p0, v2, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f09090e

    .line 130
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const v2, 0x7f09090f

    .line 131
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 132
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/16 v7, 0x8

    const/4 v8, 0x0

    if-le v3, v5, :cond_0

    .line 134
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v9, v4, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v9, v8

    const-string v3, "%02d"

    invoke-static {v5, v3, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 135
    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    invoke-virtual {p3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 137
    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_0
    if-eq v3, v4, :cond_3

    if-eq v3, v6, :cond_2

    if-eq v3, v5, :cond_1

    goto :goto_0

    :cond_1
    const v3, 0x7f080481

    .line 147
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_2
    const v3, 0x7f080480

    .line 144
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_3
    const v3, 0x7f08047f

    .line 141
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 150
    :goto_0
    invoke-virtual {p3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 151
    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    const p3, 0x7f0909af

    .line 154
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/widget/Color3DTextView;

    .line 155
    iget v2, v0, Lcom/narvii/feed/quizzes/mode/QuizzesResultWrapper;->highestMode:I

    if-ne v2, v4, :cond_4

    new-array v2, v6, [I

    .line 156
    fill-array-data v2, :array_0

    invoke-virtual {p3, v2}, Lcom/narvii/widget/Color3DTextView;->setTextColors([I)V

    const/16 v2, -0x70e2

    .line 157
    invoke-virtual {p3, v2}, Lcom/narvii/widget/Color3DTextView;->setShadowColor(I)V

    goto :goto_2

    :cond_4
    new-array v2, v6, [I

    .line 159
    fill-array-data v2, :array_1

    invoke-virtual {p3, v2}, Lcom/narvii/widget/Color3DTextView;->setTextColors([I)V

    .line 160
    invoke-virtual {p3, v8}, Lcom/narvii/widget/Color3DTextView;->setShadowColor(I)V

    .line 163
    :goto_2
    iget v2, v0, Lcom/narvii/feed/quizzes/mode/QuizzesResultWrapper;->highestScore:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 164
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v3}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v3

    .line 165
    invoke-virtual {v3, v2}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 166
    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p3, 0x7f090764

    .line 168
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/widget/NicknameView;

    if-eqz v1, :cond_5

    .line 170
    invoke-virtual {p3, v1}, Lcom/narvii/widget/NicknameView;->setUser(Lcom/narvii/model/User;)V

    const p3, 0x7f090c10

    .line 172
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/widget/UserAvatarLayout;

    .line 173
    invoke-virtual {p3, v1}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    .line 176
    :cond_5
    invoke-direct {p0, v1}, Lcom/narvii/feed/quizzes/QuizzesRankingListAdapter;->isMe(Lcom/narvii/model/User;)Z

    move-result p3

    invoke-virtual {p0, p3}, Lcom/narvii/feed/quizzes/QuizzesRankingListAdapter;->getBackgroundColor(Z)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 178
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    move-result-object p3

    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v4

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const p3, 0x7f090366

    .line 179
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    if-eqz p1, :cond_6

    const/16 v2, 0x8

    goto :goto_3

    :cond_6
    const/4 v2, 0x0

    :goto_3
    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 180
    instance-of p3, p2, Lcom/narvii/widget/RadiusLayout;

    if-eqz p3, :cond_8

    if-eqz p1, :cond_7

    .line 182
    move-object p1, p2

    check-cast p1, Lcom/narvii/widget/RadiusLayout;

    invoke-virtual {p0}, Lcom/narvii/feed/quizzes/QuizzesRankingListAdapter;->getRadius()I

    move-result p3

    invoke-virtual {p0}, Lcom/narvii/feed/quizzes/QuizzesRankingListAdapter;->getRadius()I

    move-result v2

    invoke-virtual {p1, v8, v8, p3, v2}, Lcom/narvii/widget/RadiusLayout;->setRadius(IIII)V

    goto :goto_4

    .line 184
    :cond_7
    move-object p1, p2

    check-cast p1, Lcom/narvii/widget/RadiusLayout;

    invoke-virtual {p1, v8, v8, v8, v8}, Lcom/narvii/widget/RadiusLayout;->setRadius(IIII)V

    :cond_8
    :goto_4
    const p1, 0x7f0908f1

    .line 188
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const p3, 0x7f0908f2

    .line 189
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    .line 190
    iget-boolean v2, v0, Lcom/narvii/feed/quizzes/mode/QuizzesResultWrapper;->hellIsFinished:Z

    if-eqz v2, :cond_9

    const/4 v3, 0x0

    goto :goto_5

    :cond_9
    const/16 v3, 0x8

    .line 191
    :goto_5
    invoke-virtual {p3, v3}, Landroid/view/View;->setVisibility(I)V

    .line 192
    iget-boolean p3, v0, Lcom/narvii/feed/quizzes/mode/QuizzesResultWrapper;->isFinished:Z

    if-eqz p3, :cond_a

    if-nez v2, :cond_a

    goto :goto_6

    :cond_a
    const/4 v4, 0x0

    :goto_6
    if-eqz v4, :cond_b

    const/4 v7, 0x0

    .line 193
    :cond_b
    invoke-virtual {p1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 195
    invoke-virtual {p0, p2, v1}, Lcom/narvii/list/NVAdapter;->tagCellForLog(Landroid/view/View;Ljava/lang/Object;)V

    return-object p2

    :cond_c
    const/4 p1, 0x0

    return-object p1

    nop

    :array_0
    .array-data 4
        -0x87b
        -0x29a1
    .end array-data

    :array_1
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method protected getRadius()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onAttach()V
    .locals 2

    .line 58
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->onAttach()V

    .line 59
    iget-boolean v0, p0, Lcom/narvii/feed/quizzes/QuizzesRankingListAdapter;->needImpression:Z

    if-eqz v0, :cond_0

    .line 60
    new-instance v0, Lcom/narvii/logging/Impression/LinearImpressionCollector;

    const-class v1, Lcom/narvii/model/User;

    invoke-direct {v0, v1}, Lcom/narvii/logging/Impression/LinearImpressionCollector;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->addImpressionCollector(Lcom/narvii/logging/Impression/ImpressionCollector;)V

    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 3

    .line 211
    instance-of v0, p3, Lcom/narvii/feed/quizzes/mode/QuizzesResultWrapper;

    if-eqz v0, :cond_2

    .line 212
    move-object v0, p3

    check-cast v0, Lcom/narvii/feed/quizzes/mode/QuizzesResultWrapper;

    iget-object v0, v0, Lcom/narvii/feed/quizzes/mode/QuizzesResultWrapper;->userProfile:Lcom/narvii/model/User;

    .line 213
    iget-boolean v1, p0, Lcom/narvii/feed/quizzes/QuizzesRankingListAdapter;->needImpression:Z

    if-eqz v1, :cond_0

    .line 214
    sget-object v1, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {p0, v0, v1}, Lcom/narvii/list/NVAdapter;->logClickEvent(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)V

    goto :goto_0

    .line 215
    :cond_0
    iget-object v1, p0, Lcom/narvii/feed/quizzes/QuizzesRankingListAdapter;->itemClickListener:Lcom/narvii/list/ObjectItemClickListener;

    if-eqz v1, :cond_1

    .line 216
    invoke-interface {v1, v0}, Lcom/narvii/list/ObjectItemClickListener;->onItemClick(Lcom/narvii/model/NVObject;)V

    .line 218
    :cond_1
    :goto_0
    invoke-static {p0, v0}, Lcom/narvii/user/profile/UserProfileFragment;->intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Source"

    const-string v2, "Quiz Ranking Table"

    .line 219
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 220
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    .line 222
    :cond_2
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVPagedAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method protected pageSize()I
    .locals 1

    const/16 v0, 0x14

    return v0
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/narvii/feed/quizzes/mode/QuizzesResultResponse;",
            ">;"
        }
    .end annotation

    .line 71
    const-class v0, Lcom/narvii/feed/quizzes/mode/QuizzesResultResponse;

    return-object v0
.end method

.method public setItemClickListener(Lcom/narvii/list/ObjectItemClickListener;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesRankingListAdapter;->itemClickListener:Lcom/narvii/list/ObjectItemClickListener;

    return-void
.end method

.method public setNeedImpression(Z)V
    .locals 0

    .line 48
    iput-boolean p1, p0, Lcom/narvii/feed/quizzes/QuizzesRankingListAdapter;->needImpression:Z

    return-void
.end method

.method protected tagCellAuto()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
