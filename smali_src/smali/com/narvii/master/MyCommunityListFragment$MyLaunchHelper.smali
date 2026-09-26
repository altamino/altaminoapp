.class Lcom/narvii/master/MyCommunityListFragment$MyLaunchHelper;
.super Lcom/narvii/community/CommunityLaunchHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/MyCommunityListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyLaunchHelper"
.end annotation


# instance fields
.field launching:Z

.field final synthetic this$0:Lcom/narvii/master/MyCommunityListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/master/MyCommunityListFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/master/MyCommunityListFragment$MyLaunchHelper;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    .line 3
    .line 4
    const-string p1, "My Community List"

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p2, p1}, Lcom/narvii/community/CommunityLaunchHelper;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    .line 8
    return-void
.end method

.method static synthetic access$001(Lcom/narvii/master/MyCommunityListFragment$MyLaunchHelper;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/community/CommunityLaunchHelper;->onFinish()V

    .line 4
    return-void
.end method

.method static synthetic access$101(Lcom/narvii/master/MyCommunityListFragment$MyLaunchHelper;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/community/CommunityLaunchHelper;->onFinish()V

    .line 4
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/community/CommunityLaunchHelper;->cancel()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/narvii/master/MyCommunityListFragment$MyLaunchHelper;->launching:Z

    .line 7
    return-void
.end method

.method public launch(ILcom/narvii/model/Community;Ljava/lang/String;Lcom/narvii/model/User;Ljava/lang/String;Lcom/narvii/community/ReminderCheck;Ljava/lang/String;ZILandroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/narvii/master/MyCommunityListFragment$MyLaunchHelper;->launching:Z

    .line 4
    .line 5
    .line 6
    invoke-super/range {p0 .. p10}, Lcom/narvii/community/CommunityLaunchHelper;->launch(ILcom/narvii/model/Community;Ljava/lang/String;Lcom/narvii/model/User;Ljava/lang/String;Lcom/narvii/community/ReminderCheck;Ljava/lang/String;ZILandroid/graphics/drawable/Drawable;)V

    .line 7
    return-void
.end method

.method protected onFinish()V
    .locals 4

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/master/MyCommunityListFragment$MyLaunchHelper;->launching:Z

    .line 3
    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/master/MyCommunityListFragment$MyLaunchHelper;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/master/MyCommunityListFragment$MyLaunchHelper;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    .line 15
    .line 16
    iget-object v1, v0, Lcom/narvii/master/MyCommunityListFragment;->launchImageView:Lcom/narvii/widget/NVImageView;

    .line 17
    .line 18
    if-eqz v1, :cond_2

    .line 19
    .line 20
    iget-object v1, v0, Lcom/narvii/master/MyCommunityListFragment;->launchCommunity:Lcom/narvii/model/Community;

    .line 21
    .line 22
    if-nez v1, :cond_0

    .line 23
    goto :goto_0

    .line 24
    .line 25
    :cond_0
    iget-object v1, p0, Lcom/narvii/community/CommunityLaunchHelper;->launchImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 26
    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    iget-object v1, p0, Lcom/narvii/master/MyCommunityListFragment$MyLaunchHelper;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    .line 34
    .line 35
    iget-object v1, v1, Lcom/narvii/master/MyCommunityListFragment;->launchImageView:Lcom/narvii/widget/NVImageView;

    .line 36
    .line 37
    iget-object v2, p0, Lcom/narvii/community/CommunityLaunchHelper;->launchImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 38
    .line 39
    new-instance v3, Lcom/narvii/master/MyCommunityListFragment$MyLaunchHelper$1;

    .line 40
    .line 41
    .line 42
    invoke-direct {v3, p0}, Lcom/narvii/master/MyCommunityListFragment$MyLaunchHelper$1;-><init>(Lcom/narvii/master/MyCommunityListFragment$MyLaunchHelper;)V

    .line 43
    .line 44
    .line 45
    invoke-static {v0, v1, v2, v3}, Lcom/narvii/util/SplashUtils;->splash(Landroid/app/Activity;Landroid/view/View;Landroid/graphics/drawable/Drawable;Lcom/narvii/util/Callback;)V

    .line 46
    goto :goto_0

    .line 47
    .line 48
    .line 49
    :cond_1
    invoke-static {p0}, Lcom/narvii/master/MyCommunityListFragment$MyLaunchHelper;->access$101(Lcom/narvii/master/MyCommunityListFragment$MyLaunchHelper;)V

    .line 50
    :cond_2
    :goto_0
    return-void
.end method

.method protected onProgress(IF)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/master/MyCommunityListFragment$MyLaunchHelper;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    .line 3
    .line 4
    iget-object p1, p1, Lcom/narvii/master/MyCommunityListFragment;->launchProgress:Lcom/narvii/widget/SmoothProgressBar;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    const/high16 v0, 0x42c80000    # 100.0f

    .line 9
    mul-float/2addr p2, v0

    .line 10
    float-to-int p2, p2

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lcom/narvii/widget/SmoothProgressBar;->setProgress(I)V

    .line 14
    :cond_0
    return-void
.end method
