.class Lcom/narvii/app/NVBaseScrollableTabFragment$4;
.super Landroid/database/DataSetObserver;
.source "NVBaseScrollableTabFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/app/NVBaseScrollableTabFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/app/NVBaseScrollableTabFragment;


# direct methods
.method constructor <init>(Lcom/narvii/app/NVBaseScrollableTabFragment;)V
    .locals 0

    .line 249
    iput-object p1, p0, Lcom/narvii/app/NVBaseScrollableTabFragment$4;->this$0:Lcom/narvii/app/NVBaseScrollableTabFragment;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/narvii/app/NVBaseScrollableTabFragment$4;->this$0:Lcom/narvii/app/NVBaseScrollableTabFragment;

    iget-object v0, v0, Lcom/narvii/app/NVBaseScrollableTabFragment;->scrollableTabLayout:Lcom/narvii/widget/NVPagerTabLayout;

    invoke-virtual {v0}, Lcom/narvii/widget/NVPagerTabLayout;->notifyDataSetChanged()V

    return-void
.end method

.method public onInvalidated()V
    .locals 0

    return-void
.end method
