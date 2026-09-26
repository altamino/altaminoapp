.class Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter;->sendNoInterestRequest(Lcom/narvii/model/Feed;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Lcom/narvii/model/api/ApiResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter;

.field final synthetic val$item:Lcom/narvii/model/Feed;


# direct methods
.method constructor <init>(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter;Lcom/narvii/model/Feed;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter$2;->this$1:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter$2;->val$item:Lcom/narvii/model/Feed;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/model/api/ApiResponse;)V
    .locals 2

    .line 2
    new-instance p1, Lcom/narvii/notification/Notification;

    const-string v0, "delete"

    iget-object v1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter$2;->val$item:Lcom/narvii/model/Feed;

    invoke-direct {p1, v0, v1}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    iget-object v0, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter$2;->this$1:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter;

    .line 3
    invoke-virtual {v0, p1}, Lcom/narvii/list/NVAdapter;->sendNotification(Lcom/narvii/notification/Notification;)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/model/api/ApiResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter$2;->call(Lcom/narvii/model/api/ApiResponse;)V

    return-void
.end method
