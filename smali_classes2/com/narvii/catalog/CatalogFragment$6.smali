.class Lcom/narvii/catalog/CatalogFragment$6;
.super Ljava/lang/Object;
.source "CatalogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/catalog/CatalogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/catalog/CatalogFragment;


# direct methods
.method constructor <init>(Lcom/narvii/catalog/CatalogFragment;)V
    .locals 0

    .line 588
    iput-object p1, p0, Lcom/narvii/catalog/CatalogFragment$6;->this$0:Lcom/narvii/catalog/CatalogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 591
    instance-of v0, p1, Lcom/narvii/widget/FlagItemLayout;

    if-eqz v0, :cond_9

    .line 592
    check-cast p1, Lcom/narvii/widget/FlagItemLayout;

    invoke-virtual {p1}, Lcom/narvii/widget/FlagItemLayout;->getLeftText()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/catalog/CatalogFragment$6;->this$0:Lcom/narvii/catalog/CatalogFragment;

    invoke-virtual {v1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f01b2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 593
    iget-object p1, p0, Lcom/narvii/catalog/CatalogFragment$6;->this$0:Lcom/narvii/catalog/CatalogFragment;

    invoke-virtual {p1}, Lcom/narvii/catalog/CatalogFragment;->reviewSubmission()V

    goto/16 :goto_1

    .line 594
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/widget/FlagItemLayout;->getLeftText()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/catalog/CatalogFragment$6;->this$0:Lcom/narvii/catalog/CatalogFragment;

    invoke-virtual {v1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f0097

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 595
    iget-object p1, p0, Lcom/narvii/catalog/CatalogFragment$6;->this$0:Lcom/narvii/catalog/CatalogFragment;

    invoke-virtual {p1}, Lcom/narvii/catalog/CatalogFragment;->addSubCategory()V

    goto/16 :goto_1

    .line 596
    :cond_1
    invoke-virtual {p1}, Lcom/narvii/widget/FlagItemLayout;->getLeftText()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/catalog/CatalogFragment$6;->this$0:Lcom/narvii/catalog/CatalogFragment;

    invoke-virtual {v1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f00a1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 597
    iget-object p1, p0, Lcom/narvii/catalog/CatalogFragment$6;->this$0:Lcom/narvii/catalog/CatalogFragment;

    invoke-virtual {p1}, Lcom/narvii/catalog/CatalogFragment;->editCategory()V

    goto/16 :goto_1

    .line 598
    :cond_2
    invoke-virtual {p1}, Lcom/narvii/widget/FlagItemLayout;->getLeftText()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/catalog/CatalogFragment$6;->this$0:Lcom/narvii/catalog/CatalogFragment;

    invoke-virtual {v1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f01aa

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 599
    iget-object p1, p0, Lcom/narvii/catalog/CatalogFragment$6;->this$0:Lcom/narvii/catalog/CatalogFragment;

    iget-object p1, p1, Lcom/narvii/catalog/CatalogFragment;->selAdapter:Lcom/narvii/catalog/CatalogFragment$SelAdapter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/narvii/list/select/SelectableAdapter;->startSelect(Ljava/util/List;)V

    goto/16 :goto_1

    .line 600
    :cond_3
    invoke-virtual {p1}, Lcom/narvii/widget/FlagItemLayout;->getLeftText()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/catalog/CatalogFragment$6;->this$0:Lcom/narvii/catalog/CatalogFragment;

    invoke-virtual {v1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f0ed5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 601
    iget-object p1, p0, Lcom/narvii/catalog/CatalogFragment$6;->this$0:Lcom/narvii/catalog/CatalogFragment;

    invoke-virtual {p1}, Lcom/narvii/catalog/CatalogFragment;->reorder()V

    goto :goto_1

    .line 602
    :cond_4
    invoke-virtual {p1}, Lcom/narvii/widget/FlagItemLayout;->getLeftText()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/catalog/CatalogFragment$6;->this$0:Lcom/narvii/catalog/CatalogFragment;

    invoke-virtual {v1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f01a3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 603
    iget-object p1, p0, Lcom/narvii/catalog/CatalogFragment$6;->this$0:Lcom/narvii/catalog/CatalogFragment;

    invoke-virtual {p1}, Lcom/narvii/catalog/CatalogFragment;->editCategory()V

    goto :goto_1

    .line 604
    :cond_5
    invoke-virtual {p1}, Lcom/narvii/widget/FlagItemLayout;->getLeftText()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/catalog/CatalogFragment$6;->this$0:Lcom/narvii/catalog/CatalogFragment;

    invoke-virtual {v1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f0f7b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 606
    iget-object p1, p0, Lcom/narvii/catalog/CatalogFragment$6;->this$0:Lcom/narvii/catalog/CatalogFragment;

    iget-object v0, p1, Lcom/narvii/catalog/CatalogFragment;->categoryId:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 607
    iget-object p1, p1, Lcom/narvii/catalog/CatalogFragment;->adapter:Lcom/narvii/catalog/CatalogFragment$CAdapter;

    invoke-virtual {p1}, Lcom/narvii/catalog/CategoryListAdapter;->getRootCategory()Lcom/narvii/model/ItemCategory;

    move-result-object p1

    goto :goto_0

    .line 609
    :cond_6
    iget-object p1, p1, Lcom/narvii/catalog/CatalogFragment;->category:Lcom/narvii/model/ItemCategory;

    .line 611
    :goto_0
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment$6;->this$0:Lcom/narvii/catalog/CatalogFragment;

    iget-object v0, v0, Lcom/narvii/catalog/CatalogFragment;->sendBroadcastHelper:Lcom/narvii/poweruser/SendBroadcastHelper;

    invoke-virtual {v0, p1}, Lcom/narvii/poweruser/SendBroadcastHelper;->sendBroadcast(Lcom/narvii/model/NVObject;)V

    goto :goto_1

    .line 612
    :cond_7
    invoke-virtual {p1}, Lcom/narvii/widget/FlagItemLayout;->getLeftText()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment$6;->this$0:Lcom/narvii/catalog/CatalogFragment;

    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f00a9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 613
    iget-object p1, p0, Lcom/narvii/catalog/CatalogFragment$6;->this$0:Lcom/narvii/catalog/CatalogFragment;

    invoke-virtual {p1}, Lcom/narvii/catalog/CatalogFragment;->launchModerationHistory()V

    .line 615
    :cond_8
    :goto_1
    iget-object p1, p0, Lcom/narvii/catalog/CatalogFragment$6;->this$0:Lcom/narvii/catalog/CatalogFragment;

    iget-object p1, p1, Lcom/narvii/catalog/CatalogFragment;->advancedOptionDialog:Lcom/narvii/poweruser/AdvancedOptionDialog;

    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    :cond_9
    return-void
.end method
