.class Lcom/narvii/feed/BaseFeedListAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/feed/BaseFeedListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/feed/BaseFeedListAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/feed/BaseFeedListAdapter;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/feed/BaseFeedListAdapter$1;->this$0:Lcom/narvii/feed/BaseFeedListAdapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 2

    .line 1
    .line 2
    instance-of v0, p1, Lcom/narvii/model/Blog;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/feed/BaseFeedListAdapter$1;->this$0:Lcom/narvii/feed/BaseFeedListAdapter;

    .line 7
    .line 8
    sget-object v1, Lcom/narvii/logging/ActSemantic;->vote:Lcom/narvii/logging/ActSemantic;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1, v1}, Lcom/narvii/list/NVAdapter;->logClickEvent(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)V

    .line 12
    :cond_0
    return-void
.end method
