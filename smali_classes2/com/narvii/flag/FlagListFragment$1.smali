.class Lcom/narvii/flag/FlagListFragment$1;
.super Ljava/lang/Object;
.source "FlagListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/flag/FlagListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/flag/FlagListFragment;


# direct methods
.method constructor <init>(Lcom/narvii/flag/FlagListFragment;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/narvii/flag/FlagListFragment$1;->this$0:Lcom/narvii/flag/FlagListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 102
    iget-object p1, p0, Lcom/narvii/flag/FlagListFragment$1;->this$0:Lcom/narvii/flag/FlagListFragment;

    invoke-virtual {p1}, Lcom/narvii/list/NVListFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    check-cast p1, Lcom/narvii/flag/FlagListFragment$FlagListAdapter;

    invoke-virtual {p1}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 103
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    const/4 p1, 0x0

    .line 104
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/narvii/flag/model/Flag;

    .line 105
    iget-object v0, p0, Lcom/narvii/flag/FlagListFragment$1;->this$0:Lcom/narvii/flag/FlagListFragment;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    iget-object p1, p0, Lcom/narvii/flag/FlagListFragment$1;->this$0:Lcom/narvii/flag/FlagListFragment;

    .line 106
    invoke-static {p1}, Lcom/narvii/flag/FlagListFragment;->access$000(Lcom/narvii/flag/FlagListFragment;)Ljava/lang/String;

    move-result-object p1

    const-string v4, "resolved"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/narvii/flag/FlagListFragment$1;->this$0:Lcom/narvii/flag/FlagListFragment;

    invoke-static {p1}, Lcom/narvii/flag/FlagListFragment;->access$000(Lcom/narvii/flag/FlagListFragment;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/narvii/flag/FlagListFragment$1;->this$0:Lcom/narvii/flag/FlagListFragment;

    invoke-static {p1}, Lcom/narvii/flag/FlagListFragment;->access$100(Lcom/narvii/flag/FlagListFragment;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    move-object v4, p1

    iget-object p1, p0, Lcom/narvii/flag/FlagListFragment$1;->this$0:Lcom/narvii/flag/FlagListFragment;

    invoke-static {p1}, Lcom/narvii/flag/FlagListFragment;->access$200(Lcom/narvii/flag/FlagListFragment;)Ljava/lang/String;

    move-result-object v5

    .line 105
    invoke-static/range {v0 .. v5}, Lcom/narvii/flag/resolve/FlagModeHelper;->launchFlagMode(Lcom/narvii/app/NVContext;Lcom/narvii/flag/model/Flag;Ljava/util/List;ILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
