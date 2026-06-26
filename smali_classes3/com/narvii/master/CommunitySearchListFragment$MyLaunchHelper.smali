.class Lcom/narvii/master/CommunitySearchListFragment$MyLaunchHelper;
.super Lcom/narvii/community/CommunityLaunchHelper;
.source "CommunitySearchListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/CommunitySearchListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyLaunchHelper"
.end annotation


# instance fields
.field community:Lcom/narvii/model/Community;

.field nvImageView:Lcom/narvii/widget/NVImageView;

.field final synthetic this$0:Lcom/narvii/master/CommunitySearchListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/master/CommunitySearchListFragment;Lcom/narvii/app/NVContext;Lcom/narvii/widget/NVImageView;)V
    .locals 0

    .line 403
    iput-object p1, p0, Lcom/narvii/master/CommunitySearchListFragment$MyLaunchHelper;->this$0:Lcom/narvii/master/CommunitySearchListFragment;

    const-string p1, "Search"

    .line 404
    invoke-direct {p0, p2, p1}, Lcom/narvii/community/CommunityLaunchHelper;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    .line 405
    iput-object p3, p0, Lcom/narvii/master/CommunitySearchListFragment$MyLaunchHelper;->nvImageView:Lcom/narvii/widget/NVImageView;

    return-void
.end method

.method static synthetic access$1201(Lcom/narvii/master/CommunitySearchListFragment$MyLaunchHelper;)V
    .locals 0

    .line 399
    invoke-super {p0}, Lcom/narvii/community/CommunityLaunchHelper;->onFinish()V

    return-void
.end method


# virtual methods
.method public launch(ILcom/narvii/model/Community;Ljava/lang/String;Lcom/narvii/model/User;Ljava/lang/String;Lcom/narvii/community/ReminderCheck;Ljava/lang/String;Z)V
    .locals 0

    .line 410
    iput-object p2, p0, Lcom/narvii/master/CommunitySearchListFragment$MyLaunchHelper;->community:Lcom/narvii/model/Community;

    .line 411
    invoke-super/range {p0 .. p8}, Lcom/narvii/community/CommunityLaunchHelper;->launch(ILcom/narvii/model/Community;Ljava/lang/String;Lcom/narvii/model/User;Ljava/lang/String;Lcom/narvii/community/ReminderCheck;Ljava/lang/String;Z)V

    return-void
.end method

.method protected onFinish()V
    .locals 4

    .line 416
    iget-object v0, p0, Lcom/narvii/master/CommunitySearchListFragment$MyLaunchHelper;->community:Lcom/narvii/model/Community;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/narvii/master/CommunitySearchListFragment$MyLaunchHelper;->this$0:Lcom/narvii/master/CommunitySearchListFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 418
    iget-object v0, p0, Lcom/narvii/community/CommunityLaunchHelper;->launchImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/master/CommunitySearchListFragment$MyLaunchHelper;->nvImageView:Lcom/narvii/widget/NVImageView;

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/narvii/master/CommunitySearchListFragment$MyLaunchHelper;->this$0:Lcom/narvii/master/CommunitySearchListFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/master/CommunitySearchListFragment$MyLaunchHelper;->nvImageView:Lcom/narvii/widget/NVImageView;

    iget-object v2, p0, Lcom/narvii/community/CommunityLaunchHelper;->launchImageDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v3, Lcom/narvii/master/CommunitySearchListFragment$MyLaunchHelper$1;

    invoke-direct {v3, p0}, Lcom/narvii/master/CommunitySearchListFragment$MyLaunchHelper$1;-><init>(Lcom/narvii/master/CommunitySearchListFragment$MyLaunchHelper;)V

    invoke-static {v0, v1, v2, v3}, Lcom/narvii/util/SplashUtils;->splash(Landroid/app/Activity;Landroid/view/View;Landroid/graphics/drawable/Drawable;Lcom/narvii/util/Callback;)V

    goto :goto_0

    .line 429
    :cond_0
    invoke-super {p0}, Lcom/narvii/community/CommunityLaunchHelper;->onFinish()V

    :cond_1
    :goto_0
    return-void
.end method
