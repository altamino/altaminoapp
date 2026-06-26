.class public Lcom/narvii/community/BaseCommunitySearchListFragment$TrendingCommunityAdapter;
.super Lcom/narvii/community/CommunityListWithSectionAdapter;
.source "BaseCommunitySearchListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/community/BaseCommunitySearchListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "TrendingCommunityAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/community/BaseCommunitySearchListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/community/BaseCommunitySearchListFragment;)V
    .locals 1

    .line 57
    iput-object p1, p0, Lcom/narvii/community/BaseCommunitySearchListFragment$TrendingCommunityAdapter;->this$0:Lcom/narvii/community/BaseCommunitySearchListFragment;

    .line 58
    invoke-direct {p0, p1}, Lcom/narvii/community/CommunityListWithSectionAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 59
    invoke-static {p1}, Lcom/narvii/community/BaseCommunitySearchListFragment;->access$000(Lcom/narvii/community/BaseCommunitySearchListFragment;)I

    move-result p1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/narvii/list/NVAdapter;->setDarkTheme(ZI)V

    return-void
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 2

    .line 101
    iget-object p1, p0, Lcom/narvii/community/BaseCommunitySearchListFragment$TrendingCommunityAdapter;->this$0:Lcom/narvii/community/BaseCommunitySearchListFragment;

    invoke-static {p1}, Lcom/narvii/community/BaseCommunitySearchListFragment;->access$500(Lcom/narvii/community/BaseCommunitySearchListFragment;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 104
    :cond_0
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    const-string v0, "/community/trending"

    .line 105
    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 106
    iget-object v0, p0, Lcom/narvii/community/BaseCommunitySearchListFragment$TrendingCommunityAdapter;->this$0:Lcom/narvii/community/BaseCommunitySearchListFragment;

    invoke-virtual {v0}, Lcom/narvii/community/BaseCommunitySearchListFragment;->getCurSearchLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "language"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 107
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    return-object p1
.end method

.method public getCount()I
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/narvii/community/BaseCommunitySearchListFragment$TrendingCommunityAdapter;->this$0:Lcom/narvii/community/BaseCommunitySearchListFragment;

    invoke-static {v0}, Lcom/narvii/community/BaseCommunitySearchListFragment;->access$300(Lcom/narvii/community/BaseCommunitySearchListFragment;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/community/BaseCommunitySearchListFragment$TrendingCommunityAdapter;->this$0:Lcom/narvii/community/BaseCommunitySearchListFragment;

    invoke-static {v0}, Lcom/narvii/community/BaseCommunitySearchListFragment;->access$400(Lcom/narvii/community/BaseCommunitySearchListFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 96
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->getCount()I

    move-result v1

    :cond_1
    return v1
.end method

.method protected getSearchLanguage()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/narvii/community/BaseCommunitySearchListFragment$TrendingCommunityAdapter;->this$0:Lcom/narvii/community/BaseCommunitySearchListFragment;

    invoke-virtual {v0}, Lcom/narvii/community/BaseCommunitySearchListFragment;->getCurSearchLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected isDarkTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/narvii/community/BaseCommunitySearchListFragment$TrendingCommunityAdapter;->this$0:Lcom/narvii/community/BaseCommunitySearchListFragment;

    invoke-static {v0}, Lcom/narvii/community/BaseCommunitySearchListFragment;->access$200(Lcom/narvii/community/BaseCommunitySearchListFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 90
    :cond_0
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isListShown()Z
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/narvii/community/BaseCommunitySearchListFragment$TrendingCommunityAdapter;->this$0:Lcom/narvii/community/BaseCommunitySearchListFragment;

    invoke-static {v0}, Lcom/narvii/community/BaseCommunitySearchListFragment;->access$100(Lcom/narvii/community/BaseCommunitySearchListFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 82
    :cond_0
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->isListShown()Z

    move-result v0

    return v0
.end method

.method protected sectionName()Ljava/lang/String;
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/narvii/community/BaseCommunitySearchListFragment$TrendingCommunityAdapter;->this$0:Lcom/narvii/community/BaseCommunitySearchListFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/community/BaseCommunitySearchListFragment$TrendingCommunityAdapter;->this$0:Lcom/narvii/community/BaseCommunitySearchListFragment;

    sget v1, Lcom/narvii/lib/R$string;->trending:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method
