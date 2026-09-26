.class Lcom/narvii/onboarding/OnBoardingFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/onboarding/OnBoardingFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/onboarding/OnBoardingFragment;


# direct methods
.method constructor <init>(Lcom/narvii/onboarding/OnBoardingFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/onboarding/OnBoardingFragment$3;->this$0:Lcom/narvii/onboarding/OnBoardingFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/onboarding/OnBoardingFragment$3;->this$0:Lcom/narvii/onboarding/OnBoardingFragment;

    .line 3
    .line 4
    iget-object v0, p1, Lcom/narvii/onboarding/OnBoardingFragment;->list:Ljava/util/ArrayList;

    .line 5
    .line 6
    iget-object p1, p1, Lcom/narvii/onboarding/OnBoardingFragment;->pager:Lcom/narvii/widget/NVViewPager;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    .line 10
    move-result p1

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    check-cast p1, Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 20
    move-result p1

    .line 21
    const/4 v0, 0x2

    .line 22
    .line 23
    if-eq p1, v0, :cond_4

    .line 24
    const/4 v0, 0x4

    .line 25
    const/4 v1, 0x1

    .line 26
    .line 27
    const-string v2, "Community Onboarding"

    .line 28
    .line 29
    const-string v3, "statistics"

    .line 30
    .line 31
    if-eq p1, v0, :cond_2

    .line 32
    .line 33
    const/16 v0, 0x8

    .line 34
    .line 35
    if-eq p1, v0, :cond_0

    .line 36
    .line 37
    goto/16 :goto_2

    .line 38
    .line 39
    :cond_0
    iget-object p1, p0, Lcom/narvii/onboarding/OnBoardingFragment$3;->this$0:Lcom/narvii/onboarding/OnBoardingFragment;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/narvii/onboarding/OnBoardingFragment;->sendLikeAllFeedsRequest()V

    .line 43
    .line 44
    new-instance p1, Lcom/narvii/util/particles/ParticlesHelper;

    .line 45
    .line 46
    .line 47
    invoke-direct {p1}, Lcom/narvii/util/particles/ParticlesHelper;-><init>()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/narvii/util/particles/ParticlesHelper;->l5()Lcom/narvii/util/particles/ParticlesHelper;

    .line 51
    move-result-object v0

    .line 52
    .line 53
    iget-object v4, p0, Lcom/narvii/onboarding/OnBoardingFragment$3;->this$0:Lcom/narvii/onboarding/OnBoardingFragment;

    .line 54
    .line 55
    iget-object v4, v4, Lcom/narvii/onboarding/OnBoardingFragment;->actionLayout:Landroid/view/View;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v4}, Lcom/narvii/util/particles/ParticlesHelper;->emit(Landroid/view/View;)V

    .line 59
    .line 60
    new-instance v0, Lcom/narvii/onboarding/OnBoardingFragment$3$1;

    .line 61
    .line 62
    .line 63
    invoke-direct {v0, p0}, Lcom/narvii/onboarding/OnBoardingFragment$3$1;-><init>(Lcom/narvii/onboarding/OnBoardingFragment$3;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1}, Lcom/narvii/util/particles/ParticlesHelper;->duration()J

    .line 67
    move-result-wide v4

    .line 68
    .line 69
    .line 70
    invoke-static {v0, v4, v5}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 71
    .line 72
    iget-object p1, p0, Lcom/narvii/onboarding/OnBoardingFragment$3;->this$0:Lcom/narvii/onboarding/OnBoardingFragment;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, v3}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 76
    move-result-object p1

    .line 77
    .line 78
    check-cast p1, Lcom/narvii/util/statistics/StatisticsService;

    .line 79
    .line 80
    iget-object v0, p0, Lcom/narvii/onboarding/OnBoardingFragment$3;->this$0:Lcom/narvii/onboarding/OnBoardingFragment;

    .line 81
    .line 82
    iget-object v0, v0, Lcom/narvii/onboarding/OnBoardingFragment;->onBoardingRecommendHelper:Lcom/narvii/onboarding/OnBoardingRecommendHelper;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0}, Lcom/narvii/onboarding/OnBoardingRecommendHelper;->getRecommendedFeeds()Ljava/util/ArrayList;

    .line 86
    move-result-object v0

    .line 87
    .line 88
    const-string v3, "Like Post"

    .line 89
    .line 90
    .line 91
    invoke-interface {p1, v3}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 92
    move-result-object p1

    .line 93
    .line 94
    const-string v3, "post_type"

    .line 95
    .line 96
    const-string v4, "blog"

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1, v3, v4}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 100
    move-result-object p1

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1, v2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->source(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 104
    move-result-object p1

    .line 105
    .line 106
    if-nez v0, :cond_1

    .line 107
    goto :goto_0

    .line 108
    .line 109
    .line 110
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 111
    move-result v1

    .line 112
    .line 113
    :goto_0
    const-string v0, "Community Onboarding Likes"

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;I)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 117
    move-result-object p1

    .line 118
    .line 119
    iget-object v0, p0, Lcom/narvii/onboarding/OnBoardingFragment$3;->this$0:Lcom/narvii/onboarding/OnBoardingFragment;

    .line 120
    .line 121
    .line 122
    invoke-static {v0, p1}, Lcom/narvii/util/statistics/FirebaseLogManager;->logEvent(Lcom/narvii/app/NVContext;Lcom/narvii/util/statistics/StatisticsEventBuilder;)V

    .line 123
    goto :goto_2

    .line 124
    .line 125
    :cond_2
    iget-object p1, p0, Lcom/narvii/onboarding/OnBoardingFragment$3;->this$0:Lcom/narvii/onboarding/OnBoardingFragment;

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1}, Lcom/narvii/onboarding/OnBoardingFragment;->sendFollowAllRequest()V

    .line 129
    .line 130
    iget-object p1, p0, Lcom/narvii/onboarding/OnBoardingFragment$3;->this$0:Lcom/narvii/onboarding/OnBoardingFragment;

    .line 131
    .line 132
    .line 133
    invoke-static {p1}, Lcom/narvii/onboarding/OnBoardingFragment;->o(Lcom/narvii/onboarding/OnBoardingFragment;)V

    .line 134
    .line 135
    iget-object p1, p0, Lcom/narvii/onboarding/OnBoardingFragment$3;->this$0:Lcom/narvii/onboarding/OnBoardingFragment;

    .line 136
    .line 137
    .line 138
    invoke-virtual {p1, v3}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 139
    move-result-object p1

    .line 140
    .line 141
    check-cast p1, Lcom/narvii/util/statistics/StatisticsService;

    .line 142
    .line 143
    iget-object v0, p0, Lcom/narvii/onboarding/OnBoardingFragment$3;->this$0:Lcom/narvii/onboarding/OnBoardingFragment;

    .line 144
    .line 145
    iget-object v0, v0, Lcom/narvii/onboarding/OnBoardingFragment;->onBoardingRecommendHelper:Lcom/narvii/onboarding/OnBoardingRecommendHelper;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0}, Lcom/narvii/onboarding/OnBoardingRecommendHelper;->getRecommendedUsers()Ljava/util/ArrayList;

    .line 149
    move-result-object v0

    .line 150
    .line 151
    const-string v3, "Follow User"

    .line 152
    .line 153
    .line 154
    invoke-interface {p1, v3}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 155
    move-result-object p1

    .line 156
    .line 157
    .line 158
    invoke-virtual {p1, v2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->source(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 159
    move-result-object p1

    .line 160
    .line 161
    if-nez v0, :cond_3

    .line 162
    goto :goto_1

    .line 163
    .line 164
    .line 165
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 166
    move-result v1

    .line 167
    .line 168
    :goto_1
    const-string v0, "Community Onboarding Follows"

    .line 169
    .line 170
    .line 171
    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;I)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 172
    goto :goto_2

    .line 173
    .line 174
    :cond_4
    iget-object p1, p0, Lcom/narvii/onboarding/OnBoardingFragment$3;->this$0:Lcom/narvii/onboarding/OnBoardingFragment;

    .line 175
    .line 176
    .line 177
    invoke-static {p1}, Lcom/narvii/onboarding/OnBoardingFragment;->o(Lcom/narvii/onboarding/OnBoardingFragment;)V

    .line 178
    :goto_2
    return-void
.end method
