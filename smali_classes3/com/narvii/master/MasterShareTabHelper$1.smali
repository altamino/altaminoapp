.class Lcom/narvii/master/MasterShareTabHelper$1;
.super Ljava/lang/Object;
.source "MasterShareTabHelper.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/MasterShareTabHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/MasterShareTabHelper;


# direct methods
.method constructor <init>(Lcom/narvii/master/MasterShareTabHelper;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/narvii/master/MasterShareTabHelper$1;->this$0:Lcom/narvii/master/MasterShareTabHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    .line 84
    iget-object p3, p0, Lcom/narvii/master/MasterShareTabHelper$1;->this$0:Lcom/narvii/master/MasterShareTabHelper;

    iget-object p3, p3, Lcom/narvii/master/MasterShareTabHelper;->listFragment:Lcom/narvii/list/NVListFragment;

    invoke-virtual {p3}, Lcom/narvii/app/NVFragment;->isActive()Z

    move-result p3

    if-eqz p3, :cond_6

    iget-object p3, p0, Lcom/narvii/master/MasterShareTabHelper$1;->this$0:Lcom/narvii/master/MasterShareTabHelper;

    iget-object p3, p3, Lcom/narvii/master/MasterShareTabHelper;->listFragment:Lcom/narvii/list/NVListFragment;

    invoke-virtual {p3}, Lcom/narvii/app/NVFragment;->getUserVisibleHint()Z

    move-result p3

    if-nez p3, :cond_0

    goto :goto_1

    .line 88
    :cond_0
    iget-object p3, p0, Lcom/narvii/master/MasterShareTabHelper$1;->this$0:Lcom/narvii/master/MasterShareTabHelper;

    iget-object p3, p3, Lcom/narvii/master/MasterShareTabHelper;->listFragment:Lcom/narvii/list/NVListFragment;

    invoke-virtual {p3}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object p3

    .line 89
    instance-of p4, p3, Lcom/narvii/master/MasterTabFragment;

    if-eqz p4, :cond_1

    check-cast p3, Lcom/narvii/master/MasterTabFragment;

    invoke-virtual {p3}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getCurrentFragment()Landroid/support/v4/app/Fragment;

    move-result-object p3

    iget-object p4, p0, Lcom/narvii/master/MasterShareTabHelper$1;->this$0:Lcom/narvii/master/MasterShareTabHelper;

    iget-object p4, p4, Lcom/narvii/master/MasterShareTabHelper;->listFragment:Lcom/narvii/list/NVListFragment;

    if-eq p3, p4, :cond_1

    return-void

    .line 93
    :cond_1
    iget-object p3, p0, Lcom/narvii/master/MasterShareTabHelper$1;->this$0:Lcom/narvii/master/MasterShareTabHelper;

    invoke-static {p3}, Lcom/narvii/master/MasterShareTabHelper;->access$000(Lcom/narvii/master/MasterShareTabHelper;)Landroid/view/View;

    move-result-object p3

    if-nez p3, :cond_2

    return-void

    :cond_2
    const/4 p4, 0x0

    .line 99
    invoke-virtual {p1, p4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_0

    .line 100
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p4

    .line 102
    :goto_0
    iget-object p1, p0, Lcom/narvii/master/MasterShareTabHelper$1;->this$0:Lcom/narvii/master/MasterShareTabHelper;

    invoke-static {p1}, Lcom/narvii/master/MasterShareTabHelper;->access$100(Lcom/narvii/master/MasterShareTabHelper;)Z

    move-result p1

    if-eqz p1, :cond_5

    if-nez p2, :cond_4

    int-to-float p1, p4

    .line 104
    invoke-virtual {p3, p1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    .line 106
    :cond_4
    iget-object p1, p0, Lcom/narvii/master/MasterShareTabHelper$1;->this$0:Lcom/narvii/master/MasterShareTabHelper;

    invoke-static {p1}, Lcom/narvii/master/MasterShareTabHelper;->access$200(Lcom/narvii/master/MasterShareTabHelper;)I

    move-result p1

    mul-int/lit8 p1, p1, -0x1

    int-to-float p1, p1

    invoke-virtual {p3, p1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    .line 109
    :cond_5
    iget-object p1, p0, Lcom/narvii/master/MasterShareTabHelper$1;->this$0:Lcom/narvii/master/MasterShareTabHelper;

    invoke-static {p1}, Lcom/narvii/master/MasterShareTabHelper;->access$300(Lcom/narvii/master/MasterShareTabHelper;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method
