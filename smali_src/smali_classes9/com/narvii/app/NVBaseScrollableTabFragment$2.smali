.class Lcom/narvii/app/NVBaseScrollableTabFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/app/NVBaseScrollableTabFragment$2;->this$0:Lcom/narvii/app/NVBaseScrollableTabFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onTabItemClicked(I)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/app/NVBaseScrollableTabFragment$2;->this$0:Lcom/narvii/app/NVBaseScrollableTabFragment;

    .line 3
    .line 4
    iget-object p1, p1, Lcom/narvii/app/NVBaseScrollableTabFragment;->mViewPager:Lcom/narvii/widget/NVViewPager;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    .line 8
    return-void
.end method
