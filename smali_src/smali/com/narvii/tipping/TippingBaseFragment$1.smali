.class Lcom/narvii/tipping/TippingBaseFragment$1;
.super Lcom/narvii/list/MergeAdapter;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/tipping/TippingBaseFragment$1;->this$0:Lcom/narvii/tipping/TippingBaseFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    return-void
.end method


# virtual methods
.method public isEmpty()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/tipping/TippingBaseFragment$1;->this$0:Lcom/narvii/tipping/TippingBaseFragment;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/tipping/TippingBaseFragment;->listAdapter:Lcom/narvii/tipping/TippingBaseFragment$TippingListAdapter;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->isEmpty()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/tipping/TippingBaseFragment$1;->this$0:Lcom/narvii/tipping/TippingBaseFragment;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/narvii/tipping/TippingBaseFragment;->footerAdapter:Lcom/narvii/tipping/TippingBaseFragment$TippingListFooterAdatper;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->isEmpty()Z

    .line 20
    move-result v0

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    :cond_0
    const/4 v0, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const/4 v0, 0x0

    .line 26
    :goto_0
    return v0
.end method
