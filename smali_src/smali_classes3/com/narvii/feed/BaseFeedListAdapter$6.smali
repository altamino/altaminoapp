.class Lcom/narvii/feed/BaseFeedListAdapter$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/feed/BaseFeedListAdapter;->vote(Lcom/narvii/model/Feed;Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/feed/BaseFeedListAdapter;

.field final synthetic val$feed:Lcom/narvii/model/Feed;


# direct methods
.method constructor <init>(Lcom/narvii/feed/BaseFeedListAdapter;Lcom/narvii/model/Feed;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/feed/BaseFeedListAdapter$6;->this$0:Lcom/narvii/feed/BaseFeedListAdapter;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/feed/BaseFeedListAdapter$6;->val$feed:Lcom/narvii/model/Feed;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method

.method public static safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/list/NVAdapter;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    iget-object p1, p0, Lcom/narvii/feed/BaseFeedListAdapter$6;->this$0:Lcom/narvii/feed/BaseFeedListAdapter;

    .line 5
    .line 6
    iget-object p2, p0, Lcom/narvii/feed/BaseFeedListAdapter$6;->val$feed:Lcom/narvii/model/Feed;

    .line 7
    const/4 v0, 0x0

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, p2, v0}, Lcom/narvii/feed/BaseFeedListAdapter;->vote(Lcom/narvii/model/Feed;Ljava/lang/Integer;)V

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p1, 0x1

    .line 17
    .line 18
    if-ne p2, p1, :cond_1

    .line 19
    .line 20
    const-class p1, Lcom/narvii/feed/vote/VoterListFragment;

    .line 21
    .line 22
    .line 23
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    iget-object p2, p0, Lcom/narvii/feed/BaseFeedListAdapter$6;->val$feed:Lcom/narvii/model/Feed;

    .line 27
    .line 28
    .line 29
    invoke-static {p2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 30
    move-result-object p2

    .line 31
    .line 32
    const-string v0, "nvObject"

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    .line 37
    iget-object p2, p0, Lcom/narvii/feed/BaseFeedListAdapter$6;->this$0:Lcom/narvii/feed/BaseFeedListAdapter;

    .line 38
    .line 39
    .line 40
    invoke-static {p2, p1}, Lcom/narvii/feed/BaseFeedListAdapter$6;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    .line 41
    :cond_1
    :goto_0
    return-void
.end method
