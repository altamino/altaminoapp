.class Lcom/narvii/feed/BaseFeedListAdapter$1;
.super Ljava/lang/Object;
.source "BaseFeedListAdapter.java"

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

    .line 132
    iput-object p1, p0, Lcom/narvii/feed/BaseFeedListAdapter$1;->this$0:Lcom/narvii/feed/BaseFeedListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 2

    .line 135
    instance-of v0, p1, Lcom/narvii/model/Blog;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/narvii/feed/BaseFeedListAdapter$1;->this$0:Lcom/narvii/feed/BaseFeedListAdapter;

    sget-object v1, Lcom/narvii/logging/ActSemantic;->vote:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {v0, p1, v1}, Lcom/narvii/list/NVAdapter;->logClickEvent(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)V

    :cond_0
    return-void
.end method
