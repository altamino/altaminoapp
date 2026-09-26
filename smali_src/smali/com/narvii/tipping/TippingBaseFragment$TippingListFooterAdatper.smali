.class Lcom/narvii/tipping/TippingBaseFragment$TippingListFooterAdatper;
.super Lcom/narvii/list/NVAdapter;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/tipping/TippingBaseFragment$TippingListFooterAdatper;->this$0:Lcom/narvii/tipping/TippingBaseFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    const/4 p1, 0x0

    .line 7
    .line 8
    iput-boolean p1, p0, Lcom/narvii/tipping/TippingBaseFragment$TippingListFooterAdatper;->isShowing:Z

    .line 9
    .line 10
    iput-object p4, p0, Lcom/narvii/tipping/TippingBaseFragment$TippingListFooterAdatper;->community:Lcom/narvii/model/Community;

    .line 11
    .line 12
    iput p3, p0, Lcom/narvii/tipping/TippingBaseFragment$TippingListFooterAdatper;->publishNdcId:I

    .line 13
    .line 14
    new-instance p1, Lcom/narvii/community/CommunityHelper;

    .line 15
    .line 16
    .line 17
    invoke-direct {p1, p0}, Lcom/narvii/community/CommunityHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 18
    .line 19
    iput-object p1, p0, Lcom/narvii/tipping/TippingBaseFragment$TippingListFooterAdatper;->communityHelper:Lcom/narvii/community/CommunityHelper;

    .line 20
    .line 21
    if-nez p4, :cond_0

    .line 22
    .line 23
    const-string p1, "community"

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    check-cast p1, Lcom/narvii/community/CommunityService;

    .line 30
    .line 31
    iput-object p1, p0, Lcom/narvii/tipping/TippingBaseFragment$TippingListFooterAdatper;->communityService:Lcom/narvii/community/CommunityService;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, p3}, Lcom/narvii/community/CommunityService;->getLiteCommunity(I)Lcom/narvii/model/Community;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    iput-object p1, p0, Lcom/narvii/tipping/TippingBaseFragment$TippingListFooterAdatper;->community:Lcom/narvii/model/Community;

    .line 38
    :cond_0
    return-void
.end method

.method private getCommunityFeed()Lcom/narvii/model/Tippable;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/tipping/TippingBaseFragment$TippingListFooterAdatper;->this$0:Lcom/narvii/tipping/TippingBaseFragment;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/tipping/TippingBaseFragment;->tippable:Lcom/narvii/model/Tippable;

    .line 5
    return-object v0
.end method

.method private getTipSummary()Lcom/narvii/tipping/model/TipSummary;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isGlobalInteractionScope()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/tipping/TippingBaseFragment$TippingListFooterAdatper;->tipSummary:Lcom/narvii/tipping/model/TipSummary;

    .line 9
    goto :goto_0

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/narvii/tipping/TippingBaseFragment$TippingListFooterAdatper;->globalTipSummary:Lcom/narvii/tipping/model/TipSummary;

    .line 12
    :goto_0
    return-object v0
.end method

.method private getTipperCount()I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/tipping/TippingBaseFragment$TippingListFooterAdatper;->getTipSummary()Lcom/narvii/tipping/model/TipSummary;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget v0, v0, Lcom/narvii/tipping/model/TipSummary;->tippersCount:I

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method private openTippinglList()V
    .locals 4

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/tipping/TippingHelper;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Lcom/narvii/tipping/TippingHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/narvii/tipping/TippingBaseFragment$TippingListFooterAdatper;->getCommunityFeed()Lcom/narvii/model/Tippable;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isGlobalInteractionScope()Z

    .line 15
    move-result v2

    .line 16
    .line 17
    xor-int/lit8 v2, v2, 0x1

    .line 18
    .line 19
    iget-object v3, p0, Lcom/narvii/tipping/TippingBaseFragment$TippingListFooterAdatper;->community:Lcom/narvii/model/Community;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1, v2, v3}, Lcom/narvii/tipping/TippingHelper;->openTippingList(Lcom/narvii/model/Tippable;ZLcom/narvii/model/Community;)V

    .line 23
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/tipping/TippingBaseFragment$TippingListFooterAdatper;->getTipperCount()I

    .line 4
    move-result v0

    .line 5
    .line 6
    if-lez v0, :cond_0

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
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
    .locals 3

    .line 1
    .line 2
    .line 3
    const p1, 0x7f0d0329

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isGlobalInteractionScope()Z

    .line 11
    move-result p2

    .line 12
    const/4 p3, 0x0

    .line 13
    const/4 v0, 0x1

    .line 14
    .line 15
    if-eqz p2, :cond_1

    .line 16
    .line 17
    .line 18
    const p2, 0x7f0a0eee

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 22
    move-result-object p2

    .line 23
    .line 24
    check-cast p2, Landroid/widget/TextView;

    .line 25
    .line 26
    .line 27
    invoke-direct {p0}, Lcom/narvii/tipping/TippingBaseFragment$TippingListFooterAdatper;->getTipperCount()I

    .line 28
    move-result v1

    .line 29
    .line 30
    if-le v1, v0, :cond_0

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 34
    move-result-object v2

    .line 35
    .line 36
    new-array v0, v0, [Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    move-result-object v1

    .line 41
    .line 42
    aput-object v1, v0, p3

    .line 43
    .line 44
    .line 45
    const p3, 0x7f121156

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, p3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 49
    move-result-object p3

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    goto :goto_0

    .line 54
    .line 55
    .line 56
    :cond_0
    const p3, 0x7f12115a

    .line 57
    .line 58
    .line 59
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    .line 60
    .line 61
    :goto_0
    iget-object p2, p0, Lcom/narvii/tipping/TippingBaseFragment$TippingListFooterAdatper;->community:Lcom/narvii/model/Community;

    .line 62
    .line 63
    if-eqz p2, :cond_3

    .line 64
    .line 65
    .line 66
    const p2, 0x7f0a036b

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 70
    move-result-object p2

    .line 71
    .line 72
    check-cast p2, Lcom/narvii/widget/CommunityIconView;

    .line 73
    .line 74
    iget-object p3, p0, Lcom/narvii/tipping/TippingBaseFragment$TippingListFooterAdatper;->community:Lcom/narvii/model/Community;

    .line 75
    .line 76
    iget-object p3, p3, Lcom/narvii/model/Community;->icon:Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p2, p3}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 80
    .line 81
    .line 82
    const p2, 0x7f0a037c

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 86
    move-result-object p2

    .line 87
    .line 88
    check-cast p2, Landroid/widget/TextView;

    .line 89
    .line 90
    iget-object p3, p0, Lcom/narvii/tipping/TippingBaseFragment$TippingListFooterAdatper;->community:Lcom/narvii/model/Community;

    .line 91
    .line 92
    iget-object p3, p3, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    .line 97
    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    .line 98
    .line 99
    .line 100
    invoke-interface {p3}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 101
    move-result-object p3

    .line 102
    .line 103
    const/high16 v0, 0x42b40000    # 90.0f

    .line 104
    .line 105
    .line 106
    invoke-static {p3, v0}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    .line 107
    move-result p3

    .line 108
    .line 109
    .line 110
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 111
    .line 112
    iget-object p2, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    goto :goto_1

    .line 117
    .line 118
    .line 119
    :cond_1
    const p2, 0x7f0a063d

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 123
    move-result-object p2

    .line 124
    const/4 v1, 0x4

    .line 125
    .line 126
    .line 127
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 128
    .line 129
    .line 130
    const p2, 0x7f0a063e

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 134
    move-result-object p2

    .line 135
    .line 136
    check-cast p2, Landroid/widget/TextView;

    .line 137
    .line 138
    .line 139
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 140
    .line 141
    .line 142
    invoke-direct {p0}, Lcom/narvii/tipping/TippingBaseFragment$TippingListFooterAdatper;->getTipperCount()I

    .line 143
    move-result v1

    .line 144
    .line 145
    if-le v1, v0, :cond_2

    .line 146
    .line 147
    .line 148
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 149
    move-result-object v2

    .line 150
    .line 151
    new-array v0, v0, [Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 155
    move-result-object v1

    .line 156
    .line 157
    aput-object v1, v0, p3

    .line 158
    .line 159
    .line 160
    const p3, 0x7f1207fc

    .line 161
    .line 162
    .line 163
    invoke-virtual {v2, p3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 164
    move-result-object p3

    .line 165
    .line 166
    .line 167
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    goto :goto_1

    .line 169
    .line 170
    .line 171
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 172
    move-result-object p3

    .line 173
    .line 174
    .line 175
    const v0, 0x7f1207fa

    .line 176
    .line 177
    .line 178
    invoke-virtual {p3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 179
    move-result-object p3

    .line 180
    .line 181
    .line 182
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    .line 184
    :cond_3
    :goto_1
    iget-object p2, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 185
    .line 186
    .line 187
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    return-object p1
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    .line 1
    .line 2
    if-eqz p5, :cond_2

    .line 3
    .line 4
    .line 5
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    .line 6
    move-result v0

    .line 7
    .line 8
    .line 9
    const v1, 0x7f0a05f7

    .line 10
    .line 11
    if-ne v0, v1, :cond_2

    .line 12
    .line 13
    sget-object p1, Lcom/narvii/logging/ActSemantic;->listViewEnter:Lcom/narvii/logging/ActSemantic;

    .line 14
    .line 15
    .line 16
    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isGlobalInteractionScope()Z

    .line 21
    move-result p2

    .line 22
    .line 23
    if-eqz p2, :cond_0

    .line 24
    .line 25
    const-string p2, "CommunityPropsBar"

    .line 26
    goto :goto_0

    .line 27
    .line 28
    :cond_0
    const-string p2, "GuestPropsBar"

    .line 29
    .line 30
    .line 31
    :goto_0
    invoke-virtual {p1, p2}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 36
    .line 37
    iget-object p1, p0, Lcom/narvii/tipping/TippingBaseFragment$TippingListFooterAdatper;->communityHelper:Lcom/narvii/community/CommunityHelper;

    .line 38
    .line 39
    iget p2, p0, Lcom/narvii/tipping/TippingBaseFragment$TippingListFooterAdatper;->publishNdcId:I

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, p2}, Lcom/narvii/community/CommunityHelper;->checkCommunityJoined(I)Z

    .line 43
    move-result p1

    .line 44
    const/4 p2, 0x1

    .line 45
    .line 46
    if-nez p1, :cond_1

    .line 47
    return p2

    .line 48
    .line 49
    .line 50
    :cond_1
    invoke-direct {p0}, Lcom/narvii/tipping/TippingBaseFragment$TippingListFooterAdatper;->openTippinglList()V

    .line 51
    return p2

    .line 52
    .line 53
    .line 54
    :cond_2
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 55
    move-result p1

    .line 56
    return p1
.end method
