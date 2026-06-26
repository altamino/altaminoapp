.class Lcom/narvii/app/TabPagerFragment$1;
.super Landroid/database/DataSetObserver;
.source "TabPagerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/app/TabPagerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/app/TabPagerFragment;


# direct methods
.method constructor <init>(Lcom/narvii/app/TabPagerFragment;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/narvii/app/TabPagerFragment$1;->this$0:Lcom/narvii/app/TabPagerFragment;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/narvii/app/TabPagerFragment$1;->this$0:Lcom/narvii/app/TabPagerFragment;

    iget-object v0, v0, Lcom/narvii/app/TabPagerFragment;->scrollableTabLayout:Lcom/narvii/widget/NVPagerTabLayout;

    invoke-virtual {v0}, Lcom/narvii/widget/NVPagerTabLayout;->notifyDataSetChanged()V

    return-void
.end method

.method public onInvalidated()V
    .locals 0

    return-void
.end method
