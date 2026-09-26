.class Lcom/narvii/app/NVCollapsibleTabFragment$1;
.super Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/app/NVCollapsibleTabFragment$1;->this$0:Lcom/narvii/app/NVCollapsibleTabFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;->onPageSelected(I)V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/app/NVCollapsibleTabFragment$1;->this$0:Lcom/narvii/app/NVCollapsibleTabFragment;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/narvii/app/NVCollapsibleTabFragment;->getPagerAdapter()Lcom/narvii/app/NVScrollablePagerAdapter;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/narvii/app/NVScrollablePagerAdapter;->getFragmentAt(I)Landroidx/fragment/app/Fragment;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    instance-of v1, v0, Lcom/narvii/app/NVFragment;

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    iget-object v1, p0, Lcom/narvii/app/NVCollapsibleTabFragment$1;->this$0:Lcom/narvii/app/NVCollapsibleTabFragment;

    .line 20
    .line 21
    check-cast v0, Lcom/narvii/app/NVFragment;

    .line 22
    .line 23
    iput-object v0, v1, Lcom/narvii/app/NVCollapsibleTabFragment;->currentShowingFragment:Lcom/narvii/app/NVFragment;

    .line 24
    .line 25
    :cond_0
    iget-object v0, p0, Lcom/narvii/app/NVCollapsibleTabFragment$1;->this$0:Lcom/narvii/app/NVCollapsibleTabFragment;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p1}, Lcom/narvii/app/NVCollapsibleTabFragment;->updateTabView(I)V

    .line 29
    return-void
.end method
