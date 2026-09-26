.class Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter$1;->this$1:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter;

    .line 3
    .line 4
    iput-boolean p2, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter$1;->val$showNotInterest:Z

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter$1;->val$item:Ljava/lang/Object;

    .line 7
    .line 8
    iput-boolean p4, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter$1;->val$isJoined:Z

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 1
    .line 2
    iget-boolean p1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter$1;->val$showNotInterest:Z

    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x1

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    if-nez p2, :cond_0

    .line 9
    move v2, v1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v2, v0

    .line 12
    .line 13
    :goto_0
    if-eqz p1, :cond_1

    .line 14
    .line 15
    if-ne p2, v1, :cond_2

    .line 16
    :goto_1
    move v0, v1

    .line 17
    goto :goto_2

    .line 18
    .line 19
    :cond_1
    if-nez p2, :cond_2

    .line 20
    goto :goto_1

    .line 21
    .line 22
    :cond_2
    :goto_2
    if-eqz v2, :cond_3

    .line 23
    .line 24
    iget-object p1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter$1;->this$1:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter;

    .line 25
    .line 26
    iget-object p2, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter$1;->val$item:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast p2, Lcom/narvii/model/Feed;

    .line 29
    .line 30
    .line 31
    invoke-static {p1, p2}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter;->p(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter;Lcom/narvii/model/Feed;)V

    .line 32
    goto :goto_3

    .line 33
    .line 34
    :cond_3
    if-eqz v0, :cond_6

    .line 35
    .line 36
    iget-object p1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter$1;->this$1:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter;

    .line 37
    .line 38
    iget-object p2, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter$1;->val$item:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast p2, Lcom/narvii/model/Feed;

    .line 41
    .line 42
    iget p2, p2, Lcom/narvii/model/Feed;->ndcId:I

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, p2}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->shouldShowDownloadMasterDialog(I)Z

    .line 46
    move-result p1

    .line 47
    .line 48
    if-eqz p1, :cond_4

    .line 49
    return-void

    .line 50
    .line 51
    :cond_4
    iget-boolean p1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter$1;->val$isJoined:Z

    .line 52
    .line 53
    if-eqz p1, :cond_5

    .line 54
    .line 55
    new-instance p1, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;

    .line 56
    .line 57
    iget-object p2, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter$1;->this$1:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter;

    .line 58
    .line 59
    .line 60
    invoke-static {p2}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter;->access$900(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter;)Lcom/narvii/app/NVContext;

    .line 61
    move-result-object p2

    .line 62
    .line 63
    .line 64
    invoke-direct {p1, p2}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;-><init>(Lcom/narvii/app/NVContext;)V

    .line 65
    .line 66
    iget-object p2, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter$1;->val$item:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast p2, Lcom/narvii/model/Feed;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, p2}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->nvObject(Lcom/narvii/model/NVObject;)Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;

    .line 72
    move-result-object p1

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->build()Lcom/narvii/flag/report/FlagReportOptionDialog;

    .line 76
    move-result-object p1

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->show()V

    .line 80
    goto :goto_3

    .line 81
    .line 82
    :cond_5
    iget-object p1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter$1;->this$1:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter;

    .line 83
    .line 84
    iget-object p2, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter$1;->val$item:Ljava/lang/Object;

    .line 85
    move-object v0, p2

    .line 86
    .line 87
    check-cast v0, Lcom/narvii/model/Feed;

    .line 88
    .line 89
    iget v0, v0, Lcom/narvii/model/Feed;->ndcId:I

    .line 90
    .line 91
    check-cast p2, Lcom/narvii/model/Feed;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p2}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    .line 95
    move-result-object p2

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1, v0, p2}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->showJoinCommunityDialog(ILjava/lang/String;)V

    .line 99
    :cond_6
    :goto_3
    return-void
.end method
