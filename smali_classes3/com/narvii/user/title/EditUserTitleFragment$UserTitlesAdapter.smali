.class public Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "EditUserTitleFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/user/title/EditUserTitleFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UserTitlesAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter$CommunityTagViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field cid:I

.field list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/api/UserTitle;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/narvii/user/title/EditUserTitleFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/user/title/EditUserTitleFragment;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/narvii/model/api/UserTitle;",
            ">;)V"
        }
    .end annotation

    .line 617
    iput-object p1, p0, Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter;->this$0:Lcom/narvii/user/title/EditUserTitleFragment;

    .line 618
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 619
    iput p2, p0, Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter;->cid:I

    .line 620
    iput-object p3, p0, Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter;->list:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 692
    iget-object v0, p0, Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter;->list:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 7

    .line 631
    instance-of v0, p1, Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter$CommunityTagViewHolder;

    if-eqz v0, :cond_4

    .line 632
    iget-object v0, p0, Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    .line 633
    instance-of v0, p2, Lcom/narvii/model/api/UserTitle;

    if-eqz v0, :cond_4

    .line 634
    check-cast p2, Lcom/narvii/model/api/UserTitle;

    iget-object p2, p2, Lcom/narvii/model/api/UserTitle;->title:Ljava/lang/String;

    .line 635
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f090b9a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez p2, :cond_0

    const/4 p2, 0x0

    .line 637
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 638
    :cond_0
    iget-object v1, p0, Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter;->this$0:Lcom/narvii/user/title/EditUserTitleFragment;

    iget-object v1, v1, Lcom/narvii/user/title/EditUserTitleFragment;->searchKeyword:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 639
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const/4 v2, 0x0

    .line 641
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    .line 642
    iget-object v3, p0, Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter;->this$0:Lcom/narvii/user/title/EditUserTitleFragment;

    iget-object v3, v3, Lcom/narvii/user/title/EditUserTitleFragment;->searchKeyword:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 643
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 644
    invoke-virtual {p2, v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_1

    goto :goto_1

    .line 648
    :cond_1
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    const v5, -0xff3183

    invoke-direct {v4, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iget-object v5, p0, Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter;->this$0:Lcom/narvii/user/title/EditUserTitleFragment;

    iget-object v5, v5, Lcom/narvii/user/title/EditUserTitleFragment;->searchKeyword:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v2

    const/16 v6, 0x21

    invoke-interface {v1, v4, v2, v5, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 649
    iget-object v4, p0, Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter;->this$0:Lcom/narvii/user/title/EditUserTitleFragment;

    iget-object v4, v4, Lcom/narvii/user/title/EditUserTitleFragment;->searchKeyword:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_0

    .line 651
    :cond_2
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 653
    :cond_3
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    const p2, 0x7f0807f9

    .line 655
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 657
    iget-object p2, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter$1;-><init>(Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 625
    iget-object p2, p0, Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter;->this$0:Lcom/narvii/user/title/EditUserTitleFragment;

    invoke-virtual {p2}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0b06ce

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 626
    new-instance p2, Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter$CommunityTagViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter$CommunityTagViewHolder;-><init>(Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter;Landroid/view/View;)V

    return-object p2
.end method
