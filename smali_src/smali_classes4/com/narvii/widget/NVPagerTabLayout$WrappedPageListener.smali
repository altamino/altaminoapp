.class Lcom/narvii/widget/NVPagerTabLayout$WrappedPageListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


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

    iput-object p1, p0, Lcom/narvii/widget/NVPagerTabLayout$WrappedPageListener;->this$0:Lcom/narvii/widget/NVPagerTabLayout;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/narvii/widget/NVPagerTabLayout;Lcom/narvii/widget/k;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/widget/NVPagerTabLayout$WrappedPageListener;-><init>(Lcom/narvii/widget/NVPagerTabLayout;)V

    return-void
.end method

.method public static synthetic a(IFLcom/narvii/widget/NVPagerTabLayout$PositionChangeListener;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/widget/NVPagerTabLayout$WrappedPageListener;->lambda$onPageScrolled$0(IFLcom/narvii/widget/NVPagerTabLayout$PositionChangeListener;)V

    return-void
.end method

.method private static synthetic lambda$onPageScrolled$0(IFLcom/narvii/widget/NVPagerTabLayout$PositionChangeListener;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p2, p0, p1}, Lcom/narvii/widget/NVPagerTabLayout$PositionChangeListener;->onPositionChange(IF)V

    .line 4
    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 2

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    iget-object p1, p0, Lcom/narvii/widget/NVPagerTabLayout$WrappedPageListener;->this$0:Lcom/narvii/widget/NVPagerTabLayout;

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Lcom/narvii/widget/NVPagerTabLayout;->a(Lcom/narvii/widget/NVPagerTabLayout;)Landroidx/viewpager/widget/ViewPager;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x0

    .line 14
    .line 15
    .line 16
    invoke-static {p1, v0, v1}, Lcom/narvii/widget/NVPagerTabLayout;->e(Lcom/narvii/widget/NVPagerTabLayout;II)V

    .line 17
    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    .line 1
    .line 2
    iget-object p3, p0, Lcom/narvii/widget/NVPagerTabLayout$WrappedPageListener;->this$0:Lcom/narvii/widget/NVPagerTabLayout;

    .line 3
    .line 4
    .line 5
    invoke-static {p3, p1}, Lcom/narvii/widget/NVPagerTabLayout;->c(Lcom/narvii/widget/NVPagerTabLayout;I)V

    .line 6
    .line 7
    iget-object p3, p0, Lcom/narvii/widget/NVPagerTabLayout$WrappedPageListener;->this$0:Lcom/narvii/widget/NVPagerTabLayout;

    .line 8
    .line 9
    .line 10
    invoke-static {p3, p2}, Lcom/narvii/widget/NVPagerTabLayout;->d(Lcom/narvii/widget/NVPagerTabLayout;F)V

    .line 11
    .line 12
    iget-object p3, p0, Lcom/narvii/widget/NVPagerTabLayout$WrappedPageListener;->this$0:Lcom/narvii/widget/NVPagerTabLayout;

    .line 13
    .line 14
    iget-object p3, p3, Lcom/narvii/widget/NVPagerTabLayout;->positionChangeListenerEventDispatcher:Lcom/narvii/util/EventDispatcher;

    .line 15
    .line 16
    new-instance v0, Lcom/narvii/widget/j;

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, p1, p2}, Lcom/narvii/widget/j;-><init>(IF)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p3, v0}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 23
    .line 24
    iget-object p3, p0, Lcom/narvii/widget/NVPagerTabLayout$WrappedPageListener;->this$0:Lcom/narvii/widget/NVPagerTabLayout;

    .line 25
    .line 26
    .line 27
    invoke-static {p3}, Lcom/narvii/widget/NVPagerTabLayout;->b(Lcom/narvii/widget/NVPagerTabLayout;)Lcom/narvii/widget/TabContainerLayout;

    .line 28
    move-result-object p3

    .line 29
    .line 30
    .line 31
    invoke-virtual {p3, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 32
    move-result-object p3

    .line 33
    .line 34
    iget-object v0, p0, Lcom/narvii/widget/NVPagerTabLayout$WrappedPageListener;->this$0:Lcom/narvii/widget/NVPagerTabLayout;

    .line 35
    .line 36
    if-nez p3, :cond_0

    .line 37
    const/4 p2, 0x0

    .line 38
    goto :goto_0

    .line 39
    .line 40
    .line 41
    :cond_0
    invoke-static {v0}, Lcom/narvii/widget/NVPagerTabLayout;->b(Lcom/narvii/widget/NVPagerTabLayout;)Lcom/narvii/widget/TabContainerLayout;

    .line 42
    move-result-object p3

    .line 43
    .line 44
    .line 45
    invoke-virtual {p3, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 46
    move-result-object p3

    .line 47
    .line 48
    .line 49
    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    .line 50
    move-result p3

    .line 51
    int-to-float p3, p3

    .line 52
    mul-float/2addr p2, p3

    .line 53
    float-to-int p2, p2

    .line 54
    .line 55
    .line 56
    :goto_0
    invoke-static {v0, p1, p2}, Lcom/narvii/widget/NVPagerTabLayout;->e(Lcom/narvii/widget/NVPagerTabLayout;II)V

    .line 57
    .line 58
    iget-object p1, p0, Lcom/narvii/widget/NVPagerTabLayout$WrappedPageListener;->this$0:Lcom/narvii/widget/NVPagerTabLayout;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 62
    return-void
.end method

.method public onPageSelected(I)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    .line 4
    :goto_0
    iget-object v2, p0, Lcom/narvii/widget/NVPagerTabLayout$WrappedPageListener;->this$0:Lcom/narvii/widget/NVPagerTabLayout;

    .line 5
    .line 6
    .line 7
    invoke-static {v2}, Lcom/narvii/widget/NVPagerTabLayout;->b(Lcom/narvii/widget/NVPagerTabLayout;)Lcom/narvii/widget/TabContainerLayout;

    .line 8
    move-result-object v2

    .line 9
    .line 10
    .line 11
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 12
    move-result v2

    .line 13
    .line 14
    if-ge v1, v2, :cond_1

    .line 15
    .line 16
    if-ne v1, p1, :cond_0

    .line 17
    .line 18
    iget-object v2, p0, Lcom/narvii/widget/NVPagerTabLayout$WrappedPageListener;->this$0:Lcom/narvii/widget/NVPagerTabLayout;

    .line 19
    .line 20
    .line 21
    invoke-static {v2}, Lcom/narvii/widget/NVPagerTabLayout;->b(Lcom/narvii/widget/NVPagerTabLayout;)Lcom/narvii/widget/TabContainerLayout;

    .line 22
    move-result-object v2

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 26
    move-result-object v2

    .line 27
    .line 28
    iget-object v3, p0, Lcom/narvii/widget/NVPagerTabLayout$WrappedPageListener;->this$0:Lcom/narvii/widget/NVPagerTabLayout;

    .line 29
    .line 30
    iget-boolean v3, v3, Lcom/narvii/widget/NVPagerTabLayout;->showSelectedStatus:Z

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, v3}, Landroid/view/View;->setSelected(Z)V

    .line 34
    goto :goto_1

    .line 35
    .line 36
    :cond_0
    iget-object v2, p0, Lcom/narvii/widget/NVPagerTabLayout$WrappedPageListener;->this$0:Lcom/narvii/widget/NVPagerTabLayout;

    .line 37
    .line 38
    .line 39
    invoke-static {v2}, Lcom/narvii/widget/NVPagerTabLayout;->b(Lcom/narvii/widget/NVPagerTabLayout;)Lcom/narvii/widget/TabContainerLayout;

    .line 40
    move-result-object v2

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 44
    move-result-object v2

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, v0}, Landroid/view/View;->setSelected(Z)V

    .line 48
    .line 49
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 50
    goto :goto_0

    .line 51
    :cond_1
    return-void
.end method
