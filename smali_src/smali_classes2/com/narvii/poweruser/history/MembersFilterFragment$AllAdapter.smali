.class Lcom/narvii/poweruser/history/MembersFilterFragment$AllAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/poweruser/history/MembersFilterFragment$AllAdapter;->this$0:Lcom/narvii/poweruser/history/MembersFilterFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
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

    .line 1
    .line 2
    .line 3
    const p1, 0x7f0d042a

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    .line 10
    const p2, 0x7f0a02ea

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 14
    move-result-object p2

    .line 15
    .line 16
    iget-object p3, p0, Lcom/narvii/poweruser/history/MembersFilterFragment$AllAdapter;->this$0:Lcom/narvii/poweruser/history/MembersFilterFragment;

    .line 17
    .line 18
    iget-object p3, p3, Lcom/narvii/poweruser/history/MembersFilterFragment;->checkedUid:Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 22
    move-result p3

    .line 23
    .line 24
    if-eqz p3, :cond_0

    .line 25
    const/4 p3, 0x0

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 p3, 0x4

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 34
    .line 35
    .line 36
    :goto_0
    const p2, 0x7f0a00ff

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 40
    move-result-object p2

    .line 41
    .line 42
    check-cast p2, Landroid/widget/TextView;

    .line 43
    .line 44
    iget-object p3, p0, Lcom/narvii/poweruser/history/MembersFilterFragment$AllAdapter;->this$0:Lcom/narvii/poweruser/history/MembersFilterFragment;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p3}, Lcom/narvii/poweruser/history/MembersFilterFragment;->isDarkTheme()Z

    .line 48
    move-result p3

    .line 49
    .line 50
    if-eqz p3, :cond_1

    .line 51
    const/4 p3, -0x1

    .line 52
    goto :goto_1

    .line 53
    .line 54
    .line 55
    :cond_1
    const p3, -0xaaaaab

    .line 56
    .line 57
    .line 58
    :goto_1
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 59
    return-object p1
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/poweruser/history/MembersFilterFragment$AllAdapter;->this$0:Lcom/narvii/poweruser/history/MembersFilterFragment;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    iput-object v1, v0, Lcom/narvii/poweruser/history/MembersFilterFragment;->checkedUid:Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/poweruser/history/MembersFilterFragment$AllAdapter;->this$0:Lcom/narvii/poweruser/history/MembersFilterFragment;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/narvii/poweruser/history/MembersFilterFragment;->listener:Lcom/narvii/poweruser/history/MembersFilterFragment$FilterItemClickListener;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-interface {v0, v1}, Lcom/narvii/poweruser/history/MembersFilterFragment$FilterItemClickListener;->onItemClicked(Lcom/narvii/model/User;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 21
    move-result p1

    .line 22
    return p1
.end method
