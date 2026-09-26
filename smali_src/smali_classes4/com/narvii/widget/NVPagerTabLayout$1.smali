.class Lcom/narvii/widget/NVPagerTabLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/widget/NVPagerTabLayout$1;->this$0:Lcom/narvii/widget/NVPagerTabLayout;

    .line 3
    .line 4
    iput p2, p0, Lcom/narvii/widget/NVPagerTabLayout$1;->val$position:I

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/widget/NVPagerTabLayout$1;->this$0:Lcom/narvii/widget/NVPagerTabLayout;

    .line 3
    .line 4
    iget-object p1, p1, Lcom/narvii/widget/NVPagerTabLayout;->onTabItemClickListener:Lcom/narvii/widget/NVPagerTabLayout$OnTabItemClickListener;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget v0, p0, Lcom/narvii/widget/NVPagerTabLayout$1;->val$position:I

    .line 9
    .line 10
    .line 11
    invoke-interface {p1, v0}, Lcom/narvii/widget/NVPagerTabLayout$OnTabItemClickListener;->onTabItemClicked(I)V

    .line 12
    .line 13
    :cond_0
    iget-object p1, p0, Lcom/narvii/widget/NVPagerTabLayout$1;->this$0:Lcom/narvii/widget/NVPagerTabLayout;

    .line 14
    .line 15
    iget-object p1, p1, Lcom/narvii/widget/NVPagerTabLayout;->onTabItemClickListenerList:Ljava/util/List;

    .line 16
    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    .line 20
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    .line 24
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    move-result v0

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    .line 30
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    check-cast v0, Lcom/narvii/widget/NVPagerTabLayout$OnTabItemClickListener;

    .line 34
    .line 35
    iget v1, p0, Lcom/narvii/widget/NVPagerTabLayout$1;->val$position:I

    .line 36
    .line 37
    .line 38
    invoke-interface {v0, v1}, Lcom/narvii/widget/NVPagerTabLayout$OnTabItemClickListener;->onTabItemClicked(I)V

    .line 39
    goto :goto_0

    .line 40
    .line 41
    :cond_1
    iget-object p1, p0, Lcom/narvii/widget/NVPagerTabLayout$1;->this$0:Lcom/narvii/widget/NVPagerTabLayout;

    .line 42
    .line 43
    .line 44
    invoke-static {p1}, Lcom/narvii/widget/NVPagerTabLayout;->a(Lcom/narvii/widget/NVPagerTabLayout;)Landroidx/viewpager/widget/ViewPager;

    .line 45
    move-result-object p1

    .line 46
    .line 47
    iget v0, p0, Lcom/narvii/widget/NVPagerTabLayout$1;->val$position:I

    .line 48
    const/4 v1, 0x1

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    .line 52
    return-void
.end method
