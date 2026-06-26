.class Lcom/narvii/app/NVBaseScrollableTabFragment$2;
.super Ljava/lang/Object;
.source "NVBaseScrollableTabFragment.java"

# interfaces
.implements Lcom/narvii/widget/NVPagerTabLayout$OnTabItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/app/NVBaseScrollableTabFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/app/NVBaseScrollableTabFragment;


# direct methods
.method constructor <init>(Lcom/narvii/app/NVBaseScrollableTabFragment;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/narvii/app/NVBaseScrollableTabFragment$2;->this$0:Lcom/narvii/app/NVBaseScrollableTabFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabItemClicked(I)V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/narvii/app/NVBaseScrollableTabFragment$2;->this$0:Lcom/narvii/app/NVBaseScrollableTabFragment;

    iget-object v0, v0, Lcom/narvii/app/NVBaseScrollableTabFragment;->mViewPager:Lcom/narvii/widget/NVViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    if-ne p1, v0, :cond_0

    :cond_0
    return-void
.end method
