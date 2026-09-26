.class Lcom/narvii/master/SortCommunityFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/SortCommunityFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
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
.field final synthetic this$0:Lcom/narvii/master/SortCommunityFragment;

.field final synthetic val$list:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/narvii/master/SortCommunityFragment;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/master/SortCommunityFragment$1;->this$0:Lcom/narvii/master/SortCommunityFragment;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/master/SortCommunityFragment$1;->val$list:Ljava/util/ArrayList;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/model/api/ApiResponse;)V
    .locals 2

    iget-object p1, p0, Lcom/narvii/master/SortCommunityFragment$1;->this$0:Lcom/narvii/master/SortCommunityFragment;

    const-string v0, "myCommunityList"

    .line 2
    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/community/MyCommunityListService;

    iget-object v0, p0, Lcom/narvii/master/SortCommunityFragment$1;->val$list:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {p1, v0}, Lcom/narvii/community/MyCommunityListService;->reorder(Ljava/util/List;)V

    .line 4
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    iget-object v0, p0, Lcom/narvii/master/SortCommunityFragment$1;->val$list:Ljava/util/ArrayList;

    .line 5
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "communityList"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/narvii/master/SortCommunityFragment$1;->this$0:Lcom/narvii/master/SortCommunityFragment;

    const/4 v1, -0x1

    .line 6
    invoke-virtual {v0, v1, p1}, Lcom/narvii/app/NVFragment;->setResult(ILandroid/content/Intent;)V

    iget-object p1, p0, Lcom/narvii/master/SortCommunityFragment$1;->this$0:Lcom/narvii/master/SortCommunityFragment;

    .line 7
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/model/api/ApiResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/master/SortCommunityFragment$1;->call(Lcom/narvii/model/api/ApiResponse;)V

    return-void
.end method
