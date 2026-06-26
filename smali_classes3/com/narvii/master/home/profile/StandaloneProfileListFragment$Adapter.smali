.class Lcom/narvii/master/home/profile/StandaloneProfileListFragment$Adapter;
.super Lcom/narvii/list/AdriftAdapter;
.source "StandaloneProfileListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/home/profile/StandaloneProfileListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Adapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/home/profile/StandaloneProfileListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/master/home/profile/StandaloneProfileListFragment;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/narvii/master/home/profile/StandaloneProfileListFragment$Adapter;->this$0:Lcom/narvii/master/home/profile/StandaloneProfileListFragment;

    .line 73
    invoke-direct {p0, p1}, Lcom/narvii/list/AdriftAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    const p1, 0x7f0b0419

    .line 78
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    .line 79
    new-instance p2, Lcom/narvii/util/PackageUtils;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2}, Lcom/narvii/util/PackageUtils;->getCommunityIdFromPackageName()I

    move-result p2

    const-string p3, "community"

    .line 80
    invoke-virtual {p0, p3}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/narvii/community/CommunityService;

    .line 81
    invoke-virtual {p3, p2}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    move-result-object p2

    if-eqz p2, :cond_0

    const p3, 0x7f0902a3

    .line 83
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/widget/CommunityIconView;

    .line 84
    iget-object v0, p2, Lcom/narvii/model/Community;->icon:Ljava/lang/String;

    invoke-virtual {p3, v0}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    const p3, 0x7f0902b6

    .line 86
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 87
    iget-object p2, p2, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    :cond_0
    iget-object p2, p0, Lcom/narvii/master/home/profile/StandaloneProfileListFragment$Adapter;->this$0:Lcom/narvii/master/home/profile/StandaloneProfileListFragment;

    invoke-static {p2}, Lcom/narvii/master/home/profile/StandaloneProfileListFragment;->access$000(Lcom/narvii/master/home/profile/StandaloneProfileListFragment;)Lcom/narvii/account/AccountService;

    move-result-object p2

    invoke-virtual {p2}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 91
    iget-object p2, p0, Lcom/narvii/master/home/profile/StandaloneProfileListFragment$Adapter;->this$0:Lcom/narvii/master/home/profile/StandaloneProfileListFragment;

    invoke-static {p2}, Lcom/narvii/master/home/profile/StandaloneProfileListFragment;->access$000(Lcom/narvii/master/home/profile/StandaloneProfileListFragment;)Lcom/narvii/account/AccountService;

    move-result-object p2

    invoke-virtual {p2}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object p2

    const p3, 0x7f090764

    .line 92
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/widget/NicknameView;

    .line 93
    invoke-virtual {p3, p2}, Lcom/narvii/widget/NicknameView;->setUser(Lcom/narvii/model/User;)V

    const p3, 0x7f090c10

    .line 95
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/widget/UserAvatarLayout;

    const/4 v0, 0x1

    .line 96
    invoke-virtual {p3, v0}, Lcom/narvii/widget/UserAvatarLayout;->markAvatarFrameHide(Z)V

    .line 97
    invoke-virtual {p3, p2}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    :cond_1
    const p2, 0x7f0903bb

    .line 100
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 5

    if-eqz p5, :cond_1

    .line 107
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0903bb

    if-ne v0, v1, :cond_1

    .line 108
    iget-object v0, p0, Lcom/narvii/master/home/profile/StandaloneProfileListFragment$Adapter;->this$0:Lcom/narvii/master/home/profile/StandaloneProfileListFragment;

    invoke-static {v0}, Lcom/narvii/master/home/profile/StandaloneProfileListFragment;->access$000(Lcom/narvii/master/home/profile/StandaloneProfileListFragment;)Lcom/narvii/account/AccountService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 112
    :cond_0
    new-instance v1, Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 113
    invoke-virtual {v1}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 114
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/user-profile/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    const-string v2, "api"

    .line 115
    invoke-virtual {p0, v2}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/util/http/ApiService;

    .line 116
    new-instance v3, Lcom/narvii/master/home/profile/StandaloneProfileListFragment$Adapter$1;

    const-class v4, Lcom/narvii/model/api/UserResponse;

    invoke-direct {v3, p0, v4, v1}, Lcom/narvii/master/home/profile/StandaloneProfileListFragment$Adapter$1;-><init>(Lcom/narvii/master/home/profile/StandaloneProfileListFragment$Adapter;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;)V

    invoke-virtual {v2, v0, v3}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 138
    :cond_1
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
