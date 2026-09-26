.class Lcom/narvii/item/detail/HeaderLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/item/detail/HeaderLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/item/detail/HeaderLayout;


# direct methods
.method constructor <init>(Lcom/narvii/item/detail/HeaderLayout;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/item/detail/HeaderLayout$1;->this$0:Lcom/narvii/item/detail/HeaderLayout;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method

.method public static safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Landroid/content/Context;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroid/content/Context;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/narvii/item/detail/HeaderLayout$1;->call(Ljava/lang/String;)V

    return-void
.end method

.method public call(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/narvii/item/detail/HeaderLayout$1;->this$0:Lcom/narvii/item/detail/HeaderLayout;

    .line 2
    invoke-static {v0}, Lcom/narvii/item/detail/HeaderLayout;->b(Lcom/narvii/item/detail/HeaderLayout;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/narvii/item/detail/HeaderLayout$1;->this$0:Lcom/narvii/item/detail/HeaderLayout;

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f1211ac

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/narvii/item/detail/HeaderLayout$1;->this$0:Lcom/narvii/item/detail/HeaderLayout;

    .line 4
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object v0

    .line 5
    new-instance v1, Lcom/narvii/community/CommunityHelper;

    invoke-direct {v1, v0}, Lcom/narvii/community/CommunityHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iget-object v2, p0, Lcom/narvii/item/detail/HeaderLayout$1;->this$0:Lcom/narvii/item/detail/HeaderLayout;

    iget-object v2, v2, Lcom/narvii/item/detail/HeaderLayout;->item:Lcom/narvii/model/Item;

    iget v2, v2, Lcom/narvii/model/Feed;->ndcId:I

    invoke-virtual {v1, v2}, Lcom/narvii/community/CommunityHelper;->checkCommunityJoined(I)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/narvii/item/detail/HeaderLayout$1;->this$0:Lcom/narvii/item/detail/HeaderLayout;

    .line 6
    invoke-static {v1}, Lcom/narvii/item/detail/HeaderLayout;->a(Lcom/narvii/item/detail/HeaderLayout;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p1, p0, Lcom/narvii/item/detail/HeaderLayout$1;->this$0:Lcom/narvii/item/detail/HeaderLayout;

    .line 7
    iget-object p1, p1, Lcom/narvii/item/detail/HeaderLayout;->item:Lcom/narvii/model/Item;

    const-string v1, "Page Detailed View"

    invoke-static {v0, p1, v1}, Lcom/narvii/influencer/FansOnlyHintDialog;->showFansOnlyHintDialog(Lcom/narvii/app/NVContext;Lcom/narvii/influencer/FansOnlyContent;Ljava/lang/String;)V

    return-void

    :cond_2
    const-class v0, Lcom/narvii/search/SearchPagesFragment;

    .line 8
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "q"

    .line 9
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "tab"

    const/4 v1, 0x1

    .line 10
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :try_start_0
    iget-object p1, p0, Lcom/narvii/item/detail/HeaderLayout$1;->this$0:Lcom/narvii/item/detail/HeaderLayout;

    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/narvii/item/detail/HeaderLayout$1;->safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
