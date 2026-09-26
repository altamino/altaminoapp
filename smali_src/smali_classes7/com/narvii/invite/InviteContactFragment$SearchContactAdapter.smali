.class Lcom/narvii/invite/InviteContactFragment$SearchContactAdapter;
.super Lcom/narvii/invite/InviteContactFragment$ContactAdapter;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/invite/InviteContactFragment$SearchContactAdapter;->this$0:Lcom/narvii/invite/InviteContactFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1, p2}, Lcom/narvii/invite/InviteContactFragment$ContactAdapter;-><init>(Lcom/narvii/invite/InviteContactFragment;Lcom/narvii/app/NVContext;)V

    .line 6
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/invite/InviteContactFragment$SearchContactAdapter;->this$0:Lcom/narvii/invite/InviteContactFragment;

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
    const/4 v1, 0x0

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    return v1

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/narvii/invite/InviteContactFragment$SearchContactAdapter;->this$0:Lcom/narvii/invite/InviteContactFragment;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/narvii/invite/InviteContactFragment;->searchContactList:Ljava/util/List;

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Lcom/narvii/util/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    .line 20
    move-result v0

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    goto :goto_0

    .line 24
    .line 25
    :cond_1
    iget-object v0, p0, Lcom/narvii/invite/InviteContactFragment$SearchContactAdapter;->this$0:Lcom/narvii/invite/InviteContactFragment;

    .line 26
    .line 27
    iget-object v0, v0, Lcom/narvii/invite/InviteContactFragment;->searchContactList:Ljava/util/List;

    .line 28
    .line 29
    .line 30
    invoke-static {v0}, Lcom/narvii/util/CollectionUtils;->getSize(Ljava/util/List;)I

    .line 31
    move-result v1

    .line 32
    :goto_0
    return v1
.end method

.method public getItem(I)Lcom/narvii/invite/InviteContactFragment$Contact;
    .locals 1

    iget-object v0, p0, Lcom/narvii/invite/InviteContactFragment$SearchContactAdapter;->this$0:Lcom/narvii/invite/InviteContactFragment;

    .line 2
    iget-object v0, v0, Lcom/narvii/invite/InviteContactFragment;->searchContactList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/invite/InviteContactFragment$Contact;

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 1
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

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/invite/InviteContactFragment$ContactAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    sget p2, Lcom/narvii/lib/R$id;->text:I

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object p2

    .line 11
    .line 12
    check-cast p2, Landroid/widget/TextView;

    .line 13
    .line 14
    iget-object p3, p0, Lcom/narvii/invite/InviteContactFragment$SearchContactAdapter;->this$0:Lcom/narvii/invite/InviteContactFragment;

    .line 15
    .line 16
    iget-object p3, p3, Lcom/narvii/invite/InviteContactFragment;->keyword:Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    const v0, -0xff3183

    .line 20
    .line 21
    .line 22
    invoke-static {p2, p3, v0}, Lcom/narvii/util/ViewUtils;->highlightKeywords(Landroid/widget/TextView;Ljava/lang/String;I)V

    .line 23
    .line 24
    sget p2, Lcom/narvii/lib/R$id;->desc:I

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 28
    move-result-object p2

    .line 29
    .line 30
    check-cast p2, Landroid/widget/TextView;

    .line 31
    .line 32
    iget-object p3, p0, Lcom/narvii/invite/InviteContactFragment$SearchContactAdapter;->this$0:Lcom/narvii/invite/InviteContactFragment;

    .line 33
    .line 34
    iget-object p3, p3, Lcom/narvii/invite/InviteContactFragment;->keyword:Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    invoke-static {p2, p3, v0}, Lcom/narvii/util/ViewUtils;->highlightKeywords(Landroid/widget/TextView;Ljava/lang/String;I)V

    .line 38
    return-object p1
.end method
