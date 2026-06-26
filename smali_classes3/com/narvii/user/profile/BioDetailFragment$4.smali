.class Lcom/narvii/user/profile/BioDetailFragment$4;
.super Ljava/lang/Object;
.source "BioDetailFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/user/profile/BioDetailFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/user/profile/BioDetailFragment;


# direct methods
.method constructor <init>(Lcom/narvii/user/profile/BioDetailFragment;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/narvii/user/profile/BioDetailFragment$4;->this$0:Lcom/narvii/user/profile/BioDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1

    const/4 p3, 0x0

    .line 212
    invoke-virtual {p1, p3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 213
    iget-object p4, p0, Lcom/narvii/user/profile/BioDetailFragment$4;->this$0:Lcom/narvii/user/profile/BioDetailFragment;

    invoke-static {p4}, Lcom/narvii/user/profile/BioDetailFragment;->access$300(Lcom/narvii/user/profile/BioDetailFragment;)Z

    move-result p4

    if-eqz p4, :cond_2

    iget-object p4, p0, Lcom/narvii/user/profile/BioDetailFragment$4;->this$0:Lcom/narvii/user/profile/BioDetailFragment;

    invoke-static {p4}, Lcom/narvii/user/profile/BioDetailFragment;->access$400(Lcom/narvii/user/profile/BioDetailFragment;)Z

    move-result p4

    if-nez p4, :cond_2

    iget-object p4, p0, Lcom/narvii/user/profile/BioDetailFragment$4;->this$0:Lcom/narvii/user/profile/BioDetailFragment;

    invoke-virtual {p4}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    move-result p4

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    const/high16 p4, 0x3f800000    # 1.0f

    if-nez p2, :cond_1

    if-eqz p1, :cond_1

    .line 216
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p2

    if-eqz p2, :cond_1

    .line 217
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/2addr p2, v0

    int-to-float p2, p2

    mul-float p2, p2, p4

    .line 218
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p2, p1

    sub-float/2addr p4, p2

    .line 219
    iget-object p1, p0, Lcom/narvii/user/profile/BioDetailFragment$4;->this$0:Lcom/narvii/user/profile/BioDetailFragment;

    invoke-static {p1}, Lcom/narvii/user/profile/BioDetailFragment;->access$500(Lcom/narvii/user/profile/BioDetailFragment;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 220
    iget-object p1, p0, Lcom/narvii/user/profile/BioDetailFragment$4;->this$0:Lcom/narvii/user/profile/BioDetailFragment;

    invoke-static {p1}, Lcom/narvii/user/profile/BioDetailFragment;->access$500(Lcom/narvii/user/profile/BioDetailFragment;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p4}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    .line 222
    :cond_1
    iget-object p1, p0, Lcom/narvii/user/profile/BioDetailFragment$4;->this$0:Lcom/narvii/user/profile/BioDetailFragment;

    invoke-static {p1}, Lcom/narvii/user/profile/BioDetailFragment;->access$500(Lcom/narvii/user/profile/BioDetailFragment;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 223
    iget-object p1, p0, Lcom/narvii/user/profile/BioDetailFragment$4;->this$0:Lcom/narvii/user/profile/BioDetailFragment;

    invoke-static {p1}, Lcom/narvii/user/profile/BioDetailFragment;->access$500(Lcom/narvii/user/profile/BioDetailFragment;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p4}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    .line 214
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/narvii/user/profile/BioDetailFragment$4;->this$0:Lcom/narvii/user/profile/BioDetailFragment;

    invoke-static {p1}, Lcom/narvii/user/profile/BioDetailFragment;->access$500(Lcom/narvii/user/profile/BioDetailFragment;)Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method
