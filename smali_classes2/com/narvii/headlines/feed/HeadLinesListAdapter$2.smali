.class Lcom/narvii/headlines/feed/HeadLinesListAdapter$2;
.super Ljava/lang/Object;
.source "HeadLinesListAdapter.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/headlines/feed/HeadLinesListAdapter;->showJoinCommunityDialog(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/headlines/feed/HeadLinesListAdapter;

.field final synthetic val$c:Lcom/narvii/model/Community;

.field final synthetic val$loggingObjectId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/narvii/headlines/feed/HeadLinesListAdapter;Lcom/narvii/model/Community;Ljava/lang/String;)V
    .locals 0

    .line 382
    iput-object p1, p0, Lcom/narvii/headlines/feed/HeadLinesListAdapter$2;->this$0:Lcom/narvii/headlines/feed/HeadLinesListAdapter;

    iput-object p2, p0, Lcom/narvii/headlines/feed/HeadLinesListAdapter$2;->val$c:Lcom/narvii/model/Community;

    iput-object p3, p0, Lcom/narvii/headlines/feed/HeadLinesListAdapter$2;->val$loggingObjectId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Boolean;)V
    .locals 2

    .line 385
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 386
    iget-object p1, p0, Lcom/narvii/headlines/feed/HeadLinesListAdapter$2;->this$0:Lcom/narvii/headlines/feed/HeadLinesListAdapter;

    iget-object v0, p0, Lcom/narvii/headlines/feed/HeadLinesListAdapter$2;->val$c:Lcom/narvii/model/Community;

    iget-object v1, p0, Lcom/narvii/headlines/feed/HeadLinesListAdapter$2;->val$loggingObjectId:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->access$000(Lcom/narvii/headlines/feed/HeadLinesListAdapter;Lcom/narvii/model/Community;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 382
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/narvii/headlines/feed/HeadLinesListAdapter$2;->call(Ljava/lang/Boolean;)V

    return-void
.end method
