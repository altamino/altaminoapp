.class Lcom/narvii/detail/FeedDetailAdapter$1;
.super Ljava/lang/Object;
.source "FeedDetailAdapter.java"

# interfaces
.implements Lcom/narvii/item/list/ItemGallery$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/detail/FeedDetailAdapter;->getCell(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
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

    .line 109
    iput-object p1, p0, Lcom/narvii/detail/FeedDetailAdapter$1;->this$0:Lcom/narvii/detail/FeedDetailAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/narvii/model/Item;I)V
    .locals 7

    .line 112
    iget-object v0, p0, Lcom/narvii/detail/FeedDetailAdapter$1;->this$0:Lcom/narvii/detail/FeedDetailAdapter;

    invoke-static {v0}, Lcom/narvii/detail/FeedDetailAdapter;->access$000(Lcom/narvii/detail/FeedDetailAdapter;)Lcom/narvii/app/NVContext;

    move-result-object v1

    iget-object v0, p0, Lcom/narvii/detail/FeedDetailAdapter$1;->this$0:Lcom/narvii/detail/FeedDetailAdapter;

    invoke-virtual {v0}, Lcom/narvii/detail/FeedDetailAdapter;->taggedObjects()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    move v6, p2

    invoke-static/range {v1 .. v6}, Lcom/narvii/detail/FeedDetailFragment;->intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/Feed;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "Source"

    const-string v0, "Favorite Related Pages"

    .line 113
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    iget-object p2, p0, Lcom/narvii/detail/FeedDetailAdapter$1;->this$0:Lcom/narvii/detail/FeedDetailAdapter;

    invoke-virtual {p2, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
