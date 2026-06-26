.class Lcom/narvii/user/profile/UserProfileFragment$4;
.super Ljava/lang/Object;
.source "UserProfileFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/user/profile/UserProfileFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/user/profile/UserProfileFragment;


# direct methods
.method constructor <init>(Lcom/narvii/user/profile/UserProfileFragment;)V
    .locals 0

    .line 534
    iput-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$4;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 537
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$4;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    iget-object p1, p1, Lcom/narvii/user/profile/UserProfileFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    if-eqz p1, :cond_0

    const v0, 0x7f090c10

    .line 538
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 539
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ge v0, p1, :cond_0

    .line 542
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$4;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    invoke-virtual {p1}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    :cond_0
    return-void
.end method
