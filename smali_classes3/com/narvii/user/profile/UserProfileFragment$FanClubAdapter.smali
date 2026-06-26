.class Lcom/narvii/user/profile/UserProfileFragment$FanClubAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "UserProfileFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/user/profile/UserProfileFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FanClubAdapter"
.end annotation


# instance fields
.field private info:Lcom/narvii/influencer/FanClub;

.field isMeOrFan:Z

.field request:Lcom/narvii/util/http/ApiRequest;

.field final synthetic this$0:Lcom/narvii/user/profile/UserProfileFragment;

.field userList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/model/User;",
            ">;"
        }
    .end annotation
.end field

.field userListError:Ljava/lang/String;

.field private final userListListener:Lcom/narvii/util/http/ApiResponseListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/http/ApiResponseListener<",
            "Lcom/narvii/influencer/FansInfoListResponse;",
            ">;"
        }
    .end annotation
.end field

.field userListResponse:Lcom/narvii/influencer/FansInfoListResponse;


# direct methods
.method public constructor <init>(Lcom/narvii/user/profile/UserProfileFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 2783
    iput-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$FanClubAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 2784
    invoke-direct {p0, p2}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 2731
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$FanClubAdapter;->userList:Ljava/util/ArrayList;

    .line 2736
    new-instance p1, Lcom/narvii/user/profile/UserProfileFragment$FanClubAdapter$1;

    const-class p2, Lcom/narvii/influencer/FansInfoListResponse;

    invoke-direct {p1, p0, p2}, Lcom/narvii/user/profile/UserProfileFragment$FanClubAdapter$1;-><init>(Lcom/narvii/user/profile/UserProfileFragment$FanClubAdapter;Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$FanClubAdapter;->userListListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 2785
    invoke-direct {p0}, Lcom/narvii/user/profile/UserProfileFragment$FanClubAdapter;->isMeOrFan()Z

    move-result p1

    iput-boolean p1, p0, Lcom/narvii/user/profile/UserProfileFragment$FanClubAdapter;->isMeOrFan:Z

    return-void
.end method

.method private isMeOrFan()Z
    .locals 3

    .line 2801
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$FanClubAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    invoke-virtual {v0}, Lcom/narvii/user/profile/UserProfileFragment;->isMe()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2804
    :cond_0
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$FanClubAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    invoke-static {v0}, Lcom/narvii/user/profile/UserProfileFragment;->access$200(Lcom/narvii/user/profile/UserProfileFragment;)Lcom/narvii/account/AccountService;

    move-result-object v0

    iget-object v2, p0, Lcom/narvii/user/profile/UserProfileFragment$FanClubAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    invoke-virtual {v2}, Lcom/narvii/detail/DetailFragment;->id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/narvii/account/AccountService;->getFanClub(Ljava/lang/String;)Lcom/narvii/influencer/FanClub;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$FanClubAdapter;->info:Lcom/narvii/influencer/FanClub;

    .line 2805
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$FanClubAdapter;->info:Lcom/narvii/influencer/FanClub;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/narvii/influencer/FanClub;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .line 2790
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$FanClubAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    iget-object v0, v0, Lcom/narvii/user/profile/UserProfileFragment;->bioAdapter:Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2793
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/User;

    if-eqz v0, :cond_2

    .line 2794
    invoke-virtual {v0}, Lcom/narvii/model/User;->isInfluencer()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .line 2827
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$FanClubAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    iget-object p1, p1, Lcom/narvii/user/profile/UserProfileFragment;->bioAdapter:Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;

    invoke-virtual {p1}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/User;

    iget-object p1, p1, Lcom/narvii/model/User;->influencerInfo:Lcom/narvii/model/InfluencerInfo;

    const v0, 0x7f0b06c7

    .line 2828
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f09059a

    .line 2829
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    .line 2830
    iget-boolean v0, p0, Lcom/narvii/user/profile/UserProfileFragment$FanClubAdapter;->isMeOrFan:Z

    invoke-static {p3, v0}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    const v0, 0x7f0906e2

    .line 2831
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/livelayer/LiveLayerOnlineBar;

    const/4 v0, 0x0

    .line 2832
    invoke-virtual {p3, v0}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->setShouldFilterUserList(Z)V

    const/4 v1, 0x1

    .line 2833
    invoke-virtual {p3, v1}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->setForceHideOnlineTextLayout(Z)V

    .line 2834
    iget-object v2, p0, Lcom/narvii/user/profile/UserProfileFragment$FanClubAdapter;->userList:Ljava/util/ArrayList;

    iget v3, p1, Lcom/narvii/model/InfluencerInfo;->fansCount:I

    invoke-virtual {p3, v2, v3}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->setUserList(Ljava/util/List;I)V

    const p3, 0x7f090122

    .line 2836
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 2837
    iget-object v2, p0, Lcom/narvii/user/profile/UserProfileFragment$FanClubAdapter;->info:Lcom/narvii/influencer/FanClub;

    if-eqz v2, :cond_1

    .line 2838
    invoke-virtual {v2}, Lcom/narvii/influencer/FanClub;->hasSubscriptionBefore()Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f0f0ed4

    goto :goto_0

    :cond_0
    const v2, 0x7f0f0161

    :goto_0
    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    const v2, 0x7f090124

    .line 2840
    iget-boolean v3, p0, Lcom/narvii/user/profile/UserProfileFragment$FanClubAdapter;->isMeOrFan:Z

    xor-int/2addr v3, v1

    invoke-static {p2, v2, v3}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;IZ)V

    .line 2842
    iget-object v2, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2843
    iget-object p3, p0, Lcom/narvii/user/profile/UserProfileFragment$FanClubAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    const v2, 0x7f090bf3

    const v3, -0xb5b5b6

    invoke-static {p3, p2, v2, v3}, Lcom/narvii/user/profile/UserProfileFragment;->access$2400(Lcom/narvii/user/profile/UserProfileFragment;Landroid/view/View;II)V

    const p3, 0x7f090bf4

    .line 2844
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 2845
    iget-object v3, p0, Lcom/narvii/user/profile/UserProfileFragment$FanClubAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    const v4, -0x4c4c4d

    const v5, -0x44000001

    invoke-static {v3, p2, p3, v4, v5}, Lcom/narvii/user/profile/UserProfileFragment;->access$2500(Lcom/narvii/user/profile/UserProfileFragment;Landroid/view/View;III)V

    .line 2846
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p3

    iget v3, p1, Lcom/narvii/model/InfluencerInfo;->fansCount:I

    const v4, 0x7f0f0ccf

    const v5, 0x7f0f0bfc

    invoke-static {p3, v3, v4, v5}, Lcom/narvii/util/text/TextUtils;->getCountText(Landroid/content/Context;III)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2847
    iget p1, p1, Lcom/narvii/model/InfluencerInfo;->fansCount:I

    if-lez p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-static {v2, v1}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    const p1, 0x7f090677

    .line 2848
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 2849
    iget-boolean p3, p0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    if-eqz p3, :cond_3

    const p3, 0x7f06011d

    goto :goto_2

    :cond_3
    const p3, 0x7f06011c

    :goto_2
    invoke-virtual {p1, p3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2851
    iget-boolean p1, p0, Lcom/narvii/user/profile/UserProfileFragment$FanClubAdapter;->isMeOrFan:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$FanClubAdapter;->userListResponse:Lcom/narvii/influencer/FansInfoListResponse;

    if-nez p1, :cond_4

    .line 2852
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$FanClubAdapter;->request:Lcom/narvii/util/http/ApiRequest;

    if-nez p1, :cond_4

    .line 2853
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "influencer/"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/narvii/user/profile/UserProfileFragment$FanClubAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    invoke-virtual {v1}, Lcom/narvii/detail/DetailFragment;->id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/fans"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string v0, "start"

    invoke-virtual {p1, v0, p3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    const/16 p3, 0xa

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string v0, "size"

    invoke-virtual {p1, v0, p3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$FanClubAdapter;->request:Lcom/narvii/util/http/ApiRequest;

    const-string p1, "api"

    .line 2854
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/http/ApiService;

    .line 2855
    iget-object p3, p0, Lcom/narvii/user/profile/UserProfileFragment$FanClubAdapter;->request:Lcom/narvii/util/http/ApiRequest;

    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$FanClubAdapter;->userListListener:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {p1, p3, v0}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    :cond_4
    return-object p2
.end method

.method public onFanClubSubscriptionChanged()V
    .locals 2

    .line 2876
    invoke-direct {p0}, Lcom/narvii/user/profile/UserProfileFragment$FanClubAdapter;->isMeOrFan()Z

    move-result v0

    .line 2877
    iget-boolean v1, p0, Lcom/narvii/user/profile/UserProfileFragment$FanClubAdapter;->isMeOrFan:Z

    if-eq v0, v1, :cond_1

    .line 2878
    iput-boolean v0, p0, Lcom/narvii/user/profile/UserProfileFragment$FanClubAdapter;->isMeOrFan:Z

    .line 2879
    iget-boolean v0, p0, Lcom/narvii/user/profile/UserProfileFragment$FanClubAdapter;->isMeOrFan:Z

    if-eqz v0, :cond_0

    .line 2880
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$FanClubAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    iget-object v1, v0, Lcom/narvii/user/profile/UserProfileFragment;->bioAdapter:Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;

    if-eqz v1, :cond_0

    .line 2881
    invoke-virtual {v0}, Lcom/narvii/user/profile/UserProfileFragment;->isMe()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2882
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$FanClubAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    iget-object v0, v0, Lcom/narvii/user/profile/UserProfileFragment;->bioAdapter:Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;

    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/User;

    if-eqz v0, :cond_0

    .line 2883
    iget-object v0, v0, Lcom/narvii/model/User;->influencerInfo:Lcom/narvii/model/InfluencerInfo;

    if-eqz v0, :cond_0

    .line 2884
    iget v1, v0, Lcom/narvii/model/InfluencerInfo;->fansCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/narvii/model/InfluencerInfo;->fansCount:I

    .line 2889
    :cond_0
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    .line 2863
    iget-boolean p1, p0, Lcom/narvii/user/profile/UserProfileFragment$FanClubAdapter;->isMeOrFan:Z

    const-string p2, "User Profile"

    if-nez p1, :cond_1

    if-nez p5, :cond_0

    goto :goto_0

    .line 2870
    :cond_0
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$FanClubAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    invoke-virtual {p1}, Lcom/narvii/detail/DetailFragment;->id()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/narvii/influencer/FanClubSubscriptionDialog;->showSubscriptionDialog(Lcom/narvii/app/NVContext;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 2864
    :cond_1
    :goto_0
    const-class p1, Lcom/narvii/influencer/FansListFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 2865
    iget-object p3, p0, Lcom/narvii/user/profile/UserProfileFragment$FanClubAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    invoke-virtual {p3}, Lcom/narvii/detail/DetailFragment;->id()Ljava/lang/String;

    move-result-object p3

    const-string p4, "id"

    invoke-virtual {p1, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2866
    iget-object p3, p0, Lcom/narvii/user/profile/UserProfileFragment$FanClubAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    iget-object p3, p3, Lcom/narvii/user/profile/UserProfileFragment;->bioAdapter:Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;

    if-nez p3, :cond_2

    const/4 p3, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {p3}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object p3

    :goto_1
    invoke-static {p3}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "user"

    invoke-virtual {p1, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p3, "Source"

    .line 2867
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2868
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    :goto_2
    const/4 p1, 0x1

    return p1
.end method

.method public refresh(ILcom/narvii/util/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 p1, 0x0

    .line 2820
    iput-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$FanClubAdapter;->userListError:Ljava/lang/String;

    .line 2821
    iput-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$FanClubAdapter;->userListResponse:Lcom/narvii/influencer/FansInfoListResponse;

    .line 2822
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
