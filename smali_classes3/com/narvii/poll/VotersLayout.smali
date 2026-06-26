.class public Lcom/narvii/poll/VotersLayout;
.super Landroid/view/ViewGroup;
.source "VotersLayout.java"

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

    .line 50
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/narvii/poll/VotersLayout;->iconViews:Ljava/util/ArrayList;

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070222

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/narvii/poll/VotersLayout;->size:I

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070221

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/narvii/poll/VotersLayout;->margin:I

    .line 53
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/poll/VotersLayout;->inflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 198
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object v0

    .line 199
    new-instance v1, Lcom/narvii/community/CommunityHelper;

    invoke-direct {v1, v0}, Lcom/narvii/community/CommunityHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 200
    iget-object v0, p0, Lcom/narvii/poll/VotersLayout;->blog:Lcom/narvii/model/Blog;

    iget v0, v0, Lcom/narvii/model/Feed;->ndcId:I

    invoke-virtual {v1, v0}, Lcom/narvii/community/CommunityHelper;->checkCommunityJoined(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 204
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f090562

    if-ne v0, v1, :cond_1

    const v0, 0x7f09058d

    .line 205
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 206
    new-instance v0, Lcom/narvii/util/FilterHelper;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/FilterHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iget-object v1, p0, Lcom/narvii/poll/VotersLayout;->voter:Lcom/narvii/poll/Voter;

    iget-object v1, v1, Lcom/narvii/model/api/UserListResponse;->userList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/narvii/util/FilterHelper;->filter(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/User;

    .line 207
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/narvii/user/profile/UserProfileFragment;->intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "Source"

    const-string v1, "Poll"

    .line 208
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 209
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 210
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090723

    if-ne p1, v0, :cond_2

    .line 211
    const-class p1, Lcom/narvii/poll/PollVoterListFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 212
    iget-object v0, p0, Lcom/narvii/poll/VotersLayout;->blogId:Ljava/lang/String;

    const-string v1, "blogId"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 213
    iget-object v0, p0, Lcom/narvii/poll/VotersLayout;->voter:Lcom/narvii/poll/Voter;

    iget-object v0, v0, Lcom/narvii/poll/Voter;->polloptId:Ljava/lang/String;

    const-string v1, "polloptId"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 214
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 5

    .line 165
    invoke-virtual {p0}, Lcom/narvii/poll/VotersLayout;->update()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 166
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    goto/16 :goto_3

    .line 167
    :cond_0
    iget p1, p0, Lcom/narvii/poll/VotersLayout;->iconN:I

    if-lez p1, :cond_5

    const/high16 p1, 0x3f800000    # 1.0f

    .line 168
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p3

    sub-int/2addr p2, p3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result p3

    sub-int/2addr p2, p3

    iget p3, p0, Lcom/narvii/poll/VotersLayout;->size:I

    iget p4, p0, Lcom/narvii/poll/VotersLayout;->iconN:I

    mul-int p3, p3, p4

    sub-int/2addr p2, p3

    int-to-float p2, p2

    mul-float p2, p2, p1

    add-int/lit8 p4, p4, 0x1

    int-to-float p1, p4

    div-float/2addr p2, p1

    .line 169
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 172
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result p4

    sub-int/2addr p3, p4

    int-to-float p3, p3

    sub-float/2addr p3, p2

    iget p4, p0, Lcom/narvii/poll/VotersLayout;->size:I

    int-to-float p4, p4

    sub-float/2addr p3, p4

    goto :goto_0

    .line 174
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p3

    int-to-float p3, p3

    add-float/2addr p3, p2

    .line 176
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    sub-int/2addr p5, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v0

    sub-int/2addr p5, v0

    div-int/lit8 p5, p5, 0x2

    add-int/2addr p4, p5

    .line 177
    iget-object p5, p0, Lcom/narvii/poll/VotersLayout;->iconViews:Ljava/util/ArrayList;

    invoke-virtual {p5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :goto_1
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    float-to-int v1, p3

    .line 178
    iget v2, p0, Lcom/narvii/poll/VotersLayout;->size:I

    div-int/lit8 v3, v2, 0x2

    sub-int v3, p4, v3

    add-int v4, v1, v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, p4

    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/view/View;->layout(IIII)V

    if-eqz p1, :cond_2

    .line 180
    iget v0, p0, Lcom/narvii/poll/VotersLayout;->size:I

    int-to-float v0, v0

    add-float/2addr v0, p2

    sub-float/2addr p3, v0

    goto :goto_1

    .line 182
    :cond_2
    iget v0, p0, Lcom/narvii/poll/VotersLayout;->size:I

    int-to-float v0, v0

    add-float/2addr v0, p2

    add-float/2addr p3, v0

    goto :goto_1

    .line 185
    :cond_3
    iget-object p5, p0, Lcom/narvii/poll/VotersLayout;->moreBtn:Landroid/view/View;

    if-eqz p5, :cond_5

    if-eqz p1, :cond_4

    .line 187
    iget p1, p0, Lcom/narvii/poll/VotersLayout;->size:I

    int-to-float p1, p1

    add-float/2addr p1, p2

    add-float/2addr p3, p1

    goto :goto_2

    .line 189
    :cond_4
    iget p1, p0, Lcom/narvii/poll/VotersLayout;->size:I

    int-to-float p1, p1

    add-float/2addr p1, p2

    sub-float/2addr p3, p1

    .line 191
    :goto_2
    iget-object p1, p0, Lcom/narvii/poll/VotersLayout;->moreBtn:Landroid/view/View;

    float-to-int p2, p3

    iget p3, p0, Lcom/narvii/poll/VotersLayout;->size:I

    div-int/lit8 p5, p3, 0x2

    sub-int p5, p4, p5

    add-int v0, p2, p3

    div-int/lit8 p3, p3, 0x2

    add-int/2addr p4, p3

    invoke-virtual {p1, p2, p5, v0, p4}, Landroid/view/View;->layout(IIII)V

    :cond_5
    :goto_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 158
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getSuggestedMinimumWidth()I

    move-result p2

    invoke-static {p2, p1}, Landroid/view/ViewGroup;->getDefaultSize(II)I

    move-result p1

    .line 159
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v0

    add-int/2addr p2, v0

    iget v0, p0, Lcom/narvii/poll/VotersLayout;->size:I

    add-int/2addr p2, v0

    .line 160
    iget v0, p0, Lcom/narvii/poll/VotersLayout;->voterCount:I

    if-nez v0, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    int-to-float p2, p2

    iget v0, p0, Lcom/narvii/poll/VotersLayout;->p:F

    mul-float p2, p2, v0

    float-to-int p2, p2

    :goto_0
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method public setExpand(ZZ)V
    .locals 3

    .line 57
    iget-boolean v0, p0, Lcom/narvii/poll/VotersLayout;->expand:Z

    if-eq v0, p1, :cond_4

    .line 58
    iput-boolean p1, p0, Lcom/narvii/poll/VotersLayout;->expand:Z

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    const/4 p2, 0x2

    new-array p2, p2, [F

    if-eqz p1, :cond_0

    .line 60
    fill-array-data p2, :array_0

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    goto :goto_0

    :cond_0
    fill-array-data p2, :array_1

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    .line 61
    :goto_0
    new-instance v2, Lcom/narvii/poll/VotersLayout$1;

    invoke-direct {v2, p0}, Lcom/narvii/poll/VotersLayout$1;-><init>(Lcom/narvii/poll/VotersLayout;)V

    invoke-virtual {p2, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 70
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 71
    :cond_1
    iput v0, p0, Lcom/narvii/poll/VotersLayout;->p:F

    .line 72
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 73
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    const/high16 v1, 0x3f800000    # 1.0f

    .line 75
    :cond_3
    iput v1, p0, Lcom/narvii/poll/VotersLayout;->p:F

    .line 76
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 77
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_4
    :goto_1
    return-void

    nop

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

    .line 147
    iput-object p1, p0, Lcom/narvii/poll/VotersLayout;->blog:Lcom/narvii/model/Blog;

    .line 148
    iget-object p1, p1, Lcom/narvii/model/Blog;->blogId:Ljava/lang/String;

    iput-object p1, p0, Lcom/narvii/poll/VotersLayout;->blogId:Ljava/lang/String;

    .line 149
    iput-object p2, p0, Lcom/narvii/poll/VotersLayout;->voter:Lcom/narvii/poll/Voter;

    .line 150
    iput p3, p0, Lcom/narvii/poll/VotersLayout;->voterCount:I

    .line 151
    invoke-virtual {p0}, Lcom/narvii/poll/VotersLayout;->update()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 152
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_0
    return-void
.end method

.method update()Z
    .locals 10

    .line 83
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    .line 84
    iget v1, p0, Lcom/narvii/poll/VotersLayout;->margin:I

    sub-int/2addr v0, v1

    iget v2, p0, Lcom/narvii/poll/VotersLayout;->size:I

    add-int/2addr v2, v1

    div-int/2addr v0, v2

    const/16 v1, 0xa

    .line 85
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 86
    iget v2, p0, Lcom/narvii/poll/VotersLayout;->iconN:I

    const/4 v3, 0x1

    if-eq v2, v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 87
    :goto_0
    iput v0, p0, Lcom/narvii/poll/VotersLayout;->iconN:I

    .line 90
    iget-object v4, p0, Lcom/narvii/poll/VotersLayout;->voter:Lcom/narvii/poll/Voter;

    if-eqz v4, :cond_2

    iget-object v4, v4, Lcom/narvii/model/api/UserListResponse;->userList:Ljava/util/List;

    if-nez v4, :cond_1

    goto :goto_1

    .line 93
    :cond_1
    new-instance v4, Lcom/narvii/util/FilterHelper;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/narvii/util/FilterHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iget-object v5, p0, Lcom/narvii/poll/VotersLayout;->voter:Lcom/narvii/poll/Voter;

    iget-object v5, v5, Lcom/narvii/model/api/UserListResponse;->userList:Ljava/util/List;

    invoke-virtual {v4, v5}, Lcom/narvii/util/FilterHelper;->filter(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    goto :goto_2

    .line 91
    :cond_2
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    .line 95
    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 96
    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 97
    :goto_3
    iget-object v6, p0, Lcom/narvii/poll/VotersLayout;->iconViews:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v6, v5, :cond_3

    .line 98
    iget-object v2, p0, Lcom/narvii/poll/VotersLayout;->inflater:Landroid/view/LayoutInflater;

    const v6, 0x7f0b057f

    invoke-virtual {v2, v6, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/narvii/widget/NVImageView;

    const v6, 0x7f09058d

    .line 99
    iget-object v7, p0, Lcom/narvii/poll/VotersLayout;->iconViews:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 100
    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 102
    iget-object v6, p0, Lcom/narvii/poll/VotersLayout;->iconViews:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    goto :goto_3

    .line 105
    :cond_3
    :goto_4
    iget-object v6, p0, Lcom/narvii/poll/VotersLayout;->iconViews:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v6, v5, :cond_4

    .line 106
    iget-object v2, p0, Lcom/narvii/poll/VotersLayout;->iconViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v3

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v2, 0x1

    goto :goto_4

    :cond_4
    const/4 v6, 0x0

    :goto_5
    if-ge v6, v5, :cond_7

    .line 111
    iget-object v7, p0, Lcom/narvii/poll/VotersLayout;->iconViews:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/narvii/widget/NVImageView;

    .line 112
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/narvii/model/User;

    invoke-virtual {v8}, Lcom/narvii/model/User;->icon()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 114
    new-instance v8, Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 115
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/narvii/model/User;

    invoke-virtual {v9}, Lcom/narvii/model/User;->isSubscribeMemberShip()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-virtual {v8}, Lcom/narvii/modulization/CommunityConfigHelper;->isPremiumFeatureEnabled()Z

    move-result v8

    if-eqz v8, :cond_5

    const/4 v8, 0x1

    goto :goto_6

    :cond_5
    const/4 v8, 0x0

    :goto_6
    if-eqz v8, :cond_6

    .line 117
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f06003c

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    iput v8, v7, Lcom/narvii/widget/NVImageView;->strokeColor:I

    .line 118
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v8

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v8, v9}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v8

    invoke-virtual {v7, v8}, Lcom/narvii/widget/NVImageView;->setStrokeWidth(F)V

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_7
    if-lez v5, :cond_9

    .line 122
    iget v4, p0, Lcom/narvii/poll/VotersLayout;->voterCount:I

    if-le v4, v0, :cond_9

    .line 123
    iget-object v0, p0, Lcom/narvii/poll/VotersLayout;->moreBtn:Landroid/view/View;

    if-eqz v0, :cond_8

    .line 124
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/poll/VotersLayout;->moreBtn:Landroid/view/View;

    if-eq v0, v1, :cond_a

    .line 125
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 126
    iget-object v0, p0, Lcom/narvii/poll/VotersLayout;->moreBtn:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_7

    .line 130
    :cond_8
    iget-object v0, p0, Lcom/narvii/poll/VotersLayout;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0b0580

    invoke-virtual {v0, v2, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/poll/VotersLayout;->moreBtn:Landroid/view/View;

    .line 131
    iget-object v0, p0, Lcom/narvii/poll/VotersLayout;->moreBtn:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    iget-object v0, p0, Lcom/narvii/poll/VotersLayout;->moreBtn:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_7

    .line 136
    :cond_9
    iget-object v0, p0, Lcom/narvii/poll/VotersLayout;->moreBtn:Landroid/view/View;

    if-eqz v0, :cond_a

    .line 137
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 138
    iput-object v0, p0, Lcom/narvii/poll/VotersLayout;->moreBtn:Landroid/view/View;

    goto :goto_7

    :cond_a
    move v3, v2

    :goto_7
    return v3
.end method
