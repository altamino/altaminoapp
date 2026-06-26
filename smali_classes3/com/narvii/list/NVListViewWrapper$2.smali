.class Lcom/narvii/list/NVListViewWrapper$2;
.super Landroid/database/DataSetObserver;
.source "NVListViewWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/list/NVListViewWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/list/NVListViewWrapper;


# direct methods
.method constructor <init>(Lcom/narvii/list/NVListViewWrapper;)V
    .locals 0

    .line 255
    iput-object p1, p0, Lcom/narvii/list/NVListViewWrapper$2;->this$0:Lcom/narvii/list/NVListViewWrapper;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .line 258
    iget-object v0, p0, Lcom/narvii/list/NVListViewWrapper$2;->this$0:Lcom/narvii/list/NVListViewWrapper;

    invoke-static {v0}, Lcom/narvii/list/NVListViewWrapper;->access$000(Lcom/narvii/list/NVListViewWrapper;)Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/list/NVListViewWrapper;->onDataSetChanged(Landroid/widget/ListAdapter;)V

    return-void
.end method
