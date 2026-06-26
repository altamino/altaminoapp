.class Lcom/narvii/onboarding/OnBoardingFragment$2;
.super Ljava/lang/Object;
.source "OnBoardingFragment.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


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

    .line 100
    iput-object p1, p0, Lcom/narvii/onboarding/OnBoardingFragment$2;->this$0:Lcom/narvii/onboarding/OnBoardingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/narvii/onboarding/OnBoardingFragment$2;->this$0:Lcom/narvii/onboarding/OnBoardingFragment;

    invoke-static {v0, p1}, Lcom/narvii/onboarding/OnBoardingFragment;->access$000(Lcom/narvii/onboarding/OnBoardingFragment;I)V

    return-void
.end method
