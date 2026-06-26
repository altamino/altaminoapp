.class Lcom/narvii/widget/NVPagerTabLayout$2;
.super Ljava/lang/Object;
.source "NVPagerTabLayout.java"

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

    .line 301
    iput-object p1, p0, Lcom/narvii/widget/NVPagerTabLayout$2;->this$0:Lcom/narvii/widget/NVPagerTabLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    .line 306
    iget-object v0, p0, Lcom/narvii/widget/NVPagerTabLayout$2;->this$0:Lcom/narvii/widget/NVPagerTabLayout;

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/narvii/widget/NVPagerTabLayout$2;->this$0:Lcom/narvii/widget/NVPagerTabLayout;

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getHeight()I

    move-result v0

    if-eqz v0, :cond_2

    .line 307
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_1

    .line 308
    iget-object v0, p0, Lcom/narvii/widget/NVPagerTabLayout$2;->this$0:Lcom/narvii/widget/NVPagerTabLayout;

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    .line 310
    :cond_1
    iget-object v0, p0, Lcom/narvii/widget/NVPagerTabLayout$2;->this$0:Lcom/narvii/widget/NVPagerTabLayout;

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 313
    :goto_0
    iget-object v0, p0, Lcom/narvii/widget/NVPagerTabLayout$2;->this$0:Lcom/narvii/widget/NVPagerTabLayout;

    invoke-static {v0}, Lcom/narvii/widget/NVPagerTabLayout;->access$100(Lcom/narvii/widget/NVPagerTabLayout;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/narvii/widget/NVPagerTabLayout;->access$200(Lcom/narvii/widget/NVPagerTabLayout;II)V

    :cond_2
    return-void
.end method
