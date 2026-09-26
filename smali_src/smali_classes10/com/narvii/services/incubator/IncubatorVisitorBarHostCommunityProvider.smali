.class public final Lcom/narvii/services/incubator/IncubatorVisitorBarHostCommunityProvider;
.super Lcom/narvii/services/util/HostCommunityProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/services/util/HostCommunityProvider<",
        "Lcom/narvii/community/VisitorBarHost;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/services/util/HostCommunityProvider;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method protected createProxyHost(Landroid/content/Context;)Lcom/narvii/community/VisitorBarHost;
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d0793

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type com.narvii.community.VisitorBarHost"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/community/VisitorBarHost;

    return-object p1
.end method

.method public bridge synthetic createProxyHost(Landroid/content/Context;)Lcom/narvii/widget/ProxyViewHost;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/narvii/services/incubator/IncubatorVisitorBarHostCommunityProvider;->createProxyHost(Landroid/content/Context;)Lcom/narvii/community/VisitorBarHost;

    move-result-object p1

    return-object p1
.end method

.method public start(Lcom/narvii/app/NVContext;Lcom/narvii/community/VisitorBarHost;)V
    .locals 0
    .param p1    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/community/VisitorBarHost;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/services/util/HostCommunityProvider;->start(Lcom/narvii/app/NVContext;Lcom/narvii/widget/ProxyViewHost;)V

    if-eqz p2, :cond_0

    .line 4
    invoke-virtual {p2}, Lcom/narvii/community/VisitorBarHost;->start()V

    :cond_0
    return-void
.end method

.method public bridge synthetic start(Lcom/narvii/app/NVContext;Lcom/narvii/widget/ProxyViewHost;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/community/VisitorBarHost;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/incubator/IncubatorVisitorBarHostCommunityProvider;->start(Lcom/narvii/app/NVContext;Lcom/narvii/community/VisitorBarHost;)V

    return-void
.end method

.method public bridge synthetic start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p2, Lcom/narvii/community/VisitorBarHost;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/incubator/IncubatorVisitorBarHostCommunityProvider;->start(Lcom/narvii/app/NVContext;Lcom/narvii/community/VisitorBarHost;)V

    return-void
.end method

.method public stop(Lcom/narvii/app/NVContext;Lcom/narvii/community/VisitorBarHost;)V
    .locals 0
    .param p1    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/community/VisitorBarHost;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/services/util/HostCommunityProvider;->stop(Lcom/narvii/app/NVContext;Lcom/narvii/widget/ProxyViewHost;)V

    if-eqz p2, :cond_0

    .line 4
    invoke-virtual {p2}, Lcom/narvii/community/VisitorBarHost;->stop()V

    :cond_0
    return-void
.end method

.method public bridge synthetic stop(Lcom/narvii/app/NVContext;Lcom/narvii/widget/ProxyViewHost;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/community/VisitorBarHost;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/incubator/IncubatorVisitorBarHostCommunityProvider;->stop(Lcom/narvii/app/NVContext;Lcom/narvii/community/VisitorBarHost;)V

    return-void
.end method

.method public bridge synthetic stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p2, Lcom/narvii/community/VisitorBarHost;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/incubator/IncubatorVisitorBarHostCommunityProvider;->stop(Lcom/narvii/app/NVContext;Lcom/narvii/community/VisitorBarHost;)V

    return-void
.end method
