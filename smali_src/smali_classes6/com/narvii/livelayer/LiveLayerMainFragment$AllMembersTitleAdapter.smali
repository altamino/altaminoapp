.class Lcom/narvii/livelayer/LiveLayerMainFragment$AllMembersTitleAdapter;
.super Lcom/narvii/list/AdriftAdapter;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/livelayer/LiveLayerMainFragment$AllMembersTitleAdapter;->this$0:Lcom/narvii/livelayer/LiveLayerMainFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/list/AdriftAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    return-void
.end method

.method static bridge synthetic f(Lcom/narvii/livelayer/LiveLayerMainFragment$AllMembersTitleAdapter;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/livelayer/LiveLayerMainFragment$AllMembersTitleAdapter;->updateTitle(I)V

    return-void
.end method

.method private updateTitle(I)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerMainFragment$AllMembersTitleAdapter;->titleView:Landroid/widget/TextView;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/narvii/livelayer/LiveLayerMainFragment$AllMembersTitleAdapter;->this$0:Lcom/narvii/livelayer/LiveLayerMainFragment;

    .line 7
    .line 8
    .line 9
    const v2, 0x7f12030e

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    .line 16
    invoke-static {v1, p1}, Lcom/narvii/util/text/TextUtils;->getCountTitle(Ljava/lang/String;I)Ljava/lang/String;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    :cond_0
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerMainFragment$AllMembersTitleAdapter;->this$0:Lcom/narvii/livelayer/LiveLayerMainFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/livelayer/LiveLayerMainFragment;->u(Lcom/narvii/livelayer/LiveLayerMainFragment;)Lcom/narvii/members/PeopleListAdapter;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/narvii/list/MergeAdapter;->getCount()I

    .line 10
    const/4 v0, 0x1

    .line 11
    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 1
    .line 2
    .line 3
    const p1, 0x7f0d04f4

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    .line 10
    const p2, 0x7f0a06d5

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 14
    move-result-object p2

    .line 15
    .line 16
    check-cast p2, Landroid/widget/ImageView;

    .line 17
    .line 18
    .line 19
    const p3, 0x7f0804ce

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 23
    const/4 p3, 0x0

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2, p3, p3, p3, p3}, Landroid/view/View;->setPadding(IIII)V

    .line 27
    .line 28
    .line 29
    const p2, 0x7f0a0998

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 33
    move-result-object p2

    .line 34
    .line 35
    const/16 p3, 0x8

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 39
    .line 40
    .line 41
    const p2, 0x7f0a0805

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 45
    move-result-object p2

    .line 46
    .line 47
    check-cast p2, Landroid/widget/TextView;

    .line 48
    .line 49
    iput-object p2, p0, Lcom/narvii/livelayer/LiveLayerMainFragment$AllMembersTitleAdapter;->titleView:Landroid/widget/TextView;

    .line 50
    .line 51
    iget-object p2, p0, Lcom/narvii/livelayer/LiveLayerMainFragment$AllMembersTitleAdapter;->this$0:Lcom/narvii/livelayer/LiveLayerMainFragment;

    .line 52
    .line 53
    .line 54
    invoke-static {p2}, Lcom/narvii/livelayer/LiveLayerMainFragment;->u(Lcom/narvii/livelayer/LiveLayerMainFragment;)Lcom/narvii/members/PeopleListAdapter;

    .line 55
    move-result-object p2

    .line 56
    .line 57
    .line 58
    invoke-virtual {p2}, Lcom/narvii/members/PeopleListAdapter;->getAllMembersCount()I

    .line 59
    move-result p2

    .line 60
    .line 61
    .line 62
    invoke-direct {p0, p2}, Lcom/narvii/livelayer/LiveLayerMainFragment$AllMembersTitleAdapter;->updateTitle(I)V

    .line 63
    return-object p1
.end method
