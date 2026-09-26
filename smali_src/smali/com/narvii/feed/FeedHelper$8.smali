.class Lcom/narvii/feed/FeedHelper$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/feed/FeedHelper;->follow(Lcom/narvii/model/Feed;ZZLcom/narvii/util/Callback;Lcom/narvii/util/Callback;Lcom/narvii/util/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/feed/FeedHelper;

.field final synthetic val$failCallback:Lcom/narvii/util/Callback;

.field final synthetic val$feed:Lcom/narvii/model/Feed;

.field final synthetic val$followBeginCallback:Lcom/narvii/util/Callback;

.field final synthetic val$successCallback:Lcom/narvii/util/Callback;


# direct methods
.method constructor <init>(Lcom/narvii/feed/FeedHelper;Lcom/narvii/util/Callback;Lcom/narvii/model/Feed;Lcom/narvii/util/Callback;Lcom/narvii/util/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/feed/FeedHelper$8;->this$0:Lcom/narvii/feed/FeedHelper;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/feed/FeedHelper$8;->val$followBeginCallback:Lcom/narvii/util/Callback;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/feed/FeedHelper$8;->val$feed:Lcom/narvii/model/Feed;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/narvii/feed/FeedHelper$8;->val$successCallback:Lcom/narvii/util/Callback;

    .line 9
    .line 10
    iput-object p5, p0, Lcom/narvii/feed/FeedHelper$8;->val$failCallback:Lcom/narvii/util/Callback;

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    .line 1
    .line 2
    if-nez p2, :cond_1

    .line 3
    .line 4
    iget-object p1, p0, Lcom/narvii/feed/FeedHelper$8;->val$followBeginCallback:Lcom/narvii/util/Callback;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    const/4 p2, 0x0

    .line 8
    .line 9
    .line 10
    invoke-interface {p1, p2}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/narvii/feed/FeedHelper$8;->this$0:Lcom/narvii/feed/FeedHelper;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/narvii/feed/FeedHelper$8;->val$feed:Lcom/narvii/model/Feed;

    .line 15
    const/4 v2, 0x0

    .line 16
    const/4 v3, 0x0

    .line 17
    .line 18
    iget-object v4, p0, Lcom/narvii/feed/FeedHelper$8;->val$followBeginCallback:Lcom/narvii/util/Callback;

    .line 19
    .line 20
    iget-object v5, p0, Lcom/narvii/feed/FeedHelper$8;->val$successCallback:Lcom/narvii/util/Callback;

    .line 21
    .line 22
    iget-object v6, p0, Lcom/narvii/feed/FeedHelper$8;->val$failCallback:Lcom/narvii/util/Callback;

    .line 23
    .line 24
    .line 25
    invoke-virtual/range {v0 .. v6}, Lcom/narvii/feed/FeedHelper;->follow(Lcom/narvii/model/Feed;ZZLcom/narvii/util/Callback;Lcom/narvii/util/Callback;Lcom/narvii/util/Callback;)V

    .line 26
    :cond_1
    return-void
.end method
