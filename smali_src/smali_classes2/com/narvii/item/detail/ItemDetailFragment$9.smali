.class Lcom/narvii/item/detail/ItemDetailFragment$9;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/item/detail/ItemDetailFragment$9;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/item/detail/ItemDetailFragment$9;->val$fapi:Lcom/narvii/util/http/ApiService;

    .line 5
    .line 6
    iput-boolean p3, p0, Lcom/narvii/item/detail/ItemDetailFragment$9;->val$fromBottomBar:Z

    .line 7
    .line 8
    iput-object p4, p0, Lcom/narvii/item/detail/ItemDetailFragment$9;->val$i:Lcom/narvii/model/Item;

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method

.method public static safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Landroidx/fragment/app/Fragment;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1
    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    iget-object p1, p0, Lcom/narvii/item/detail/ItemDetailFragment$9;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    .line 5
    const/4 p2, 0x0

    .line 6
    .line 7
    .line 8
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    move-result-object p2

    .line 10
    .line 11
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment$9;->val$fapi:Lcom/narvii/util/http/ApiService;

    .line 12
    .line 13
    iget-boolean v1, p0, Lcom/narvii/item/detail/ItemDetailFragment$9;->val$fromBottomBar:Z

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, p2, v0, v1}, Lcom/narvii/item/detail/ItemDetailFragment;->vote(Ljava/lang/Integer;Lcom/narvii/util/http/ApiService;Z)V

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p1, 0x1

    .line 19
    .line 20
    if-ne p2, p1, :cond_1

    .line 21
    .line 22
    const-class p1, Lcom/narvii/feed/vote/VoterListFragment;

    .line 23
    .line 24
    .line 25
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    iget-object p2, p0, Lcom/narvii/item/detail/ItemDetailFragment$9;->val$i:Lcom/narvii/model/Item;

    .line 29
    .line 30
    .line 31
    invoke-static {p2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 32
    move-result-object p2

    .line 33
    .line 34
    const-string v0, "nvObject"

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    .line 39
    iget-object p2, p0, Lcom/narvii/item/detail/ItemDetailFragment$9;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    .line 40
    .line 41
    .line 42
    invoke-static {p2, p1}, Lcom/narvii/item/detail/ItemDetailFragment$9;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    .line 43
    :cond_1
    :goto_0
    return-void
.end method
