.class final Lcom/narvii/master/home/profile/GlobalProfileFragment$sendGlobalProfileRequest$1;
.super Ljava/lang/Object;
.source "GlobalProfileFragment.kt"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/home/profile/GlobalProfileFragment;->sendGlobalProfileRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Lcom/narvii/util/RequestResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;


# direct methods
.method constructor <init>(Lcom/narvii/master/home/profile/GlobalProfileFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$sendGlobalProfileRequest$1;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Lcom/narvii/util/RequestResult;)V
    .locals 3

    .line 682
    iget v0, p1, Lcom/narvii/util/RequestResult;->code:I

    if-nez v0, :cond_2

    iget-object p1, p1, Lcom/narvii/util/RequestResult;->object:Lcom/narvii/model/NVObject;

    if-eqz p1, :cond_2

    .line 683
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$sendGlobalProfileRequest$1;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    instance-of v1, p1, Lcom/narvii/model/User;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object p1, v2

    :cond_0
    check-cast p1, Lcom/narvii/model/User;

    invoke-virtual {v0, p1}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->setUser(Lcom/narvii/model/User;)V

    .line 684
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$sendGlobalProfileRequest$1;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    invoke-virtual {p1}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->updateViews()V

    .line 685
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$sendGlobalProfileRequest$1;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    invoke-virtual {p1}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->getProfileView()Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$sendGlobalProfileRequest$1;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    invoke-static {v0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->access$getContentView$p(Lcom/narvii/master/home/profile/GlobalProfileFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->updateTooltipHints(Landroid/view/View;)V

    .line 687
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$sendGlobalProfileRequest$1;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    invoke-virtual {p1}, Lcom/narvii/nested/CoordinateTabFragment;->getPagerAdapter()Lcom/narvii/app/NVScrollablePagerAdapter;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$sendGlobalProfileRequest$1;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    invoke-static {v0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->access$getCommentTabIndex$p(Lcom/narvii/master/home/profile/GlobalProfileFragment;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/narvii/app/NVScrollablePagerAdapter;->getFragmentAt(I)Landroid/support/v4/app/Fragment;

    move-result-object v2

    .line 688
    :cond_1
    instance-of p1, v2, Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;

    if-eqz p1, :cond_2

    .line 689
    check-cast v2, Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;

    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$sendGlobalProfileRequest$1;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    invoke-virtual {p1}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->getUser()Lcom/narvii/model/User;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;->updateUser(Lcom/narvii/model/User;)V

    :cond_2
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 78
    check-cast p1, Lcom/narvii/util/RequestResult;

    invoke-virtual {p0, p1}, Lcom/narvii/master/home/profile/GlobalProfileFragment$sendGlobalProfileRequest$1;->call(Lcom/narvii/util/RequestResult;)V

    return-void
.end method
