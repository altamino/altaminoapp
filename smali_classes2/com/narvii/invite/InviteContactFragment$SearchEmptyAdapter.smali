.class Lcom/narvii/invite/InviteContactFragment$SearchEmptyAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "InviteContactFragment.java"


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

    .line 594
    iput-object p1, p0, Lcom/narvii/invite/InviteContactFragment$SearchEmptyAdapter;->this$0:Lcom/narvii/invite/InviteContactFragment;

    .line 595
    invoke-direct {p0, p2}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 600
    iget-object v0, p0, Lcom/narvii/invite/InviteContactFragment$SearchEmptyAdapter;->this$0:Lcom/narvii/invite/InviteContactFragment;

    iget-object v0, v0, Lcom/narvii/invite/InviteContactFragment;->keyword:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/narvii/invite/InviteContactFragment$SearchEmptyAdapter;->this$0:Lcom/narvii/invite/InviteContactFragment;

    iget-object v0, v0, Lcom/narvii/invite/InviteContactFragment;->searchContactList:Ljava/util/List;

    invoke-static {v0}, Lcom/narvii/util/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

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

    .line 618
    sget p1, Lcom/narvii/lib/R$layout;->item_invite_contact:I

    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    .line 619
    sget p2, Lcom/narvii/lib/R$id;->text:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 620
    iget-object p3, p0, Lcom/narvii/invite/InviteContactFragment$SearchEmptyAdapter;->this$0:Lcom/narvii/invite/InviteContactFragment;

    iget-object p3, p3, Lcom/narvii/invite/InviteContactFragment;->keyword:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 622
    sget p2, Lcom/narvii/lib/R$id;->desc:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 623
    sget p2, Lcom/narvii/lib/R$id;->select:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    .line 624
    sget p3, Lcom/narvii/lib/R$drawable;->invite_contact_plus:I

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    return-object p1
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 5

    .line 630
    new-instance v0, Lcom/narvii/invite/InviteContactFragment$Contact;

    invoke-direct {v0}, Lcom/narvii/invite/InviteContactFragment$Contact;-><init>()V

    .line 633
    iget-object v1, p0, Lcom/narvii/invite/InviteContactFragment$SearchEmptyAdapter;->this$0:Lcom/narvii/invite/InviteContactFragment;

    iget-object v1, v1, Lcom/narvii/invite/InviteContactFragment;->keyword:Ljava/lang/String;

    invoke-static {v1}, Lcom/narvii/util/Utils;->isValidPhone(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 634
    iget-object v1, p0, Lcom/narvii/invite/InviteContactFragment$SearchEmptyAdapter;->this$0:Lcom/narvii/invite/InviteContactFragment;

    iget-object v1, v1, Lcom/narvii/invite/InviteContactFragment;->keyword:Ljava/lang/String;

    iput-object v1, v0, Lcom/narvii/invite/InviteContactFragment$Contact;->phone:Ljava/lang/String;

    :goto_0
    const/4 v1, 0x1

    goto :goto_1

    .line 636
    :cond_0
    iget-object v1, p0, Lcom/narvii/invite/InviteContactFragment$SearchEmptyAdapter;->this$0:Lcom/narvii/invite/InviteContactFragment;

    iget-object v1, v1, Lcom/narvii/invite/InviteContactFragment;->keyword:Ljava/lang/String;

    invoke-static {v1}, Lcom/narvii/util/Utils;->isValidEmail(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 637
    iget-object v1, p0, Lcom/narvii/invite/InviteContactFragment$SearchEmptyAdapter;->this$0:Lcom/narvii/invite/InviteContactFragment;

    iget-object v1, v1, Lcom/narvii/invite/InviteContactFragment;->keyword:Ljava/lang/String;

    iput-object v1, v0, Lcom/narvii/invite/InviteContactFragment$Contact;->email:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    const/4 v4, 0x0

    if-eqz v1, :cond_4

    .line 642
    iget-object v1, p0, Lcom/narvii/invite/InviteContactFragment$SearchEmptyAdapter;->this$0:Lcom/narvii/invite/InviteContactFragment;

    iget-object v1, v1, Lcom/narvii/invite/InviteContactFragment;->allContactList:Ljava/util/List;

    if-eqz v1, :cond_3

    .line 643
    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 644
    iget-object v1, p0, Lcom/narvii/invite/InviteContactFragment$SearchEmptyAdapter;->this$0:Lcom/narvii/invite/InviteContactFragment;

    iget-object v1, v1, Lcom/narvii/invite/InviteContactFragment;->selectedContactList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 645
    iget-object v0, p0, Lcom/narvii/invite/InviteContactFragment$SearchEmptyAdapter;->this$0:Lcom/narvii/invite/InviteContactFragment;

    invoke-static {v0}, Lcom/narvii/invite/InviteContactFragment;->access$100(Lcom/narvii/invite/InviteContactFragment;)Lcom/narvii/widget/SearchBar;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 646
    iget-object v0, p0, Lcom/narvii/invite/InviteContactFragment$SearchEmptyAdapter;->this$0:Lcom/narvii/invite/InviteContactFragment;

    invoke-static {v0}, Lcom/narvii/invite/InviteContactFragment;->access$100(Lcom/narvii/invite/InviteContactFragment;)Lcom/narvii/widget/SearchBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/widget/SearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 648
    :cond_2
    iget-object v0, p0, Lcom/narvii/invite/InviteContactFragment$SearchEmptyAdapter;->this$0:Lcom/narvii/invite/InviteContactFragment;

    invoke-static {v0}, Lcom/narvii/invite/InviteContactFragment;->access$200(Lcom/narvii/invite/InviteContactFragment;)V

    .line 657
    :cond_3
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1

    .line 651
    :cond_4
    new-instance p1, Lcom/narvii/widget/ACMAlertDialog;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 652
    sget p2, Lcom/narvii/lib/R$string;->invalid_email_or_phone:I

    invoke-virtual {p1, p2}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    const p2, 0x104000a

    .line 653
    invoke-virtual {p1, p2, v4}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 654
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    return v3
.end method
