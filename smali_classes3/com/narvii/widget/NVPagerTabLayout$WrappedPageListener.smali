.class Lcom/narvii/widget/NVPagerTabLayout$WrappedPageListener;
.super Ljava/lang/Object;
.source "NVPagerTabLayout.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/widget/NVPagerTabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WrappedPageListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/widget/NVPagerTabLayout;


# direct methods
.method private constructor <init>(Lcom/narvii/widget/NVPagerTabLayout;)V
    .locals 0

    .line 398
    iput-object p1, p0, Lcom/narvii/widget/NVPagerTabLayout$WrappedPageListener;->this$0:Lcom/narvii/widget/NVPagerTabLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/narvii/widget/NVPagerTabLayout;Lcom/narvii/widget/NVPagerTabLayout$1;)V
    .locals 0

    .line 398
    invoke-direct {p0, p1}, Lcom/narvii/widget/NVPagerTabLayout$WrappedPageListener;-><init>(Lcom/narvii/widget/NVPagerTabLayout;)V

    return-void
.end method

.method static synthetic lambda$onPageScrolled$0(IFLcom/narvii/widget/NVPagerTabLayout$PositionChangeListener;)V
    .locals 0

    .line 404
    invoke-interface {p2, p0, p1}, Lcom/narvii/widget/NVPagerTabLayout$PositionChangeListener;->onPositionChange(IF)V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 2

    if-nez p1, :cond_0

    .line 424
    iget-object p1, p0, Lcom/narvii/widget/NVPagerTabLayout$WrappedPageListener;->this$0:Lcom/narvii/widget/NVPagerTabLayout;

    invoke-static {p1}, Lcom/narvii/widget/NVPagerTabLayout;->access$100(Lcom/narvii/widget/NVPagerTabLayout;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/narvii/widget/NVPagerTabLayout;->access$200(Lcom/narvii/widget/NVPagerTabLayout;II)V

    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    .line 402
    iget-object p3, p0, Lcom/narvii/widget/NVPagerTabLayout$WrappedPageListener;->this$0:Lcom/narvii/widget/NVPagerTabLayout;

    invoke-static {p3, p1}, Lcom/narvii/widget/NVPagerTabLayout;->access$302(Lcom/narvii/widget/NVPagerTabLayout;I)I

    .line 403
    iget-object p3, p0, Lcom/narvii/widget/NVPagerTabLayout$WrappedPageListener;->this$0:Lcom/narvii/widget/NVPagerTabLayout;

    invoke-static {p3, p2}, Lcom/narvii/widget/NVPagerTabLayout;->access$402(Lcom/narvii/widget/NVPagerTabLayout;F)F

    .line 404
    iget-object p3, p0, Lcom/narvii/widget/NVPagerTabLayout$WrappedPageListener;->this$0:Lcom/narvii/widget/NVPagerTabLayout;

    iget-object p3, p3, Lcom/narvii/widget/NVPagerTabLayout;->positionChangeListenerEventDispatcher:Lcom/narvii/util/EventDispatcher;

    new-instance v0, Lcom/narvii/widget/-$$Lambda$NVPagerTabLayout$WrappedPageListener$rLL7d4KeL4OMv5QVW9_ElMR6Xfg;

    invoke-direct {v0, p1, p2}, Lcom/narvii/widget/-$$Lambda$NVPagerTabLayout$WrappedPageListener$rLL7d4KeL4OMv5QVW9_ElMR6Xfg;-><init>(IF)V

    invoke-virtual {p3, v0}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 405
    iget-object p3, p0, Lcom/narvii/widget/NVPagerTabLayout$WrappedPageListener;->this$0:Lcom/narvii/widget/NVPagerTabLayout;

    invoke-static {p3}, Lcom/narvii/widget/NVPagerTabLayout;->access$500(Lcom/narvii/widget/NVPagerTabLayout;)Lcom/narvii/widget/TabContainerLayout;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    .line 406
    iget-object v0, p0, Lcom/narvii/widget/NVPagerTabLayout$WrappedPageListener;->this$0:Lcom/narvii/widget/NVPagerTabLayout;

    if-nez p3, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/narvii/widget/NVPagerTabLayout;->access$500(Lcom/narvii/widget/NVPagerTabLayout;)Lcom/narvii/widget/TabContainerLayout;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result p3

    int-to-float p3, p3

    mul-float p2, p2, p3

    float-to-int p2, p2

    :goto_0
    invoke-static {v0, p1, p2}, Lcom/narvii/widget/NVPagerTabLayout;->access$200(Lcom/narvii/widget/NVPagerTabLayout;II)V

    .line 407
    iget-object p1, p0, Lcom/narvii/widget/NVPagerTabLayout$WrappedPageListener;->this$0:Lcom/narvii/widget/NVPagerTabLayout;

    invoke-virtual {p1}, Landroid/widget/HorizontalScrollView;->invalidate()V

    return-void
.end method

.method public onPageSelected(I)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 412
    :goto_0
    iget-object v2, p0, Lcom/narvii/widget/NVPagerTabLayout$WrappedPageListener;->this$0:Lcom/narvii/widget/NVPagerTabLayout;

    invoke-static {v2}, Lcom/narvii/widget/NVPagerTabLayout;->access$500(Lcom/narvii/widget/NVPagerTabLayout;)Lcom/narvii/widget/TabContainerLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    if-ne v1, p1, :cond_0

    .line 414
    iget-object v2, p0, Lcom/narvii/widget/NVPagerTabLayout$WrappedPageListener;->this$0:Lcom/narvii/widget/NVPagerTabLayout;

    invoke-static {v2}, Lcom/narvii/widget/NVPagerTabLayout;->access$500(Lcom/narvii/widget/NVPagerTabLayout;)Lcom/narvii/widget/TabContainerLayout;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/narvii/widget/NVPagerTabLayout$WrappedPageListener;->this$0:Lcom/narvii/widget/NVPagerTabLayout;

    iget-boolean v3, v3, Lcom/narvii/widget/NVPagerTabLayout;->showSelectedStatus:Z

    invoke-virtual {v2, v3}, Landroid/view/View;->setSelected(Z)V

    goto :goto_1

    .line 416
    :cond_0
    iget-object v2, p0, Lcom/narvii/widget/NVPagerTabLayout$WrappedPageListener;->this$0:Lcom/narvii/widget/NVPagerTabLayout;

    invoke-static {v2}, Lcom/narvii/widget/NVPagerTabLayout;->access$500(Lcom/narvii/widget/NVPagerTabLayout;)Lcom/narvii/widget/TabContainerLayout;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setSelected(Z)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
