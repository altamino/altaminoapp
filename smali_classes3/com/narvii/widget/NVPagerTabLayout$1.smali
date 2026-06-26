.class Lcom/narvii/widget/NVPagerTabLayout$1;
.super Ljava/lang/Object;
.source "NVPagerTabLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/widget/NVPagerTabLayout;->addTab(ILandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/widget/NVPagerTabLayout;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/narvii/widget/NVPagerTabLayout;I)V
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/narvii/widget/NVPagerTabLayout$1;->this$0:Lcom/narvii/widget/NVPagerTabLayout;

    iput p2, p0, Lcom/narvii/widget/NVPagerTabLayout$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 238
    iget-object p1, p0, Lcom/narvii/widget/NVPagerTabLayout$1;->this$0:Lcom/narvii/widget/NVPagerTabLayout;

    iget-object p1, p1, Lcom/narvii/widget/NVPagerTabLayout;->onTabItemClickListener:Lcom/narvii/widget/NVPagerTabLayout$OnTabItemClickListener;

    if-eqz p1, :cond_0

    .line 239
    iget v0, p0, Lcom/narvii/widget/NVPagerTabLayout$1;->val$position:I

    invoke-interface {p1, v0}, Lcom/narvii/widget/NVPagerTabLayout$OnTabItemClickListener;->onTabItemClicked(I)V

    .line 242
    :cond_0
    iget-object p1, p0, Lcom/narvii/widget/NVPagerTabLayout$1;->this$0:Lcom/narvii/widget/NVPagerTabLayout;

    iget-object p1, p1, Lcom/narvii/widget/NVPagerTabLayout;->onTabItemClickListenerList:Ljava/util/List;

    if-eqz p1, :cond_1

    .line 243
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVPagerTabLayout$OnTabItemClickListener;

    .line 244
    iget v1, p0, Lcom/narvii/widget/NVPagerTabLayout$1;->val$position:I

    invoke-interface {v0, v1}, Lcom/narvii/widget/NVPagerTabLayout$OnTabItemClickListener;->onTabItemClicked(I)V

    goto :goto_0

    .line 247
    :cond_1
    iget-object p1, p0, Lcom/narvii/widget/NVPagerTabLayout$1;->this$0:Lcom/narvii/widget/NVPagerTabLayout;

    invoke-static {p1}, Lcom/narvii/widget/NVPagerTabLayout;->access$100(Lcom/narvii/widget/NVPagerTabLayout;)Landroid/support/v4/view/ViewPager;

    move-result-object p1

    iget v0, p0, Lcom/narvii/widget/NVPagerTabLayout$1;->val$position:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    return-void
.end method
