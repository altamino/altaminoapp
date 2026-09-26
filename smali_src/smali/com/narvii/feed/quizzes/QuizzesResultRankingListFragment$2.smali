.class Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;


# direct methods
.method constructor <init>(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$2;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 4
    move-result p3

    .line 5
    .line 6
    if-nez p3, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    :cond_0
    iget-object p3, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$2;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    .line 10
    .line 11
    .line 12
    invoke-static {p3}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->x(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)Landroid/widget/ListView;

    .line 13
    move-result-object p3

    .line 14
    .line 15
    .line 16
    invoke-virtual {p3}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 17
    move-result p3

    .line 18
    .line 19
    iget-object p4, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$2;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    .line 20
    .line 21
    .line 22
    invoke-static {p4}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->w(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)I

    .line 23
    move-result p4

    .line 24
    const/4 v0, 0x1

    .line 25
    sub-int/2addr p4, v0

    .line 26
    const/4 v1, 0x0

    .line 27
    .line 28
    if-le p3, p4, :cond_1

    .line 29
    .line 30
    iget-object p3, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$2;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    .line 31
    .line 32
    .line 33
    invoke-static {p3}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->E(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)Z

    .line 34
    move-result p3

    .line 35
    xor-int/2addr p3, v0

    .line 36
    .line 37
    iget-object p4, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$2;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    .line 38
    .line 39
    .line 40
    invoke-static {p4, v0}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->M(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;Z)V

    .line 41
    goto :goto_0

    .line 42
    .line 43
    :cond_1
    iget-object p3, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$2;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    .line 44
    .line 45
    .line 46
    invoke-static {p3}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->E(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)Z

    .line 47
    move-result p3

    .line 48
    .line 49
    iget-object p4, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$2;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    .line 50
    .line 51
    .line 52
    invoke-static {p4, v1}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->M(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;Z)V

    .line 53
    .line 54
    :goto_0
    if-eqz p3, :cond_2

    .line 55
    .line 56
    iget-object p3, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$2;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p3}, Lcom/narvii/app/NVFragment;->invalidateOptionsMenu()V

    .line 60
    .line 61
    :cond_2
    iget-object p3, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$2;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    .line 62
    .line 63
    .line 64
    invoke-static {p3}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->v(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)Lcom/narvii/model/CurrentQuizzesResult;

    .line 65
    move-result-object p3

    .line 66
    .line 67
    if-eqz p3, :cond_8

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 71
    move-result-object p1

    .line 72
    .line 73
    if-nez p1, :cond_3

    .line 74
    move p1, v1

    .line 75
    goto :goto_1

    .line 76
    .line 77
    .line 78
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 79
    move-result p1

    .line 80
    .line 81
    :goto_1
    iget-object p3, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$2;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    .line 82
    .line 83
    .line 84
    invoke-static {p3}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->A(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)I

    .line 85
    move-result p3

    .line 86
    .line 87
    if-ne p2, p3, :cond_5

    .line 88
    .line 89
    iget-object p3, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$2;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    .line 90
    .line 91
    .line 92
    invoke-static {p3}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->B(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)I

    .line 93
    move-result p3

    .line 94
    .line 95
    const/16 p4, 0x32

    .line 96
    .line 97
    if-le p1, p3, :cond_4

    .line 98
    .line 99
    iget-object p3, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$2;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    .line 100
    .line 101
    .line 102
    invoke-static {p3}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->B(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)I

    .line 103
    move-result p3

    .line 104
    .line 105
    sub-int p3, p1, p3

    .line 106
    .line 107
    if-le p3, p4, :cond_7

    .line 108
    .line 109
    iget-object p3, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$2;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    .line 110
    .line 111
    .line 112
    invoke-static {p3, p2, p1}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->Q(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;II)V

    .line 113
    goto :goto_2

    .line 114
    .line 115
    :cond_4
    iget-object p3, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$2;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    .line 116
    .line 117
    .line 118
    invoke-static {p3}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->B(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)I

    .line 119
    move-result p3

    .line 120
    .line 121
    if-ge p1, p3, :cond_7

    .line 122
    .line 123
    iget-object p3, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$2;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    .line 124
    .line 125
    .line 126
    invoke-static {p3}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->B(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)I

    .line 127
    move-result p3

    .line 128
    sub-int/2addr p3, p1

    .line 129
    .line 130
    if-le p3, p4, :cond_7

    .line 131
    .line 132
    iget-object p3, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$2;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    .line 133
    .line 134
    .line 135
    invoke-static {p3, p2, p1}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->P(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;II)V

    .line 136
    goto :goto_2

    .line 137
    .line 138
    :cond_5
    iget-object p3, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$2;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    .line 139
    .line 140
    .line 141
    invoke-static {p3}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->A(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)I

    .line 142
    move-result p3

    .line 143
    .line 144
    if-ge p2, p3, :cond_6

    .line 145
    .line 146
    iget-object p3, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$2;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    .line 147
    .line 148
    .line 149
    invoke-static {p3, p2, p1}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->Q(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;II)V

    .line 150
    goto :goto_2

    .line 151
    .line 152
    :cond_6
    iget-object p3, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$2;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    .line 153
    .line 154
    .line 155
    invoke-static {p3, p2, p1}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->P(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;II)V

    .line 156
    .line 157
    :cond_7
    :goto_2
    iget-object p3, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$2;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    .line 158
    .line 159
    .line 160
    invoke-static {p3, p1}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->K(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;I)V

    .line 161
    .line 162
    iget-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$2;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    .line 163
    .line 164
    .line 165
    invoke-static {p1, p2}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->J(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;I)V

    .line 166
    .line 167
    :cond_8
    iget-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$2;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    .line 168
    .line 169
    .line 170
    invoke-static {p1}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->v(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)Lcom/narvii/model/CurrentQuizzesResult;

    .line 171
    move-result-object p1

    .line 172
    .line 173
    if-eqz p1, :cond_9

    .line 174
    .line 175
    iget-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$2;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    .line 176
    .line 177
    iget-object p3, p1, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->resultAdapter:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$QuizzesResultAdapter;

    .line 178
    .line 179
    if-eqz p3, :cond_9

    .line 180
    .line 181
    if-ne p2, v0, :cond_9

    .line 182
    .line 183
    .line 184
    invoke-static {p1}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->x(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)Landroid/widget/ListView;

    .line 185
    move-result-object p1

    .line 186
    .line 187
    .line 188
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 189
    move-result-object p1

    .line 190
    .line 191
    .line 192
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 193
    move-result p2

    .line 194
    .line 195
    .line 196
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 197
    move-result p3

    .line 198
    add-int/2addr p2, p3

    .line 199
    int-to-float p2, p2

    .line 200
    .line 201
    .line 202
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 203
    move-result p3

    .line 204
    int-to-float p3, p3

    .line 205
    .line 206
    const/high16 p4, 0x3f800000    # 1.0f

    .line 207
    mul-float/2addr p3, p4

    .line 208
    div-float/2addr p2, p3

    .line 209
    .line 210
    .line 211
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 212
    :cond_9
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method
