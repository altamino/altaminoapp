.class Lcom/narvii/app/NVCollapsibleTabFragment$5;
.super Landroid/database/DataSetObserver;
.source "NVCollapsibleTabFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/app/NVCollapsibleTabFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/app/NVCollapsibleTabFragment;


# direct methods
.method constructor <init>(Lcom/narvii/app/NVCollapsibleTabFragment;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/narvii/app/NVCollapsibleTabFragment$5;->this$0:Lcom/narvii/app/NVCollapsibleTabFragment;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/narvii/app/NVCollapsibleTabFragment$5;->this$0:Lcom/narvii/app/NVCollapsibleTabFragment;

    iget-object v0, v0, Lcom/narvii/app/NVCollapsibleTabFragment;->scrollableTabLayout:Lcom/narvii/widget/NVPagerTabLayout;

    if-eqz v0, :cond_0

    .line 201
    invoke-virtual {v0}, Lcom/narvii/widget/NVPagerTabLayout;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onInvalidated()V
    .locals 0

    return-void
.end method
