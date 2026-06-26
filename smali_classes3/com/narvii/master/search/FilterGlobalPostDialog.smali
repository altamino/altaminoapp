.class public Lcom/narvii/master/search/FilterGlobalPostDialog;
.super Lcom/narvii/app/NVDialog;
.source "FilterGlobalPostDialog.java"

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

    const v0, 0x7f1000ce

    .line 34
    invoke-direct {p0, p1, v0}, Lcom/narvii/app/NVDialog;-><init>(Landroid/content/Context;I)V

    .line 35
    iput-object p3, p0, Lcom/narvii/master/search/FilterGlobalPostDialog;->configChangListener:Lcom/narvii/master/search/FilterGlobalPostDialog$OnSearchConfigChangListener;

    const p3, 0x7f0b0193

    .line 36
    invoke-virtual {p0, p3}, Landroid/app/Dialog;->setContentView(I)V

    .line 38
    new-instance p3, Lcom/narvii/master/search/GlobalPostSearchPrefsHelper;

    invoke-direct {p3, p1, p4}, Lcom/narvii/master/search/GlobalPostSearchPrefsHelper;-><init>(Landroid/content/Context;I)V

    iput-object p3, p0, Lcom/narvii/master/search/FilterGlobalPostDialog;->prefsHelper:Lcom/narvii/master/search/GlobalPostSearchPrefsHelper;

    .line 40
    iget-object p3, p0, Lcom/narvii/master/search/FilterGlobalPostDialog;->prefsHelper:Lcom/narvii/master/search/GlobalPostSearchPrefsHelper;

    invoke-virtual {p3}, Lcom/narvii/master/search/GlobalPostSearchPrefsHelper;->filterByMyAmino()Z

    move-result p3

    iput-boolean p3, p0, Lcom/narvii/master/search/FilterGlobalPostDialog;->filterByMyAmino:Z

    .line 41
    iget-object p3, p0, Lcom/narvii/master/search/FilterGlobalPostDialog;->prefsHelper:Lcom/narvii/master/search/GlobalPostSearchPrefsHelper;

    invoke-virtual {p3}, Lcom/narvii/master/search/GlobalPostSearchPrefsHelper;->sortBy()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/narvii/master/search/FilterGlobalPostDialog;->sortBy:Ljava/lang/String;

    if-nez p2, :cond_0

    const p2, 0x7f090468

    .line 43
    invoke-virtual {p0, p2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const p2, 0x7f090747

    .line 46
    invoke-virtual {p0, p2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    .line 47
    iget-boolean p3, p0, Lcom/narvii/master/search/FilterGlobalPostDialog;->filterByMyAmino:Z

    invoke-virtual {p2, p3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 48
    new-instance p3, Lcom/narvii/master/search/FilterGlobalPostDialog$1;

    invoke-direct {p3, p0, p1, p2}, Lcom/narvii/master/search/FilterGlobalPostDialog$1;-><init>(Lcom/narvii/master/search/FilterGlobalPostDialog;Landroid/content/Context;Landroid/widget/CheckBox;)V

    invoke-virtual {p2, p3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 61
    invoke-direct {p0}, Lcom/narvii/master/search/FilterGlobalPostDialog;->updateSortByViews()V

    const p1, 0x7f090732

    .line 63
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090731

    .line 65
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0900b8

    .line 67
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090136

    .line 69
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/narvii/master/search/-$$Lambda$Maxy7Id8GFUF1WpPHOkMzZXXgw4;

    invoke-direct {p2, p0}, Lcom/narvii/master/search/-$$Lambda$Maxy7Id8GFUF1WpPHOkMzZXXgw4;-><init>(Lcom/narvii/master/search/FilterGlobalPostDialog;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$002(Lcom/narvii/master/search/FilterGlobalPostDialog;Z)Z
    .locals 0

    .line 19
    iput-boolean p1, p0, Lcom/narvii/master/search/FilterGlobalPostDialog;->filterByMyAmino:Z

    return p1
.end method

.method private updateSortByItem(Landroid/view/View;Z)V
    .locals 3

    const v0, 0x7f090b5b

    .line 78
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz p2, :cond_0

    const v1, -0xd5d5d6

    goto :goto_0

    :cond_0
    const v1, -0x818182

    .line 79
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    if-eqz p2, :cond_1

    .line 81
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 83
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :goto_1
    const v0, 0x7f09020f

    .line 85
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p2, :cond_2

    const/4 p2, 0x0

    goto :goto_2

    :cond_2
    const/4 p2, 0x4

    :goto_2
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private updateSortByViews()V
    .locals 3

    const v0, 0x7f090732

    .line 73
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/master/search/FilterGlobalPostDialog;->sortBy:Ljava/lang/String;

    const-string v2, "mostRelevant"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/narvii/master/search/FilterGlobalPostDialog;->updateSortByItem(Landroid/view/View;Z)V

    const v0, 0x7f090731

    .line 74
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/master/search/FilterGlobalPostDialog;->sortBy:Ljava/lang/String;

    const-string v2, "mostRecent"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/narvii/master/search/FilterGlobalPostDialog;->updateSortByItem(Landroid/view/View;Z)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 90
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const-string v0, "mostRecent"

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p1, "mostRelevant"

    .line 95
    iput-object p1, p0, Lcom/narvii/master/search/FilterGlobalPostDialog;->sortBy:Ljava/lang/String;

    .line 96
    invoke-direct {p0}, Lcom/narvii/master/search/FilterGlobalPostDialog;->updateSortByViews()V

    goto :goto_0

    .line 99
    :sswitch_1
    iput-object v0, p0, Lcom/narvii/master/search/FilterGlobalPostDialog;->sortBy:Ljava/lang/String;

    .line 100
    invoke-direct {p0}, Lcom/narvii/master/search/FilterGlobalPostDialog;->updateSortByViews()V

    goto :goto_0

    .line 92
    :sswitch_2
    invoke-virtual {p0}, Lcom/narvii/app/NVDialog;->dismiss()V

    goto :goto_0

    .line 103
    :sswitch_3
    iget-object p1, p0, Lcom/narvii/master/search/FilterGlobalPostDialog;->prefsHelper:Lcom/narvii/master/search/GlobalPostSearchPrefsHelper;

    iget-boolean v1, p0, Lcom/narvii/master/search/FilterGlobalPostDialog;->filterByMyAmino:Z

    iget-object v2, p0, Lcom/narvii/master/search/FilterGlobalPostDialog;->sortBy:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/narvii/master/search/GlobalPostSearchPrefsHelper;->saveConfigChange(ZLjava/lang/String;)V

    .line 104
    iget-object p1, p0, Lcom/narvii/master/search/FilterGlobalPostDialog;->configChangListener:Lcom/narvii/master/search/FilterGlobalPostDialog$OnSearchConfigChangListener;

    if-eqz p1, :cond_0

    .line 105
    invoke-interface {p1}, Lcom/narvii/master/search/FilterGlobalPostDialog$OnSearchConfigChangListener;->onConfigChanged()V

    .line 107
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/NVDialog;->dismiss()V

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0900b8 -> :sswitch_3
        0x7f090136 -> :sswitch_2
        0x7f090731 -> :sswitch_1
        0x7f090732 -> :sswitch_0
    .end sparse-switch
.end method
