.class abstract Lcom/narvii/invite/InviteContactFragment$ContactAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "InviteContactFragment.java"


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

    .line 662
    iput-object p1, p0, Lcom/narvii/invite/InviteContactFragment$ContactAdapter;->this$0:Lcom/narvii/invite/InviteContactFragment;

    .line 663
    invoke-direct {p0, p2}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method

.method private isSelected(I)Z
    .locals 1

    .line 688
    invoke-virtual {p0, p1}, Lcom/narvii/invite/InviteContactFragment$ContactAdapter;->getItem(I)Lcom/narvii/invite/InviteContactFragment$Contact;

    move-result-object p1

    .line 689
    iget-object v0, p0, Lcom/narvii/invite/InviteContactFragment$ContactAdapter;->this$0:Lcom/narvii/invite/InviteContactFragment;

    iget-object v0, v0, Lcom/narvii/invite/InviteContactFragment;->selectedContactList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public getItem(I)Lcom/narvii/invite/InviteContactFragment$Contact;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 661
    invoke-virtual {p0, p1}, Lcom/narvii/invite/InviteContactFragment$ContactAdapter;->getItem(I)Lcom/narvii/invite/InviteContactFragment$Contact;

    move-result-object p1

    return-object p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 673
    invoke-virtual {p0, p1}, Lcom/narvii/invite/InviteContactFragment$ContactAdapter;->getItem(I)Lcom/narvii/invite/InviteContactFragment$Contact;

    move-result-object v0

    .line 674
    sget v1, Lcom/narvii/lib/R$layout;->item_invite_contact:I

    invoke-virtual {p0, v1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    .line 675
    sget p3, Lcom/narvii/lib/R$id;->text:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 676
    invoke-virtual {v0}, Lcom/narvii/invite/InviteContactFragment$Contact;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 678
    sget p3, Lcom/narvii/lib/R$id;->desc:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 679
    invoke-virtual {v0}, Lcom/narvii/invite/InviteContactFragment$Contact;->getContactText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 680
    iget-object v0, v0, Lcom/narvii/invite/InviteContactFragment$Contact;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v0, 0x8

    :goto_1
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 682
    sget p3, Lcom/narvii/lib/R$id;->select:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    .line 683
    invoke-direct {p0, p1}, Lcom/narvii/invite/InviteContactFragment$ContactAdapter;->isSelected(I)Z

    move-result p1

    if-eqz p1, :cond_2

    sget p1, Lcom/narvii/lib/R$drawable;->invite_contact_selected:I

    goto :goto_2

    :cond_2
    sget p1, Lcom/narvii/lib/R$drawable;->invite_contact_unselected:I

    :goto_2
    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-object p2
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    .line 694
    invoke-virtual {p0, p2}, Lcom/narvii/invite/InviteContactFragment$ContactAdapter;->getItem(I)Lcom/narvii/invite/InviteContactFragment$Contact;

    move-result-object v0

    .line 695
    iget-object v1, p0, Lcom/narvii/invite/InviteContactFragment$ContactAdapter;->this$0:Lcom/narvii/invite/InviteContactFragment;

    iget-object v1, v1, Lcom/narvii/invite/InviteContactFragment;->selectedContactList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 696
    iget-object v1, p0, Lcom/narvii/invite/InviteContactFragment$ContactAdapter;->this$0:Lcom/narvii/invite/InviteContactFragment;

    iget-object v1, v1, Lcom/narvii/invite/InviteContactFragment;->selectedContactList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 698
    :cond_0
    iget-object v1, p0, Lcom/narvii/invite/InviteContactFragment$ContactAdapter;->this$0:Lcom/narvii/invite/InviteContactFragment;

    iget-object v1, v1, Lcom/narvii/invite/InviteContactFragment;->selectedContactList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 700
    :goto_0
    iget-object v0, p0, Lcom/narvii/invite/InviteContactFragment$ContactAdapter;->this$0:Lcom/narvii/invite/InviteContactFragment;

    invoke-static {v0}, Lcom/narvii/invite/InviteContactFragment;->access$200(Lcom/narvii/invite/InviteContactFragment;)V

    .line 701
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
