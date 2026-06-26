.class Lcom/narvii/feed/BaseFeedListAdapter$9;
.super Ljava/lang/Object;
.source "BaseFeedListAdapter.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/feed/BaseFeedListAdapter;->share(Lcom/narvii/model/Feed;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Landroid/content/Intent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/feed/BaseFeedListAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/feed/BaseFeedListAdapter;)V
    .locals 0

    .line 1021
    iput-object p1, p0, Lcom/narvii/feed/BaseFeedListAdapter$9;->this$0:Lcom/narvii/feed/BaseFeedListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Landroid/content/Intent;)V
    .locals 2

    .line 1025
    :try_start_0
    sget-object v0, Lcom/narvii/share/ShareDarkRoomFragment;->KEY_STATISTIC_SOURCE:Ljava/lang/String;

    iget-object v1, p0, Lcom/narvii/feed/BaseFeedListAdapter$9;->this$0:Lcom/narvii/feed/BaseFeedListAdapter;

    iget-object v1, v1, Lcom/narvii/feed/BaseFeedListAdapter;->shareSource:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1026
    iget-object v0, p0, Lcom/narvii/feed/BaseFeedListAdapter$9;->this$0:Lcom/narvii/feed/BaseFeedListAdapter;

    invoke-virtual {v0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1021
    check-cast p1, Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/narvii/feed/BaseFeedListAdapter$9;->call(Landroid/content/Intent;)V

    return-void
.end method
