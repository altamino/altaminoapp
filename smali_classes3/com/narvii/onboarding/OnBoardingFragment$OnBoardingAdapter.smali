.class Lcom/narvii/onboarding/OnBoardingFragment$OnBoardingAdapter;
.super Landroid/support/v4/app/FragmentStatePagerAdapter;
.source "OnBoardingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/onboarding/OnBoardingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnBoardingAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/onboarding/OnBoardingFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/onboarding/OnBoardingFragment;Landroid/support/v4/app/FragmentManager;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lcom/narvii/onboarding/OnBoardingFragment$OnBoardingAdapter;->this$0:Lcom/narvii/onboarding/OnBoardingFragment;

    .line 221
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentStatePagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    return-void
.end method


# virtual methods
.method public getActionBackground(I)I
    .locals 2

    .line 279
    iget-object v0, p0, Lcom/narvii/onboarding/OnBoardingFragment$OnBoardingAdapter;->this$0:Lcom/narvii/onboarding/OnBoardingFragment;

    iget-object v0, v0, Lcom/narvii/onboarding/OnBoardingFragment;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x2

    const v1, 0x7f08082f

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    return v1

    :cond_0
    const p1, 0x7f0805ac

    return p1

    :cond_1
    const p1, 0x7f0806cc

    return p1

    :cond_2
    return v1
.end method

.method public getActionText(I)Ljava/lang/String;
    .locals 4

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " & "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/narvii/onboarding/OnBoardingFragment$OnBoardingAdapter;->isLast(I)Z

    move-result v1

    const v2, 0x7f0f0c24

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/narvii/onboarding/OnBoardingFragment$OnBoardingAdapter;->this$0:Lcom/narvii/onboarding/OnBoardingFragment;

    const v3, 0x7f0f03aa

    invoke-virtual {v1, v3}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/narvii/onboarding/OnBoardingFragment$OnBoardingAdapter;->this$0:Lcom/narvii/onboarding/OnBoardingFragment;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 262
    iget-object v1, p0, Lcom/narvii/onboarding/OnBoardingFragment$OnBoardingAdapter;->this$0:Lcom/narvii/onboarding/OnBoardingFragment;

    iget-object v1, v1, Lcom/narvii/onboarding/OnBoardingFragment;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_3

    const/4 p1, 0x4

    if-eq v1, p1, :cond_2

    const/16 p1, 0x8

    if-eq v1, p1, :cond_1

    const-string p1, ""

    return-object p1

    .line 268
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/narvii/onboarding/OnBoardingFragment$OnBoardingAdapter;->this$0:Lcom/narvii/onboarding/OnBoardingFragment;

    const v2, 0x7f0f0ae3

    invoke-virtual {v1, v2}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 266
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/narvii/onboarding/OnBoardingFragment$OnBoardingAdapter;->this$0:Lcom/narvii/onboarding/OnBoardingFragment;

    const v2, 0x7f0f0ea1

    invoke-virtual {v1, v2}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 264
    :cond_3
    invoke-virtual {p0, p1}, Lcom/narvii/onboarding/OnBoardingFragment$OnBoardingAdapter;->isLast(I)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/narvii/onboarding/OnBoardingFragment$OnBoardingAdapter;->this$0:Lcom/narvii/onboarding/OnBoardingFragment;

    const v0, 0x7f0f0274

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/narvii/onboarding/OnBoardingFragment$OnBoardingAdapter;->this$0:Lcom/narvii/onboarding/OnBoardingFragment;

    invoke-virtual {p1, v2}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public getCount()I
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/narvii/onboarding/OnBoardingFragment$OnBoardingAdapter;->this$0:Lcom/narvii/onboarding/OnBoardingFragment;

    iget-object v0, v0, Lcom/narvii/onboarding/OnBoardingFragment;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 3

    .line 228
    iget-object v0, p0, Lcom/narvii/onboarding/OnBoardingFragment$OnBoardingAdapter;->this$0:Lcom/narvii/onboarding/OnBoardingFragment;

    iget-object v0, v0, Lcom/narvii/onboarding/OnBoardingFragment;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 245
    :cond_0
    new-instance p1, Lcom/narvii/onboarding/RecommendedFeedsFragment;

    invoke-direct {p1}, Lcom/narvii/onboarding/RecommendedFeedsFragment;-><init>()V

    .line 246
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 247
    iget-object v1, p0, Lcom/narvii/onboarding/OnBoardingFragment$OnBoardingAdapter;->this$0:Lcom/narvii/onboarding/OnBoardingFragment;

    const-string v2, "feeds"

    invoke-virtual {v1, v2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object p1

    .line 239
    :cond_1
    new-instance p1, Lcom/narvii/onboarding/RecommendedUsersFragment;

    invoke-direct {p1}, Lcom/narvii/onboarding/RecommendedUsersFragment;-><init>()V

    .line 240
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 241
    iget-object v1, p0, Lcom/narvii/onboarding/OnBoardingFragment$OnBoardingAdapter;->this$0:Lcom/narvii/onboarding/OnBoardingFragment;

    const-string v2, "users"

    invoke-virtual {v1, v2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object p1

    .line 230
    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public isLast(I)Z
    .locals 3

    .line 275
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/narvii/onboarding/OnBoardingFragment$OnBoardingAdapter;->getCount()I

    move-result v0

    sub-int/2addr v0, v2

    if-ne p1, v0, :cond_1

    :goto_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public showSkip(I)Z
    .locals 1

    .line 292
    iget-object v0, p0, Lcom/narvii/onboarding/OnBoardingFragment$OnBoardingAdapter;->this$0:Lcom/narvii/onboarding/OnBoardingFragment;

    iget-object v0, v0, Lcom/narvii/onboarding/OnBoardingFragment;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
