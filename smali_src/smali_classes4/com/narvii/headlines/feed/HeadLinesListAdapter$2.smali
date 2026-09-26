.class Lcom/narvii/headlines/feed/HeadLinesListAdapter$2;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/headlines/feed/HeadLinesListAdapter$2;->this$0:Lcom/narvii/headlines/feed/HeadLinesListAdapter;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/headlines/feed/HeadLinesListAdapter$2;->val$c:Lcom/narvii/model/Community;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/headlines/feed/HeadLinesListAdapter$2;->val$loggingObjectId:Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Boolean;)V
    .locals 2

    .line 2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/narvii/headlines/feed/HeadLinesListAdapter$2;->this$0:Lcom/narvii/headlines/feed/HeadLinesListAdapter;

    iget-object v0, p0, Lcom/narvii/headlines/feed/HeadLinesListAdapter$2;->val$c:Lcom/narvii/model/Community;

    iget-object v1, p0, Lcom/narvii/headlines/feed/HeadLinesListAdapter$2;->val$loggingObjectId:Ljava/lang/String;

    .line 3
    invoke-static {p1, v0, v1}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->o(Lcom/narvii/headlines/feed/HeadLinesListAdapter;Lcom/narvii/model/Community;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/narvii/headlines/feed/HeadLinesListAdapter$2;->call(Ljava/lang/Boolean;)V

    return-void
.end method
