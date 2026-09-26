.class public Lcom/narvii/onboarding/OnBoardingFragment;
.super Lcom/narvii/app/NVFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/onboarding/OnBoardingFragment$OnBoardingAdapter;
    }
.end annotation


# static fields
.field public static final LIKE_FEED:I = 0x8

.field public static final RECOMMEND_FOLLOW:I = 0x4

.field public static final WELCOME_MESSAGE:I = 0x2


# instance fields
.field action:Landroid/widget/TextView;

.field actionLayout:Landroid/view/View;

.field chevron:Landroid/view/View;

.field doneEmoji:Landroid/view/View;

.field list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mOnBoardingAdapter:Lcom/narvii/onboarding/OnBoardingFragment$OnBoardingAdapter;

.field public onBoardingRecommendHelper:Lcom/narvii/onboarding/OnBoardingRecommendHelper;

.field pager:Lcom/narvii/widget/NVViewPager;

.field skip:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/onboarding/OnBoardingFragment;->list:Ljava/util/ArrayList;

    .line 11
    return-void
.end method

.method private changeAction(I)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/onboarding/OnBoardingFragment;->mOnBoardingAdapter:Lcom/narvii/onboarding/OnBoardingFragment$OnBoardingAdapter;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-direct {p0, p1}, Lcom/narvii/onboarding/OnBoardingFragment;->resetActionLayout(I)V

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/onboarding/OnBoardingFragment;->action:Landroid/widget/TextView;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/narvii/onboarding/OnBoardingFragment;->mOnBoardingAdapter:Lcom/narvii/onboarding/OnBoardingFragment$OnBoardingAdapter;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1}, Lcom/narvii/onboarding/OnBoardingFragment$OnBoardingAdapter;->getActionText(I)Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    .line 21
    iget-object v0, p0, Lcom/narvii/onboarding/OnBoardingFragment;->actionLayout:Landroid/view/View;

    .line 22
    .line 23
    iget-object v1, p0, Lcom/narvii/onboarding/OnBoardingFragment;->mOnBoardingAdapter:Lcom/narvii/onboarding/OnBoardingFragment$OnBoardingAdapter;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, p1}, Lcom/narvii/onboarding/OnBoardingFragment$OnBoardingAdapter;->getActionBackground(I)I

    .line 27
    move-result v1

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 31
    .line 32
    iget-object v0, p0, Lcom/narvii/onboarding/OnBoardingFragment;->skip:Landroid/view/View;

    .line 33
    .line 34
    iget-object v1, p0, Lcom/narvii/onboarding/OnBoardingFragment;->mOnBoardingAdapter:Lcom/narvii/onboarding/OnBoardingFragment$OnBoardingAdapter;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, p1}, Lcom/narvii/onboarding/OnBoardingFragment$OnBoardingAdapter;->showSkip(I)Z

    .line 38
    move-result p1

    .line 39
    .line 40
    if-eqz p1, :cond_1

    .line 41
    const/4 p1, 0x0

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const/4 p1, 0x4

    .line 44
    .line 45
    .line 46
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 47
    return-void
.end method

.method private goNext()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/onboarding/OnBoardingFragment;->pager:Lcom/narvii/widget/NVViewPager;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    .line 13
    move-result v0

    .line 14
    .line 15
    iget-object v2, p0, Lcom/narvii/onboarding/OnBoardingFragment;->mOnBoardingAdapter:Lcom/narvii/onboarding/OnBoardingFragment$OnBoardingAdapter;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2}, Lcom/narvii/onboarding/OnBoardingFragment$OnBoardingAdapter;->getCount()I

    .line 19
    move-result v2

    .line 20
    sub-int/2addr v2, v1

    .line 21
    .line 22
    if-ge v0, v2, :cond_0

    .line 23
    .line 24
    iget-object v0, p0, Lcom/narvii/onboarding/OnBoardingFragment;->pager:Lcom/narvii/widget/NVViewPager;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    .line 28
    move-result v2

    .line 29
    add-int/2addr v2, v1

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v2, v1}, Lcom/narvii/widget/NVViewPager;->setCurrentItem(IZ)V

    .line 33
    goto :goto_0

    .line 34
    .line 35
    .line 36
    :cond_0
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 37
    move-result v0

    .line 38
    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    iget-object v0, p0, Lcom/narvii/onboarding/OnBoardingFragment;->pager:Lcom/narvii/widget/NVViewPager;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    .line 45
    move-result v0

    .line 46
    .line 47
    if-lez v0, :cond_1

    .line 48
    .line 49
    iget-object v0, p0, Lcom/narvii/onboarding/OnBoardingFragment;->pager:Lcom/narvii/widget/NVViewPager;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    .line 53
    move-result v2

    .line 54
    sub-int/2addr v2, v1

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v2, v1}, Lcom/narvii/widget/NVViewPager;->setCurrentItem(IZ)V

    .line 58
    goto :goto_0

    .line 59
    .line 60
    .line 61
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 62
    move-result-object v0

    .line 63
    .line 64
    if-eqz v0, :cond_2

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 68
    move-result-object v0

    .line 69
    .line 70
    check-cast v0, Lcom/narvii/onboarding/OnBoardingActivity;

    .line 71
    .line 72
    iput-boolean v1, v0, Lcom/narvii/onboarding/OnBoardingActivity;->succeed:Z

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 76
    move-result-object v0

    .line 77
    const/4 v1, -0x1

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 84
    move-result-object v0

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 91
    move-result-object v0

    .line 92
    .line 93
    .line 94
    const v1, 0x7f010037

    .line 95
    .line 96
    .line 97
    const v2, 0x7f010038

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 101
    :cond_2
    :goto_0
    return-void
.end method

.method static bridge synthetic n(Lcom/narvii/onboarding/OnBoardingFragment;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/onboarding/OnBoardingFragment;->changeAction(I)V

    return-void
.end method

.method static bridge synthetic o(Lcom/narvii/onboarding/OnBoardingFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/onboarding/OnBoardingFragment;->goNext()V

    return-void
.end method

.method private resetActionLayout(I)V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/onboarding/OnBoardingFragment;->action:Landroid/widget/TextView;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/onboarding/OnBoardingFragment;->chevron:Landroid/view/View;

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 12
    move-result v2

    .line 13
    .line 14
    const/16 v3, 0x8

    .line 15
    const/4 v4, 0x1

    .line 16
    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    if-eqz p1, :cond_1

    .line 20
    goto :goto_0

    .line 21
    .line 22
    :cond_0
    iget-object v2, p0, Lcom/narvii/onboarding/OnBoardingFragment;->list:Ljava/util/ArrayList;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 26
    move-result v2

    .line 27
    sub-int/2addr v2, v4

    .line 28
    .line 29
    if-eq p1, v2, :cond_1

    .line 30
    :goto_0
    move v2, v1

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    move v2, v3

    .line 33
    .line 34
    .line 35
    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 36
    .line 37
    iget-object v0, p0, Lcom/narvii/onboarding/OnBoardingFragment;->list:Ljava/util/ArrayList;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    check-cast v0, Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 47
    move-result v0

    .line 48
    const/4 v2, 0x2

    .line 49
    .line 50
    if-eq v0, v2, :cond_3

    .line 51
    .line 52
    .line 53
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 54
    move-result v0

    .line 55
    .line 56
    if-eqz v0, :cond_2

    .line 57
    .line 58
    if-nez p1, :cond_3

    .line 59
    goto :goto_2

    .line 60
    .line 61
    :cond_2
    iget-object v0, p0, Lcom/narvii/onboarding/OnBoardingFragment;->list:Ljava/util/ArrayList;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 65
    move-result v0

    .line 66
    sub-int/2addr v0, v4

    .line 67
    .line 68
    if-ne p1, v0, :cond_3

    .line 69
    goto :goto_2

    .line 70
    :cond_3
    move v4, v1

    .line 71
    .line 72
    :goto_2
    iget-object p1, p0, Lcom/narvii/onboarding/OnBoardingFragment;->doneEmoji:Landroid/view/View;

    .line 73
    .line 74
    if-eqz v4, :cond_4

    .line 75
    goto :goto_3

    .line 76
    :cond_4
    move v1, v3

    .line 77
    .line 78
    .line 79
    :goto_3
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 80
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string p1, "flags"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 9
    move-result p1

    .line 10
    .line 11
    and-int/lit8 v0, p1, 0x2

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/narvii/onboarding/OnBoardingFragment;->list:Ljava/util/ArrayList;

    .line 16
    const/4 v1, 0x2

    .line 17
    .line 18
    .line 19
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    :cond_0
    and-int/lit8 v0, p1, 0x4

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    iget-object v0, p0, Lcom/narvii/onboarding/OnBoardingFragment;->list:Ljava/util/ArrayList;

    .line 30
    const/4 v1, 0x4

    .line 31
    .line 32
    .line 33
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    move-result-object v1

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    :cond_1
    const/16 v0, 0x8

    .line 40
    and-int/2addr p1, v0

    .line 41
    .line 42
    if-eqz p1, :cond_2

    .line 43
    .line 44
    iget-object p1, p0, Lcom/narvii/onboarding/OnBoardingFragment;->list:Ljava/util/ArrayList;

    .line 45
    .line 46
    .line 47
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    move-result-object v0

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    :cond_2
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 55
    move-result p1

    .line 56
    .line 57
    if-eqz p1, :cond_3

    .line 58
    .line 59
    iget-object p1, p0, Lcom/narvii/onboarding/OnBoardingFragment;->list:Ljava/util/ArrayList;

    .line 60
    .line 61
    .line 62
    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 63
    .line 64
    :cond_3
    new-instance p1, Lcom/narvii/onboarding/OnBoardingRecommendHelper;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getParentContext()Lcom/narvii/app/NVContext;

    .line 68
    move-result-object v0

    .line 69
    .line 70
    .line 71
    invoke-direct {p1, v0}, Lcom/narvii/onboarding/OnBoardingRecommendHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 72
    .line 73
    iput-object p1, p0, Lcom/narvii/onboarding/OnBoardingFragment;->onBoardingRecommendHelper:Lcom/narvii/onboarding/OnBoardingRecommendHelper;

    .line 74
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    const p3, 0x7f0d01c6

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const p2, 0x7f0a0ac1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object p2

    .line 11
    .line 12
    check-cast p2, Lcom/narvii/widget/NVViewPager;

    .line 13
    .line 14
    iput-object p2, p0, Lcom/narvii/onboarding/OnBoardingFragment;->pager:Lcom/narvii/widget/NVViewPager;

    .line 15
    const/4 v0, 0x1

    .line 16
    .line 17
    iput-boolean v0, p2, Lcom/narvii/widget/NVViewPager;->disableScroll:Z

    .line 18
    .line 19
    .line 20
    const p2, 0x7f0a0d1c

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 24
    move-result-object p2

    .line 25
    .line 26
    iput-object p2, p0, Lcom/narvii/onboarding/OnBoardingFragment;->skip:Landroid/view/View;

    .line 27
    .line 28
    new-instance v1, Lcom/narvii/onboarding/OnBoardingFragment$1;

    .line 29
    .line 30
    .line 31
    invoke-direct {v1, p0}, Lcom/narvii/onboarding/OnBoardingFragment$1;-><init>(Lcom/narvii/onboarding/OnBoardingFragment;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    .line 36
    .line 37
    const p2, 0x7f0a006c

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 41
    move-result-object p2

    .line 42
    .line 43
    iput-object p2, p0, Lcom/narvii/onboarding/OnBoardingFragment;->actionLayout:Landroid/view/View;

    .line 44
    .line 45
    .line 46
    const p2, 0x7f0a0059

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 50
    move-result-object p2

    .line 51
    .line 52
    check-cast p2, Landroid/widget/TextView;

    .line 53
    .line 54
    iput-object p2, p0, Lcom/narvii/onboarding/OnBoardingFragment;->action:Landroid/widget/TextView;

    .line 55
    .line 56
    .line 57
    const p2, 0x7f0a02ec

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 61
    move-result-object p2

    .line 62
    .line 63
    iput-object p2, p0, Lcom/narvii/onboarding/OnBoardingFragment;->chevron:Landroid/view/View;

    .line 64
    .line 65
    .line 66
    const p2, 0x7f0a006a

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 70
    move-result-object p1

    .line 71
    .line 72
    iput-object p1, p0, Lcom/narvii/onboarding/OnBoardingFragment;->doneEmoji:Landroid/view/View;

    .line 73
    .line 74
    new-instance p1, Lcom/narvii/onboarding/OnBoardingFragment$OnBoardingAdapter;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 78
    move-result-object p2

    .line 79
    .line 80
    .line 81
    invoke-direct {p1, p0, p2}, Lcom/narvii/onboarding/OnBoardingFragment$OnBoardingAdapter;-><init>(Lcom/narvii/onboarding/OnBoardingFragment;Landroidx/fragment/app/FragmentManager;)V

    .line 82
    .line 83
    iput-object p1, p0, Lcom/narvii/onboarding/OnBoardingFragment;->mOnBoardingAdapter:Lcom/narvii/onboarding/OnBoardingFragment$OnBoardingAdapter;

    .line 84
    .line 85
    iget-object p2, p0, Lcom/narvii/onboarding/OnBoardingFragment;->pager:Lcom/narvii/widget/NVViewPager;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p2, p1}, Lcom/narvii/widget/NVViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 89
    .line 90
    iget-object p1, p0, Lcom/narvii/onboarding/OnBoardingFragment;->pager:Lcom/narvii/widget/NVViewPager;

    .line 91
    .line 92
    new-instance p2, Lcom/narvii/onboarding/OnBoardingFragment$2;

    .line 93
    .line 94
    .line 95
    invoke-direct {p2, p0}, Lcom/narvii/onboarding/OnBoardingFragment$2;-><init>(Lcom/narvii/onboarding/OnBoardingFragment;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1, p2}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 99
    .line 100
    iget-object p1, p0, Lcom/narvii/onboarding/OnBoardingFragment;->pager:Lcom/narvii/widget/NVViewPager;

    .line 101
    const/4 p2, 0x0

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1, p2}, Lcom/narvii/widget/NVViewPager;->setCurrentItem(I)V

    .line 105
    .line 106
    .line 107
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 108
    move-result p1

    .line 109
    .line 110
    if-eqz p1, :cond_0

    .line 111
    .line 112
    iget-object p1, p0, Lcom/narvii/onboarding/OnBoardingFragment;->list:Ljava/util/ArrayList;

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 116
    move-result p1

    .line 117
    .line 118
    if-lez p1, :cond_0

    .line 119
    .line 120
    iget-object p1, p0, Lcom/narvii/onboarding/OnBoardingFragment;->list:Ljava/util/ArrayList;

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 124
    move-result p1

    .line 125
    .line 126
    add-int/lit8 p2, p1, -0x1

    .line 127
    .line 128
    .line 129
    :cond_0
    invoke-direct {p0, p2}, Lcom/narvii/onboarding/OnBoardingFragment;->changeAction(I)V

    .line 130
    .line 131
    iget-object p1, p0, Lcom/narvii/onboarding/OnBoardingFragment;->actionLayout:Landroid/view/View;

    .line 132
    .line 133
    new-instance p2, Lcom/narvii/onboarding/OnBoardingFragment$3;

    .line 134
    .line 135
    .line 136
    invoke-direct {p2, p0}, Lcom/narvii/onboarding/OnBoardingFragment$3;-><init>(Lcom/narvii/onboarding/OnBoardingFragment;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    return-void
.end method

.method public sendFollowAllRequest()V
    .locals 5

    .line 1
    .line 2
    const-string v0, "account"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    const-string v2, "targetUidList"

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->putArray(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 18
    move-result-object v2

    .line 19
    .line 20
    iget-object v3, p0, Lcom/narvii/onboarding/OnBoardingFragment;->onBoardingRecommendHelper:Lcom/narvii/onboarding/OnBoardingRecommendHelper;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v3}, Lcom/narvii/onboarding/OnBoardingRecommendHelper;->getRecommendedUsers()Ljava/util/ArrayList;

    .line 24
    move-result-object v3

    .line 25
    .line 26
    .line 27
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 28
    move-result-object v3

    .line 29
    .line 30
    .line 31
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    move-result v4

    .line 33
    .line 34
    if-eqz v4, :cond_0

    .line 35
    .line 36
    .line 37
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    move-result-object v4

    .line 39
    .line 40
    check-cast v4, Lcom/narvii/model/User;

    .line 41
    .line 42
    iget-object v4, v4, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2, v4}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 46
    goto :goto_0

    .line 47
    .line 48
    .line 49
    :cond_0
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 50
    move-result-object v2

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 54
    move-result-object v2

    .line 55
    .line 56
    new-instance v3, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    const-string v4, "/user-profile/"

    .line 62
    .line 63
    .line 64
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 68
    move-result-object v0

    .line 69
    .line 70
    .line 71
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    const-string v0, "/joined"

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    move-result-object v0

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 84
    move-result-object v0

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->body(Lcom/fasterxml/jackson/databind/node/ObjectNode;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 88
    move-result-object v0

    .line 89
    .line 90
    sget-object v1, Lcom/narvii/util/http/ApiService;->ASYNC_CALL_TAG:Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 94
    move-result-object v0

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 98
    move-result-object v0

    .line 99
    .line 100
    const-string v1, "api"

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 104
    move-result-object v1

    .line 105
    .line 106
    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 107
    .line 108
    sget-object v2, Lcom/narvii/util/http/ApiResponseListener;->IGNORE_RESPONSE_LISTENER:Lcom/narvii/util/http/ApiResponseListener;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 112
    return-void
.end method

.method public sendLikeAllFeedsRequest()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-string v1, "value"

    .line 7
    const/4 v2, 0x4

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 11
    .line 12
    const-string v1, "targetIdList"

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->putArray(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    iget-object v2, p0, Lcom/narvii/onboarding/OnBoardingFragment;->onBoardingRecommendHelper:Lcom/narvii/onboarding/OnBoardingRecommendHelper;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2}, Lcom/narvii/onboarding/OnBoardingRecommendHelper;->getRecommendedFeeds()Ljava/util/ArrayList;

    .line 22
    move-result-object v2

    .line 23
    .line 24
    .line 25
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 26
    move-result-object v2

    .line 27
    .line 28
    .line 29
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    move-result v3

    .line 31
    .line 32
    if-eqz v3, :cond_0

    .line 33
    .line 34
    .line 35
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    move-result-object v3

    .line 37
    .line 38
    check-cast v3, Lcom/narvii/model/Feed;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    .line 42
    move-result-object v3

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v3}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 46
    goto :goto_0

    .line 47
    .line 48
    .line 49
    :cond_0
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 50
    move-result-object v1

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 54
    move-result-object v1

    .line 55
    .line 56
    const-string v2, "/feed/vote"

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 60
    move-result-object v1

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->body(Lcom/fasterxml/jackson/databind/node/ObjectNode;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 64
    move-result-object v0

    .line 65
    .line 66
    sget-object v1, Lcom/narvii/util/http/ApiService;->ASYNC_CALL_TAG:Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 70
    move-result-object v0

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 74
    move-result-object v0

    .line 75
    .line 76
    const-string v1, "api"

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 80
    move-result-object v1

    .line 81
    .line 82
    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 83
    .line 84
    sget-object v2, Lcom/narvii/util/http/ApiResponseListener;->IGNORE_RESPONSE_LISTENER:Lcom/narvii/util/http/ApiResponseListener;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 88
    return-void
.end method
