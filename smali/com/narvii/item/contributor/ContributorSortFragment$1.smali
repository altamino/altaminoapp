.class Lcom/narvii/item/contributor/ContributorSortFragment$1;
.super Ljava/lang/Object;
.source "ContributorSortFragment.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/item/contributor/ContributorSortFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Lcom/narvii/model/api/ApiResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/item/contributor/ContributorSortFragment;

.field final synthetic val$list:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/narvii/item/contributor/ContributorSortFragment;Ljava/util/ArrayList;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/narvii/item/contributor/ContributorSortFragment$1;->this$0:Lcom/narvii/item/contributor/ContributorSortFragment;

    iput-object p2, p0, Lcom/narvii/item/contributor/ContributorSortFragment$1;->val$list:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/model/api/ApiResponse;)V
    .locals 2

    .line 75
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 76
    iget-object v0, p0, Lcom/narvii/item/contributor/ContributorSortFragment$1;->val$list:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "contributorList"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    iget-object v0, p0, Lcom/narvii/item/contributor/ContributorSortFragment$1;->this$0:Lcom/narvii/item/contributor/ContributorSortFragment;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Lcom/narvii/app/NVFragment;->setResult(ILandroid/content/Intent;)V

    .line 78
    iget-object p1, p0, Lcom/narvii/item/contributor/ContributorSortFragment$1;->this$0:Lcom/narvii/item/contributor/ContributorSortFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 72
    check-cast p1, Lcom/narvii/model/api/ApiResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/item/contributor/ContributorSortFragment$1;->call(Lcom/narvii/model/api/ApiResponse;)V

    return-void
.end method
