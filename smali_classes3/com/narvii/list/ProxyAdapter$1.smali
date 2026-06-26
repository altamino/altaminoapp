.class Lcom/narvii/list/ProxyAdapter$1;
.super Landroid/database/DataSetObserver;
.source "ProxyAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/list/ProxyAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/list/ProxyAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/list/ProxyAdapter;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/narvii/list/ProxyAdapter$1;->this$0:Lcom/narvii/list/ProxyAdapter;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/narvii/list/ProxyAdapter$1;->this$0:Lcom/narvii/list/ProxyAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/narvii/list/ProxyAdapter$1;->this$0:Lcom/narvii/list/ProxyAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    return-void
.end method
