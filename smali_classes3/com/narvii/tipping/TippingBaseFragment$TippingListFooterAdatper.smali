.class Lcom/narvii/tipping/TippingBaseFragment$TippingListFooterAdatper;
.super Lcom/narvii/list/NVAdapter;
.source "TippingBaseFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/tipping/TippingBaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TippingListFooterAdatper"
.end annotation


# instance fields
.field private community:Lcom/narvii/model/Community;

.field private communityHelper:Lcom/narvii/community/CommunityHelper;

.field private communityService:Lcom/narvii/community/CommunityService;

.field public globalTipSummary:Lcom/narvii/tipping/model/TipSummary;

.field public isShowing:Z

.field public publishNdcId:I

.field final synthetic this$0:Lcom/narvii/tipping/TippingBaseFragment;

.field public tipSummary:Lcom/narvii/tipping/model/TipSummary;


# direct methods
.method public constructor <init>(Lcom/narvii/tipping/TippingBaseFragment;Lcom/narvii/app/NVContext;ILcom/narvii/model/Community;)V
    .locals 0

    .line 536
    iput-object p1, p0, Lcom/narvii/tipping/TippingBaseFragment$TippingListFooterAdatper;->this$0:Lcom/narvii/tipping/TippingBaseFragment;

    .line 537
    invoke-direct {p0, p2}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    const/4 p1, 0x0

    .line 531
    iput-boolean p1, p0, Lcom/narvii/tipping/TippingBaseFragment$TippingListFooterAdatper;->isShowing:Z

    .line 538
    iput-object p4, p0, Lcom/narvii/tipping/TippingBaseFragment$TippingListFooterAdatper;->community:Lcom/narvii/model/Community;

    .line 539
    iput p3, p0, Lcom/narvii/tipping/TippingBaseFragment$TippingListFooterAdatper;->publishNdcId:I

    .line 540
    new-instance p1, Lcom/narvii/community/CommunityHelper;

    invoke-direct {p1, p0}, Lcom/narvii/community/CommunityHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/tipping/TippingBaseFragment$TippingListFooterAdatper;->communityHelper:Lcom/narvii/community/CommunityHelper;

    if-nez p4, :cond_0

    const-string p1, "community"

    .line 542
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/community/CommunityService;

    iput-object p1, p0, Lcom/narvii/tipping/TippingBaseFragment$TippingListFooterAdatper;->communityService:Lcom/narvii/community/CommunityService;

    .line 543
    iget-object p1, p0, Lcom/narvii/tipping/TippingBaseFragment$TippingListFooterAdatper;->communityService:Lcom/narvii/community/CommunityService;

    invoke-virtual {p1, p3}, Lcom/narvii/community/CommunityService;->getLiteCommunity(I)Lcom/narvii/model/Community;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/tipping/TippingBaseFragment$TippingListFooterAdatper;->community:Lcom/narvii/model/Community;

    :cond_0
    return-void
.end method

.method private getCommunityFeed()Lcom/narvii/model/Tippable;
    .locals 3

    .line 624
    iget-object v0, p0, Lcom/narvii/tipping/TippingBaseFragment$TippingListFooterAdatper;->this$0:Lcom/narvii/tipping/TippingBaseFragment;

    iget-object v0, v0, Lcom/narvii/tipping/TippingBaseFragment;->tippable:Lcom/narvii/model/Tippable;

    instance-of v1, v0, Lcom/narvii/model/Blog;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/narvii/model/Blog;

    iget v1, v1, Lcom/narvii/model/Blog;->type:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/narvii/model/Blog;

    iget-object v1, v1, Lcom/narvii/model/Blog;->refObject:Lcom/narvii/model/Feed;

    if-eqz v1, :cond_0

    .line 625
    check-cast v0, Lcom/narvii/model/Blog;

    iget-object v0, v0, Lcom/narvii/model/Blog;->refObject:Lcom/narvii/model/Feed;

    return-object v0

    .line 627
    :cond_0
    iget-object v0, p0, Lcom/narvii/tipping/TippingBaseFragment$TippingListFooterAdatper;->this$0:Lcom/narvii/tipping/TippingBaseFragment;

    iget-object v0, v0, Lcom/narvii/tipping/TippingBaseFragment;->tippable:Lcom/narvii/model/Tippable;

    return-object v0
.end method

.method private getTipSummary()Lcom/narvii/tipping/model/TipSummary;
    .locals 1

    .line 614
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isGlobalInteractionScope()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/tipping/TippingBaseFragment$TippingListFooterAdatper;->tipSummary:Lcom/narvii/tipping/model/TipSummary;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/narvii/tipping/TippingBaseFragment$TippingListFooterAdatper;->globalTipSummary:Lcom/narvii/tipping/model/TipSummary;

    :goto_0
    return-object v0
.end method

.method private getTipperCount()I
    .locals 1

    .line 618
    invoke-direct {p0}, Lcom/narvii/tipping/TippingBaseFragment$TippingListFooterAdatper;->getTipSummary()Lcom/narvii/tipping/model/TipSummary;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 619
    iget v0, v0, Lcom/narvii/tipping/model/TipSummary;->tippersCount:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private openTippinglList()V
    .locals 4

    .line 610
    new-instance v0, Lcom/narvii/tipping/TippingHelper;

    iget-object v1, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    invoke-direct {v0, v1}, Lcom/narvii/tipping/TippingHelper;-><init>(Lcom/narvii/app/NVContext;)V

    invoke-direct {p0}, Lcom/narvii/tipping/TippingBaseFragment$TippingListFooterAdatper;->getCommunityFeed()Lcom/narvii/model/Tippable;

    move-result-object v1

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isGlobalInteractionScope()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/narvii/tipping/TippingBaseFragment$TippingListFooterAdatper;->community:Lcom/narvii/model/Community;

    invoke-virtual {v0, v1, v2, v3}, Lcom/narvii/tipping/TippingHelper;->openTippingList(Lcom/narvii/model/Tippable;ZLcom/narvii/model/Community;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 549
    invoke-direct {p0}, Lcom/narvii/tipping/TippingBaseFragment$TippingListFooterAdatper;->getTipperCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

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

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const p1, 0x7f0b02f8

    .line 564
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    .line 565
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isGlobalInteractionScope()Z

    move-result p2

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    const p2, 0x7f090bd3

    .line 566
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 567
    invoke-direct {p0}, Lcom/narvii/tipping/TippingBaseFragment$TippingListFooterAdatper;->getTipperCount()I

    move-result v1

    if-le v1, v0, :cond_0

    .line 569
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0f1049

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, p3

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const p3, 0x7f0f1059

    .line 571
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    .line 573
    :goto_0
    iget-object p2, p0, Lcom/narvii/tipping/TippingBaseFragment$TippingListFooterAdatper;->community:Lcom/narvii/model/Community;

    if-eqz p2, :cond_3

    const p2, 0x7f0902a3

    .line 574
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/CommunityIconView;

    .line 575
    iget-object p3, p0, Lcom/narvii/tipping/TippingBaseFragment$TippingListFooterAdatper;->community:Lcom/narvii/model/Community;

    iget-object p3, p3, Lcom/narvii/model/Community;->icon:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    const p2, 0x7f0902b6

    .line 576
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 577
    iget-object p3, p0, Lcom/narvii/tipping/TippingBaseFragment$TippingListFooterAdatper;->community:Lcom/narvii/model/Community;

    iget-object p3, p3, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 578
    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p3}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p3

    const/high16 v0, 0x42b40000    # 90.0f

    invoke-static {p3, v0}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 579
    iget-object p2, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_1
    const p2, 0x7f0904eb

    .line 582
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const/4 v1, 0x4

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    const p2, 0x7f0904ec

    .line 583
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 584
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 585
    invoke-direct {p0}, Lcom/narvii/tipping/TippingBaseFragment$TippingListFooterAdatper;->getTipperCount()I

    move-result v1

    if-le v1, v0, :cond_2

    .line 587
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0f074c

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, p3

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 589
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p3

    const v0, 0x7f0f074a

    invoke-virtual {p3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 592
    :cond_3
    :goto_1
    iget-object p2, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    if-eqz p5, :cond_2

    .line 598
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0904b5

    if-ne v0, v1, :cond_2

    .line 599
    sget-object p1, Lcom/narvii/logging/ActSemantic;->listViewEnter:Lcom/narvii/logging/ActSemantic;

    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isGlobalInteractionScope()Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "CommunityPropsBar"

    goto :goto_0

    :cond_0
    const-string p2, "GuestPropsBar"

    :goto_0
    invoke-virtual {p1, p2}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 600
    iget-object p1, p0, Lcom/narvii/tipping/TippingBaseFragment$TippingListFooterAdatper;->communityHelper:Lcom/narvii/community/CommunityHelper;

    iget p2, p0, Lcom/narvii/tipping/TippingBaseFragment$TippingListFooterAdatper;->publishNdcId:I

    invoke-virtual {p1, p2}, Lcom/narvii/community/CommunityHelper;->checkCommunityJoined(I)Z

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_1

    return p2

    .line 603
    :cond_1
    invoke-direct {p0}, Lcom/narvii/tipping/TippingBaseFragment$TippingListFooterAdatper;->openTippinglList()V

    return p2

    .line 606
    :cond_2
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
