.class Lcom/narvii/widget/NVTabLayout$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/widget/NVTabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/widget/NVTabLayout;


# direct methods
.method constructor <init>(Lcom/narvii/widget/NVTabLayout;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/widget/NVTabLayout$2;->this$0:Lcom/narvii/widget/NVTabLayout;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
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
    iget-object p1, p0, Lcom/narvii/widget/NVTabLayout$2;->this$0:Lcom/narvii/widget/NVTabLayout;

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Lcom/narvii/widget/NVTabLayout;->b(Lcom/narvii/widget/NVTabLayout;)Landroidx/viewpager/widget/ViewPager;

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
    invoke-static {p1, v0, v1}, Lcom/narvii/widget/NVTabLayout;->e(Lcom/narvii/widget/NVTabLayout;II)V

    .line 17
    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    .line 1
    .line 2
    iget-object p3, p0, Lcom/narvii/widget/NVTabLayout$2;->this$0:Lcom/narvii/widget/NVTabLayout;

    .line 3
    .line 4
    .line 5
    invoke-static {p3, p1}, Lcom/narvii/widget/NVTabLayout;->c(Lcom/narvii/widget/NVTabLayout;I)V

    .line 6
    .line 7
    iget-object p3, p0, Lcom/narvii/widget/NVTabLayout$2;->this$0:Lcom/narvii/widget/NVTabLayout;

    .line 8
    .line 9
    .line 10
    invoke-static {p3, p2}, Lcom/narvii/widget/NVTabLayout;->d(Lcom/narvii/widget/NVTabLayout;F)V

    .line 11
    .line 12
    iget-object p3, p0, Lcom/narvii/widget/NVTabLayout$2;->this$0:Lcom/narvii/widget/NVTabLayout;

    .line 13
    .line 14
    iget-object v0, p3, Lcom/narvii/widget/NVTabLayout;->tabsContainer:Landroid/widget/LinearLayout;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 22
    move-result v0

    .line 23
    int-to-float v0, v0

    .line 24
    mul-float/2addr p2, v0

    .line 25
    float-to-int p2, p2

    .line 26
    .line 27
    .line 28
    invoke-static {p3, p1, p2}, Lcom/narvii/widget/NVTabLayout;->e(Lcom/narvii/widget/NVTabLayout;II)V

    .line 29
    .line 30
    iget-object p1, p0, Lcom/narvii/widget/NVTabLayout$2;->this$0:Lcom/narvii/widget/NVTabLayout;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 34
    return-void
.end method

.method public onPageSelected(I)V
    .locals 0

    return-void
.end method
