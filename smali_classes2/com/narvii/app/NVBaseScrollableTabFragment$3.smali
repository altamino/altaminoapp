.class Lcom/narvii/app/NVBaseScrollableTabFragment$3;
.super Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;
.source "NVBaseScrollableTabFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/app/NVBaseScrollableTabFragment;
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

    .line 103
    iput-object p1, p0, Lcom/narvii/app/NVBaseScrollableTabFragment$3;->this$0:Lcom/narvii/app/NVBaseScrollableTabFragment;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 1

    .line 106
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;->onPageSelected(I)V

    .line 107
    iget-object v0, p0, Lcom/narvii/app/NVBaseScrollableTabFragment$3;->this$0:Lcom/narvii/app/NVBaseScrollableTabFragment;

    invoke-virtual {v0, p1}, Lcom/narvii/app/NVBaseScrollableTabFragment;->updateTabView(I)V

    return-void
.end method
