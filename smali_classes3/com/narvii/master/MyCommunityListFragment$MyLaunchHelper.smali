.class Lcom/narvii/master/MyCommunityListFragment$MyLaunchHelper;
.super Lcom/narvii/community/CommunityLaunchHelper;
.source "MyCommunityListFragment.java"


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

    .line 231
    iput-object p1, p0, Lcom/narvii/master/MyCommunityListFragment$MyLaunchHelper;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    const-string p1, "My Community List"

    .line 232
    invoke-direct {p0, p2, p1}, Lcom/narvii/community/CommunityLaunchHelper;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$001(Lcom/narvii/master/MyCommunityListFragment$MyLaunchHelper;)V
    .locals 0

    .line 228
    invoke-super {p0}, Lcom/narvii/community/CommunityLaunchHelper;->onFinish()V

    return-void
.end method

.method static synthetic access$101(Lcom/narvii/master/MyCommunityListFragment$MyLaunchHelper;)V
    .locals 0

    .line 228
    invoke-super {p0}, Lcom/narvii/community/CommunityLaunchHelper;->onFinish()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 250
    invoke-super {p0}, Lcom/narvii/community/CommunityLaunchHelper;->cancel()V

    const/4 v0, 0x0

    .line 251
    iput-boolean v0, p0, Lcom/narvii/master/MyCommunityListFragment$MyLaunchHelper;->launching:Z

    return-void
.end method

.method public launch(ILcom/narvii/model/Community;Ljava/lang/String;Lcom/narvii/model/User;Ljava/lang/String;Lcom/narvii/community/ReminderCheck;Ljava/lang/String;ZILandroid/graphics/drawable/Drawable;)V
    .locals 1

    const/4 v0, 0x1

    .line 244
    iput-boolean v0, p0, Lcom/narvii/master/MyCommunityListFragment$MyLaunchHelper;->launching:Z

    .line 245
    invoke-super/range {p0 .. p10}, Lcom/narvii/community/CommunityLaunchHelper;->launch(ILcom/narvii/model/Community;Ljava/lang/String;Lcom/narvii/model/User;Ljava/lang/String;Lcom/narvii/community/ReminderCheck;Ljava/lang/String;ZILandroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected onFinish()V
    .locals 4

    .line 256
    iget-boolean v0, p0, Lcom/narvii/master/MyCommunityListFragment$MyLaunchHelper;->launching:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/narvii/master/MyCommunityListFragment$MyLaunchHelper;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/narvii/master/MyCommunityListFragment$MyLaunchHelper;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    iget-object v1, v0, Lcom/narvii/master/MyCommunityListFragment;->launchImageView:Lcom/narvii/widget/NVImageView;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/narvii/master/MyCommunityListFragment;->launchCommunity:Lcom/narvii/model/Community;

    if-nez v1, :cond_0

    goto :goto_0

    .line 258
    :cond_0
    iget-object v1, p0, Lcom/narvii/community/CommunityLaunchHelper;->launchImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 259
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/master/MyCommunityListFragment$MyLaunchHelper;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    iget-object v1, v1, Lcom/narvii/master/MyCommunityListFragment;->launchImageView:Lcom/narvii/widget/NVImageView;

    iget-object v2, p0, Lcom/narvii/community/CommunityLaunchHelper;->launchImageDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v3, Lcom/narvii/master/MyCommunityListFragment$MyLaunchHelper$1;

    invoke-direct {v3, p0}, Lcom/narvii/master/MyCommunityListFragment$MyLaunchHelper$1;-><init>(Lcom/narvii/master/MyCommunityListFragment$MyLaunchHelper;)V

    invoke-static {v0, v1, v2, v3}, Lcom/narvii/util/SplashUtils;->splash(Landroid/app/Activity;Landroid/view/View;Landroid/graphics/drawable/Drawable;Lcom/narvii/util/Callback;)V

    goto :goto_0

    .line 271
    :cond_1
    invoke-static {p0}, Lcom/narvii/master/MyCommunityListFragment$MyLaunchHelper;->access$101(Lcom/narvii/master/MyCommunityListFragment$MyLaunchHelper;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onProgress(IF)V
    .locals 1

    .line 237
    iget-object p1, p0, Lcom/narvii/master/MyCommunityListFragment$MyLaunchHelper;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    iget-object p1, p1, Lcom/narvii/master/MyCommunityListFragment;->launchProgress:Lcom/narvii/widget/SmoothProgressBar;

    if-eqz p1, :cond_0

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float p2, p2, v0

    float-to-int p2, p2

    .line 238
    invoke-virtual {p1, p2}, Lcom/narvii/widget/SmoothProgressBar;->setProgress(I)V

    :cond_0
    return-void
.end method
