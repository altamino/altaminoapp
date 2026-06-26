.class Lcom/narvii/app/NVCollapsibleTabFragment$6;
.super Lcom/narvii/app/NVScrollablePagerAdapter;
.source "NVCollapsibleTabFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/app/NVCollapsibleTabFragment;->createAdapter()Lcom/narvii/app/NVScrollablePagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/app/NVCollapsibleTabFragment;


# direct methods
.method constructor <init>(Lcom/narvii/app/NVCollapsibleTabFragment;Landroid/content/Context;Landroid/support/v4/app/FragmentManager;)V
    .locals 0

    .line 290
    iput-object p1, p0, Lcom/narvii/app/NVCollapsibleTabFragment$6;->this$0:Lcom/narvii/app/NVCollapsibleTabFragment;

    invoke-direct {p0, p2, p3}, Lcom/narvii/app/NVScrollablePagerAdapter;-><init>(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;)V

    return-void
.end method


# virtual methods
.method public createFragment(I)Landroid/support/v4/app/Fragment;
    .locals 2

    .line 293
    invoke-super {p0, p1}, Lcom/narvii/app/NVScrollablePagerAdapter;->createFragment(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 294
    iget-object v1, p0, Lcom/narvii/app/NVCollapsibleTabFragment$6;->this$0:Lcom/narvii/app/NVCollapsibleTabFragment;

    invoke-virtual {v1, v0, p1}, Lcom/narvii/app/NVCollapsibleTabFragment;->onSubFragmentCreated(Landroid/support/v4/app/Fragment;I)V

    return-object v0
.end method
