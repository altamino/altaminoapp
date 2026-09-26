.class Lcom/narvii/feed/FeedHelper$12;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/feed/FeedHelper$12;->this$0:Lcom/narvii/feed/FeedHelper;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/feed/FeedHelper$12;->val$feed:Lcom/narvii/model/Feed;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/feed/FeedHelper$12;->val$beginCallback:Lcom/narvii/util/Callback;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/narvii/feed/FeedHelper$12;->val$callback:Lcom/narvii/util/Callback;

    .line 9
    .line 10
    iput-object p5, p0, Lcom/narvii/feed/FeedHelper$12;->val$source:Lcom/narvii/util/logging/LoggingSource;

    .line 11
    .line 12
    iput-object p6, p0, Lcom/narvii/feed/FeedHelper$12;->val$loggingOrigin:Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public static safedk_FeedHelper_startActivity_ca485870bc4a685db67d9e0c81995f45(Lcom/narvii/feed/FeedHelper;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/feed/FeedHelper;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/feed/FeedHelper;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/feed/FeedHelper;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    .line 1
    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/feed/FeedHelper$12;->this$0:Lcom/narvii/feed/FeedHelper;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/narvii/feed/FeedHelper$12;->val$feed:Lcom/narvii/model/Feed;

    .line 7
    const/4 v2, 0x0

    .line 8
    .line 9
    iget-object v3, p0, Lcom/narvii/feed/FeedHelper$12;->val$beginCallback:Lcom/narvii/util/Callback;

    .line 10
    .line 11
    iget-object v4, p0, Lcom/narvii/feed/FeedHelper$12;->val$callback:Lcom/narvii/util/Callback;

    .line 12
    .line 13
    iget-object v5, p0, Lcom/narvii/feed/FeedHelper$12;->val$source:Lcom/narvii/util/logging/LoggingSource;

    .line 14
    .line 15
    iget-object v6, p0, Lcom/narvii/feed/FeedHelper$12;->val$loggingOrigin:Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    invoke-static/range {v0 .. v6}, Lcom/narvii/feed/FeedHelper;->c(Lcom/narvii/feed/FeedHelper;Lcom/narvii/model/Feed;ILcom/narvii/util/Callback;Lcom/narvii/util/Callback;Lcom/narvii/util/logging/LoggingSource;Ljava/lang/String;)V

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p1, 0x1

    .line 21
    .line 22
    if-ne p2, p1, :cond_1

    .line 23
    .line 24
    const-class p1, Lcom/narvii/feed/vote/VoterListFragment;

    .line 25
    .line 26
    .line 27
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    iget-object p2, p0, Lcom/narvii/feed/FeedHelper$12;->val$feed:Lcom/narvii/model/Feed;

    .line 31
    .line 32
    .line 33
    invoke-static {p2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 34
    move-result-object p2

    .line 35
    .line 36
    const-string v0, "nvObject"

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    .line 41
    iget-object p2, p0, Lcom/narvii/feed/FeedHelper$12;->this$0:Lcom/narvii/feed/FeedHelper;

    .line 42
    .line 43
    .line 44
    invoke-static {p2, p1}, Lcom/narvii/feed/FeedHelper$12;->safedk_FeedHelper_startActivity_ca485870bc4a685db67d9e0c81995f45(Lcom/narvii/feed/FeedHelper;Landroid/content/Intent;)V

    .line 45
    :cond_1
    :goto_0
    return-void
.end method
