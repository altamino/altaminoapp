.class Lcom/narvii/members/PeopleListAdapter$SeeAllAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/members/PeopleListAdapter$SeeAllAdapter;->this$0:Lcom/narvii/members/PeopleListAdapter;

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
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/members/PeopleListAdapter$SeeAllAdapter;->this$0:Lcom/narvii/members/PeopleListAdapter;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/members/PeopleListAdapter;->allMembersLimit()I

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
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

    .line 1
    .line 2
    .line 3
    const p1, 0x7f0d04f2

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    .line 10
    const p2, 0x7f0a0cb9

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 14
    move-result-object p2

    .line 15
    .line 16
    check-cast p2, Landroid/widget/Button;

    .line 17
    .line 18
    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    .line 19
    .line 20
    .line 21
    invoke-interface {p3}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 22
    move-result-object p3

    .line 23
    const/4 v0, 0x1

    .line 24
    .line 25
    new-array v0, v0, [Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lcom/narvii/util/text/TextUtils;->numberFormat:Ljava/text/NumberFormat;

    .line 28
    .line 29
    iget-object v2, p0, Lcom/narvii/members/PeopleListAdapter$SeeAllAdapter;->this$0:Lcom/narvii/members/PeopleListAdapter;

    .line 30
    .line 31
    .line 32
    invoke-static {v2}, Lcom/narvii/members/PeopleListAdapter;->f(Lcom/narvii/members/PeopleListAdapter;)I

    .line 33
    move-result v2

    .line 34
    int-to-long v2, v2

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    .line 38
    move-result-object v1

    .line 39
    const/4 v2, 0x0

    .line 40
    .line 41
    aput-object v1, v0, v2

    .line 42
    .line 43
    .line 44
    const v1, 0x7f121073

    .line 45
    .line 46
    .line 47
    invoke-virtual {p3, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 48
    move-result-object p3

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    .line 53
    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    return-object p1
.end method

.method public isEnabled(I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 0
    .param p5    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/members/PeopleListAdapter$SeeAllAdapter;->this$0:Lcom/narvii/members/PeopleListAdapter;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/narvii/members/PeopleListAdapter;->onSeeAllClick()Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method protected supportNVTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
