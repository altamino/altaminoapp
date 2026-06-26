.class Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout$2;
.super Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;
.source "NVHeaderCollapsibleLayout.java"


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

    .line 62
    iput-object p1, p0, Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout$2;->this$0:Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 3

    .line 65
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;->onPageSelected(I)V

    .line 66
    iget-object v0, p0, Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout$2;->this$0:Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;

    invoke-static {v0}, Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;->access$500(Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;)Lcom/narvii/widget/NVViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    .line 67
    iget-object v1, p0, Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout$2;->this$0:Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;

    invoke-static {v1}, Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;->access$500(Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;)Lcom/narvii/widget/NVViewPager;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;->access$102(Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    .line 68
    instance-of v1, v0, Lcom/narvii/app/NVScrollablePagerAdapter;

    if-eqz v1, :cond_0

    .line 69
    check-cast v0, Lcom/narvii/app/NVScrollablePagerAdapter;

    invoke-virtual {v0, p1}, Lcom/narvii/app/NVScrollablePagerAdapter;->getFragmentAt(I)Landroid/support/v4/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 70
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout$2;->this$0:Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-static {v0, p1}, Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;->access$102(Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    .line 74
    :cond_0
    iget-object p1, p0, Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout$2;->this$0:Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;

    invoke-static {p1}, Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;->access$700(Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout$2;->this$0:Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;

    invoke-static {v0}, Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;->access$600(Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
