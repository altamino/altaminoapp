.class Lcom/narvii/list/NVListFragment$3;
.super Landroid/database/DataSetObserver;
.source "NVListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/list/NVListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/list/NVListFragment;


# direct methods
.method constructor <init>(Lcom/narvii/list/NVListFragment;)V
    .locals 0

    .line 607
    iput-object p1, p0, Lcom/narvii/list/NVListFragment$3;->this$0:Lcom/narvii/list/NVListFragment;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .line 610
    iget-object v0, p0, Lcom/narvii/list/NVListFragment$3;->this$0:Lcom/narvii/list/NVListFragment;

    invoke-static {v0}, Lcom/narvii/list/NVListFragment;->access$200(Lcom/narvii/list/NVListFragment;)Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/list/NVListFragment;->onDataSetChanged(Landroid/widget/ListAdapter;)V

    return-void
.end method
