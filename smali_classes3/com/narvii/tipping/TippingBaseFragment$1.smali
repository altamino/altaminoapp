.class Lcom/narvii/tipping/TippingBaseFragment$1;
.super Lcom/narvii/list/MergeAdapter;
.source "TippingBaseFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/tipping/TippingBaseFragment;->createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/tipping/TippingBaseFragment;


# direct methods
.method constructor <init>(Lcom/narvii/tipping/TippingBaseFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/narvii/tipping/TippingBaseFragment$1;->this$0:Lcom/narvii/tipping/TippingBaseFragment;

    invoke-direct {p0, p2}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public isEmpty()Z
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/narvii/tipping/TippingBaseFragment$1;->this$0:Lcom/narvii/tipping/TippingBaseFragment;

    iget-object v0, v0, Lcom/narvii/tipping/TippingBaseFragment;->listAdapter:Lcom/narvii/tipping/TippingBaseFragment$TippingListAdapter;

    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/narvii/tipping/TippingBaseFragment$1;->this$0:Lcom/narvii/tipping/TippingBaseFragment;

    iget-object v0, v0, Lcom/narvii/tipping/TippingBaseFragment;->footerAdapter:Lcom/narvii/tipping/TippingBaseFragment$TippingListFooterAdatper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
