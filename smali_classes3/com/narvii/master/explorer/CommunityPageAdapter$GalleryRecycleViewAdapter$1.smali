.class Lcom/narvii/master/explorer/CommunityPageAdapter$GalleryRecycleViewAdapter$1;
.super Ljava/lang/Object;
.source "CommunityPageAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/explorer/CommunityPageAdapter$GalleryRecycleViewAdapter;->onBindViewHolder(Lcom/narvii/master/explorer/CommunityPageAdapter$GalleryViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/master/explorer/CommunityPageAdapter$GalleryRecycleViewAdapter;

.field final synthetic val$c:Lcom/narvii/model/Community;


# direct methods
.method constructor <init>(Lcom/narvii/master/explorer/CommunityPageAdapter$GalleryRecycleViewAdapter;Lcom/narvii/model/Community;)V
    .locals 0

    .line 592
    iput-object p1, p0, Lcom/narvii/master/explorer/CommunityPageAdapter$GalleryRecycleViewAdapter$1;->this$1:Lcom/narvii/master/explorer/CommunityPageAdapter$GalleryRecycleViewAdapter;

    iput-object p2, p0, Lcom/narvii/master/explorer/CommunityPageAdapter$GalleryRecycleViewAdapter$1;->val$c:Lcom/narvii/model/Community;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 595
    iget-object p1, p0, Lcom/narvii/master/explorer/CommunityPageAdapter$GalleryRecycleViewAdapter$1;->this$1:Lcom/narvii/master/explorer/CommunityPageAdapter$GalleryRecycleViewAdapter;

    iget-object p1, p1, Lcom/narvii/master/explorer/CommunityPageAdapter$GalleryRecycleViewAdapter;->this$0:Lcom/narvii/master/explorer/CommunityPageAdapter;

    invoke-static {p1}, Lcom/narvii/logging/LogEvent;->builder(Lcom/narvii/app/NVContext;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/master/explorer/CommunityPageAdapter$GalleryRecycleViewAdapter$1;->this$1:Lcom/narvii/master/explorer/CommunityPageAdapter$GalleryRecycleViewAdapter;

    iget-object v0, v0, Lcom/narvii/master/explorer/CommunityPageAdapter$GalleryRecycleViewAdapter;->this$0:Lcom/narvii/master/explorer/CommunityPageAdapter;

    invoke-virtual {v0}, Lcom/narvii/master/explorer/CommunityPageAdapter;->getAminoListIpc()Lcom/narvii/logging/Impression/ImpressionCollector;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/master/explorer/CommunityPageAdapter$GalleryRecycleViewAdapter$1;->this$1:Lcom/narvii/master/explorer/CommunityPageAdapter$GalleryRecycleViewAdapter;

    iget-object v0, v0, Lcom/narvii/master/explorer/CommunityPageAdapter$GalleryRecycleViewAdapter;->this$0:Lcom/narvii/master/explorer/CommunityPageAdapter;

    invoke-virtual {v0}, Lcom/narvii/master/explorer/CommunityPageAdapter;->getAminoListIpc()Lcom/narvii/logging/Impression/ImpressionCollector;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/master/explorer/CommunityPageAdapter$GalleryRecycleViewAdapter$1;->val$c:Lcom/narvii/model/Community;

    invoke-virtual {v0, v1}, Lcom/narvii/logging/Impression/ImpressionCollector;->getImpressionObjectInfo(Ljava/lang/Object;)Lcom/narvii/logging/ObjectInfo;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->objectInfo(Lcom/narvii/logging/ObjectInfo;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->actClick()Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    sget-object v0, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->actSemantic(Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 596
    new-instance p1, Lcom/narvii/master/CommunityHelper;

    iget-object v0, p0, Lcom/narvii/master/explorer/CommunityPageAdapter$GalleryRecycleViewAdapter$1;->this$1:Lcom/narvii/master/explorer/CommunityPageAdapter$GalleryRecycleViewAdapter;

    iget-object v0, v0, Lcom/narvii/master/explorer/CommunityPageAdapter$GalleryRecycleViewAdapter;->this$0:Lcom/narvii/master/explorer/CommunityPageAdapter;

    invoke-direct {p1, v0}, Lcom/narvii/master/CommunityHelper;-><init>(Lcom/narvii/app/NVContext;)V

    const-string v0, "explore-category"

    invoke-virtual {p1, v0}, Lcom/narvii/master/CommunityHelper;->source(Ljava/lang/String;)Lcom/narvii/master/CommunityHelper;

    move-result-object p1

    sget-object v0, Lcom/narvii/util/logging/LoggingOrigin;->Explore:Lcom/narvii/util/logging/LoggingOrigin;

    invoke-virtual {p1, v0}, Lcom/narvii/master/CommunityHelper;->eventOrigin(Lcom/narvii/util/logging/LoggingOrigin;)Lcom/narvii/master/CommunityHelper;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/master/explorer/CommunityPageAdapter$GalleryRecycleViewAdapter$1;->val$c:Lcom/narvii/model/Community;

    invoke-virtual {p1, v0}, Lcom/narvii/master/CommunityHelper;->communityDetail(Lcom/narvii/model/Community;)V

    return-void
.end method
