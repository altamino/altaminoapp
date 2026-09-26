.class Lcom/narvii/invite/InviteContactFragment$SearchEmptyAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/invite/InviteContactFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SearchEmptyAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/invite/InviteContactFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/invite/InviteContactFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/invite/InviteContactFragment$SearchEmptyAdapter;->this$0:Lcom/narvii/invite/InviteContactFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/invite/InviteContactFragment$SearchEmptyAdapter;->this$0:Lcom/narvii/invite/InviteContactFragment;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/invite/InviteContactFragment;->keyword:Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/invite/InviteContactFragment$SearchEmptyAdapter;->this$0:Lcom/narvii/invite/InviteContactFragment;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/narvii/invite/InviteContactFragment;->searchContactList:Ljava/util/List;

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Lcom/narvii/util/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    .line 18
    move-result v0

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    const/4 v0, 0x1

    .line 22
    return v0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
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
    sget p1, Lcom/narvii/lib/R$layout;->item_invite_contact:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    sget p2, Lcom/narvii/lib/R$id;->text:I

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 12
    move-result-object p2

    .line 13
    .line 14
    check-cast p2, Landroid/widget/TextView;

    .line 15
    .line 16
    iget-object p3, p0, Lcom/narvii/invite/InviteContactFragment$SearchEmptyAdapter;->this$0:Lcom/narvii/invite/InviteContactFragment;

    .line 17
    .line 18
    iget-object p3, p3, Lcom/narvii/invite/InviteContactFragment;->keyword:Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    .line 23
    sget p2, Lcom/narvii/lib/R$id;->desc:I

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 27
    move-result-object p2

    .line 28
    .line 29
    const/16 p3, 0x8

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 33
    .line 34
    sget p2, Lcom/narvii/lib/R$id;->select:I

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 38
    move-result-object p2

    .line 39
    .line 40
    check-cast p2, Landroid/widget/ImageView;

    .line 41
    .line 42
    sget p3, Lcom/narvii/lib/R$drawable;->invite_contact_plus:I

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 46
    return-object p1
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 4

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/invite/InviteContactFragment$Contact;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/narvii/invite/InviteContactFragment$Contact;-><init>()V

    .line 6
    .line 7
    iget-object v1, p0, Lcom/narvii/invite/InviteContactFragment$SearchEmptyAdapter;->this$0:Lcom/narvii/invite/InviteContactFragment;

    .line 8
    .line 9
    iget-object v1, v1, Lcom/narvii/invite/InviteContactFragment;->keyword:Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    invoke-static {v1}, Lcom/narvii/util/Utils;->isValidPhone(Ljava/lang/String;)Z

    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x0

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    iget-object v1, p0, Lcom/narvii/invite/InviteContactFragment$SearchEmptyAdapter;->this$0:Lcom/narvii/invite/InviteContactFragment;

    .line 19
    .line 20
    iget-object v1, v1, Lcom/narvii/invite/InviteContactFragment;->keyword:Ljava/lang/String;

    .line 21
    .line 22
    iput-object v1, v0, Lcom/narvii/invite/InviteContactFragment$Contact;->phone:Ljava/lang/String;

    .line 23
    goto :goto_0

    .line 24
    .line 25
    :cond_0
    iget-object v1, p0, Lcom/narvii/invite/InviteContactFragment$SearchEmptyAdapter;->this$0:Lcom/narvii/invite/InviteContactFragment;

    .line 26
    .line 27
    iget-object v1, v1, Lcom/narvii/invite/InviteContactFragment;->keyword:Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    invoke-static {v1}, Lcom/narvii/util/Utils;->isValidEmail(Ljava/lang/String;)Z

    .line 31
    move-result v1

    .line 32
    .line 33
    if-eqz v1, :cond_3

    .line 34
    .line 35
    iget-object v1, p0, Lcom/narvii/invite/InviteContactFragment$SearchEmptyAdapter;->this$0:Lcom/narvii/invite/InviteContactFragment;

    .line 36
    .line 37
    iget-object v1, v1, Lcom/narvii/invite/InviteContactFragment;->keyword:Ljava/lang/String;

    .line 38
    .line 39
    iput-object v1, v0, Lcom/narvii/invite/InviteContactFragment$Contact;->email:Ljava/lang/String;

    .line 40
    .line 41
    :goto_0
    iget-object v1, p0, Lcom/narvii/invite/InviteContactFragment$SearchEmptyAdapter;->this$0:Lcom/narvii/invite/InviteContactFragment;

    .line 42
    .line 43
    iget-object v1, v1, Lcom/narvii/invite/InviteContactFragment;->allContactList:Ljava/util/List;

    .line 44
    .line 45
    if-eqz v1, :cond_2

    .line 46
    const/4 v3, 0x0

    .line 47
    .line 48
    .line 49
    invoke-interface {v1, v3, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 50
    .line 51
    iget-object v1, p0, Lcom/narvii/invite/InviteContactFragment$SearchEmptyAdapter;->this$0:Lcom/narvii/invite/InviteContactFragment;

    .line 52
    .line 53
    iget-object v1, v1, Lcom/narvii/invite/InviteContactFragment;->selectedContactList:Ljava/util/List;

    .line 54
    .line 55
    .line 56
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    .line 58
    iget-object v0, p0, Lcom/narvii/invite/InviteContactFragment$SearchEmptyAdapter;->this$0:Lcom/narvii/invite/InviteContactFragment;

    .line 59
    .line 60
    .line 61
    invoke-static {v0}, Lcom/narvii/invite/InviteContactFragment;->t(Lcom/narvii/invite/InviteContactFragment;)Lcom/narvii/widget/SearchBar;

    .line 62
    move-result-object v0

    .line 63
    .line 64
    if-eqz v0, :cond_1

    .line 65
    .line 66
    iget-object v0, p0, Lcom/narvii/invite/InviteContactFragment$SearchEmptyAdapter;->this$0:Lcom/narvii/invite/InviteContactFragment;

    .line 67
    .line 68
    .line 69
    invoke-static {v0}, Lcom/narvii/invite/InviteContactFragment;->t(Lcom/narvii/invite/InviteContactFragment;)Lcom/narvii/widget/SearchBar;

    .line 70
    move-result-object v0

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0}, Lcom/narvii/widget/SearchBar;->getEditText()Landroid/widget/EditText;

    .line 74
    move-result-object v0

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    .line 79
    :cond_1
    iget-object v0, p0, Lcom/narvii/invite/InviteContactFragment$SearchEmptyAdapter;->this$0:Lcom/narvii/invite/InviteContactFragment;

    .line 80
    .line 81
    .line 82
    invoke-static {v0}, Lcom/narvii/invite/InviteContactFragment;->v(Lcom/narvii/invite/InviteContactFragment;)V

    .line 83
    .line 84
    .line 85
    :cond_2
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 86
    move-result p1

    .line 87
    return p1

    .line 88
    .line 89
    :cond_3
    new-instance p1, Lcom/narvii/widget/ACMAlertDialog;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 93
    move-result-object p2

    .line 94
    .line 95
    .line 96
    invoke-direct {p1, p2}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 97
    .line 98
    sget p2, Lcom/narvii/lib/R$string;->invalid_email_or_phone:I

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1, p2}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    .line 102
    .line 103
    .line 104
    const p2, 0x104000a

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1, p2, v2}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    .line 111
    const/4 p1, 0x1

    .line 112
    return p1
.end method
