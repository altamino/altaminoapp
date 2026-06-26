.class public Lcom/narvii/community/PreviewWebViewFragment;
.super Lcom/narvii/webview/WebViewFragment;
.source "PreviewWebViewFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private isJoined:Z

.field joinCommunityProgressLayout:Lcom/narvii/widget/JoinCommunityProgressLayout;

.field tvJoin:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/narvii/webview/WebViewFragment;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/narvii/community/PreviewWebViewFragment;Z)Z
    .locals 0

    .line 35
    iput-boolean p1, p0, Lcom/narvii/community/PreviewWebViewFragment;->isJoined:Z

    return p1
.end method

.method static synthetic access$100(Lcom/narvii/community/PreviewWebViewFragment;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/narvii/community/PreviewWebViewFragment;->enterCommunity()V

    return-void
.end method

.method private enterCommunity()V
    .locals 3

    .line 112
    iget-object v0, p0, Lcom/narvii/community/PreviewWebViewFragment;->tvJoin:Landroid/widget/TextView;

    const v1, 0x7f0f03f5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 113
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v0

    const-string v1, "affiliations"

    invoke-virtual {v0, v1}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/community/AffiliationsService;

    const-string v1, "communityId"

    .line 114
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/narvii/community/AffiliationsService;->opAdd(I)V

    const/4 v0, -0x1

    .line 115
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setResult(I)V

    .line 116
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 117
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f010029

    const v2, 0x7f01002a

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 63
    invoke-super {p0, p1}, Lcom/narvii/webview/WebViewFragment;->onClick(Landroid/view/View;)V

    .line 64
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f09060c

    if-ne p1, v0, :cond_1

    const-string p1, "joinType"

    .line 65
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    .line 66
    new-instance p1, Landroid/content/Intent;

    const-string v0, "join"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->ensureLogin(Landroid/content/Intent;)V

    goto :goto_0

    .line 68
    :cond_0
    const-class p1, Lcom/narvii/master/CommunityDetailFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "communityId"

    .line 69
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result v0

    const-string v1, "id"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 70
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 44
    invoke-super {p0, p1}, Lcom/narvii/webview/WebViewFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b05b9

    const/4 v0, 0x0

    .line 49
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected onLoginResult(ZLandroid/content/Intent;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 77
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "join"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/narvii/community/PreviewWebViewFragment;->joinCommunityProgressLayout:Lcom/narvii/widget/JoinCommunityProgressLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/narvii/widget/PushButton;->setForcePressed(Z)V

    .line 79
    iget-object v0, p0, Lcom/narvii/community/PreviewWebViewFragment;->joinCommunityProgressLayout:Lcom/narvii/widget/JoinCommunityProgressLayout;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Lcom/narvii/widget/JoinCommunityProgressLayout;->setProgress(I)V

    .line 80
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const-string v1, "communityId"

    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const-string v1, "/community/join"

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    const-string v1, "api"

    .line 81
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 82
    new-instance v2, Lcom/narvii/community/PreviewWebViewFragment$1;

    const-class v3, Lcom/narvii/model/api/UserResponse;

    invoke-direct {v2, p0, v3}, Lcom/narvii/community/PreviewWebViewFragment$1;-><init>(Lcom/narvii/community/PreviewWebViewFragment;Ljava/lang/Class;)V

    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 108
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onLoginResult(ZLandroid/content/Intent;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 54
    invoke-super {p0, p1, p2}, Lcom/narvii/webview/WebViewFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f09060c

    .line 55
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/JoinCommunityProgressLayout;

    iput-object p2, p0, Lcom/narvii/community/PreviewWebViewFragment;->joinCommunityProgressLayout:Lcom/narvii/widget/JoinCommunityProgressLayout;

    .line 56
    iget-object p2, p0, Lcom/narvii/community/PreviewWebViewFragment;->joinCommunityProgressLayout:Lcom/narvii/widget/JoinCommunityProgressLayout;

    invoke-virtual {p2, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f09060a

    .line 57
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/narvii/community/PreviewWebViewFragment;->tvJoin:Landroid/widget/TextView;

    const/4 p1, 0x1

    .line 58
    invoke-virtual {p0, p1}, Lcom/narvii/webview/WebViewFragment;->hideToolbar(Z)V

    return-void
.end method

.method protected startActivityFromWebView(Landroid/content/Intent;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 124
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 125
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pebkitapp"

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    const-string v0, "narviiapp"

    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 127
    :cond_0
    new-instance p1, Landroid/view/View;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const v0, 0x7f09060c

    .line 128
    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    .line 129
    invoke-virtual {p0, p1}, Lcom/narvii/community/PreviewWebViewFragment;->onClick(Landroid/view/View;)V

    :cond_1
    return-void
.end method
