.class Lcom/narvii/widget/NVPagerTabLayout$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/widget/NVPagerTabLayout;->notifyDataSetChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/widget/NVPagerTabLayout;


# direct methods
.method constructor <init>(Lcom/narvii/widget/NVPagerTabLayout;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/widget/NVPagerTabLayout$2;->this$0:Lcom/narvii/widget/NVPagerTabLayout;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/NVPagerTabLayout$2;->this$0:Lcom/narvii/widget/NVPagerTabLayout;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/widget/NVPagerTabLayout$2;->this$0:Lcom/narvii/widget/NVPagerTabLayout;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 14
    move-result v0

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/NVPagerTabLayout$2;->this$0:Lcom/narvii/widget/NVPagerTabLayout;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 26
    .line 27
    iget-object v0, p0, Lcom/narvii/widget/NVPagerTabLayout$2;->this$0:Lcom/narvii/widget/NVPagerTabLayout;

    .line 28
    .line 29
    .line 30
    invoke-static {v0}, Lcom/narvii/widget/NVPagerTabLayout;->a(Lcom/narvii/widget/NVPagerTabLayout;)Landroidx/viewpager/widget/ViewPager;

    .line 31
    move-result-object v1

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    .line 35
    move-result v1

    .line 36
    const/4 v2, 0x0

    .line 37
    .line 38
    .line 39
    invoke-static {v0, v1, v2}, Lcom/narvii/widget/NVPagerTabLayout;->e(Lcom/narvii/widget/NVPagerTabLayout;II)V

    .line 40
    :cond_1
    return-void
.end method
