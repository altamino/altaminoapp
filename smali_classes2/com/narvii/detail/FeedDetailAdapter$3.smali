.class Lcom/narvii/detail/FeedDetailAdapter$3;
.super Lcom/narvii/util/text/DefaultTagClickListener;
.source "FeedDetailAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/detail/FeedDetailAdapter;->createTextView(Ljava/lang/String;ILandroid/view/View;Landroid/view/ViewGroup;ZLcom/narvii/util/text/OnTagClickListener;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/detail/FeedDetailAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/detail/FeedDetailAdapter;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/narvii/detail/FeedDetailAdapter$3;->this$0:Lcom/narvii/detail/FeedDetailAdapter;

    invoke-direct {p0}, Lcom/narvii/util/text/DefaultTagClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected startActivity(Landroid/view/View;Landroid/content/Intent;)V
    .locals 2

    .line 182
    iget-object p1, p0, Lcom/narvii/detail/FeedDetailAdapter$3;->this$0:Lcom/narvii/detail/FeedDetailAdapter;

    invoke-virtual {p1}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Feed;

    if-eqz p1, :cond_0

    .line 184
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->objectType()I

    move-result v0

    const-string v1, "loggingObjectType"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 185
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object v0

    const-string v1, "loggingObjectId"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    instance-of v0, p1, Lcom/narvii/model/Blog;

    if-eqz v0, :cond_0

    .line 187
    check-cast p1, Lcom/narvii/model/Blog;

    iget p1, p1, Lcom/narvii/model/Blog;->type:I

    const-string v0, "loggingBlogType"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 190
    :cond_0
    iget-object p1, p0, Lcom/narvii/detail/FeedDetailAdapter$3;->this$0:Lcom/narvii/detail/FeedDetailAdapter;

    invoke-virtual {p1, p2}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
