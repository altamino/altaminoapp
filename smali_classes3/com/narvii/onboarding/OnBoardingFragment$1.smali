.class Lcom/narvii/onboarding/OnBoardingFragment$1;
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

    .line 85
    iput-object p1, p0, Lcom/narvii/onboarding/OnBoardingFragment$1;->this$0:Lcom/narvii/onboarding/OnBoardingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 88
    iget-object p1, p0, Lcom/narvii/onboarding/OnBoardingFragment$1;->this$0:Lcom/narvii/onboarding/OnBoardingFragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 89
    iget-object p1, p0, Lcom/narvii/onboarding/OnBoardingFragment$1;->this$0:Lcom/narvii/onboarding/OnBoardingFragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 90
    iget-object p1, p0, Lcom/narvii/onboarding/OnBoardingFragment$1;->this$0:Lcom/narvii/onboarding/OnBoardingFragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f010029

    const v1, 0x7f01002a

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_0
    return-void
.end method
