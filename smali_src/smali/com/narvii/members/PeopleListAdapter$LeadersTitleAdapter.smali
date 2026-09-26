.class Lcom/narvii/members/PeopleListAdapter$LeadersTitleAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/members/PeopleListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LeadersTitleAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/members/PeopleListAdapter;


# direct methods
.method public constructor <init>(Lcom/narvii/members/PeopleListAdapter;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/members/PeopleListAdapter$LeadersTitleAdapter;->this$0:Lcom/narvii/members/PeopleListAdapter;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/members/PeopleListAdapter;->g(Lcom/narvii/members/PeopleListAdapter;)Lcom/narvii/app/NVContext;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p1}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 10
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/members/PeopleListAdapter$LeadersTitleAdapter;->this$0:Lcom/narvii/members/PeopleListAdapter;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/members/PeopleListAdapter;->h(Lcom/narvii/members/PeopleListAdapter;)Lcom/narvii/search/InstantSearchListener;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/narvii/search/InstantSearchListener;->getKeyword()Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/narvii/members/PeopleListAdapter$LeadersTitleAdapter;->this$0:Lcom/narvii/members/PeopleListAdapter;

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Lcom/narvii/members/PeopleListAdapter;->j(Lcom/narvii/members/PeopleListAdapter;)Lcom/narvii/members/PeopleListAdapter$LeaderAdapter;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/narvii/members/PeopleListAdapter$LeaderAdapter;->getCount()I

    .line 27
    move-result v0

    .line 28
    .line 29
    if-lez v0, :cond_0

    .line 30
    const/4 v1, 0x1

    .line 31
    :cond_0
    return v1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    sget-object p1, Lcom/narvii/members/PeopleListAdapter;->SECTION:Lcom/narvii/util/Tag;

    .line 3
    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    .line 3
    const p1, 0x7f0d0594

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    .line 10
    const p2, 0x7f0a0e9e

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 14
    move-result-object p2

    .line 15
    .line 16
    check-cast p2, Landroid/widget/TextView;

    .line 17
    .line 18
    iget-object p3, p0, Lcom/narvii/members/PeopleListAdapter$LeadersTitleAdapter;->this$0:Lcom/narvii/members/PeopleListAdapter;

    .line 19
    .line 20
    .line 21
    invoke-static {p3}, Lcom/narvii/members/PeopleListAdapter;->g(Lcom/narvii/members/PeopleListAdapter;)Lcom/narvii/app/NVContext;

    .line 22
    move-result-object p3

    .line 23
    .line 24
    .line 25
    invoke-interface {p3}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 26
    move-result-object p3

    .line 27
    .line 28
    .line 29
    const v0, 0x7f120371

    .line 30
    .line 31
    .line 32
    invoke-virtual {p3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 33
    move-result-object p3

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    return-object p1
.end method

.method public isEnabled(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected supportNVTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
