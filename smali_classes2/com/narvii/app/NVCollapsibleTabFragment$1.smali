.class Lcom/narvii/app/NVCollapsibleTabFragment$1;
.super Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;
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

    .line 115
    iput-object p1, p0, Lcom/narvii/app/NVCollapsibleTabFragment$1;->this$0:Lcom/narvii/app/NVCollapsibleTabFragment;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 2

    .line 118
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;->onPageSelected(I)V

    .line 119
    iget-object v0, p0, Lcom/narvii/app/NVCollapsibleTabFragment$1;->this$0:Lcom/narvii/app/NVCollapsibleTabFragment;

    invoke-virtual {v0}, Lcom/narvii/app/NVCollapsibleTabFragment;->getPagerAdapter()Lcom/narvii/app/NVScrollablePagerAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/narvii/app/NVScrollablePagerAdapter;->getFragmentAt(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 120
    instance-of v1, v0, Lcom/narvii/app/NVFragment;

    if-eqz v1, :cond_0

    .line 121
    iget-object v1, p0, Lcom/narvii/app/NVCollapsibleTabFragment$1;->this$0:Lcom/narvii/app/NVCollapsibleTabFragment;

    check-cast v0, Lcom/narvii/app/NVFragment;

    iput-object v0, v1, Lcom/narvii/app/NVCollapsibleTabFragment;->currentShowingFragment:Lcom/narvii/app/NVFragment;

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/narvii/app/NVCollapsibleTabFragment$1;->this$0:Lcom/narvii/app/NVCollapsibleTabFragment;

    invoke-virtual {v0, p1}, Lcom/narvii/app/NVCollapsibleTabFragment;->updateTabView(I)V

    return-void
.end method
