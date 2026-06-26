.class Lcom/narvii/item/detail/HeaderLayout$1;
.super Ljava/lang/Object;
.source "HeaderLayout.java"

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

    .line 62
    iput-object p1, p0, Lcom/narvii/item/detail/HeaderLayout$1;->this$0:Lcom/narvii/item/detail/HeaderLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 62
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/narvii/item/detail/HeaderLayout$1;->call(Ljava/lang/String;)V

    return-void
.end method

.method public call(Ljava/lang/String;)V
    .locals 3

    .line 65
    iget-object v0, p0, Lcom/narvii/item/detail/HeaderLayout$1;->this$0:Lcom/narvii/item/detail/HeaderLayout;

    invoke-static {v0}, Lcom/narvii/item/detail/HeaderLayout;->access$000(Lcom/narvii/item/detail/HeaderLayout;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    iget-object p1, p0, Lcom/narvii/item/detail/HeaderLayout$1;->this$0:Lcom/narvii/item/detail/HeaderLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0f10b1

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/narvii/item/detail/HeaderLayout$1;->this$0:Lcom/narvii/item/detail/HeaderLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object v0

    .line 70
    new-instance v1, Lcom/narvii/community/CommunityHelper;

    invoke-direct {v1, v0}, Lcom/narvii/community/CommunityHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iget-object v2, p0, Lcom/narvii/item/detail/HeaderLayout$1;->this$0:Lcom/narvii/item/detail/HeaderLayout;

    iget-object v2, v2, Lcom/narvii/item/detail/HeaderLayout;->item:Lcom/narvii/model/Item;

    iget v2, v2, Lcom/narvii/model/Feed;->ndcId:I

    invoke-virtual {v1, v2}, Lcom/narvii/community/CommunityHelper;->checkCommunityJoined(I)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 73
    :cond_1
    iget-object v1, p0, Lcom/narvii/item/detail/HeaderLayout$1;->this$0:Lcom/narvii/item/detail/HeaderLayout;

    invoke-static {v1}, Lcom/narvii/item/detail/HeaderLayout;->access$100(Lcom/narvii/item/detail/HeaderLayout;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 74
    iget-object p1, p0, Lcom/narvii/item/detail/HeaderLayout$1;->this$0:Lcom/narvii/item/detail/HeaderLayout;

    iget-object p1, p1, Lcom/narvii/item/detail/HeaderLayout;->item:Lcom/narvii/model/Item;

    const-string v1, "Page Detailed View"

    invoke-static {v0, p1, v1}, Lcom/narvii/influencer/FansOnlyHintDialog;->showFansOnlyHintDialog(Lcom/narvii/app/NVContext;Lcom/narvii/influencer/FansOnlyContent;Ljava/lang/String;)V

    return-void

    .line 77
    :cond_2
    const-class v0, Lcom/narvii/search/SearchPagesFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "q"

    .line 78
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, 0x1

    const-string/jumbo v1, "tab"

    .line 79
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 81
    :try_start_0
    iget-object p1, p0, Lcom/narvii/item/detail/HeaderLayout$1;->this$0:Lcom/narvii/item/detail/HeaderLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
