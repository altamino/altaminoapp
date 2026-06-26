.class Lcom/narvii/poweruser/history/MembersFilterFragment$TabAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "MembersFilterFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/poweruser/history/MembersFilterFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TabAdapter"
.end annotation


# instance fields
.field private host:Lcom/narvii/list/NVAdapter;

.field final synthetic this$0:Lcom/narvii/poweruser/history/MembersFilterFragment;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/narvii/poweruser/history/MembersFilterFragment;Ljava/lang/String;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/narvii/poweruser/history/MembersFilterFragment$TabAdapter;->this$0:Lcom/narvii/poweruser/history/MembersFilterFragment;

    .line 153
    invoke-direct {p0, p1}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 154
    iput-object p2, p0, Lcom/narvii/poweruser/history/MembersFilterFragment$TabAdapter;->title:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .line 163
    iget-object v0, p0, Lcom/narvii/poweruser/history/MembersFilterFragment$TabAdapter;->host:Lcom/narvii/list/NVAdapter;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 164
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
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

    const p1, 0x7f0b03f5

    .line 181
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 182
    iget-object p2, p0, Lcom/narvii/poweruser/history/MembersFilterFragment$TabAdapter;->title:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    iget-object p2, p0, Lcom/narvii/poweruser/history/MembersFilterFragment$TabAdapter;->this$0:Lcom/narvii/poweruser/history/MembersFilterFragment;

    invoke-virtual {p2}, Lcom/narvii/poweruser/history/MembersFilterFragment;->isDarkTheme()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, -0x1

    goto :goto_0

    :cond_0
    const p2, -0xaaaaab

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    return-object p1
.end method

.method public isEnabled(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setHost(Lcom/narvii/list/NVAdapter;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/narvii/poweruser/history/MembersFilterFragment$TabAdapter;->host:Lcom/narvii/list/NVAdapter;

    return-void
.end method
