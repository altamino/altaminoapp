.class Lcom/narvii/invite/InviteContactFragment$SearchContactAdapter;
.super Lcom/narvii/invite/InviteContactFragment$ContactAdapter;
.source "InviteContactFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/invite/InviteContactFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SearchContactAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/invite/InviteContactFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/invite/InviteContactFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 558
    iput-object p1, p0, Lcom/narvii/invite/InviteContactFragment$SearchContactAdapter;->this$0:Lcom/narvii/invite/InviteContactFragment;

    .line 559
    invoke-direct {p0, p1, p2}, Lcom/narvii/invite/InviteContactFragment$ContactAdapter;-><init>(Lcom/narvii/invite/InviteContactFragment;Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .line 575
    iget-object v0, p0, Lcom/narvii/invite/InviteContactFragment$SearchContactAdapter;->this$0:Lcom/narvii/invite/InviteContactFragment;

    iget-object v0, v0, Lcom/narvii/invite/InviteContactFragment;->keyword:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 578
    :cond_0
    iget-object v0, p0, Lcom/narvii/invite/InviteContactFragment$SearchContactAdapter;->this$0:Lcom/narvii/invite/InviteContactFragment;

    iget-object v0, v0, Lcom/narvii/invite/InviteContactFragment;->searchContactList:Ljava/util/List;

    invoke-static {v0}, Lcom/narvii/util/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/narvii/invite/InviteContactFragment$SearchContactAdapter;->this$0:Lcom/narvii/invite/InviteContactFragment;

    iget-object v0, v0, Lcom/narvii/invite/InviteContactFragment;->searchContactList:Ljava/util/List;

    invoke-static {v0}, Lcom/narvii/util/CollectionUtils;->getSize(Ljava/util/List;)I

    move-result v1

    :goto_0
    return v1
.end method

.method public getItem(I)Lcom/narvii/invite/InviteContactFragment$Contact;
    .locals 1

    .line 583
    iget-object v0, p0, Lcom/narvii/invite/InviteContactFragment$SearchContactAdapter;->this$0:Lcom/narvii/invite/InviteContactFragment;

    iget-object v0, v0, Lcom/narvii/invite/InviteContactFragment;->searchContactList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/invite/InviteContactFragment$Contact;

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 555
    invoke-virtual {p0, p1}, Lcom/narvii/invite/InviteContactFragment$SearchContactAdapter;->getItem(I)Lcom/narvii/invite/InviteContactFragment$Contact;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 565
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/invite/InviteContactFragment$ContactAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 566
    sget p2, Lcom/narvii/lib/R$id;->text:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 567
    iget-object p3, p0, Lcom/narvii/invite/InviteContactFragment$SearchContactAdapter;->this$0:Lcom/narvii/invite/InviteContactFragment;

    iget-object p3, p3, Lcom/narvii/invite/InviteContactFragment;->keyword:Ljava/lang/String;

    const v0, -0xff3183

    invoke-static {p2, p3, v0}, Lcom/narvii/util/ViewUtils;->highlightKeywords(Landroid/widget/TextView;Ljava/lang/String;I)V

    .line 568
    sget p2, Lcom/narvii/lib/R$id;->desc:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 569
    iget-object p3, p0, Lcom/narvii/invite/InviteContactFragment$SearchContactAdapter;->this$0:Lcom/narvii/invite/InviteContactFragment;

    iget-object p3, p3, Lcom/narvii/invite/InviteContactFragment;->keyword:Ljava/lang/String;

    invoke-static {p2, p3, v0}, Lcom/narvii/util/ViewUtils;->highlightKeywords(Landroid/widget/TextView;Ljava/lang/String;I)V

    return-object p1
.end method
