.class Lcom/narvii/master/MyCommunityListFragment$CreateAminoAdapter;
.super Lcom/narvii/list/AdriftAdapter;
.source "MyCommunityListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/MyCommunityListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CreateAminoAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/MyCommunityListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/master/MyCommunityListFragment;)V
    .locals 0

    .line 1034
    iput-object p1, p0, Lcom/narvii/master/MyCommunityListFragment$CreateAminoAdapter;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    .line 1035
    invoke-direct {p0, p1}, Lcom/narvii/list/AdriftAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public getAreaName()Ljava/lang/String;
    .locals 1

    const-string v0, "EngagementArea"

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    const p1, 0x7f0b0355

    .line 1040
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090306

    .line 1041
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f09050e

    .line 1042
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 1043
    invoke-static {p2}, Lcom/narvii/util/ViewUtils;->setMontserratExtraBoldTypeface(Landroid/widget/TextView;)V

    return-object p1
.end method

.method protected onSubviewClick(Landroid/view/View;Z)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 1049
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f090306

    if-ne v0, v1, :cond_0

    .line 1050
    sget-object v0, Lcom/narvii/logging/ActSemantic;->createAmino:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->logClickEvent(Lcom/narvii/logging/ActSemantic;)V

    .line 1051
    iget-object v0, p0, Lcom/narvii/master/MyCommunityListFragment$CreateAminoAdapter;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    invoke-static {v0}, Lcom/narvii/master/MyCommunityListFragment;->access$600(Lcom/narvii/master/MyCommunityListFragment;)Lcom/narvii/master/MasterHelper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/narvii/master/MasterHelper;->createAmino(Ljava/lang/String;)V

    .line 1053
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVAdapter;->onSubviewClick(Landroid/view/View;Z)Z

    move-result p1

    return p1
.end method
