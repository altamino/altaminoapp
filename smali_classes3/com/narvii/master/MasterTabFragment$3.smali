.class Lcom/narvii/master/MasterTabFragment$3;
.super Ljava/lang/Object;
.source "MasterTabFragment.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/MasterTabFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/MasterTabFragment;


# direct methods
.method constructor <init>(Lcom/narvii/master/MasterTabFragment;)V
    .locals 0

    .line 544
    iput-object p1, p0, Lcom/narvii/master/MasterTabFragment$3;->this$0:Lcom/narvii/master/MasterTabFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 2

    .line 551
    iget-object v0, p0, Lcom/narvii/master/MasterTabFragment$3;->this$0:Lcom/narvii/master/MasterTabFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 552
    iget-object v0, p0, Lcom/narvii/master/MasterTabFragment$3;->this$0:Lcom/narvii/master/MasterTabFragment;

    invoke-static {v0, p1}, Lcom/narvii/master/MasterTabFragment;->access$400(Lcom/narvii/master/MasterTabFragment;I)V

    .line 555
    :cond_0
    iget-object v0, p0, Lcom/narvii/master/MasterTabFragment$3;->this$0:Lcom/narvii/master/MasterTabFragment;

    iget-object v1, v0, Lcom/narvii/master/MasterTabFragment;->masterBottomBar:Lcom/narvii/master/widget/MasterBottomBar;

    if-eqz v1, :cond_1

    .line 556
    invoke-virtual {v0, p1}, Lcom/narvii/app/NVScrollableTabFragment;->getIndexOfRealPosition(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/narvii/master/widget/MasterBottomBar;->updateTabBottomLayout(I)V

    .line 559
    :cond_1
    new-instance v0, Lcom/narvii/master/MasterTabFragment$3$1;

    invoke-direct {v0, p0, p1}, Lcom/narvii/master/MasterTabFragment$3$1;-><init>(Lcom/narvii/master/MasterTabFragment$3;I)V

    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    return-void
.end method
