.class public Lcom/narvii/master/search/FilterGlobalPostDialog;
.super Lcom/narvii/app/NVDialog;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/master/search/FilterGlobalPostDialog$OnSearchConfigChangListener;
    }
.end annotation


# instance fields
.field configChangListener:Lcom/narvii/master/search/FilterGlobalPostDialog$OnSearchConfigChangListener;

.field private filterByMyAmino:Z

.field private prefsHelper:Lcom/narvii/master/search/GlobalPostSearchPrefsHelper;

.field private sortBy:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLcom/narvii/master/search/FilterGlobalPostDialog$OnSearchConfigChangListener;I)V
    .locals 1

    .line 1
    .line 2
    .line 3
    const v0, 0x7f13015d

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1, v0}, Lcom/narvii/app/NVDialog;-><init>(Landroid/content/Context;I)V

    .line 7
    .line 8
    iput-object p3, p0, Lcom/narvii/master/search/FilterGlobalPostDialog;->configChangListener:Lcom/narvii/master/search/FilterGlobalPostDialog$OnSearchConfigChangListener;

    .line 9
    .line 10
    .line 11
    const p3, 0x7f0d01b2

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p3}, Landroid/app/Dialog;->setContentView(I)V

    .line 15
    .line 16
    new-instance p3, Lcom/narvii/master/search/GlobalPostSearchPrefsHelper;

    .line 17
    .line 18
    .line 19
    invoke-direct {p3, p1, p4}, Lcom/narvii/master/search/GlobalPostSearchPrefsHelper;-><init>(Landroid/content/Context;I)V

    .line 20
    .line 21
    iput-object p3, p0, Lcom/narvii/master/search/FilterGlobalPostDialog;->prefsHelper:Lcom/narvii/master/search/GlobalPostSearchPrefsHelper;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p3}, Lcom/narvii/master/search/GlobalPostSearchPrefsHelper;->filterByMyAmino()Z

    .line 25
    move-result p3

    .line 26
    .line 27
    iput-boolean p3, p0, Lcom/narvii/master/search/FilterGlobalPostDialog;->filterByMyAmino:Z

    .line 28
    .line 29
    iget-object p3, p0, Lcom/narvii/master/search/FilterGlobalPostDialog;->prefsHelper:Lcom/narvii/master/search/GlobalPostSearchPrefsHelper;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p3}, Lcom/narvii/master/search/GlobalPostSearchPrefsHelper;->sortBy()Ljava/lang/String;

    .line 33
    move-result-object p3

    .line 34
    .line 35
    iput-object p3, p0, Lcom/narvii/master/search/FilterGlobalPostDialog;->sortBy:Ljava/lang/String;

    .line 36
    .line 37
    if-nez p2, :cond_0

    .line 38
    .line 39
    .line 40
    const p2, 0x7f0a05a0

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, p2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 44
    move-result-object p2

    .line 45
    .line 46
    const/16 p3, 0x8

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 50
    .line 51
    .line 52
    :cond_0
    const p2, 0x7f0a09cf

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, p2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 56
    move-result-object p2

    .line 57
    .line 58
    check-cast p2, Landroid/widget/CheckBox;

    .line 59
    .line 60
    iget-boolean p3, p0, Lcom/narvii/master/search/FilterGlobalPostDialog;->filterByMyAmino:Z

    .line 61
    .line 62
    .line 63
    invoke-virtual {p2, p3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 64
    .line 65
    new-instance p3, Lcom/narvii/master/search/FilterGlobalPostDialog$1;

    .line 66
    .line 67
    .line 68
    invoke-direct {p3, p0, p1, p2}, Lcom/narvii/master/search/FilterGlobalPostDialog$1;-><init>(Lcom/narvii/master/search/FilterGlobalPostDialog;Landroid/content/Context;Landroid/widget/CheckBox;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p2, p3}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 72
    .line 73
    .line 74
    invoke-direct {p0}, Lcom/narvii/master/search/FilterGlobalPostDialog;->updateSortByViews()V

    .line 75
    .line 76
    .line 77
    const p1, 0x7f0a099b

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 81
    move-result-object p1

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    .line 86
    .line 87
    const p1, 0x7f0a099a

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 91
    move-result-object p1

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    .line 96
    .line 97
    const p1, 0x7f0a013a

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 101
    move-result-object p1

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    .line 106
    .line 107
    const p1, 0x7f0a01d4

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 111
    move-result-object p1

    .line 112
    .line 113
    new-instance p2, Lcom/narvii/master/search/a;

    .line 114
    .line 115
    .line 116
    invoke-direct {p2, p0}, Lcom/narvii/master/search/a;-><init>(Lcom/narvii/master/search/FilterGlobalPostDialog;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/master/search/FilterGlobalPostDialog;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/narvii/master/search/FilterGlobalPostDialog;->filterByMyAmino:Z

    return-void
.end method

.method private updateSortByItem(Landroid/view/View;ZLjava/lang/String;)V
    .locals 3

    .line 1
    .line 2
    const-string v0, "mostRecent"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result p3

    .line 7
    const/4 v0, 0x4

    .line 8
    const/4 v1, 0x0

    .line 9
    .line 10
    if-eqz p3, :cond_1

    .line 11
    .line 12
    .line 13
    const p3, 0x7f0a0e61

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 17
    move-result-object p3

    .line 18
    .line 19
    check-cast p3, Landroid/widget/TextView;

    .line 20
    .line 21
    .line 22
    const v2, 0x7f0a02dc

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    if-eqz p2, :cond_0

    .line 29
    move v0, v1

    .line 30
    .line 31
    .line 32
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 33
    goto :goto_0

    .line 34
    .line 35
    .line 36
    :cond_1
    const p3, 0x7f0a0e62

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 40
    move-result-object p3

    .line 41
    .line 42
    check-cast p3, Landroid/widget/TextView;

    .line 43
    .line 44
    .line 45
    const v2, 0x7f0a02dd

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 49
    move-result-object p1

    .line 50
    .line 51
    if-eqz p2, :cond_2

    .line 52
    move v0, v1

    .line 53
    .line 54
    .line 55
    :cond_2
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 56
    .line 57
    :goto_0
    if-eqz p2, :cond_3

    .line 58
    .line 59
    .line 60
    const p1, -0xd5d5d6

    .line 61
    goto :goto_1

    .line 62
    .line 63
    .line 64
    :cond_3
    const p1, -0x818182

    .line 65
    .line 66
    .line 67
    :goto_1
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 68
    .line 69
    if-eqz p2, :cond_4

    .line 70
    .line 71
    sget-object p1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 72
    const/4 p2, 0x1

    .line 73
    .line 74
    .line 75
    invoke-virtual {p3, p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 76
    goto :goto_2

    .line 77
    :cond_4
    const/4 p1, 0x0

    .line 78
    .line 79
    .line 80
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 81
    :goto_2
    return-void
.end method

.method private updateSortByViews()V
    .locals 3

    .line 1
    .line 2
    .line 3
    const v0, 0x7f0a099b

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    iget-object v1, p0, Lcom/narvii/master/search/FilterGlobalPostDialog;->sortBy:Ljava/lang/String;

    .line 10
    .line 11
    const-string v2, "mostRelevant"

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    move-result v1

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, v0, v1, v2}, Lcom/narvii/master/search/FilterGlobalPostDialog;->updateSortByItem(Landroid/view/View;ZLjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const v0, 0x7f0a099a

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    iget-object v1, p0, Lcom/narvii/master/search/FilterGlobalPostDialog;->sortBy:Ljava/lang/String;

    .line 28
    .line 29
    const-string v2, "mostRecent"

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    move-result v1

    .line 34
    .line 35
    .line 36
    invoke-direct {p0, v0, v1, v2}, Lcom/narvii/master/search/FilterGlobalPostDialog;->updateSortByItem(Landroid/view/View;ZLjava/lang/String;)V

    .line 37
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 4
    move-result p1

    .line 5
    .line 6
    const-string v0, "mostRecent"

    .line 7
    .line 8
    .line 9
    sparse-switch p1, :sswitch_data_0

    .line 10
    goto :goto_1

    .line 11
    .line 12
    :sswitch_0
    const-string p1, "mostRelevant"

    .line 13
    .line 14
    iput-object p1, p0, Lcom/narvii/master/search/FilterGlobalPostDialog;->sortBy:Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    invoke-direct {p0}, Lcom/narvii/master/search/FilterGlobalPostDialog;->updateSortByViews()V

    .line 18
    goto :goto_1

    .line 19
    .line 20
    :sswitch_1
    iput-object v0, p0, Lcom/narvii/master/search/FilterGlobalPostDialog;->sortBy:Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    invoke-direct {p0}, Lcom/narvii/master/search/FilterGlobalPostDialog;->updateSortByViews()V

    .line 24
    goto :goto_1

    .line 25
    .line 26
    .line 27
    :sswitch_2
    invoke-virtual {p0}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 28
    goto :goto_1

    .line 29
    .line 30
    :sswitch_3
    iget-object p1, p0, Lcom/narvii/master/search/FilterGlobalPostDialog;->prefsHelper:Lcom/narvii/master/search/GlobalPostSearchPrefsHelper;

    .line 31
    .line 32
    iget-boolean v1, p0, Lcom/narvii/master/search/FilterGlobalPostDialog;->filterByMyAmino:Z

    .line 33
    .line 34
    iget-object v2, p0, Lcom/narvii/master/search/FilterGlobalPostDialog;->sortBy:Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v1, v2}, Lcom/narvii/master/search/GlobalPostSearchPrefsHelper;->saveConfigChange(ZLjava/lang/String;)V

    .line 38
    .line 39
    iget-object p1, p0, Lcom/narvii/master/search/FilterGlobalPostDialog;->configChangListener:Lcom/narvii/master/search/FilterGlobalPostDialog$OnSearchConfigChangListener;

    .line 40
    .line 41
    if-eqz p1, :cond_0

    .line 42
    .line 43
    .line 44
    invoke-interface {p1}, Lcom/narvii/master/search/FilterGlobalPostDialog$OnSearchConfigChangListener;->onConfigChanged()V

    .line 45
    .line 46
    .line 47
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 51
    move-result-object p1

    .line 52
    .line 53
    .line 54
    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    .line 55
    move-result-object p1

    .line 56
    .line 57
    const-string v1, "statistics"

    .line 58
    .line 59
    .line 60
    invoke-interface {p1, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 61
    move-result-object p1

    .line 62
    .line 63
    check-cast p1, Lcom/narvii/util/statistics/StatisticsService;

    .line 64
    const/4 v1, 0x0

    .line 65
    .line 66
    .line 67
    invoke-interface {p1, v1}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 68
    move-result-object p1

    .line 69
    .line 70
    const-string v1, "Global Post Search- Filter By My Aminos"

    .line 71
    .line 72
    iget-boolean v2, p0, Lcom/narvii/master/search/FilterGlobalPostDialog;->filterByMyAmino:Z

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, v1, v2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userProp(Ljava/lang/String;Z)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 76
    move-result-object p1

    .line 77
    .line 78
    iget-object v1, p0, Lcom/narvii/master/search/FilterGlobalPostDialog;->sortBy:Ljava/lang/String;

    .line 79
    .line 80
    if-ne v1, v0, :cond_1

    .line 81
    .line 82
    const-string v0, "Most Recent"

    .line 83
    goto :goto_0

    .line 84
    .line 85
    :cond_1
    const-string v0, "Most Relevant"

    .line 86
    .line 87
    :goto_0
    const-string v1, "Global Post Search- Sort By"

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userProp(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 91
    :goto_1
    return-void

    .line 92
    nop

    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    :sswitch_data_0
    .sparse-switch
        0x7f0a013a -> :sswitch_3
        0x7f0a01d4 -> :sswitch_2
        0x7f0a099a -> :sswitch_1
        0x7f0a099b -> :sswitch_0
    .end sparse-switch
.end method
