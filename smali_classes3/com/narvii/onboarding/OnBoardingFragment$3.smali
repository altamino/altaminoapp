.class Lcom/narvii/onboarding/OnBoardingFragment$3;
.super Ljava/lang/Object;
.source "OnBoardingFragment.java"

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

    .line 118
    iput-object p1, p0, Lcom/narvii/onboarding/OnBoardingFragment$3;->this$0:Lcom/narvii/onboarding/OnBoardingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 121
    iget-object p1, p0, Lcom/narvii/onboarding/OnBoardingFragment$3;->this$0:Lcom/narvii/onboarding/OnBoardingFragment;

    iget-object v0, p1, Lcom/narvii/onboarding/OnBoardingFragment;->list:Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/narvii/onboarding/OnBoardingFragment;->pager:Lcom/narvii/widget/NVViewPager;

    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    .line 135
    :cond_0
    iget-object p1, p0, Lcom/narvii/onboarding/OnBoardingFragment$3;->this$0:Lcom/narvii/onboarding/OnBoardingFragment;

    invoke-virtual {p1}, Lcom/narvii/onboarding/OnBoardingFragment;->sendLikeAllFeedsRequest()V

    .line 136
    new-instance p1, Lcom/narvii/util/particles/ParticlesHelper;

    invoke-direct {p1}, Lcom/narvii/util/particles/ParticlesHelper;-><init>()V

    .line 137
    invoke-virtual {p1}, Lcom/narvii/util/particles/ParticlesHelper;->l5()Lcom/narvii/util/particles/ParticlesHelper;

    move-result-object v0

    iget-object v4, p0, Lcom/narvii/onboarding/OnBoardingFragment$3;->this$0:Lcom/narvii/onboarding/OnBoardingFragment;

    iget-object v4, v4, Lcom/narvii/onboarding/OnBoardingFragment;->actionLayout:Landroid/view/View;

    invoke-virtual {v0, v4}, Lcom/narvii/util/particles/ParticlesHelper;->emit(Landroid/view/View;)V

    .line 138
    new-instance v0, Lcom/narvii/onboarding/OnBoardingFragment$3$1;

    invoke-direct {v0, p0}, Lcom/narvii/onboarding/OnBoardingFragment$3$1;-><init>(Lcom/narvii/onboarding/OnBoardingFragment$3;)V

    .line 143
    invoke-virtual {p1}, Lcom/narvii/util/particles/ParticlesHelper;->duration()J

    move-result-wide v4

    .line 138
    invoke-static {v0, v4, v5}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 126
    :cond_1
    iget-object p1, p0, Lcom/narvii/onboarding/OnBoardingFragment$3;->this$0:Lcom/narvii/onboarding/OnBoardingFragment;

    invoke-virtual {p1}, Lcom/narvii/onboarding/OnBoardingFragment;->sendFollowAllRequest()V

    .line 127
    iget-object p1, p0, Lcom/narvii/onboarding/OnBoardingFragment$3;->this$0:Lcom/narvii/onboarding/OnBoardingFragment;

    invoke-static {p1}, Lcom/narvii/onboarding/OnBoardingFragment;->access$100(Lcom/narvii/onboarding/OnBoardingFragment;)V

    goto :goto_0

    .line 123
    :cond_2
    iget-object p1, p0, Lcom/narvii/onboarding/OnBoardingFragment$3;->this$0:Lcom/narvii/onboarding/OnBoardingFragment;

    invoke-static {p1}, Lcom/narvii/onboarding/OnBoardingFragment;->access$100(Lcom/narvii/onboarding/OnBoardingFragment;)V

    :goto_0
    return-void
.end method
