.class public abstract Lcom/narvii/master/explorer/CommunityListAdapter;
.super Lcom/narvii/community/BaseCommunityListAdapter;
.source "CommunityListAdapter.java"


# instance fields
.field categoryName:Ljava/lang/String;

.field public loggingOrigin:Lcom/narvii/util/logging/LoggingOrigin;

.field public source:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/narvii/community/BaseCommunityListAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method communityDetail(Lcom/narvii/model/Community;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 42
    iget v0, p1, Lcom/narvii/model/Community;->id:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 45
    :cond_0
    new-instance v0, Lcom/narvii/master/CommunityHelper;

    iget-object v1, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    invoke-direct {v0, v1}, Lcom/narvii/master/CommunityHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iget-object v1, p0, Lcom/narvii/master/explorer/CommunityListAdapter;->source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/narvii/master/CommunityHelper;->source(Ljava/lang/String;)Lcom/narvii/master/CommunityHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/master/explorer/CommunityListAdapter;->loggingOrigin:Lcom/narvii/util/logging/LoggingOrigin;

    invoke-virtual {v0, v1}, Lcom/narvii/master/CommunityHelper;->eventOrigin(Lcom/narvii/util/logging/LoggingOrigin;)Lcom/narvii/master/CommunityHelper;

    move-result-object v0

    .line 46
    invoke-virtual {v0, p1}, Lcom/narvii/master/CommunityHelper;->communityDetail(Lcom/narvii/model/Community;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected completeBuilder(Lcom/narvii/logging/LogEvent$Builder;)V
    .locals 0

    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .line 28
    instance-of v0, p3, Lcom/narvii/model/Community;

    if-eqz v0, :cond_0

    .line 29
    move-object v0, p3

    check-cast v0, Lcom/narvii/model/Community;

    invoke-virtual {p0, v0}, Lcom/narvii/master/explorer/CommunityListAdapter;->communityDetail(Lcom/narvii/model/Community;)V

    .line 30
    sget-object v0, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {p0, p3, v0}, Lcom/narvii/list/NVAdapter;->getClickEventBuilder(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    .line 31
    invoke-virtual {p0, v0}, Lcom/narvii/master/explorer/CommunityListAdapter;->completeBuilder(Lcom/narvii/logging/LogEvent$Builder;)V

    .line 32
    invoke-virtual {v0}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 34
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVPagedAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
