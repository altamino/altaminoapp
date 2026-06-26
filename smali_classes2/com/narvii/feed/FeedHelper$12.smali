.class Lcom/narvii/feed/FeedHelper$12;
.super Ljava/lang/Object;
.source "FeedHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/feed/FeedHelper;->vote(Lcom/narvii/model/Feed;ILcom/narvii/util/Callback;Lcom/narvii/util/Callback;Lcom/narvii/util/logging/LoggingSource;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/feed/FeedHelper;

.field final synthetic val$beginCallback:Lcom/narvii/util/Callback;

.field final synthetic val$callback:Lcom/narvii/util/Callback;

.field final synthetic val$feed:Lcom/narvii/model/Feed;

.field final synthetic val$loggingOrigin:Ljava/lang/String;

.field final synthetic val$source:Lcom/narvii/util/logging/LoggingSource;


# direct methods
.method constructor <init>(Lcom/narvii/feed/FeedHelper;Lcom/narvii/model/Feed;Lcom/narvii/util/Callback;Lcom/narvii/util/Callback;Lcom/narvii/util/logging/LoggingSource;Ljava/lang/String;)V
    .locals 0

    .line 846
    iput-object p1, p0, Lcom/narvii/feed/FeedHelper$12;->this$0:Lcom/narvii/feed/FeedHelper;

    iput-object p2, p0, Lcom/narvii/feed/FeedHelper$12;->val$feed:Lcom/narvii/model/Feed;

    iput-object p3, p0, Lcom/narvii/feed/FeedHelper$12;->val$beginCallback:Lcom/narvii/util/Callback;

    iput-object p4, p0, Lcom/narvii/feed/FeedHelper$12;->val$callback:Lcom/narvii/util/Callback;

    iput-object p5, p0, Lcom/narvii/feed/FeedHelper$12;->val$source:Lcom/narvii/util/logging/LoggingSource;

    iput-object p6, p0, Lcom/narvii/feed/FeedHelper$12;->val$loggingOrigin:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    if-nez p2, :cond_0

    .line 850
    iget-object v0, p0, Lcom/narvii/feed/FeedHelper$12;->this$0:Lcom/narvii/feed/FeedHelper;

    iget-object v1, p0, Lcom/narvii/feed/FeedHelper$12;->val$feed:Lcom/narvii/model/Feed;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/narvii/feed/FeedHelper$12;->val$beginCallback:Lcom/narvii/util/Callback;

    iget-object v4, p0, Lcom/narvii/feed/FeedHelper$12;->val$callback:Lcom/narvii/util/Callback;

    iget-object v5, p0, Lcom/narvii/feed/FeedHelper$12;->val$source:Lcom/narvii/util/logging/LoggingSource;

    iget-object v6, p0, Lcom/narvii/feed/FeedHelper$12;->val$loggingOrigin:Ljava/lang/String;

    invoke-static/range {v0 .. v6}, Lcom/narvii/feed/FeedHelper;->access$200(Lcom/narvii/feed/FeedHelper;Lcom/narvii/model/Feed;ILcom/narvii/util/Callback;Lcom/narvii/util/Callback;Lcom/narvii/util/logging/LoggingSource;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    if-ne p2, p1, :cond_1

    .line 852
    const-class p1, Lcom/narvii/feed/vote/VoterListFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 853
    iget-object p2, p0, Lcom/narvii/feed/FeedHelper$12;->val$feed:Lcom/narvii/model/Feed;

    invoke-static {p2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "nvObject"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 854
    iget-object p2, p0, Lcom/narvii/feed/FeedHelper$12;->this$0:Lcom/narvii/feed/FeedHelper;

    invoke-virtual {p2, p1}, Lcom/narvii/feed/FeedHelper;->startActivity(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void
.end method
