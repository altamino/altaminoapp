.class Lcom/narvii/widget/NVTabLayout$2;
.super Ljava/lang/Object;
.source "NVTabLayout.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


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

    .line 146
    iput-object p1, p0, Lcom/narvii/widget/NVTabLayout$2;->this$0:Lcom/narvii/widget/NVTabLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 2

    if-nez p1, :cond_0

    .line 163
    iget-object p1, p0, Lcom/narvii/widget/NVTabLayout$2;->this$0:Lcom/narvii/widget/NVTabLayout;

    invoke-static {p1}, Lcom/narvii/widget/NVTabLayout;->access$000(Lcom/narvii/widget/NVTabLayout;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/narvii/widget/NVTabLayout;->access$300(Lcom/narvii/widget/NVTabLayout;II)V

    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    .line 149
    iget-object p3, p0, Lcom/narvii/widget/NVTabLayout$2;->this$0:Lcom/narvii/widget/NVTabLayout;

    invoke-static {p3, p1}, Lcom/narvii/widget/NVTabLayout;->access$102(Lcom/narvii/widget/NVTabLayout;I)I

    .line 150
    iget-object p3, p0, Lcom/narvii/widget/NVTabLayout$2;->this$0:Lcom/narvii/widget/NVTabLayout;

    invoke-static {p3, p2}, Lcom/narvii/widget/NVTabLayout;->access$202(Lcom/narvii/widget/NVTabLayout;F)F

    .line 151
    iget-object p3, p0, Lcom/narvii/widget/NVTabLayout$2;->this$0:Lcom/narvii/widget/NVTabLayout;

    iget-object v0, p3, Lcom/narvii/widget/NVTabLayout;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float p2, p2, v0

    float-to-int p2, p2

    invoke-static {p3, p1, p2}, Lcom/narvii/widget/NVTabLayout;->access$300(Lcom/narvii/widget/NVTabLayout;II)V

    .line 152
    iget-object p1, p0, Lcom/narvii/widget/NVTabLayout$2;->this$0:Lcom/narvii/widget/NVTabLayout;

    invoke-virtual {p1}, Landroid/widget/HorizontalScrollView;->invalidate()V

    return-void
.end method

.method public onPageSelected(I)V
    .locals 0

    return-void
.end method
