.class Lcom/narvii/poweruser/history/MembersFilterFragment$TabAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/poweruser/history/MembersFilterFragment$TabAdapter;->this$0:Lcom/narvii/poweruser/history/MembersFilterFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    iput-object p2, p0, Lcom/narvii/poweruser/history/MembersFilterFragment$TabAdapter;->title:Ljava/lang/String;

    .line 8
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/poweruser/history/MembersFilterFragment$TabAdapter;->host:Lcom/narvii/list/NVAdapter;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    .line 8
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    .line 9
    move-result v0

    .line 10
    .line 11
    if-lez v0, :cond_0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v1, 0x0

    .line 14
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

    .line 1
    .line 2
    .line 3
    const p1, 0x7f0d042b

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    check-cast p1, Landroid/widget/TextView;

    .line 10
    .line 11
    iget-object p2, p0, Lcom/narvii/poweruser/history/MembersFilterFragment$TabAdapter;->title:Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    .line 16
    iget-object p2, p0, Lcom/narvii/poweruser/history/MembersFilterFragment$TabAdapter;->this$0:Lcom/narvii/poweruser/history/MembersFilterFragment;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2}, Lcom/narvii/poweruser/history/MembersFilterFragment;->isDarkTheme()Z

    .line 20
    move-result p2

    .line 21
    .line 22
    if-eqz p2, :cond_0

    .line 23
    const/4 p2, -0x1

    .line 24
    goto :goto_0

    .line 25
    .line 26
    .line 27
    :cond_0
    const p2, -0xaaaaab

    .line 28
    .line 29
    .line 30
    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 31
    return-object p1
.end method

.method public isEnabled(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setHost(Lcom/narvii/list/NVAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/poweruser/history/MembersFilterFragment$TabAdapter;->host:Lcom/narvii/list/NVAdapter;

    return-void
.end method
