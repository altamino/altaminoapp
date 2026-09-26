.class Lcom/narvii/master/CommunitySearchListFragment$MyLaunchHelper;
.super Lcom/narvii/community/CommunityLaunchHelper;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/master/CommunitySearchListFragment$MyLaunchHelper;->this$0:Lcom/narvii/master/CommunitySearchListFragment;

    .line 3
    .line 4
    const-string p1, "Search"

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p2, p1}, Lcom/narvii/community/CommunityLaunchHelper;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    .line 8
    .line 9
    iput-object p3, p0, Lcom/narvii/master/CommunitySearchListFragment$MyLaunchHelper;->nvImageView:Lcom/narvii/widget/NVImageView;

    .line 10
    return-void
.end method

.method static synthetic access$601(Lcom/narvii/master/CommunitySearchListFragment$MyLaunchHelper;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/community/CommunityLaunchHelper;->onFinish()V

    .line 4
    return-void
.end method


# virtual methods
.method public launch(ILcom/narvii/model/Community;Ljava/lang/String;Lcom/narvii/model/User;Ljava/lang/String;Lcom/narvii/community/ReminderCheck;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    .line 2
    iput-object p2, p0, Lcom/narvii/master/CommunitySearchListFragment$MyLaunchHelper;->community:Lcom/narvii/model/Community;

    .line 3
    .line 4
    .line 5
    invoke-super/range {p0 .. p8}, Lcom/narvii/community/CommunityLaunchHelper;->launch(ILcom/narvii/model/Community;Ljava/lang/String;Lcom/narvii/model/User;Ljava/lang/String;Lcom/narvii/community/ReminderCheck;Ljava/lang/String;Z)V

    .line 6
    return-void
.end method

.method protected onFinish()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/CommunitySearchListFragment$MyLaunchHelper;->community:Lcom/narvii/model/Community;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/master/CommunitySearchListFragment$MyLaunchHelper;->this$0:Lcom/narvii/master/CommunitySearchListFragment;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/community/CommunityLaunchHelper;->launchImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/master/CommunitySearchListFragment$MyLaunchHelper;->nvImageView:Lcom/narvii/widget/NVImageView;

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, Lcom/narvii/master/CommunitySearchListFragment$MyLaunchHelper;->this$0:Lcom/narvii/master/CommunitySearchListFragment;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    iget-object v1, p0, Lcom/narvii/master/CommunitySearchListFragment$MyLaunchHelper;->nvImageView:Lcom/narvii/widget/NVImageView;

    .line 29
    .line 30
    iget-object v2, p0, Lcom/narvii/community/CommunityLaunchHelper;->launchImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 31
    .line 32
    new-instance v3, Lcom/narvii/master/CommunitySearchListFragment$MyLaunchHelper$1;

    .line 33
    .line 34
    .line 35
    invoke-direct {v3, p0}, Lcom/narvii/master/CommunitySearchListFragment$MyLaunchHelper$1;-><init>(Lcom/narvii/master/CommunitySearchListFragment$MyLaunchHelper;)V

    .line 36
    .line 37
    .line 38
    invoke-static {v0, v1, v2, v3}, Lcom/narvii/util/SplashUtils;->splash(Landroid/app/Activity;Landroid/view/View;Landroid/graphics/drawable/Drawable;Lcom/narvii/util/Callback;)V

    .line 39
    goto :goto_0

    .line 40
    .line 41
    .line 42
    :cond_0
    invoke-super {p0}, Lcom/narvii/community/CommunityLaunchHelper;->onFinish()V

    .line 43
    :cond_1
    :goto_0
    return-void
.end method
