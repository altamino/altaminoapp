.class Lcom/narvii/item/detail/ItemDetailFragment$9;
.super Ljava/lang/Object;
.source "ItemDetailFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/item/detail/ItemDetailFragment;->vote(Ljava/lang/Integer;Lcom/narvii/util/http/ApiService;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/item/detail/ItemDetailFragment;

.field final synthetic val$fapi:Lcom/narvii/util/http/ApiService;

.field final synthetic val$fromBottomBar:Z

.field final synthetic val$i:Lcom/narvii/model/Item;


# direct methods
.method constructor <init>(Lcom/narvii/item/detail/ItemDetailFragment;Lcom/narvii/util/http/ApiService;ZLcom/narvii/model/Item;)V
    .locals 0

    .line 1378
    iput-object p1, p0, Lcom/narvii/item/detail/ItemDetailFragment$9;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    iput-object p2, p0, Lcom/narvii/item/detail/ItemDetailFragment$9;->val$fapi:Lcom/narvii/util/http/ApiService;

    iput-boolean p3, p0, Lcom/narvii/item/detail/ItemDetailFragment$9;->val$fromBottomBar:Z

    iput-object p4, p0, Lcom/narvii/item/detail/ItemDetailFragment$9;->val$i:Lcom/narvii/model/Item;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    if-nez p2, :cond_0

    .line 1382
    iget-object p1, p0, Lcom/narvii/item/detail/ItemDetailFragment$9;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment$9;->val$fapi:Lcom/narvii/util/http/ApiService;

    iget-boolean v1, p0, Lcom/narvii/item/detail/ItemDetailFragment$9;->val$fromBottomBar:Z

    invoke-virtual {p1, p2, v0, v1}, Lcom/narvii/item/detail/ItemDetailFragment;->vote(Ljava/lang/Integer;Lcom/narvii/util/http/ApiService;Z)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    if-ne p2, p1, :cond_1

    .line 1384
    const-class p1, Lcom/narvii/feed/vote/VoterListFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 1385
    iget-object p2, p0, Lcom/narvii/item/detail/ItemDetailFragment$9;->val$i:Lcom/narvii/model/Item;

    invoke-static {p2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "nvObject"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1386
    iget-object p2, p0, Lcom/narvii/item/detail/ItemDetailFragment$9;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    invoke-virtual {p2, p1}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void
.end method
