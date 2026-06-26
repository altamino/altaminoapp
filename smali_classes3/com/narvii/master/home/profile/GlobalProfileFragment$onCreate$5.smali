.class public final Lcom/narvii/master/home/profile/GlobalProfileFragment$onCreate$5;
.super Landroid/support/v4/app/SharedElementCallback;
.source "GlobalProfileFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/home/profile/GlobalProfileFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private started:Z

.field final synthetic this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;


# direct methods
.method constructor <init>(Lcom/narvii/master/home/profile/GlobalProfileFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 255
    iput-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$onCreate$5;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    invoke-direct {p0}, Landroid/support/v4/app/SharedElementCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final getStarted()Z
    .locals 1

    .line 256
    iget-boolean v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$onCreate$5;->started:Z

    return v0
.end method

.method public onSharedElementEnd(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 258
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/SharedElementCallback;->onSharedElementEnd(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 259
    iget-boolean p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$onCreate$5;->started:Z

    if-eqz p1, :cond_2

    .line 260
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$onCreate$5;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    invoke-virtual {p1}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->getProfileView()Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;

    move-result-object p1

    const/high16 p2, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->getNicknameView()Lcom/narvii/widget/NicknameView;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 261
    :cond_0
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$onCreate$5;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    invoke-virtual {p1}, Lcom/narvii/nested/CoordinateTabFragment;->getTabLayout()Lcom/narvii/widget/NVPagerTabLayout;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Lcom/narvii/widget/NVPagerTabLayout;->setIndicatorAlpha(F)V

    :cond_1
    const/4 p1, 0x0

    .line 262
    iput-boolean p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$onCreate$5;->started:Z

    goto :goto_0

    .line 264
    :cond_2
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$onCreate$5;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    invoke-virtual {p1}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->getProfileView()Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;

    move-result-object p1

    const p2, 0x3dcccccd    # 0.1f

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->getNicknameView()Lcom/narvii/widget/NicknameView;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 265
    :cond_3
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$onCreate$5;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    invoke-virtual {p1}, Lcom/narvii/nested/CoordinateTabFragment;->getTabLayout()Lcom/narvii/widget/NVPagerTabLayout;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1, p2}, Lcom/narvii/widget/NVPagerTabLayout;->setIndicatorAlpha(F)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onSharedElementsArrived(Ljava/util/List;Ljava/util/List;Landroid/support/v4/app/SharedElementCallback$OnSharedElementsReadyListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Landroid/support/v4/app/SharedElementCallback$OnSharedElementsReadyListener;",
            ")V"
        }
    .end annotation

    .line 270
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/SharedElementCallback;->onSharedElementsArrived(Ljava/util/List;Ljava/util/List;Landroid/support/v4/app/SharedElementCallback$OnSharedElementsReadyListener;)V

    const/4 p1, 0x1

    .line 271
    iput-boolean p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$onCreate$5;->started:Z

    .line 272
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$onCreate$5;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    invoke-virtual {p1}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->getProfileView()Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;

    move-result-object p1

    const p2, 0x3dcccccd    # 0.1f

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->getNicknameView()Lcom/narvii/widget/NicknameView;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 273
    :cond_0
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$onCreate$5;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    invoke-virtual {p1}, Lcom/narvii/nested/CoordinateTabFragment;->getTabLayout()Lcom/narvii/widget/NVPagerTabLayout;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Lcom/narvii/widget/NVPagerTabLayout;->setIndicatorAlpha(F)V

    :cond_1
    return-void
.end method

.method public final setStarted(Z)V
    .locals 0

    .line 256
    iput-boolean p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$onCreate$5;->started:Z

    return-void
.end method
