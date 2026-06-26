.class public Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment$ModerationHistorySectionAdapter;
.super Lcom/narvii/poweruser/history/ModerationHistoryBaseAdapter;
.source "ModerationHistoryBaseFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ModerationHistorySectionAdapter"
.end annotation


# instance fields
.field private l:Ljava/util/List;

.field final synthetic this$0:Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment$ModerationHistorySectionAdapter;->this$0:Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;

    .line 169
    invoke-direct {p0, p1}, Lcom/narvii/poweruser/history/ModerationHistoryBaseAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method

.method private addDateSection()V
    .locals 5

    .line 191
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 193
    iput-object v1, p0, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment$ModerationHistorySectionAdapter;->l:Ljava/util/List;

    goto :goto_1

    .line 194
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 195
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment$ModerationHistorySectionAdapter;->l:Ljava/util/List;

    goto :goto_1

    .line 197
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment$ModerationHistorySectionAdapter;->l:Ljava/util/List;

    .line 199
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/poweruser/history/ModerationHistory;

    .line 200
    iget-object v3, v2, Lcom/narvii/poweruser/history/ModerationHistory;->createdTime:Ljava/util/Date;

    invoke-static {v1, v3}, Lcom/narvii/util/DateUtils;->isSameDay(Ljava/util/Date;Ljava/util/Date;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 201
    iget-object v1, p0, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment$ModerationHistorySectionAdapter;->l:Ljava/util/List;

    new-instance v3, Lcom/narvii/date/DateSection;

    iget-object v4, v2, Lcom/narvii/poweruser/history/ModerationHistory;->createdTime:Ljava/util/Date;

    invoke-direct {p0, v4}, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment$ModerationHistorySectionAdapter;->formatDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/narvii/date/DateSection;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    :cond_2
    iget-object v1, v2, Lcom/narvii/poweruser/history/ModerationHistory;->createdTime:Ljava/util/Date;

    .line 204
    iget-object v3, p0, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment$ModerationHistorySectionAdapter;->l:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method private formatDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 213
    :cond_0
    invoke-static {p1}, Lcom/narvii/util/DateUtils;->isToday(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 214
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/narvii/lib/R$string;->today:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 215
    :cond_1
    invoke-static {p1}, Lcom/narvii/util/DateUtils;->isYesterday(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 216
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/narvii/lib/R$string;->yesterday:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 217
    :cond_2
    invoke-static {p1}, Lcom/narvii/util/DateUtils;->isSameYear(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 218
    iget-object v0, p0, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment$ModerationHistorySectionAdapter;->this$0:Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;

    iget-object v0, v0, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;->dateFormatWithoutYear:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 220
    :cond_3
    iget-object v0, p0, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment$ModerationHistorySectionAdapter;->this$0:Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;

    iget-object v0, v0, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;->dateFormatWithYear:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected getItemType(Ljava/lang/Object;)I
    .locals 1

    .line 226
    instance-of v0, p1, Lcom/narvii/date/DateSection;

    if-eqz v0, :cond_0

    .line 227
    invoke-virtual {p0}, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment$ModerationHistorySectionAdapter;->getItemTypeCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    return p1

    .line 229
    :cond_0
    invoke-super {p0, p1}, Lcom/narvii/poweruser/history/ModerationHistoryBaseAdapter;->getItemType(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method protected getItemTypeCount()I
    .locals 1

    .line 235
    invoke-super {p0}, Lcom/narvii/poweruser/history/ModerationHistoryBaseAdapter;->getItemTypeCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 240
    instance-of v0, p1, Lcom/narvii/date/DateSection;

    if-eqz v0, :cond_0

    .line 241
    sget v0, Lcom/narvii/lib/R$layout;->item_section_layout:I

    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 242
    check-cast p1, Lcom/narvii/date/DateSection;

    iget-object p3, p1, Lcom/narvii/date/DateSection;->time:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    sget p3, Lcom/narvii/lib/R$id;->list_time_section_name:I

    iget-object p1, p1, Lcom/narvii/date/DateSection;->time:Ljava/lang/String;

    invoke-virtual {p2, p3, p1}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    return-object p2

    .line 246
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/poweruser/history/ModerationHistoryBaseAdapter;->getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 187
    iget-object v0, p0, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment$ModerationHistorySectionAdapter;->l:Ljava/util/List;

    return-object v0
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .line 175
    invoke-direct {p0}, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment$ModerationHistorySectionAdapter;->addDateSection()V

    .line 176
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method protected objectId()Ljava/lang/String;
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment$ModerationHistorySectionAdapter;->this$0:Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;

    invoke-static {v0}, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;->access$100(Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected objectType()I
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment$ModerationHistorySectionAdapter;->this$0:Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;

    invoke-static {v0}, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;->access$200(Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;)I

    move-result v0

    return v0
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    .line 281
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVPagedAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method protected bridge synthetic onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 0

    .line 165
    check-cast p2, Lcom/narvii/poweruser/history/ModerationHistoryListResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment$ModerationHistorySectionAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/poweruser/history/ModerationHistoryListResponse;I)V

    return-void
.end method

.method protected onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/poweruser/history/ModerationHistoryListResponse;I)V
    .locals 0

    .line 273
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/NVPagedAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V

    .line 274
    iget-object p1, p0, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment$ModerationHistorySectionAdapter;->this$0:Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;

    invoke-static {p1}, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;->access$300(Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/narvii/poweruser/history/ModerationHistoryListResponse;->list()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lcom/narvii/poweruser/history/ModerationHistoryListResponse;->list()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 275
    iget-object p1, p0, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment$ModerationHistorySectionAdapter;->this$0:Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;

    invoke-static {p1}, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;->access$300(Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 267
    invoke-super {p0, p1}, Lcom/narvii/list/NVPagedAdapter;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 268
    invoke-direct {p0}, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment$ModerationHistorySectionAdapter;->addDateSection()V

    return-void
.end method

.method protected operatorUid()Ljava/lang/String;
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment$ModerationHistorySectionAdapter;->this$0:Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;

    iget-object v0, v0, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;->operatorId:Ljava/lang/String;

    return-object v0
.end method

.method public resetList()V
    .locals 1

    .line 181
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment$ModerationHistorySectionAdapter;->l:Ljava/util/List;

    .line 182
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->resetList()V

    return-void
.end method
