.class Lcom/narvii/detail/FeedDetailAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/detail/FeedDetailAdapter$1;->this$0:Lcom/narvii/detail/FeedDetailAdapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
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
.method public onItemClick(Lcom/narvii/model/Item;I)V
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/detail/FeedDetailAdapter$1;->this$0:Lcom/narvii/detail/FeedDetailAdapter;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/detail/FeedDetailAdapter;->access$000(Lcom/narvii/detail/FeedDetailAdapter;)Lcom/narvii/app/NVContext;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/detail/FeedDetailAdapter$1;->this$0:Lcom/narvii/detail/FeedDetailAdapter;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/narvii/detail/FeedDetailAdapter;->taggedObjects()Ljava/util/List;

    .line 12
    move-result-object v3

    .line 13
    const/4 v4, 0x0

    .line 14
    const/4 v5, 0x0

    .line 15
    move-object v2, p1

    .line 16
    move v6, p2

    .line 17
    .line 18
    .line 19
    invoke-static/range {v1 .. v6}, Lcom/narvii/detail/FeedDetailFragment;->intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/Feed;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    const-string p2, "Source"

    .line 23
    .line 24
    const-string v0, "Favorite Related Pages"

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 28
    .line 29
    iget-object p2, p0, Lcom/narvii/detail/FeedDetailAdapter$1;->this$0:Lcom/narvii/detail/FeedDetailAdapter;

    .line 30
    .line 31
    .line 32
    invoke-static {p2, p1}, Lcom/narvii/detail/FeedDetailAdapter$1;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    .line 33
    return-void
.end method
