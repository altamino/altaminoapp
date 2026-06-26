.class Lcom/narvii/master/search/GlobalSearchTabFragment$4;
.super Ljava/lang/Object;
.source "GlobalSearchTabFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/search/GlobalSearchTabFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/search/GlobalSearchTabFragment;


# direct methods
.method constructor <init>(Lcom/narvii/master/search/GlobalSearchTabFragment;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lcom/narvii/master/search/GlobalSearchTabFragment$4;->this$0:Lcom/narvii/master/search/GlobalSearchTabFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 190
    iget-object p1, p0, Lcom/narvii/master/search/GlobalSearchTabFragment$4;->this$0:Lcom/narvii/master/search/GlobalSearchTabFragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
