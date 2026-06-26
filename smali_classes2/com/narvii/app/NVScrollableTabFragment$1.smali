.class Lcom/narvii/app/NVScrollableTabFragment$1;
.super Lcom/narvii/app/NVScrollablePagerAdapter;
.source "NVScrollableTabFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/app/NVScrollableTabFragment;->createAdapter()Lcom/narvii/app/NVScrollablePagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/app/NVScrollableTabFragment;


# direct methods
.method constructor <init>(Lcom/narvii/app/NVScrollableTabFragment;Landroid/content/Context;Landroid/support/v4/app/FragmentManager;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/narvii/app/NVScrollableTabFragment$1;->this$0:Lcom/narvii/app/NVScrollableTabFragment;

    invoke-direct {p0, p2, p3}, Lcom/narvii/app/NVScrollablePagerAdapter;-><init>(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;)V

    return-void
.end method


# virtual methods
.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 0

    .line 69
    invoke-super {p0, p1, p2}, Lcom/narvii/util/LazyFragmentPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object p1

    .line 70
    iget-object p2, p0, Lcom/narvii/app/NVScrollableTabFragment$1;->this$0:Lcom/narvii/app/NVScrollableTabFragment;

    invoke-virtual {p2, p1}, Lcom/narvii/app/NVScrollableTabFragment;->onInstantiateItem(Ljava/lang/Object;)V

    return-object p1
.end method
