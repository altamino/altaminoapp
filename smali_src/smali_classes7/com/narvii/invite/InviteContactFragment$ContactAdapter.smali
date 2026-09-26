.class abstract Lcom/narvii/invite/InviteContactFragment$ContactAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/invite/InviteContactFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "ContactAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/invite/InviteContactFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/invite/InviteContactFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/invite/InviteContactFragment$ContactAdapter;->this$0:Lcom/narvii/invite/InviteContactFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    return-void
.end method

.method private isSelected(I)Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/invite/InviteContactFragment$ContactAdapter;->getItem(I)Lcom/narvii/invite/InviteContactFragment$Contact;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/invite/InviteContactFragment$ContactAdapter;->this$0:Lcom/narvii/invite/InviteContactFragment;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/narvii/invite/InviteContactFragment;->selectedContactList:Ljava/util/List;

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 12
    move-result p1

    .line 13
    return p1
.end method


# virtual methods
.method public getItem(I)Lcom/narvii/invite/InviteContactFragment$Contact;
    .locals 0

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/narvii/invite/InviteContactFragment$ContactAdapter;->getItem(I)Lcom/narvii/invite/InviteContactFragment$Contact;

    move-result-object p1

    return-object p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/invite/InviteContactFragment$ContactAdapter;->getItem(I)Lcom/narvii/invite/InviteContactFragment$Contact;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    sget v1, Lcom/narvii/lib/R$layout;->item_invite_contact:I

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 10
    move-result-object p2

    .line 11
    .line 12
    sget p3, Lcom/narvii/lib/R$id;->text:I

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 16
    move-result-object p3

    .line 17
    .line 18
    check-cast p3, Landroid/widget/TextView;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/narvii/invite/InviteContactFragment$Contact;->getDisplayName()Ljava/lang/String;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    .line 25
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    .line 27
    sget p3, Lcom/narvii/lib/R$id;->desc:I

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 31
    move-result-object p3

    .line 32
    .line 33
    check-cast p3, Landroid/widget/TextView;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/narvii/invite/InviteContactFragment$Contact;->getContactText()Ljava/lang/String;

    .line 37
    move-result-object v1

    .line 38
    .line 39
    .line 40
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    .line 42
    iget-object v0, v0, Lcom/narvii/invite/InviteContactFragment$Contact;->name:Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 46
    move-result v0

    .line 47
    .line 48
    if-nez v0, :cond_1

    .line 49
    .line 50
    .line 51
    invoke-virtual {p3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 52
    move-result-object v0

    .line 53
    .line 54
    .line 55
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 56
    move-result v0

    .line 57
    .line 58
    if-eqz v0, :cond_0

    .line 59
    goto :goto_0

    .line 60
    :cond_0
    const/4 v0, 0x0

    .line 61
    goto :goto_1

    .line 62
    .line 63
    :cond_1
    :goto_0
    const/16 v0, 0x8

    .line 64
    .line 65
    .line 66
    :goto_1
    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 67
    .line 68
    sget p3, Lcom/narvii/lib/R$id;->select:I

    .line 69
    .line 70
    .line 71
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 72
    move-result-object p3

    .line 73
    .line 74
    check-cast p3, Landroid/widget/ImageView;

    .line 75
    .line 76
    .line 77
    invoke-direct {p0, p1}, Lcom/narvii/invite/InviteContactFragment$ContactAdapter;->isSelected(I)Z

    .line 78
    move-result p1

    .line 79
    .line 80
    if-eqz p1, :cond_2

    .line 81
    .line 82
    sget p1, Lcom/narvii/lib/R$drawable;->invite_contact_selected:I

    .line 83
    goto :goto_2

    .line 84
    .line 85
    :cond_2
    sget p1, Lcom/narvii/lib/R$drawable;->invite_contact_unselected:I

    .line 86
    .line 87
    .line 88
    :goto_2
    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 89
    return-object p2
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p2}, Lcom/narvii/invite/InviteContactFragment$ContactAdapter;->getItem(I)Lcom/narvii/invite/InviteContactFragment$Contact;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/narvii/invite/InviteContactFragment$ContactAdapter;->this$0:Lcom/narvii/invite/InviteContactFragment;

    .line 7
    .line 8
    iget-object v1, v1, Lcom/narvii/invite/InviteContactFragment;->selectedContactList:Ljava/util/List;

    .line 9
    .line 10
    .line 11
    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 12
    move-result v1

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    iget-object v1, p0, Lcom/narvii/invite/InviteContactFragment$ContactAdapter;->this$0:Lcom/narvii/invite/InviteContactFragment;

    .line 17
    .line 18
    iget-object v1, v1, Lcom/narvii/invite/InviteContactFragment;->selectedContactList:Ljava/util/List;

    .line 19
    .line 20
    .line 21
    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 22
    goto :goto_0

    .line 23
    .line 24
    :cond_0
    iget-object v1, p0, Lcom/narvii/invite/InviteContactFragment$ContactAdapter;->this$0:Lcom/narvii/invite/InviteContactFragment;

    .line 25
    .line 26
    iget-object v1, v1, Lcom/narvii/invite/InviteContactFragment;->selectedContactList:Ljava/util/List;

    .line 27
    .line 28
    .line 29
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    .line 31
    :goto_0
    iget-object v0, p0, Lcom/narvii/invite/InviteContactFragment$ContactAdapter;->this$0:Lcom/narvii/invite/InviteContactFragment;

    .line 32
    .line 33
    .line 34
    invoke-static {v0}, Lcom/narvii/invite/InviteContactFragment;->v(Lcom/narvii/invite/InviteContactFragment;)V

    .line 35
    .line 36
    .line 37
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 38
    move-result p1

    .line 39
    return p1
.end method
