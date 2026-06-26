.class Lcom/narvii/feed/FeedHelper$8;
.super Ljava/lang/Object;
.source "FeedHelper.java"

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

    .line 534
    iput-object p1, p0, Lcom/narvii/feed/FeedHelper$8;->this$0:Lcom/narvii/feed/FeedHelper;

    iput-object p2, p0, Lcom/narvii/feed/FeedHelper$8;->val$followBeginCallback:Lcom/narvii/util/Callback;

    iput-object p3, p0, Lcom/narvii/feed/FeedHelper$8;->val$feed:Lcom/narvii/model/Feed;

    iput-object p4, p0, Lcom/narvii/feed/FeedHelper$8;->val$successCallback:Lcom/narvii/util/Callback;

    iput-object p5, p0, Lcom/narvii/feed/FeedHelper$8;->val$failCallback:Lcom/narvii/util/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    if-nez p2, :cond_1

    .line 538
    iget-object p1, p0, Lcom/narvii/feed/FeedHelper$8;->val$followBeginCallback:Lcom/narvii/util/Callback;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 539
    invoke-interface {p1, p2}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 541
    :cond_0
    iget-object v0, p0, Lcom/narvii/feed/FeedHelper$8;->this$0:Lcom/narvii/feed/FeedHelper;

    iget-object v1, p0, Lcom/narvii/feed/FeedHelper$8;->val$feed:Lcom/narvii/model/Feed;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/narvii/feed/FeedHelper$8;->val$followBeginCallback:Lcom/narvii/util/Callback;

    iget-object v5, p0, Lcom/narvii/feed/FeedHelper$8;->val$successCallback:Lcom/narvii/util/Callback;

    iget-object v6, p0, Lcom/narvii/feed/FeedHelper$8;->val$failCallback:Lcom/narvii/util/Callback;

    invoke-virtual/range {v0 .. v6}, Lcom/narvii/feed/FeedHelper;->follow(Lcom/narvii/model/Feed;ZZLcom/narvii/util/Callback;Lcom/narvii/util/Callback;Lcom/narvii/util/Callback;)V

    :cond_1
    return-void
.end method
