.class public Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment$ModerationHistorySectionAdapter;
.super Lcom/narvii/poweruser/history/ModerationHistoryBaseAdapter;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment$ModerationHistorySectionAdapter;->this$0:Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/poweruser/history/ModerationHistoryBaseAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    return-void
.end method

.method private addDateSection()V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iput-object v1, p0, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment$ModerationHistorySectionAdapter;->l:Ljava/util/List;

    .line 10
    goto :goto_1

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 14
    move-result v2

    .line 15
    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    .line 21
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .line 23
    iput-object v0, p0, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment$ModerationHistorySectionAdapter;->l:Ljava/util/List;

    .line 24
    goto :goto_1

    .line 25
    .line 26
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    .line 27
    .line 28
    .line 29
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    iput-object v2, p0, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment$ModerationHistorySectionAdapter;->l:Ljava/util/List;

    .line 32
    .line 33
    .line 34
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    .line 38
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    move-result v2

    .line 40
    .line 41
    if-eqz v2, :cond_3

    .line 42
    .line 43
    .line 44
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    move-result-object v2

    .line 46
    .line 47
    check-cast v2, Lcom/narvii/poweruser/history/ModerationHistory;

    .line 48
    .line 49
    iget-object v3, v2, Lcom/narvii/poweruser/history/ModerationHistory;->createdTime:Ljava/util/Date;

    .line 50
    .line 51
    .line 52
    invoke-static {v1, v3}, Lcom/narvii/util/DateUtils;->isSameDay(Ljava/util/Date;Ljava/util/Date;)Z

    .line 53
    move-result v1

    .line 54
    .line 55
    if-nez v1, :cond_2

    .line 56
    .line 57
    iget-object v1, p0, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment$ModerationHistorySectionAdapter;->l:Ljava/util/List;

    .line 58
    .line 59
    new-instance v3, Lcom/narvii/date/DateSection;

    .line 60
    .line 61
    iget-object v4, v2, Lcom/narvii/poweruser/history/ModerationHistory;->createdTime:Ljava/util/Date;

    .line 62
    .line 63
    .line 64
    invoke-direct {p0, v4}, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment$ModerationHistorySectionAdapter;->formatDate(Ljava/util/Date;)Ljava/lang/String;

    .line 65
    move-result-object v4

    .line 66
    .line 67
    .line 68
    invoke-direct {v3, v4}, Lcom/narvii/date/DateSection;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    .line 73
    :cond_2
    iget-object v1, v2, Lcom/narvii/poweruser/history/ModerationHistory;->createdTime:Ljava/util/Date;

    .line 74
    .line 75
    iget-object v3, p0, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment$ModerationHistorySectionAdapter;->l:Ljava/util/List;

    .line 76
    .line 77
    .line 78
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    goto :goto_0

    .line 80
    :cond_3
    :goto_1
    return-void
.end method

.method private formatDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1

    .line 5
    .line 6
    .line 7
    :cond_0
    invoke-static {p1}, Lcom/narvii/util/DateUtils;->isToday(Ljava/util/Date;)Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    sget v0, Lcom/narvii/lib/R$string;->today:I

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    .line 27
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 32
    move-result-object p1

    .line 33
    return-object p1

    .line 34
    .line 35
    .line 36
    :cond_1
    invoke-static {p1}, Lcom/narvii/util/DateUtils;->isYesterday(Ljava/util/Date;)Z

    .line 37
    move-result v0

    .line 38
    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 43
    move-result-object p1

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 47
    move-result-object p1

    .line 48
    .line 49
    sget v0, Lcom/narvii/lib/R$string;->yesterday:I

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 53
    move-result-object p1

    .line 54
    .line 55
    .line 56
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 57
    move-result-object v0

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 61
    move-result-object p1

    .line 62
    return-object p1

    .line 63
    .line 64
    .line 65
    :cond_2
    invoke-static {p1}, Lcom/narvii/util/DateUtils;->isSameYear(Ljava/util/Date;)Z

    .line 66
    move-result v0

    .line 67
    .line 68
    if-eqz v0, :cond_3

    .line 69
    .line 70
    iget-object v0, p0, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment$ModerationHistorySectionAdapter;->this$0:Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;

    .line 71
    .line 72
    iget-object v0, v0, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;->dateFormatWithoutYear:Ljava/text/SimpleDateFormat;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 76
    move-result-object p1

    .line 77
    return-object p1

    .line 78
    .line 79
    :cond_3
    iget-object v0, p0, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment$ModerationHistorySectionAdapter;->this$0:Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;

    .line 80
    .line 81
    iget-object v0, v0, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;->dateFormatWithYear:Ljava/text/SimpleDateFormat;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 85
    move-result-object p1

    .line 86
    return-object p1
.end method


# virtual methods
.method protected getItemType(Ljava/lang/Object;)I
    .locals 1

    .line 1
    .line 2
    instance-of v0, p1, Lcom/narvii/date/DateSection;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment$ModerationHistorySectionAdapter;->getItemTypeCount()I

    .line 8
    move-result p1

    .line 9
    .line 10
    add-int/lit8 p1, p1, -0x1

    .line 11
    return p1

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-super {p0, p1}, Lcom/narvii/poweruser/history/ModerationHistoryBaseAdapter;->getItemType(Ljava/lang/Object;)I

    .line 15
    move-result p1

    .line 16
    return p1
.end method

.method protected getItemTypeCount()I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/poweruser/history/ModerationHistoryBaseAdapter;->getItemTypeCount()I

    .line 4
    move-result v0

    .line 5
    .line 6
    add-int/lit8 v0, v0, 0x1

    .line 7
    return v0
.end method

.method protected getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    instance-of v0, p1, Lcom/narvii/date/DateSection;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    sget v0, Lcom/narvii/lib/R$layout;->item_section_layout:I

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 10
    move-result-object p2

    .line 11
    .line 12
    check-cast p2, Landroid/widget/TextView;

    .line 13
    .line 14
    check-cast p1, Lcom/narvii/date/DateSection;

    .line 15
    .line 16
    iget-object p3, p1, Lcom/narvii/date/DateSection;->time:Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    .line 21
    sget p3, Lcom/narvii/lib/R$id;->list_time_section_name:I

    .line 22
    .line 23
    iget-object p1, p1, Lcom/narvii/date/DateSection;->time:Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2, p3, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 27
    return-object p2

    .line 28
    .line 29
    .line 30
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/poweruser/history/ModerationHistoryBaseAdapter;->getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 31
    move-result-object p1

    .line 32
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

    iget-object v0, p0, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment$ModerationHistorySectionAdapter;->l:Ljava/util/List;

    return-object v0
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment$ModerationHistorySectionAdapter;->addDateSection()V

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 7
    return-void
.end method

.method protected objectId()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment$ModerationHistorySectionAdapter;->this$0:Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;->t(Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method protected objectType()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment$ModerationHistorySectionAdapter;->this$0:Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;->u(Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;)I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVPagedAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method protected bridge synthetic onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/poweruser/history/ModerationHistoryListResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment$ModerationHistorySectionAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/poweruser/history/ModerationHistoryListResponse;I)V

    return-void
.end method

.method protected onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/poweruser/history/ModerationHistoryListResponse;I)V
    .locals 0

    .line 2
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/NVPagedAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V

    iget-object p1, p0, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment$ModerationHistorySectionAdapter;->this$0:Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;

    .line 3
    invoke-static {p1}, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;->v(Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;)Landroid/view/View;

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

    iget-object p1, p0, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment$ModerationHistorySectionAdapter;->this$0:Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;

    .line 4
    invoke-static {p1}, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;->v(Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVPagedAdapter;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment$ModerationHistorySectionAdapter;->addDateSection()V

    .line 7
    return-void
.end method

.method protected operatorUid()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment$ModerationHistorySectionAdapter;->this$0:Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;->operatorId:Ljava/lang/String;

    .line 5
    return-object v0
.end method

.method public resetList()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    iput-object v0, p0, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment$ModerationHistorySectionAdapter;->l:Ljava/util/List;

    .line 8
    .line 9
    .line 10
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->resetList()V

    .line 11
    return-void
.end method
