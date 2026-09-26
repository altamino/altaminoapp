.class Lcom/narvii/list/NVListViewWrapper$2;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/list/NVListViewWrapper$2;->this$0:Lcom/narvii/list/NVListViewWrapper;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/NVListViewWrapper$2;->this$0:Lcom/narvii/list/NVListViewWrapper;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/list/NVListViewWrapper;->a(Lcom/narvii/list/NVListViewWrapper;)Landroid/widget/ListAdapter;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/narvii/list/NVListViewWrapper;->onDataSetChanged(Landroid/widget/ListAdapter;)V

    .line 10
    return-void
.end method
