.class Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter$1;
.super Ljava/lang/Object;
.source "HeadlineSubTypeListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter;

.field final synthetic val$isJoined:Z

.field final synthetic val$item:Ljava/lang/Object;

.field final synthetic val$showNotInterest:Z


# direct methods
.method constructor <init>(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter;ZLjava/lang/Object;Z)V
    .locals 0

    .line 615
    iput-object p1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter$1;->this$1:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter;

    iput-boolean p2, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter$1;->val$showNotInterest:Z

    iput-object p3, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter$1;->val$item:Ljava/lang/Object;

    iput-boolean p4, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter$1;->val$isJoined:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 619
    iget-boolean p1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter$1;->val$showNotInterest:Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 620
    :goto_0
    iget-boolean v2, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter$1;->val$showNotInterest:Z

    if-eqz v2, :cond_1

    if-ne p2, v1, :cond_2

    goto :goto_1

    :cond_1
    if-nez p2, :cond_2

    :goto_1
    const/4 v0, 0x1

    :cond_2
    if-eqz p1, :cond_3

    .line 624
    iget-object p1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter$1;->this$1:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter;

    iget-object p2, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter$1;->val$item:Ljava/lang/Object;

    check-cast p2, Lcom/narvii/model/Feed;

    invoke-static {p1, p2}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter;->access$2100(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter;Lcom/narvii/model/Feed;)V

    goto :goto_2

    :cond_3
    if-eqz v0, :cond_6

    .line 626
    iget-object p1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter$1;->this$1:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter;

    iget-object p2, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter$1;->val$item:Ljava/lang/Object;

    check-cast p2, Lcom/narvii/model/Feed;

    iget p2, p2, Lcom/narvii/model/Feed;->ndcId:I

    invoke-virtual {p1, p2}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->shouldShowDownloadMasterDialog(I)Z

    move-result p1

    if-eqz p1, :cond_4

    return-void

    .line 629
    :cond_4
    iget-boolean p1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter$1;->val$isJoined:Z

    if-eqz p1, :cond_5

    .line 630
    new-instance p1, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;

    iget-object p2, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter$1;->this$1:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter;

    invoke-static {p2}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter;->access$2200(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter;)Lcom/narvii/app/NVContext;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;-><init>(Lcom/narvii/app/NVContext;)V

    iget-object p2, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter$1;->val$item:Ljava/lang/Object;

    check-cast p2, Lcom/narvii/model/Feed;

    .line 631
    invoke-virtual {p1, p2}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->nvObject(Lcom/narvii/model/NVObject;)Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->build()Lcom/narvii/flag/report/FlagReportOptionDialog;

    move-result-object p1

    .line 632
    invoke-virtual {p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->show()V

    goto :goto_2

    .line 634
    :cond_5
    iget-object p1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter$1;->this$1:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter;

    iget-object p2, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter$1;->val$item:Ljava/lang/Object;

    move-object v0, p2

    check-cast v0, Lcom/narvii/model/Feed;

    iget v0, v0, Lcom/narvii/model/Feed;->ndcId:I

    check-cast p2, Lcom/narvii/model/Feed;

    invoke-virtual {p2}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->showJoinCommunityDialog(ILjava/lang/String;)V

    :cond_6
    :goto_2
    return-void
.end method
