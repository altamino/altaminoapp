.class Lcom/narvii/poweruser/history/MembersFilterFragment$AllAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "MembersFilterFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/poweruser/history/MembersFilterFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AllAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/poweruser/history/MembersFilterFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/poweruser/history/MembersFilterFragment;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/narvii/poweruser/history/MembersFilterFragment$AllAdapter;->this$0:Lcom/narvii/poweruser/history/MembersFilterFragment;

    .line 104
    invoke-direct {p0, p1}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    const p1, 0x7f0b03f4

    .line 124
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090230

    .line 125
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 126
    iget-object p3, p0, Lcom/narvii/poweruser/history/MembersFilterFragment$AllAdapter;->this$0:Lcom/narvii/poweruser/history/MembersFilterFragment;

    iget-object p3, p3, Lcom/narvii/poweruser/history/MembersFilterFragment;->checkedUid:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p3, 0x0

    .line 127
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 p3, 0x4

    .line 129
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    const p2, 0x7f090097

    .line 131
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 132
    iget-object p3, p0, Lcom/narvii/poweruser/history/MembersFilterFragment$AllAdapter;->this$0:Lcom/narvii/poweruser/history/MembersFilterFragment;

    invoke-virtual {p3}, Lcom/narvii/poweruser/history/MembersFilterFragment;->isDarkTheme()Z

    move-result p3

    if-eqz p3, :cond_1

    const/4 p3, -0x1

    goto :goto_1

    :cond_1
    const p3, -0xaaaaab

    :goto_1
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    return-object p1
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    .line 138
    iget-object v0, p0, Lcom/narvii/poweruser/history/MembersFilterFragment$AllAdapter;->this$0:Lcom/narvii/poweruser/history/MembersFilterFragment;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/narvii/poweruser/history/MembersFilterFragment;->checkedUid:Ljava/lang/String;

    .line 139
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 140
    iget-object v0, p0, Lcom/narvii/poweruser/history/MembersFilterFragment$AllAdapter;->this$0:Lcom/narvii/poweruser/history/MembersFilterFragment;

    iget-object v0, v0, Lcom/narvii/poweruser/history/MembersFilterFragment;->listener:Lcom/narvii/poweruser/history/MembersFilterFragment$FilterItemClickListener;

    if-eqz v0, :cond_0

    .line 141
    invoke-interface {v0, v1}, Lcom/narvii/poweruser/history/MembersFilterFragment$FilterItemClickListener;->onItemClicked(Lcom/narvii/model/User;)V

    .line 143
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
