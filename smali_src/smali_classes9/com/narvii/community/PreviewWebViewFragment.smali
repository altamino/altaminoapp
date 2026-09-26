.class public Lcom/narvii/community/PreviewWebViewFragment;
.super Lcom/narvii/webview/WebViewFragment;
.source "SourceFile"


# instance fields
.field private isJoined:Z

.field joinCommunityProgressLayout:Lcom/narvii/widget/JoinCommunityProgressLayout;

.field tvJoin:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/webview/WebViewFragment;-><init>()V

    .line 4
    return-void
.end method

.method private enterCommunity()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/community/PreviewWebViewFragment;->tvJoin:Landroid/widget/TextView;

    .line 3
    .line 4
    .line 5
    const v1, 0x7f120461

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    const-string v1, "affiliations"

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    check-cast v0, Lcom/narvii/community/AffiliationsService;

    .line 21
    .line 22
    const-string v1, "communityId"

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 26
    move-result v1

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lcom/narvii/community/AffiliationsService;->opAdd(I)V

    .line 30
    const/4 v0, -0x1

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setResult(I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    .line 43
    const v1, 0x7f010037

    .line 44
    .line 45
    .line 46
    const v2, 0x7f010038

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 50
    return-void
.end method

.method public static safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Landroidx/fragment/app/Fragment;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static bridge synthetic v(Lcom/narvii/community/PreviewWebViewFragment;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/narvii/community/PreviewWebViewFragment;->isJoined:Z

    return-void
.end method

.method static bridge synthetic w(Lcom/narvii/community/PreviewWebViewFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/community/PreviewWebViewFragment;->enterCommunity()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/webview/WebViewFragment;->onClick(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 7
    move-result p1

    .line 8
    .line 9
    .line 10
    const v0, 0x7f0a078a

    .line 11
    .line 12
    if-ne p1, v0, :cond_1

    .line 13
    .line 14
    const-string p1, "joinType"

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 18
    move-result p1

    .line 19
    .line 20
    if-nez p1, :cond_0

    .line 21
    .line 22
    new-instance p1, Landroid/content/Intent;

    .line 23
    .line 24
    const-string v0, "join"

    .line 25
    .line 26
    .line 27
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->ensureLogin(Landroid/content/Intent;)V

    .line 31
    goto :goto_0

    .line 32
    .line 33
    :cond_0
    const-class p1, Lcom/narvii/master/CommunityDetailFragment;

    .line 34
    .line 35
    .line 36
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    const-string v0, "communityId"

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 43
    move-result v0

    .line 44
    .line 45
    const-string v1, "id"

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 49
    .line 50
    .line 51
    invoke-static {p0, p1}, Lcom/narvii/community/PreviewWebViewFragment;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    .line 52
    :cond_1
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/webview/WebViewFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    .line 3
    const p3, 0x7f0d0670

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method protected onLoginResult(ZLandroid/content/Intent;)V
    .locals 4

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    const-string v0, "join"

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/narvii/community/PreviewWebViewFragment;->joinCommunityProgressLayout:Lcom/narvii/widget/JoinCommunityProgressLayout;

    .line 17
    const/4 v1, 0x1

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/narvii/widget/PushButton;->setForcePressed(Z)V

    .line 21
    .line 22
    iget-object v0, p0, Lcom/narvii/community/PreviewWebViewFragment;->joinCommunityProgressLayout:Lcom/narvii/widget/JoinCommunityProgressLayout;

    .line 23
    .line 24
    const/16 v1, 0x28

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lcom/narvii/widget/JoinCommunityProgressLayout;->setProgress(I)V

    .line 28
    .line 29
    .line 30
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    const-string v1, "communityId"

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 41
    move-result v1

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    const-string v1, "/community/join"

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 51
    move-result-object v0

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 55
    move-result-object v0

    .line 56
    .line 57
    const-string v1, "api"

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 61
    move-result-object v1

    .line 62
    .line 63
    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 64
    .line 65
    new-instance v2, Lcom/narvii/community/PreviewWebViewFragment$1;

    .line 66
    .line 67
    const-class v3, Lcom/narvii/model/api/UserResponse;

    .line 68
    .line 69
    .line 70
    invoke-direct {v2, p0, v3}, Lcom/narvii/community/PreviewWebViewFragment$1;-><init>(Lcom/narvii/community/PreviewWebViewFragment;Ljava/lang/Class;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 74
    .line 75
    .line 76
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onLoginResult(ZLandroid/content/Intent;)V

    .line 77
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/webview/WebViewFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const p2, 0x7f0a078a

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object p2

    .line 11
    .line 12
    check-cast p2, Lcom/narvii/widget/JoinCommunityProgressLayout;

    .line 13
    .line 14
    iput-object p2, p0, Lcom/narvii/community/PreviewWebViewFragment;->joinCommunityProgressLayout:Lcom/narvii/widget/JoinCommunityProgressLayout;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    .line 19
    .line 20
    const p2, 0x7f0a0788

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    check-cast p1, Landroid/widget/TextView;

    .line 27
    .line 28
    iput-object p1, p0, Lcom/narvii/community/PreviewWebViewFragment;->tvJoin:Landroid/widget/TextView;

    .line 29
    const/4 p1, 0x1

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, p1}, Lcom/narvii/webview/WebViewFragment;->hideToolbar(Z)V

    .line 33
    return-void
.end method

.method protected startActivityFromWebView(Landroid/content/Intent;)V
    .locals 2

    .line 1
    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    const-string v1, "pabkitapp"

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    move-result v0

    .line 19
    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    const-string v0, "aminoapp"

    .line 27
    .line 28
    .line 29
    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 30
    move-result p1

    .line 31
    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    :cond_0
    new-instance p1, Landroid/view/View;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    .line 41
    invoke-direct {p1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 42
    .line 43
    .line 44
    const v0, 0x7f0a078a

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, p1}, Lcom/narvii/community/PreviewWebViewFragment;->onClick(Landroid/view/View;)V

    .line 51
    :cond_1
    return-void
.end method
