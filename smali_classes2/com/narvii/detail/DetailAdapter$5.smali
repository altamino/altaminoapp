.class Lcom/narvii/detail/DetailAdapter$5;
.super Lcom/narvii/share/BaseShareButtonRepost;
.source "DetailAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/detail/DetailAdapter;->createMediaView(Lcom/narvii/model/Media;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/detail/DetailAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/detail/DetailAdapter;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 1069
    iput-object p1, p0, Lcom/narvii/detail/DetailAdapter$5;->this$0:Lcom/narvii/detail/DetailAdapter;

    invoke-direct {p0, p2}, Lcom/narvii/share/BaseShareButtonRepost;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/narvii/share/SharePayload;)V
    .locals 1

    .line 1072
    new-instance p1, Lcom/narvii/feed/FeedHelper;

    iget-object v0, p0, Lcom/narvii/detail/DetailAdapter$5;->this$0:Lcom/narvii/detail/DetailAdapter;

    invoke-static {v0}, Lcom/narvii/detail/DetailAdapter;->access$100(Lcom/narvii/detail/DetailAdapter;)Lcom/narvii/app/NVContext;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/feed/FeedHelper;-><init>(Lcom/narvii/app/NVContext;)V

    const-string v0, "Post Detail Media Bar"

    invoke-virtual {p1, v0}, Lcom/narvii/feed/FeedHelper;->source(Ljava/lang/String;)Lcom/narvii/feed/FeedHelper;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/detail/DetailAdapter$5;->this$0:Lcom/narvii/detail/DetailAdapter;

    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Feed;

    invoke-virtual {p1, v0}, Lcom/narvii/feed/FeedHelper;->repost(Lcom/narvii/model/Feed;)V

    return-void
.end method
