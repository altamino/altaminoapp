.class Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout$2;
.super Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;->onFirstLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;


# direct methods
.method constructor <init>(Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout$2;->this$0:Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;->onPageSelected(I)V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout$2;->this$0:Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;->o(Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;)Lcom/narvii/widget/NVViewPager;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    iget-object v1, p0, Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout$2;->this$0:Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;

    .line 16
    .line 17
    .line 18
    invoke-static {v1}, Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;->o(Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;)Lcom/narvii/widget/NVViewPager;

    .line 19
    move-result-object v2

    .line 20
    .line 21
    .line 22
    invoke-static {v1, v2}, Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;->p(Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;Landroid/view/ViewGroup;)V

    .line 23
    .line 24
    instance-of v1, v0, Lcom/narvii/app/NVScrollablePagerAdapter;

    .line 25
    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    check-cast v0, Lcom/narvii/app/NVScrollablePagerAdapter;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p1}, Lcom/narvii/app/NVScrollablePagerAdapter;->getFragmentAt(I)Landroidx/fragment/app/Fragment;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    if-eqz p1, :cond_0

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    instance-of v0, v0, Landroid/view/ViewGroup;

    .line 41
    .line 42
    if-eqz v0, :cond_0

    .line 43
    .line 44
    iget-object v0, p0, Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout$2;->this$0:Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 48
    move-result-object p1

    .line 49
    .line 50
    check-cast p1, Landroid/view/ViewGroup;

    .line 51
    .line 52
    .line 53
    invoke-static {v0, p1}, Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;->p(Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;Landroid/view/ViewGroup;)V

    .line 54
    .line 55
    :cond_0
    iget-object p1, p0, Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout$2;->this$0:Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;

    .line 56
    .line 57
    .line 58
    invoke-static {p1}, Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;->m(Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;)Landroid/os/Handler;

    .line 59
    move-result-object p1

    .line 60
    .line 61
    iget-object v0, p0, Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout$2;->this$0:Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;

    .line 62
    .line 63
    .line 64
    invoke-static {v0}, Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;->k(Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;)Ljava/lang/Runnable;

    .line 65
    move-result-object v0

    .line 66
    .line 67
    const-wide/16 v1, 0xc8

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 71
    return-void
.end method
