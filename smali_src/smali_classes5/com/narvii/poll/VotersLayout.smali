.class public Lcom/narvii/poll/VotersLayout;
.super Landroid/view/ViewGroup;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field static final MAX_VOTERS:I = 0xa


# instance fields
.field blog:Lcom/narvii/model/Blog;

.field blogId:Ljava/lang/String;

.field expand:Z

.field iconN:I

.field final iconViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/widget/NVImageView;",
            ">;"
        }
    .end annotation
.end field

.field final inflater:Landroid/view/LayoutInflater;

.field margin:I

.field moreBtn:Landroid/view/View;

.field p:F

.field size:I

.field voter:Lcom/narvii/poll/Voter;

.field voterCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    .line 5
    new-instance p2, Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    iput-object p2, p0, Lcom/narvii/poll/VotersLayout;->iconViews:Ljava/util/ArrayList;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 14
    move-result-object p2

    .line 15
    .line 16
    .line 17
    const v0, 0x7f070437

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 21
    move-result p2

    .line 22
    .line 23
    iput p2, p0, Lcom/narvii/poll/VotersLayout;->size:I

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 27
    move-result-object p2

    .line 28
    .line 29
    .line 30
    const v0, 0x7f070436

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 34
    move-result p2

    .line 35
    .line 36
    iput p2, p0, Lcom/narvii/poll/VotersLayout;->margin:I

    .line 37
    .line 38
    .line 39
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 40
    move-result-object p1

    .line 41
    .line 42
    iput-object p1, p0, Lcom/narvii/poll/VotersLayout;->inflater:Landroid/view/LayoutInflater;

    .line 43
    return-void
.end method

.method public static safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Landroid/content/Context;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroid/content/Context;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    new-instance v1, Lcom/narvii/community/CommunityHelper;

    .line 11
    .line 12
    .line 13
    invoke-direct {v1, v0}, Lcom/narvii/community/CommunityHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 14
    .line 15
    iget-object v0, p0, Lcom/narvii/poll/VotersLayout;->blog:Lcom/narvii/model/Blog;

    .line 16
    .line 17
    iget v0, v0, Lcom/narvii/model/Feed;->ndcId:I

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v0}, Lcom/narvii/community/CommunityHelper;->checkCommunityJoined(I)Z

    .line 21
    move-result v0

    .line 22
    .line 23
    if-nez v0, :cond_0

    .line 24
    return-void

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 28
    move-result v0

    .line 29
    .line 30
    .line 31
    const v1, 0x7f0a06d5

    .line 32
    .line 33
    if-ne v0, v1, :cond_1

    .line 34
    .line 35
    .line 36
    const v0, 0x7f0a0714

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 40
    move-result-object p1

    .line 41
    .line 42
    check-cast p1, Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 46
    move-result p1

    .line 47
    .line 48
    new-instance v0, Lcom/narvii/util/FilterHelper;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 52
    move-result-object v1

    .line 53
    .line 54
    .line 55
    invoke-static {v1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    .line 56
    move-result-object v1

    .line 57
    .line 58
    .line 59
    invoke-direct {v0, v1}, Lcom/narvii/util/FilterHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 60
    .line 61
    iget-object v1, p0, Lcom/narvii/poll/VotersLayout;->voter:Lcom/narvii/poll/Voter;

    .line 62
    .line 63
    iget-object v1, v1, Lcom/narvii/model/api/UserListResponse;->userList:Ljava/util/List;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v1}, Lcom/narvii/util/FilterHelper;->filter(Ljava/util/List;)Ljava/util/List;

    .line 67
    move-result-object v0

    .line 68
    .line 69
    .line 70
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 71
    move-result-object p1

    .line 72
    .line 73
    check-cast p1, Lcom/narvii/model/User;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 77
    move-result-object v0

    .line 78
    .line 79
    .line 80
    invoke-static {v0}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    .line 81
    move-result-object v0

    .line 82
    .line 83
    .line 84
    invoke-static {v0, p1}, Lcom/narvii/user/profile/UserProfileFragment;->intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)Landroid/content/Intent;

    .line 85
    move-result-object p1

    .line 86
    .line 87
    const-string v0, "Source"

    .line 88
    .line 89
    const-string v1, "Poll"

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 96
    move-result-object v0

    .line 97
    .line 98
    .line 99
    invoke-static {v0, p1}, Lcom/narvii/poll/VotersLayout;->safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V

    .line 100
    goto :goto_0

    .line 101
    .line 102
    .line 103
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 104
    move-result p1

    .line 105
    .line 106
    .line 107
    const v0, 0x7f0a098d

    .line 108
    .line 109
    if-ne p1, v0, :cond_2

    .line 110
    .line 111
    const-class p1, Lcom/narvii/poll/PollVoterListFragment;

    .line 112
    .line 113
    .line 114
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 115
    move-result-object p1

    .line 116
    .line 117
    const-string v0, "blogId"

    .line 118
    .line 119
    iget-object v1, p0, Lcom/narvii/poll/VotersLayout;->blogId:Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    .line 124
    iget-object v0, p0, Lcom/narvii/poll/VotersLayout;->voter:Lcom/narvii/poll/Voter;

    .line 125
    .line 126
    iget-object v0, v0, Lcom/narvii/poll/Voter;->polloptId:Ljava/lang/String;

    .line 127
    .line 128
    const-string v1, "polloptId"

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    .line 133
    .line 134
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 135
    move-result-object v0

    .line 136
    .line 137
    .line 138
    invoke-static {v0, p1}, Lcom/narvii/poll/VotersLayout;->safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V

    .line 139
    :cond_2
    :goto_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/poll/VotersLayout;->update()Z

    .line 4
    move-result p1

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 10
    .line 11
    goto/16 :goto_3

    .line 12
    .line 13
    :cond_0
    iget p1, p0, Lcom/narvii/poll/VotersLayout;->iconN:I

    .line 14
    .line 15
    if-lez p1, :cond_5

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 19
    move-result p1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 23
    move-result p2

    .line 24
    sub-int/2addr p1, p2

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 28
    move-result p2

    .line 29
    sub-int/2addr p1, p2

    .line 30
    .line 31
    iget p2, p0, Lcom/narvii/poll/VotersLayout;->size:I

    .line 32
    .line 33
    iget p3, p0, Lcom/narvii/poll/VotersLayout;->iconN:I

    .line 34
    mul-int/2addr p2, p3

    .line 35
    sub-int/2addr p1, p2

    .line 36
    int-to-float p1, p1

    .line 37
    .line 38
    const/high16 p2, 0x3f800000    # 1.0f

    .line 39
    mul-float/2addr p1, p2

    .line 40
    .line 41
    add-int/lit8 p3, p3, 0x1

    .line 42
    int-to-float p2, p3

    .line 43
    div-float/2addr p1, p2

    .line 44
    .line 45
    .line 46
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 47
    move-result p2

    .line 48
    .line 49
    if-eqz p2, :cond_1

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 53
    move-result p3

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 57
    move-result p4

    .line 58
    sub-int/2addr p3, p4

    .line 59
    int-to-float p3, p3

    .line 60
    sub-float/2addr p3, p1

    .line 61
    .line 62
    iget p4, p0, Lcom/narvii/poll/VotersLayout;->size:I

    .line 63
    int-to-float p4, p4

    .line 64
    sub-float/2addr p3, p4

    .line 65
    goto :goto_0

    .line 66
    .line 67
    .line 68
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 69
    move-result p3

    .line 70
    int-to-float p3, p3

    .line 71
    add-float/2addr p3, p1

    .line 72
    .line 73
    .line 74
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 75
    move-result p4

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 79
    move-result p5

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 83
    move-result v0

    .line 84
    sub-int/2addr p5, v0

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 88
    move-result v0

    .line 89
    sub-int/2addr p5, v0

    .line 90
    .line 91
    div-int/lit8 p5, p5, 0x2

    .line 92
    add-int/2addr p4, p5

    .line 93
    .line 94
    iget-object p5, p0, Lcom/narvii/poll/VotersLayout;->iconViews:Ljava/util/ArrayList;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 98
    move-result-object p5

    .line 99
    .line 100
    .line 101
    :goto_1
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    .line 102
    move-result v0

    .line 103
    .line 104
    if-eqz v0, :cond_3

    .line 105
    .line 106
    .line 107
    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 108
    move-result-object v0

    .line 109
    .line 110
    check-cast v0, Landroid/view/View;

    .line 111
    float-to-int v1, p3

    .line 112
    .line 113
    iget v2, p0, Lcom/narvii/poll/VotersLayout;->size:I

    .line 114
    .line 115
    div-int/lit8 v3, v2, 0x2

    .line 116
    .line 117
    sub-int v3, p4, v3

    .line 118
    .line 119
    add-int v4, v1, v2

    .line 120
    .line 121
    div-int/lit8 v2, v2, 0x2

    .line 122
    add-int/2addr v2, p4

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/view/View;->layout(IIII)V

    .line 126
    .line 127
    if-eqz p2, :cond_2

    .line 128
    .line 129
    iget v0, p0, Lcom/narvii/poll/VotersLayout;->size:I

    .line 130
    int-to-float v0, v0

    .line 131
    add-float/2addr v0, p1

    .line 132
    sub-float/2addr p3, v0

    .line 133
    goto :goto_1

    .line 134
    .line 135
    :cond_2
    iget v0, p0, Lcom/narvii/poll/VotersLayout;->size:I

    .line 136
    int-to-float v0, v0

    .line 137
    add-float/2addr v0, p1

    .line 138
    add-float/2addr p3, v0

    .line 139
    goto :goto_1

    .line 140
    .line 141
    :cond_3
    iget-object p5, p0, Lcom/narvii/poll/VotersLayout;->moreBtn:Landroid/view/View;

    .line 142
    .line 143
    if-eqz p5, :cond_5

    .line 144
    .line 145
    if-eqz p2, :cond_4

    .line 146
    .line 147
    iget p2, p0, Lcom/narvii/poll/VotersLayout;->size:I

    .line 148
    int-to-float p2, p2

    .line 149
    add-float/2addr p2, p1

    .line 150
    add-float/2addr p3, p2

    .line 151
    goto :goto_2

    .line 152
    .line 153
    :cond_4
    iget p2, p0, Lcom/narvii/poll/VotersLayout;->size:I

    .line 154
    int-to-float p2, p2

    .line 155
    add-float/2addr p2, p1

    .line 156
    sub-float/2addr p3, p2

    .line 157
    :goto_2
    float-to-int p1, p3

    .line 158
    .line 159
    iget p2, p0, Lcom/narvii/poll/VotersLayout;->size:I

    .line 160
    .line 161
    div-int/lit8 p3, p2, 0x2

    .line 162
    .line 163
    sub-int p3, p4, p3

    .line 164
    .line 165
    add-int v0, p1, p2

    .line 166
    .line 167
    div-int/lit8 p2, p2, 0x2

    .line 168
    add-int/2addr p4, p2

    .line 169
    .line 170
    .line 171
    invoke-virtual {p5, p1, p3, v0, p4}, Landroid/view/View;->layout(IIII)V

    .line 172
    :cond_5
    :goto_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    .line 4
    move-result p2

    .line 5
    .line 6
    .line 7
    invoke-static {p2, p1}, Landroid/view/View;->getDefaultSize(II)I

    .line 8
    move-result p1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 12
    move-result p2

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 16
    move-result v0

    .line 17
    add-int/2addr p2, v0

    .line 18
    .line 19
    iget v0, p0, Lcom/narvii/poll/VotersLayout;->size:I

    .line 20
    add-int/2addr p2, v0

    .line 21
    .line 22
    iget v0, p0, Lcom/narvii/poll/VotersLayout;->voterCount:I

    .line 23
    .line 24
    if-nez v0, :cond_0

    .line 25
    const/4 p2, 0x0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    int-to-float p2, p2

    .line 28
    .line 29
    iget v0, p0, Lcom/narvii/poll/VotersLayout;->p:F

    .line 30
    mul-float/2addr p2, v0

    .line 31
    float-to-int p2, p2

    .line 32
    .line 33
    .line 34
    :goto_0
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 35
    return-void
.end method

.method public setExpand(ZZ)V
    .locals 3

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/poll/VotersLayout;->expand:Z

    .line 3
    .line 4
    if-eq v0, p1, :cond_4

    .line 5
    .line 6
    iput-boolean p1, p0, Lcom/narvii/poll/VotersLayout;->expand:Z

    .line 7
    .line 8
    const/high16 v0, 0x3f800000    # 1.0f

    .line 9
    const/4 v1, 0x0

    .line 10
    .line 11
    if-eqz p2, :cond_2

    .line 12
    const/4 p2, 0x2

    .line 13
    .line 14
    new-array p2, p2, [F

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    .line 19
    fill-array-data p2, :array_0

    .line 20
    .line 21
    .line 22
    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 23
    move-result-object p2

    .line 24
    goto :goto_0

    .line 25
    .line 26
    .line 27
    :cond_0
    fill-array-data p2, :array_1

    .line 28
    .line 29
    .line 30
    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 31
    move-result-object p2

    .line 32
    .line 33
    :goto_0
    new-instance v2, Lcom/narvii/poll/VotersLayout$1;

    .line 34
    .line 35
    .line 36
    invoke-direct {v2, p0}, Lcom/narvii/poll/VotersLayout$1;-><init>(Lcom/narvii/poll/VotersLayout;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    .line 43
    .line 44
    if-eqz p1, :cond_1

    .line 45
    move v0, v1

    .line 46
    .line 47
    :cond_1
    iput v0, p0, Lcom/narvii/poll/VotersLayout;->p:F

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 54
    goto :goto_1

    .line 55
    .line 56
    :cond_2
    if-eqz p1, :cond_3

    .line 57
    move v1, v0

    .line 58
    .line 59
    :cond_3
    iput v1, p0, Lcom/narvii/poll/VotersLayout;->p:F

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 66
    :cond_4
    :goto_1
    return-void

    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public setVoter(Lcom/narvii/model/Blog;Lcom/narvii/poll/Voter;I)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/poll/VotersLayout;->blog:Lcom/narvii/model/Blog;

    .line 3
    .line 4
    iget-object p1, p1, Lcom/narvii/model/Blog;->blogId:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p1, p0, Lcom/narvii/poll/VotersLayout;->blogId:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p2, p0, Lcom/narvii/poll/VotersLayout;->voter:Lcom/narvii/poll/Voter;

    .line 9
    .line 10
    iput p3, p0, Lcom/narvii/poll/VotersLayout;->voterCount:I

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/narvii/poll/VotersLayout;->update()Z

    .line 14
    move-result p1

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 20
    :cond_0
    return-void
.end method

.method update()Z
    .locals 10

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 4
    move-result v0

    .line 5
    .line 6
    iget v1, p0, Lcom/narvii/poll/VotersLayout;->margin:I

    .line 7
    sub-int/2addr v0, v1

    .line 8
    .line 9
    iget v2, p0, Lcom/narvii/poll/VotersLayout;->size:I

    .line 10
    add-int/2addr v2, v1

    .line 11
    div-int/2addr v0, v2

    .line 12
    .line 13
    const/16 v1, 0xa

    .line 14
    .line 15
    .line 16
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x0

    .line 19
    .line 20
    .line 21
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 22
    move-result v0

    .line 23
    .line 24
    iget v2, p0, Lcom/narvii/poll/VotersLayout;->iconN:I

    .line 25
    const/4 v3, 0x1

    .line 26
    .line 27
    if-eq v2, v0, :cond_0

    .line 28
    move v2, v3

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move v2, v1

    .line 31
    .line 32
    :goto_0
    iput v0, p0, Lcom/narvii/poll/VotersLayout;->iconN:I

    .line 33
    .line 34
    iget-object v4, p0, Lcom/narvii/poll/VotersLayout;->voter:Lcom/narvii/poll/Voter;

    .line 35
    .line 36
    if-eqz v4, :cond_2

    .line 37
    .line 38
    iget-object v4, v4, Lcom/narvii/model/api/UserListResponse;->userList:Ljava/util/List;

    .line 39
    .line 40
    if-nez v4, :cond_1

    .line 41
    goto :goto_1

    .line 42
    .line 43
    :cond_1
    new-instance v4, Lcom/narvii/util/FilterHelper;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 47
    move-result-object v5

    .line 48
    .line 49
    .line 50
    invoke-static {v5}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    .line 51
    move-result-object v5

    .line 52
    .line 53
    .line 54
    invoke-direct {v4, v5}, Lcom/narvii/util/FilterHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 55
    .line 56
    iget-object v5, p0, Lcom/narvii/poll/VotersLayout;->voter:Lcom/narvii/poll/Voter;

    .line 57
    .line 58
    iget-object v5, v5, Lcom/narvii/model/api/UserListResponse;->userList:Ljava/util/List;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v4, v5}, Lcom/narvii/util/FilterHelper;->filter(Ljava/util/List;)Ljava/util/List;

    .line 62
    move-result-object v4

    .line 63
    goto :goto_2

    .line 64
    .line 65
    .line 66
    :cond_2
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 67
    move-result-object v4

    .line 68
    .line 69
    .line 70
    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 71
    move-result v5

    .line 72
    .line 73
    .line 74
    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    .line 75
    move-result v5

    .line 76
    .line 77
    :goto_3
    iget-object v6, p0, Lcom/narvii/poll/VotersLayout;->iconViews:Ljava/util/ArrayList;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 81
    move-result v6

    .line 82
    .line 83
    if-ge v6, v5, :cond_3

    .line 84
    .line 85
    iget-object v2, p0, Lcom/narvii/poll/VotersLayout;->inflater:Landroid/view/LayoutInflater;

    .line 86
    .line 87
    .line 88
    const v6, 0x7f0d0627

    .line 89
    .line 90
    .line 91
    invoke-virtual {v2, v6, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 92
    move-result-object v2

    .line 93
    .line 94
    check-cast v2, Lcom/narvii/widget/NVImageView;

    .line 95
    .line 96
    iget-object v6, p0, Lcom/narvii/poll/VotersLayout;->iconViews:Ljava/util/ArrayList;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 100
    move-result v6

    .line 101
    .line 102
    .line 103
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 104
    move-result-object v6

    .line 105
    .line 106
    .line 107
    const v7, 0x7f0a0714

    .line 108
    .line 109
    .line 110
    invoke-virtual {v2, v7, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 117
    .line 118
    iget-object v6, p0, Lcom/narvii/poll/VotersLayout;->iconViews:Ljava/util/ArrayList;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    move v2, v3

    .line 123
    goto :goto_3

    .line 124
    .line 125
    :cond_3
    :goto_4
    iget-object v6, p0, Lcom/narvii/poll/VotersLayout;->iconViews:Ljava/util/ArrayList;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 129
    move-result v6

    .line 130
    .line 131
    if-le v6, v5, :cond_4

    .line 132
    .line 133
    iget-object v2, p0, Lcom/narvii/poll/VotersLayout;->iconViews:Ljava/util/ArrayList;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 137
    move-result v6

    .line 138
    sub-int/2addr v6, v3

    .line 139
    .line 140
    .line 141
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 142
    move-result-object v2

    .line 143
    .line 144
    check-cast v2, Landroid/view/View;

    .line 145
    .line 146
    .line 147
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 148
    move v2, v3

    .line 149
    goto :goto_4

    .line 150
    :cond_4
    move v6, v1

    .line 151
    .line 152
    :goto_5
    if-ge v6, v5, :cond_6

    .line 153
    .line 154
    iget-object v7, p0, Lcom/narvii/poll/VotersLayout;->iconViews:Ljava/util/ArrayList;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 158
    move-result-object v7

    .line 159
    .line 160
    check-cast v7, Lcom/narvii/widget/NVImageView;

    .line 161
    .line 162
    .line 163
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 164
    move-result-object v8

    .line 165
    .line 166
    check-cast v8, Lcom/narvii/model/User;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v8}, Lcom/narvii/model/User;->icon()Ljava/lang/String;

    .line 170
    move-result-object v8

    .line 171
    .line 172
    .line 173
    invoke-virtual {v7, v8}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 174
    .line 175
    new-instance v8, Lcom/narvii/modulization/CommunityConfigHelper;

    .line 176
    .line 177
    .line 178
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 179
    move-result-object v9

    .line 180
    .line 181
    .line 182
    invoke-static {v9}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    .line 183
    move-result-object v9

    .line 184
    .line 185
    .line 186
    invoke-direct {v8, v9}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 187
    .line 188
    .line 189
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 190
    move-result-object v9

    .line 191
    .line 192
    check-cast v9, Lcom/narvii/model/User;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v9}, Lcom/narvii/model/User;->isSubscribeMemberShip()Z

    .line 196
    move-result v9

    .line 197
    .line 198
    if-eqz v9, :cond_5

    .line 199
    .line 200
    .line 201
    invoke-virtual {v8}, Lcom/narvii/modulization/CommunityConfigHelper;->isPremiumFeatureEnabled()Z

    .line 202
    move-result v8

    .line 203
    .line 204
    if-eqz v8, :cond_5

    .line 205
    .line 206
    .line 207
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 208
    move-result-object v8

    .line 209
    .line 210
    .line 211
    const v9, 0x7f060058

    .line 212
    .line 213
    .line 214
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    .line 215
    move-result v8

    .line 216
    .line 217
    iput v8, v7, Lcom/narvii/widget/NVImageView;->strokeColor:I

    .line 218
    .line 219
    .line 220
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 221
    move-result-object v8

    .line 222
    .line 223
    const/high16 v9, 0x40000000    # 2.0f

    .line 224
    .line 225
    .line 226
    invoke-static {v8, v9}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 227
    move-result v8

    .line 228
    .line 229
    .line 230
    invoke-virtual {v7, v8}, Lcom/narvii/widget/NVImageView;->setStrokeWidth(F)V

    .line 231
    .line 232
    :cond_5
    add-int/lit8 v6, v6, 0x1

    .line 233
    goto :goto_5

    .line 234
    .line 235
    :cond_6
    if-lez v5, :cond_8

    .line 236
    .line 237
    iget v4, p0, Lcom/narvii/poll/VotersLayout;->voterCount:I

    .line 238
    .line 239
    if-le v4, v0, :cond_8

    .line 240
    .line 241
    iget-object v0, p0, Lcom/narvii/poll/VotersLayout;->moreBtn:Landroid/view/View;

    .line 242
    .line 243
    if-eqz v0, :cond_7

    .line 244
    .line 245
    .line 246
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 247
    move-result v0

    .line 248
    sub-int/2addr v0, v3

    .line 249
    .line 250
    .line 251
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 252
    move-result-object v0

    .line 253
    .line 254
    iget-object v1, p0, Lcom/narvii/poll/VotersLayout;->moreBtn:Landroid/view/View;

    .line 255
    .line 256
    if-eq v0, v1, :cond_9

    .line 257
    .line 258
    .line 259
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 260
    .line 261
    iget-object v0, p0, Lcom/narvii/poll/VotersLayout;->moreBtn:Landroid/view/View;

    .line 262
    .line 263
    .line 264
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 265
    goto :goto_6

    .line 266
    .line 267
    :cond_7
    iget-object v0, p0, Lcom/narvii/poll/VotersLayout;->inflater:Landroid/view/LayoutInflater;

    .line 268
    .line 269
    .line 270
    const v2, 0x7f0d0628

    .line 271
    .line 272
    .line 273
    invoke-virtual {v0, v2, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 274
    move-result-object v0

    .line 275
    .line 276
    iput-object v0, p0, Lcom/narvii/poll/VotersLayout;->moreBtn:Landroid/view/View;

    .line 277
    .line 278
    .line 279
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 280
    .line 281
    iget-object v0, p0, Lcom/narvii/poll/VotersLayout;->moreBtn:Landroid/view/View;

    .line 282
    .line 283
    .line 284
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 285
    goto :goto_6

    .line 286
    .line 287
    :cond_8
    iget-object v0, p0, Lcom/narvii/poll/VotersLayout;->moreBtn:Landroid/view/View;

    .line 288
    .line 289
    if-eqz v0, :cond_9

    .line 290
    .line 291
    .line 292
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 293
    const/4 v0, 0x0

    .line 294
    .line 295
    iput-object v0, p0, Lcom/narvii/poll/VotersLayout;->moreBtn:Landroid/view/View;

    .line 296
    goto :goto_6

    .line 297
    :cond_9
    move v3, v2

    .line 298
    :goto_6
    return v3
.end method
