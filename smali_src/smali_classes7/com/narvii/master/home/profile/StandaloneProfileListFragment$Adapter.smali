.class Lcom/narvii/master/home/profile/StandaloneProfileListFragment$Adapter;
.super Lcom/narvii/list/AdriftAdapter;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/master/home/profile/StandaloneProfileListFragment$Adapter;->this$0:Lcom/narvii/master/home/profile/StandaloneProfileListFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/list/AdriftAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    .line 3
    const p1, 0x7f0d044f

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    new-instance p2, Lcom/narvii/util/PackageUtils;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 13
    move-result-object p3

    .line 14
    .line 15
    .line 16
    invoke-direct {p2, p3}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2}, Lcom/narvii/util/PackageUtils;->getCommunityIdFromPackageName()I

    .line 20
    move-result p2

    .line 21
    .line 22
    const-string p3, "community"

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, p3}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 26
    move-result-object p3

    .line 27
    .line 28
    check-cast p3, Lcom/narvii/community/CommunityService;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p3, p2}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    .line 32
    move-result-object p2

    .line 33
    .line 34
    if-eqz p2, :cond_0

    .line 35
    .line 36
    .line 37
    const p3, 0x7f0a036b

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 41
    move-result-object p3

    .line 42
    .line 43
    check-cast p3, Lcom/narvii/widget/CommunityIconView;

    .line 44
    .line 45
    iget-object v0, p2, Lcom/narvii/model/Community;->icon:Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p3, v0}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 49
    .line 50
    .line 51
    const p3, 0x7f0a037c

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 55
    move-result-object p3

    .line 56
    .line 57
    check-cast p3, Landroid/widget/TextView;

    .line 58
    .line 59
    iget-object p2, p2, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    .line 64
    :cond_0
    iget-object p2, p0, Lcom/narvii/master/home/profile/StandaloneProfileListFragment$Adapter;->this$0:Lcom/narvii/master/home/profile/StandaloneProfileListFragment;

    .line 65
    .line 66
    .line 67
    invoke-static {p2}, Lcom/narvii/master/home/profile/StandaloneProfileListFragment;->t(Lcom/narvii/master/home/profile/StandaloneProfileListFragment;)Lcom/narvii/account/AccountService;

    .line 68
    move-result-object p2

    .line 69
    .line 70
    .line 71
    invoke-virtual {p2}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 72
    move-result p2

    .line 73
    .line 74
    if-eqz p2, :cond_1

    .line 75
    .line 76
    iget-object p2, p0, Lcom/narvii/master/home/profile/StandaloneProfileListFragment$Adapter;->this$0:Lcom/narvii/master/home/profile/StandaloneProfileListFragment;

    .line 77
    .line 78
    .line 79
    invoke-static {p2}, Lcom/narvii/master/home/profile/StandaloneProfileListFragment;->t(Lcom/narvii/master/home/profile/StandaloneProfileListFragment;)Lcom/narvii/account/AccountService;

    .line 80
    move-result-object p2

    .line 81
    .line 82
    .line 83
    invoke-virtual {p2}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 84
    move-result-object p2

    .line 85
    .line 86
    .line 87
    const p3, 0x7f0a09f9

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 91
    move-result-object p3

    .line 92
    .line 93
    check-cast p3, Lcom/narvii/widget/NicknameView;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p3, p2}, Lcom/narvii/widget/NicknameView;->setUser(Lcom/narvii/model/User;)V

    .line 97
    .line 98
    .line 99
    const p3, 0x7f0a0f36

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 103
    move-result-object p3

    .line 104
    .line 105
    check-cast p3, Lcom/narvii/widget/UserAvatarLayout;

    .line 106
    const/4 v0, 0x1

    .line 107
    .line 108
    .line 109
    invoke-virtual {p3, v0}, Lcom/narvii/widget/UserAvatarLayout;->markAvatarFrameHide(Z)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p3, p2}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    .line 113
    .line 114
    .line 115
    :cond_1
    const p2, 0x7f0a04b2

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 119
    move-result-object p2

    .line 120
    .line 121
    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 122
    .line 123
    .line 124
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    return-object p1
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 5

    .line 1
    .line 2
    if-eqz p5, :cond_1

    .line 3
    .line 4
    .line 5
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    .line 6
    move-result v0

    .line 7
    .line 8
    .line 9
    const v1, 0x7f0a04b2

    .line 10
    .line 11
    if-ne v0, v1, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lcom/narvii/master/home/profile/StandaloneProfileListFragment$Adapter;->this$0:Lcom/narvii/master/home/profile/StandaloneProfileListFragment;

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Lcom/narvii/master/home/profile/StandaloneProfileListFragment;->t(Lcom/narvii/master/home/profile/StandaloneProfileListFragment;)Lcom/narvii/account/AccountService;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    if-nez v0, :cond_0

    .line 24
    const/4 p1, 0x1

    .line 25
    return p1

    .line 26
    .line 27
    :cond_0
    new-instance v1, Lcom/narvii/util/dialog/ProgressDialog;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 31
    move-result-object v2

    .line 32
    .line 33
    .line 34
    invoke-direct {v1, v2}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 38
    .line 39
    .line 40
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 41
    move-result-object v2

    .line 42
    .line 43
    new-instance v3, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    const-string v4, "/user-profile/"

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    .line 55
    move-result-object v0

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    move-result-object v0

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 66
    move-result-object v0

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 70
    move-result-object v0

    .line 71
    .line 72
    const-string v2, "api"

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, v2}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 76
    move-result-object v2

    .line 77
    .line 78
    check-cast v2, Lcom/narvii/util/http/ApiService;

    .line 79
    .line 80
    new-instance v3, Lcom/narvii/master/home/profile/StandaloneProfileListFragment$Adapter$1;

    .line 81
    .line 82
    const-class v4, Lcom/narvii/model/api/UserResponse;

    .line 83
    .line 84
    .line 85
    invoke-direct {v3, p0, v4, v1}, Lcom/narvii/master/home/profile/StandaloneProfileListFragment$Adapter$1;-><init>(Lcom/narvii/master/home/profile/StandaloneProfileListFragment$Adapter;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2, v0, v3}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 89
    .line 90
    .line 91
    :cond_1
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 92
    move-result p1

    .line 93
    return p1
.end method
