.class Lcom/narvii/invite/InviteMembersFragment$ShareCardAdapter;
.super Lcom/narvii/list/AdriftAdapter;
.source "InviteMembersFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/invite/InviteMembersFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ShareCardAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/invite/InviteMembersFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/invite/InviteMembersFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 430
    iput-object p1, p0, Lcom/narvii/invite/InviteMembersFragment$ShareCardAdapter;->this$0:Lcom/narvii/invite/InviteMembersFragment;

    .line 431
    invoke-direct {p0, p2}, Lcom/narvii/list/AdriftAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method

.method private shareAminoCard()V
    .locals 10

    const-string v0, "community"

    .line 500
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/community/CommunityService;

    .line 501
    iget-object v1, p0, Lcom/narvii/invite/InviteMembersFragment$ShareCardAdapter;->this$0:Lcom/narvii/invite/InviteMembersFragment;

    const-string v2, "__communityId"

    invoke-virtual {v1, v2}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 506
    :cond_0
    new-instance v1, Landroid/content/Intent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ndc://fragment/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v4, Lcom/narvii/community/CommunityShareFragment;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v1, v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 507
    sget v3, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_1

    .line 508
    iget-object v3, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v3}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/narvii/lib/R$string;->share_community_subject_template:I

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    iget-object v7, v0, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-virtual {v3, v4, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 509
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v6}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Lcom/narvii/lib/R$string;->share_community_text_template:I

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v9, v0, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    aput-object v9, v5, v8

    invoke-virtual {v6, v7, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/narvii/model/Community;->link:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 510
    sget-object v5, Lcom/narvii/community/CommunityShareFragment;->KEY_SHARE_SUBJECT:Ljava/lang/String;

    invoke-virtual {v1, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 511
    sget-object v3, Lcom/narvii/community/CommunityShareFragment;->KEY_SHARE_TEXT:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 512
    sget-object v3, Lcom/narvii/share/ShareDarkRoomFragment;->KEY_STATISTIC_SOURCE:Ljava/lang/String;

    const-string v4, "ACM Share"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 514
    :cond_1
    sget-object v3, Lcom/narvii/share/ShareDarkRoomFragment;->KEY_STATISTIC_SOURCE:Ljava/lang/String;

    const-string v4, "Share Amino Card"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 516
    :goto_0
    iget v3, v0, Lcom/narvii/model/Community;->id:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 517
    sget-object v2, Lcom/narvii/share/ShareDarkRoomFragment;->KEY_SHARE_OBJECT:Ljava/lang/String;

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 518
    invoke-virtual {p0, v1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 436
    invoke-super {p0}, Lcom/narvii/list/AdriftAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 441
    sget p1, Lcom/narvii/lib/R$layout;->share_community_card_layout:I

    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    const-string p2, "community"

    .line 442
    invoke-virtual {p0, p2}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/community/CommunityService;

    .line 443
    iget-object p3, p0, Lcom/narvii/invite/InviteMembersFragment$ShareCardAdapter;->this$0:Lcom/narvii/invite/InviteMembersFragment;

    const-string v0, "__communityId"

    invoke-virtual {p3, v0}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    move-result-object p2

    .line 444
    sget p3, Lcom/narvii/lib/R$id;->community_share_icon:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/widget/ThumbImageView;

    .line 445
    iget-object v0, p2, Lcom/narvii/model/Community;->icon:Ljava/lang/String;

    invoke-virtual {p3, v0}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 447
    sget p3, Lcom/narvii/lib/R$id;->community_share_bg:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/widget/PromotionalImageView;

    .line 448
    sget v0, Lcom/narvii/lib/R$id;->text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/narvii/invite/InviteMembersFragment$ShareCardAdapter;->this$0:Lcom/narvii/invite/InviteMembersFragment;

    invoke-static {v1}, Lcom/narvii/invite/InviteMembersFragment;->access$100(Lcom/narvii/invite/InviteMembersFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 450
    iget-object v0, p2, Lcom/narvii/model/Community;->promotionalMediaList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 451
    invoke-virtual {p3, p2}, Lcom/narvii/widget/PromotionalImageView;->setCommunity(Lcom/narvii/model/Community;)V

    goto :goto_0

    :cond_0
    const-string v0, "imageLoader"

    .line 453
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/image/NVImageLoader;

    .line 454
    iget-object v1, p2, Lcom/narvii/model/Community;->icon:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 455
    new-instance v2, Lcom/narvii/invite/InviteMembersFragment$ShareCardAdapter$1;

    invoke-direct {v2, p0, p3}, Lcom/narvii/invite/InviteMembersFragment$ShareCardAdapter$1;-><init>(Lcom/narvii/invite/InviteMembersFragment$ShareCardAdapter;Lcom/narvii/widget/PromotionalImageView;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/volley/toolbox/ImageLoader;->get(Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader$ImageListener;)Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    .line 472
    :cond_1
    :goto_0
    sget p3, Lcom/narvii/lib/R$id;->community_share_title:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 473
    sget v0, Lcom/narvii/lib/R$id;->community_share_tagline:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 474
    iget-object v1, p2, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 475
    iget-object p3, p2, Lcom/narvii/model/Community;->tagline:Ljava/lang/String;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 478
    iget-object p2, p2, Lcom/narvii/model/Community;->endpoint:Ljava/lang/String;

    .line 479
    sget p3, Lcom/narvii/lib/R$id;->community_id_info:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 480
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 481
    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p2, 0x1

    const/high16 v0, 0x41800000    # 16.0f

    .line 482
    invoke-virtual {p3, p2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 484
    sget p2, Lcom/narvii/lib/R$id;->community_id_hint:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 485
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/narvii/invite/InviteMembersFragment$ShareCardAdapter;->this$0:Lcom/narvii/invite/InviteMembersFragment;

    sget v1, Lcom/narvii/lib/R$string;->community_id:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 486
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 487
    sget p2, Lcom/narvii/lib/R$id;->share_amino_card:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    if-eqz p5, :cond_0

    .line 493
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/narvii/lib/R$id;->share_amino_card:I

    if-ne v0, v1, :cond_0

    .line 494
    invoke-direct {p0}, Lcom/narvii/invite/InviteMembersFragment$ShareCardAdapter;->shareAminoCard()V

    .line 496
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
