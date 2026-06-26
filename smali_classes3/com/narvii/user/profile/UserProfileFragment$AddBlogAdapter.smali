.class Lcom/narvii/user/profile/UserProfileFragment$AddBlogAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "UserProfileFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/user/profile/UserProfileFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AddBlogAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/user/profile/UserProfileFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/user/profile/UserProfileFragment;)V
    .locals 0

    .line 1802
    iput-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$AddBlogAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 1803
    invoke-direct {p0, p1}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1808
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$AddBlogAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    iget-object v0, v0, Lcom/narvii/user/profile/UserProfileFragment;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/modulization/CommunityConfigHelper;->isPostEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$AddBlogAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    iget-object v0, v0, Lcom/narvii/user/profile/UserProfileFragment;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 1809
    invoke-virtual {v0}, Lcom/narvii/modulization/CommunityConfigHelper;->isPostBlogEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    .line 1815
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    const p1, 0x7f0b06c1

    .line 1825
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090309

    .line 1826
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    .line 1827
    iget-boolean p3, p0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    if-nez p3, :cond_0

    const p3, 0x7f080315

    goto :goto_0

    :cond_0
    const p3, 0x7f080316

    :goto_0
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1828
    iget-object p2, p0, Lcom/narvii/user/profile/UserProfileFragment$AddBlogAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    const p3, 0x7f090d14

    const v0, -0x777778

    invoke-static {p2, p1, p3, v0}, Lcom/narvii/user/profile/UserProfileFragment;->access$1300(Lcom/narvii/user/profile/UserProfileFragment;Landroid/view/View;II)V

    return-object p1
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    if-nez p2, :cond_1

    .line 1836
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$AddBlogAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/narvii/app/DrawerActivity;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$AddBlogAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/narvii/app/DrawerActivity;

    invoke-virtual {p1}, Lcom/narvii/app/DrawerActivity;->hasCBB()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "cbbHost"

    .line 1837
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/community/CBBHost;

    .line 1838
    invoke-virtual {p1}, Lcom/narvii/community/CBBHost;->openPostEntry()V

    goto :goto_0

    :cond_0
    const-string p1, "postEntry"

    .line 1840
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/post/entry/PostEntryDialog;

    const/4 p2, 0x0

    .line 1841
    sget-object p3, Lcom/narvii/util/logging/LoggingSource;->UserProfileView:Lcom/narvii/util/logging/LoggingSource;

    const-string p4, "User Profile"

    invoke-virtual {p1, p2, p4, p3}, Lcom/narvii/post/entry/PostEntryDialog;->show(ILjava/lang/String;Lcom/narvii/util/logging/LoggingSource;)V

    :goto_0
    const/4 p1, 0x1

    return p1

    .line 1846
    :cond_1
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
