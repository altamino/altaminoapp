.class public abstract Lcom/narvii/master/explorer/CommunityListAdapter;
.super Lcom/narvii/community/BaseCommunityListAdapter;
.source "SourceFile"


# instance fields
.field categoryName:Ljava/lang/String;

.field public loggingOrigin:Lcom/narvii/util/logging/LoggingOrigin;

.field public source:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/community/BaseCommunityListAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 4
    return-void
.end method


# virtual methods
.method communityDetail(Lcom/narvii/model/Community;)V
    .locals 2

    .line 1
    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    iget v0, p1, Lcom/narvii/model/Community;->id:I

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    goto :goto_0

    .line 8
    .line 9
    :cond_0
    new-instance v0, Lcom/narvii/master/CommunityHelper;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, v1}, Lcom/narvii/master/CommunityHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 15
    .line 16
    iget-object v1, p0, Lcom/narvii/master/explorer/CommunityListAdapter;->source:Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/narvii/master/CommunityHelper;->source(Ljava/lang/String;)Lcom/narvii/master/CommunityHelper;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    iget-object v1, p0, Lcom/narvii/master/explorer/CommunityListAdapter;->loggingOrigin:Lcom/narvii/util/logging/LoggingOrigin;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lcom/narvii/master/CommunityHelper;->eventOrigin(Lcom/narvii/util/logging/LoggingOrigin;)Lcom/narvii/master/CommunityHelper;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p1}, Lcom/narvii/master/CommunityHelper;->communityDetail(Lcom/narvii/model/Community;)V

    .line 30
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

    .line 1
    .line 2
    instance-of v0, p3, Lcom/narvii/model/Community;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    move-object v0, p3

    .line 6
    .line 7
    check-cast v0, Lcom/narvii/model/Community;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/narvii/master/explorer/CommunityListAdapter;->communityDetail(Lcom/narvii/model/Community;)V

    .line 11
    .line 12
    sget-object v0, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p3, v0}, Lcom/narvii/list/NVAdapter;->getClickEventBuilder(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0}, Lcom/narvii/master/explorer/CommunityListAdapter;->completeBuilder(Lcom/narvii/logging/LogEvent$Builder;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVPagedAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 26
    move-result p1

    .line 27
    return p1
.end method
