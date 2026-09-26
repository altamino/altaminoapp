.class Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$ShareAndReplayAdapter;
.super Lcom/narvii/list/AdriftAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ShareAndReplayAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$ShareAndReplayAdapter;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/list/AdriftAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    return-void
.end method

.method static synthetic access$000(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$ShareAndReplayAdapter;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    .line 3
    return-object p0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$ShareAndReplayAdapter;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->v(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)Lcom/narvii/model/CurrentQuizzesResult;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    .line 11
    const p1, 0x7f0d0682

    .line 12
    goto :goto_0

    .line 13
    .line 14
    .line 15
    :cond_0
    const p1, 0x7f0d068e

    .line 16
    .line 17
    :goto_0
    iget-object v0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$ShareAndReplayAdapter;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->v(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)Lcom/narvii/model/CurrentQuizzesResult;

    .line 21
    move-result-object v0

    .line 22
    const/4 v1, 0x0

    .line 23
    .line 24
    if-nez v0, :cond_1

    .line 25
    const/4 v0, 0x1

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    move v0, v1

    .line 28
    .line 29
    .line 30
    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, p1, p3, p2, v0}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    iget-object p2, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$ShareAndReplayAdapter;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    .line 38
    .line 39
    .line 40
    invoke-static {p2}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->v(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)Lcom/narvii/model/CurrentQuizzesResult;

    .line 41
    move-result-object p2

    .line 42
    .line 43
    if-nez p2, :cond_4

    .line 44
    .line 45
    .line 46
    const p2, 0x7f0a0bb4

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 50
    move-result-object p2

    .line 51
    .line 52
    if-eqz p2, :cond_2

    .line 53
    .line 54
    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    .line 59
    .line 60
    :cond_2
    const p2, 0x7f0a0ce6

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 64
    move-result-object p2

    .line 65
    .line 66
    check-cast p2, Landroid/widget/TextView;

    .line 67
    .line 68
    if-eqz p2, :cond_3

    .line 69
    .line 70
    new-instance p3, Landroid/text/SpannableString;

    .line 71
    .line 72
    iget-object v0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$ShareAndReplayAdapter;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    .line 73
    .line 74
    .line 75
    const v2, 0x7f1211a5

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 79
    move-result-object v0

    .line 80
    .line 81
    .line 82
    invoke-direct {p3, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 83
    .line 84
    new-instance v0, Landroid/text/style/UnderlineSpan;

    .line 85
    .line 86
    .line 87
    invoke-direct {v0}, Landroid/text/style/UnderlineSpan;-><init>()V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p3}, Landroid/text/SpannableString;->length()I

    .line 91
    move-result v2

    .line 92
    .line 93
    const/16 v3, 0x11

    .line 94
    .line 95
    .line 96
    invoke-virtual {p3, v0, v1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    .line 101
    .line 102
    :cond_3
    const p2, 0x7f0a0cf0

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 106
    move-result-object p2

    .line 107
    .line 108
    if-eqz p2, :cond_6

    .line 109
    .line 110
    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    goto :goto_2

    .line 115
    .line 116
    .line 117
    :cond_4
    const p2, 0x7f0a0bc2

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 121
    move-result-object p2

    .line 122
    .line 123
    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 124
    .line 125
    .line 126
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    .line 128
    .line 129
    const p2, 0x7f0a0bc1

    .line 130
    .line 131
    .line 132
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 133
    move-result-object p2

    .line 134
    .line 135
    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 136
    .line 137
    .line 138
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    .line 140
    iget-object p3, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$ShareAndReplayAdapter;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    .line 141
    .line 142
    .line 143
    invoke-static {p3}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->v(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)Lcom/narvii/model/CurrentQuizzesResult;

    .line 144
    move-result-object p3

    .line 145
    .line 146
    if-eqz p3, :cond_5

    .line 147
    .line 148
    iget-object p3, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$ShareAndReplayAdapter;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    .line 149
    .line 150
    .line 151
    invoke-static {p3}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->v(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)Lcom/narvii/model/CurrentQuizzesResult;

    .line 152
    move-result-object p3

    .line 153
    .line 154
    iget-boolean p3, p3, Lcom/narvii/model/CurrentQuizzesResult;->isFinished:Z

    .line 155
    .line 156
    if-nez p3, :cond_5

    .line 157
    .line 158
    iget-object p3, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$ShareAndReplayAdapter;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    .line 159
    .line 160
    .line 161
    invoke-static {p3}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->O(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)Landroid/view/animation/Animation;

    .line 162
    move-result-object p3

    .line 163
    .line 164
    .line 165
    invoke-virtual {p2, p3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 166
    .line 167
    new-instance p3, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$ShareAndReplayAdapter$1;

    .line 168
    .line 169
    .line 170
    invoke-direct {p3, p0}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$ShareAndReplayAdapter$1;-><init>(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$ShareAndReplayAdapter;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {p2, p3}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 174
    goto :goto_2

    .line 175
    .line 176
    .line 177
    :cond_5
    invoke-virtual {p2}, Landroid/view/View;->clearAnimation()V

    .line 178
    :cond_6
    :goto_2
    return-object p1
.end method

.method protected isDarkTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 3

    .line 1
    .line 2
    if-eqz p5, :cond_3

    .line 3
    .line 4
    .line 5
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    .line 6
    move-result v0

    .line 7
    .line 8
    .line 9
    const v1, 0x7f0a0bc2

    .line 10
    const/4 v2, 0x1

    .line 11
    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$ShareAndReplayAdapter;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    .line 15
    .line 16
    .line 17
    invoke-static {p1}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->V(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)V

    .line 18
    return v2

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    .line 22
    move-result v0

    .line 23
    .line 24
    .line 25
    const v1, 0x7f0a0bc1

    .line 26
    .line 27
    if-ne v0, v1, :cond_1

    .line 28
    .line 29
    iget-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$ShareAndReplayAdapter;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    .line 30
    .line 31
    .line 32
    invoke-static {p1}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->S(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)V

    .line 33
    return v2

    .line 34
    .line 35
    .line 36
    :cond_1
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    .line 37
    move-result v0

    .line 38
    .line 39
    .line 40
    const v1, 0x7f0a0cf0

    .line 41
    .line 42
    if-ne v0, v1, :cond_2

    .line 43
    .line 44
    new-instance v0, Lcom/narvii/share/ShareDarkRoomHelper;

    .line 45
    .line 46
    iget-object v1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$ShareAndReplayAdapter;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    .line 47
    .line 48
    .line 49
    invoke-direct {v0, v1}, Lcom/narvii/share/ShareDarkRoomHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 50
    .line 51
    iget-object v1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$ShareAndReplayAdapter;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 55
    move-result-object v1

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1}, Lcom/narvii/share/ShareDarkRoomHelper;->saveDynamicThemeBg(Landroid/app/Activity;)V

    .line 59
    .line 60
    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    .line 61
    .line 62
    iget-object v1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$ShareAndReplayAdapter;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    .line 63
    .line 64
    .line 65
    invoke-static {v1}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->D(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)Lcom/narvii/model/Blog;

    .line 66
    move-result-object v1

    .line 67
    .line 68
    new-instance v2, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$ShareAndReplayAdapter$2;

    .line 69
    .line 70
    .line 71
    invoke-direct {v2, p0}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$ShareAndReplayAdapter$2;-><init>(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$ShareAndReplayAdapter;)V

    .line 72
    .line 73
    .line 74
    invoke-static {v0, v1, v2}, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->startQuizShareIntent(Lcom/narvii/app/NVContext;Lcom/narvii/model/Blog;Lcom/narvii/util/Callback;)V

    .line 75
    goto :goto_0

    .line 76
    .line 77
    .line 78
    :cond_2
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    .line 79
    move-result v0

    .line 80
    .line 81
    .line 82
    const v1, 0x7f0a0bb4

    .line 83
    .line 84
    if-ne v0, v1, :cond_3

    .line 85
    .line 86
    iget-object v0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$ShareAndReplayAdapter;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    .line 87
    .line 88
    .line 89
    invoke-static {v0}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->D(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)Lcom/narvii/model/Blog;

    .line 90
    move-result-object v1

    .line 91
    .line 92
    .line 93
    invoke-static {v0, v1, v2}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->R(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;Lcom/narvii/model/Blog;Z)V

    .line 94
    .line 95
    .line 96
    :cond_3
    :goto_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 97
    move-result p1

    .line 98
    return p1
.end method
