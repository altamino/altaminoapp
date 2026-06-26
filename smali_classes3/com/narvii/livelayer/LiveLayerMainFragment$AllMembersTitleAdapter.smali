.class Lcom/narvii/livelayer/LiveLayerMainFragment$AllMembersTitleAdapter;
.super Lcom/narvii/list/AdriftAdapter;
.source "LiveLayerMainFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/livelayer/LiveLayerMainFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AllMembersTitleAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/livelayer/LiveLayerMainFragment;

.field private titleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/narvii/livelayer/LiveLayerMainFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 601
    iput-object p1, p0, Lcom/narvii/livelayer/LiveLayerMainFragment$AllMembersTitleAdapter;->this$0:Lcom/narvii/livelayer/LiveLayerMainFragment;

    .line 602
    invoke-direct {p0, p2}, Lcom/narvii/list/AdriftAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method

.method static synthetic access$200(Lcom/narvii/livelayer/LiveLayerMainFragment$AllMembersTitleAdapter;I)V
    .locals 0

    .line 598
    invoke-direct {p0, p1}, Lcom/narvii/livelayer/LiveLayerMainFragment$AllMembersTitleAdapter;->updateTitle(I)V

    return-void
.end method

.method private updateTitle(I)V
    .locals 3

    .line 632
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerMainFragment$AllMembersTitleAdapter;->titleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 633
    iget-object v1, p0, Lcom/narvii/livelayer/LiveLayerMainFragment$AllMembersTitleAdapter;->this$0:Lcom/narvii/livelayer/LiveLayerMainFragment;

    const v2, 0x7f0f02c3

    invoke-virtual {v1, v2}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/narvii/util/text/TextUtils;->getCountTitle(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .line 607
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerMainFragment$AllMembersTitleAdapter;->this$0:Lcom/narvii/livelayer/LiveLayerMainFragment;

    invoke-static {v0}, Lcom/narvii/livelayer/LiveLayerMainFragment;->access$500(Lcom/narvii/livelayer/LiveLayerMainFragment;)Lcom/narvii/members/PeopleListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/list/MergeAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    :cond_0
    return v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    const p1, 0x7f0b04c7

    .line 615
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090562

    .line 617
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    const p3, 0x7f0803ae

    .line 618
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 p3, 0x0

    .line 622
    invoke-virtual {p2, p3, p3, p3, p3}, Landroid/widget/ImageView;->setPadding(IIII)V

    const p2, 0x7f09072f

    .line 623
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const/16 p3, 0x8

    .line 624
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    const p2, 0x7f09067f

    .line 626
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/narvii/livelayer/LiveLayerMainFragment$AllMembersTitleAdapter;->titleView:Landroid/widget/TextView;

    .line 627
    iget-object p2, p0, Lcom/narvii/livelayer/LiveLayerMainFragment$AllMembersTitleAdapter;->this$0:Lcom/narvii/livelayer/LiveLayerMainFragment;

    invoke-static {p2}, Lcom/narvii/livelayer/LiveLayerMainFragment;->access$500(Lcom/narvii/livelayer/LiveLayerMainFragment;)Lcom/narvii/members/PeopleListAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/narvii/members/PeopleListAdapter;->getAllMembersCount()I

    move-result p2

    invoke-direct {p0, p2}, Lcom/narvii/livelayer/LiveLayerMainFragment$AllMembersTitleAdapter;->updateTitle(I)V

    return-object p1
.end method
