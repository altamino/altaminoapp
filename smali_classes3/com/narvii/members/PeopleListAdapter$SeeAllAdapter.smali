.class Lcom/narvii/members/PeopleListAdapter$SeeAllAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "PeopleListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/members/PeopleListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SeeAllAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/members/PeopleListAdapter;


# direct methods
.method public constructor <init>(Lcom/narvii/members/PeopleListAdapter;)V
    .locals 0

    .line 662
    iput-object p1, p0, Lcom/narvii/members/PeopleListAdapter$SeeAllAdapter;->this$0:Lcom/narvii/members/PeopleListAdapter;

    .line 663
    invoke-static {p1}, Lcom/narvii/members/PeopleListAdapter;->access$000(Lcom/narvii/members/PeopleListAdapter;)Lcom/narvii/app/NVContext;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 668
    iget-object v0, p0, Lcom/narvii/members/PeopleListAdapter$SeeAllAdapter;->this$0:Lcom/narvii/members/PeopleListAdapter;

    invoke-virtual {v0}, Lcom/narvii/members/PeopleListAdapter;->allMembersLimit()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x4

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const p1, 0x7f0b04c5

    .line 688
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0909f2

    .line 689
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    .line 690
    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p3}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v1, Lcom/narvii/util/text/TextUtils;->numberFormat:Ljava/text/NumberFormat;

    iget-object v2, p0, Lcom/narvii/members/PeopleListAdapter$SeeAllAdapter;->this$0:Lcom/narvii/members/PeopleListAdapter;

    invoke-static {v2}, Lcom/narvii/members/PeopleListAdapter;->access$400(Lcom/narvii/members/PeopleListAdapter;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f0f0f67

    invoke-virtual {p3, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 691
    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public isEnabled(I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    .line 702
    iget-object p1, p0, Lcom/narvii/members/PeopleListAdapter$SeeAllAdapter;->this$0:Lcom/narvii/members/PeopleListAdapter;

    invoke-virtual {p1}, Lcom/narvii/members/PeopleListAdapter;->onSeeAllClick()Z

    move-result p1

    return p1
.end method

.method protected supportNVTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
