.class public final Lcom/narvii/master/home/profile/GlobalProfileFragment$onCreate$5;
.super Landroidx/core/app/SharedElementCallback;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$onCreate$5;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroidx/core/app/SharedElementCallback;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final getStarted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$onCreate$5;->started:Z

    return v0
.end method

.method public onSharedElementEnd(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
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

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3}, Landroidx/core/app/SharedElementCallback;->onSharedElementEnd(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 4
    .line 5
    iget-boolean p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$onCreate$5;->started:Z

    .line 6
    const/4 p2, 0x0

    .line 7
    .line 8
    if-eqz p1, :cond_3

    .line 9
    .line 10
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$onCreate$5;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->getProfileView()Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->getNicknameView()Lcom/narvii/widget/NicknameView;

    .line 20
    move-result-object p2

    .line 21
    .line 22
    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 23
    .line 24
    if-nez p2, :cond_1

    .line 25
    goto :goto_0

    .line 26
    .line 27
    .line 28
    :cond_1
    invoke-virtual {p2, p1}, Landroid/view/View;->setAlpha(F)V

    .line 29
    .line 30
    :goto_0
    iget-object p2, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$onCreate$5;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2}, Lcom/narvii/nested/CoordinateTabFragment;->getTabLayout()Lcom/narvii/widget/NVPagerTabLayout;

    .line 34
    move-result-object p2

    .line 35
    .line 36
    if-eqz p2, :cond_2

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2, p1}, Lcom/narvii/widget/NVPagerTabLayout;->setIndicatorAlpha(F)V

    .line 40
    :cond_2
    const/4 p1, 0x0

    .line 41
    .line 42
    iput-boolean p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$onCreate$5;->started:Z

    .line 43
    goto :goto_2

    .line 44
    .line 45
    :cond_3
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$onCreate$5;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->getProfileView()Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;

    .line 49
    move-result-object p1

    .line 50
    .line 51
    if-eqz p1, :cond_4

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->getNicknameView()Lcom/narvii/widget/NicknameView;

    .line 55
    move-result-object p2

    .line 56
    .line 57
    .line 58
    :cond_4
    const p1, 0x3dcccccd    # 0.1f

    .line 59
    .line 60
    if-nez p2, :cond_5

    .line 61
    goto :goto_1

    .line 62
    .line 63
    .line 64
    :cond_5
    invoke-virtual {p2, p1}, Landroid/view/View;->setAlpha(F)V

    .line 65
    .line 66
    :goto_1
    iget-object p2, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$onCreate$5;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2}, Lcom/narvii/nested/CoordinateTabFragment;->getTabLayout()Lcom/narvii/widget/NVPagerTabLayout;

    .line 70
    move-result-object p2

    .line 71
    .line 72
    if-eqz p2, :cond_6

    .line 73
    .line 74
    .line 75
    invoke-virtual {p2, p1}, Lcom/narvii/widget/NVPagerTabLayout;->setIndicatorAlpha(F)V

    .line 76
    :cond_6
    :goto_2
    return-void
.end method

.method public onSharedElementsArrived(Ljava/util/List;Ljava/util/List;Landroidx/core/app/SharedElementCallback$OnSharedElementsReadyListener;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroidx/core/app/SharedElementCallback$OnSharedElementsReadyListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Landroidx/core/app/SharedElementCallback$OnSharedElementsReadyListener;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3}, Landroidx/core/app/SharedElementCallback;->onSharedElementsArrived(Ljava/util/List;Ljava/util/List;Landroidx/core/app/SharedElementCallback$OnSharedElementsReadyListener;)V

    .line 4
    const/4 p1, 0x1

    .line 5
    .line 6
    iput-boolean p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$onCreate$5;->started:Z

    .line 7
    .line 8
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$onCreate$5;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->getProfileView()Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->getNicknameView()Lcom/narvii/widget/NicknameView;

    .line 18
    move-result-object p1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    .line 22
    .line 23
    :goto_0
    const p2, 0x3dcccccd    # 0.1f

    .line 24
    .line 25
    if-nez p1, :cond_1

    .line 26
    goto :goto_1

    .line 27
    .line 28
    .line 29
    :cond_1
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 30
    .line 31
    :goto_1
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$onCreate$5;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/narvii/nested/CoordinateTabFragment;->getTabLayout()Lcom/narvii/widget/NVPagerTabLayout;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    if-eqz p1, :cond_2

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, p2}, Lcom/narvii/widget/NVPagerTabLayout;->setIndicatorAlpha(F)V

    .line 41
    :cond_2
    return-void
.end method

.method public final setStarted(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$onCreate$5;->started:Z

    return-void
.end method
