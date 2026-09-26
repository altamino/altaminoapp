.class Lcom/narvii/master/explorer/CommunityPageAdapter$GalleryRecycleViewAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/master/explorer/CommunityPageAdapter$GalleryRecycleViewAdapter$1;->this$1:Lcom/narvii/master/explorer/CommunityPageAdapter$GalleryRecycleViewAdapter;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/master/explorer/CommunityPageAdapter$GalleryRecycleViewAdapter$1;->val$c:Lcom/narvii/model/Community;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/master/explorer/CommunityPageAdapter$GalleryRecycleViewAdapter$1;->this$1:Lcom/narvii/master/explorer/CommunityPageAdapter$GalleryRecycleViewAdapter;

    .line 3
    .line 4
    iget-object p1, p1, Lcom/narvii/master/explorer/CommunityPageAdapter$GalleryRecycleViewAdapter;->this$0:Lcom/narvii/master/explorer/CommunityPageAdapter;

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Lcom/narvii/logging/LogEvent;->builder(Lcom/narvii/app/NVContext;)Lcom/narvii/logging/LogEvent$Builder;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/master/explorer/CommunityPageAdapter$GalleryRecycleViewAdapter$1;->this$1:Lcom/narvii/master/explorer/CommunityPageAdapter$GalleryRecycleViewAdapter;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/narvii/master/explorer/CommunityPageAdapter$GalleryRecycleViewAdapter;->this$0:Lcom/narvii/master/explorer/CommunityPageAdapter;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/narvii/master/explorer/CommunityPageAdapter;->getAminoListIpc()Lcom/narvii/logging/Impression/ImpressionCollector;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Lcom/narvii/master/explorer/CommunityPageAdapter$GalleryRecycleViewAdapter$1;->this$1:Lcom/narvii/master/explorer/CommunityPageAdapter$GalleryRecycleViewAdapter;

    .line 21
    .line 22
    iget-object v0, v0, Lcom/narvii/master/explorer/CommunityPageAdapter$GalleryRecycleViewAdapter;->this$0:Lcom/narvii/master/explorer/CommunityPageAdapter;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/narvii/master/explorer/CommunityPageAdapter;->getAminoListIpc()Lcom/narvii/logging/Impression/ImpressionCollector;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    iget-object v1, p0, Lcom/narvii/master/explorer/CommunityPageAdapter$GalleryRecycleViewAdapter$1;->val$c:Lcom/narvii/model/Community;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Lcom/narvii/logging/Impression/ImpressionCollector;->getImpressionObjectInfo(Ljava/lang/Object;)Lcom/narvii/logging/ObjectInfo;

    .line 32
    move-result-object v0

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 v0, 0x0

    .line 35
    .line 36
    .line 37
    :goto_0
    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->objectInfo(Lcom/narvii/logging/ObjectInfo;)Lcom/narvii/logging/LogEvent$Builder;

    .line 38
    move-result-object p1

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->actClick()Lcom/narvii/logging/LogEvent$Builder;

    .line 42
    move-result-object p1

    .line 43
    .line 44
    sget-object v0, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->actSemantic(Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 48
    move-result-object p1

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 52
    .line 53
    new-instance p1, Lcom/narvii/master/CommunityHelper;

    .line 54
    .line 55
    iget-object v0, p0, Lcom/narvii/master/explorer/CommunityPageAdapter$GalleryRecycleViewAdapter$1;->this$1:Lcom/narvii/master/explorer/CommunityPageAdapter$GalleryRecycleViewAdapter;

    .line 56
    .line 57
    iget-object v0, v0, Lcom/narvii/master/explorer/CommunityPageAdapter$GalleryRecycleViewAdapter;->this$0:Lcom/narvii/master/explorer/CommunityPageAdapter;

    .line 58
    .line 59
    .line 60
    invoke-direct {p1, v0}, Lcom/narvii/master/CommunityHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 61
    .line 62
    const-string v0, "explore-category"

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, v0}, Lcom/narvii/master/CommunityHelper;->source(Ljava/lang/String;)Lcom/narvii/master/CommunityHelper;

    .line 66
    move-result-object p1

    .line 67
    .line 68
    sget-object v0, Lcom/narvii/util/logging/LoggingOrigin;->Explore:Lcom/narvii/util/logging/LoggingOrigin;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, v0}, Lcom/narvii/master/CommunityHelper;->eventOrigin(Lcom/narvii/util/logging/LoggingOrigin;)Lcom/narvii/master/CommunityHelper;

    .line 72
    move-result-object p1

    .line 73
    .line 74
    iget-object v0, p0, Lcom/narvii/master/explorer/CommunityPageAdapter$GalleryRecycleViewAdapter$1;->val$c:Lcom/narvii/model/Community;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, v0}, Lcom/narvii/master/CommunityHelper;->communityDetail(Lcom/narvii/model/Community;)V

    .line 78
    return-void
.end method
