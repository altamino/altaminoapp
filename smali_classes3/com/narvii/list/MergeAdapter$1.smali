.class Lcom/narvii/list/MergeAdapter$1;
.super Landroid/database/DataSetObserver;
.source "MergeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/list/MergeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/list/MergeAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/list/MergeAdapter;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/narvii/list/MergeAdapter$1;->this$0:Lcom/narvii/list/MergeAdapter;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/narvii/list/MergeAdapter$1;->this$0:Lcom/narvii/list/MergeAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/narvii/list/MergeAdapter$1;->this$0:Lcom/narvii/list/MergeAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    return-void
.end method
