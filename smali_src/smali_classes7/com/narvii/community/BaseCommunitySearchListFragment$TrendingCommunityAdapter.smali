.class public Lcom/narvii/community/BaseCommunitySearchListFragment$TrendingCommunityAdapter;
.super Lcom/narvii/community/CommunityListWithSectionAdapter;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/community/BaseCommunitySearchListFragment$TrendingCommunityAdapter;->this$0:Lcom/narvii/community/BaseCommunitySearchListFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/community/CommunityListWithSectionAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    const/4 v0, 0x1

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Lcom/narvii/community/BaseCommunitySearchListFragment;->access$000(Lcom/narvii/community/BaseCommunitySearchListFragment;)I

    .line 10
    move-result p1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0, p1}, Lcom/narvii/list/NVAdapter;->setDarkTheme(ZI)V

    .line 14
    return-void
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 2

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/community/BaseCommunitySearchListFragment$TrendingCommunityAdapter;->this$0:Lcom/narvii/community/BaseCommunitySearchListFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/community/BaseCommunitySearchListFragment;->access$500(Lcom/narvii/community/BaseCommunitySearchListFragment;)Z

    .line 6
    move-result p1

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    const/4 p1, 0x0

    .line 10
    return-object p1

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    const-string v0, "/community/trending"

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 24
    .line 25
    iget-object v0, p0, Lcom/narvii/community/BaseCommunitySearchListFragment$TrendingCommunityAdapter;->this$0:Lcom/narvii/community/BaseCommunitySearchListFragment;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/narvii/community/BaseCommunitySearchListFragment;->getCurSearchLanguage()Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    const-string v1, "language"

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 38
    move-result-object p1

    .line 39
    return-object p1
.end method

.method public getCount()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/community/BaseCommunitySearchListFragment$TrendingCommunityAdapter;->this$0:Lcom/narvii/community/BaseCommunitySearchListFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/community/BaseCommunitySearchListFragment;->access$300(Lcom/narvii/community/BaseCommunitySearchListFragment;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/community/BaseCommunitySearchListFragment$TrendingCommunityAdapter;->this$0:Lcom/narvii/community/BaseCommunitySearchListFragment;

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/narvii/community/BaseCommunitySearchListFragment;->access$400(Lcom/narvii/community/BaseCommunitySearchListFragment;)Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    move-result v0

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    .line 23
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->getCount()I

    .line 24
    move-result v0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    :goto_0
    return v0
.end method

.method protected getSearchLanguage()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/community/BaseCommunitySearchListFragment$TrendingCommunityAdapter;->this$0:Lcom/narvii/community/BaseCommunitySearchListFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/community/BaseCommunitySearchListFragment;->getCurSearchLanguage()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method protected isDarkTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/community/BaseCommunitySearchListFragment$TrendingCommunityAdapter;->this$0:Lcom/narvii/community/BaseCommunitySearchListFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/community/BaseCommunitySearchListFragment;->access$200(Lcom/narvii/community/BaseCommunitySearchListFragment;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    const/4 v0, 0x0

    .line 10
    return v0

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->isEmpty()Z

    .line 14
    move-result v0

    .line 15
    return v0
.end method

.method public isListShown()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/community/BaseCommunitySearchListFragment$TrendingCommunityAdapter;->this$0:Lcom/narvii/community/BaseCommunitySearchListFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/community/BaseCommunitySearchListFragment;->access$100(Lcom/narvii/community/BaseCommunitySearchListFragment;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    const/4 v0, 0x1

    .line 10
    return v0

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->isListShown()Z

    .line 14
    move-result v0

    .line 15
    return v0
.end method

.method protected sectionName()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/community/BaseCommunitySearchListFragment$TrendingCommunityAdapter;->this$0:Lcom/narvii/community/BaseCommunitySearchListFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/community/BaseCommunitySearchListFragment$TrendingCommunityAdapter;->this$0:Lcom/narvii/community/BaseCommunitySearchListFragment;

    .line 11
    .line 12
    sget v1, Lcom/narvii/lib/R$string;->trending:I

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    goto :goto_0

    .line 18
    .line 19
    :cond_0
    const-string v0, ""

    .line 20
    :goto_0
    return-object v0
.end method
