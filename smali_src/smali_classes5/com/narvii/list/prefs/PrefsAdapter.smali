.class public abstract Lcom/narvii/list/prefs/PrefsAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "SourceFile"


# static fields
.field public static final DIVIDER:Lcom/narvii/util/Tag;


# instance fields
.field private cells:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private colorPrimary:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/Tag;

    .line 3
    .line 4
    const-string v1, "divider"

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Lcom/narvii/util/Tag;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    sput-object v0, Lcom/narvii/list/prefs/PrefsAdapter;->DIVIDER:Lcom/narvii/util/Tag;

    .line 10
    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 4
    .line 5
    const-string v0, "config"

    .line 6
    .line 7
    .line 8
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    check-cast p1, Lcom/narvii/config/ConfigService;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    .line 18
    invoke-interface {p1}, Lcom/narvii/config/ConfigTheme;->colorPrimary()I

    .line 19
    move-result p1

    .line 20
    .line 21
    iput p1, p0, Lcom/narvii/list/prefs/PrefsAdapter;->colorPrimary:I

    .line 22
    return-void
.end method

.method private getPrefsTextColor()I
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isDarkNVTheme()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    .line 9
    .line 10
    .line 11
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    sget v1, Lcom/narvii/lib/R$color;->prefs_text_color_dark_70p:I

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 18
    move-result v0

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    const/high16 v0, -0x78000000

    .line 22
    :goto_0
    return v0
.end method

.method public static safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/list/NVAdapter;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected abstract buildCells(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method protected cells()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/prefs/PrefsAdapter;->cells:Ljava/util/ArrayList;

    .line 3
    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lcom/narvii/list/prefs/PrefsAdapter;->buildCells(Ljava/util/List;)V

    .line 13
    .line 14
    iput-object v0, p0, Lcom/narvii/list/prefs/PrefsAdapter;->cells:Ljava/util/ArrayList;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    .line 18
    move-result-object v0

    .line 19
    const/4 v1, 0x0

    .line 20
    .line 21
    .line 22
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    .line 23
    move-result v2

    .line 24
    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    .line 28
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 29
    move-result-object v2

    .line 30
    .line 31
    instance-of v3, v2, Lcom/narvii/list/prefs/PrefsItem;

    .line 32
    .line 33
    if-eqz v3, :cond_0

    .line 34
    .line 35
    instance-of v3, v2, Lcom/narvii/list/prefs/PrefsSection;

    .line 36
    .line 37
    if-nez v3, :cond_0

    .line 38
    .line 39
    instance-of v3, v2, Lcom/narvii/list/prefs/PrefsMargin;

    .line 40
    .line 41
    if-nez v3, :cond_0

    .line 42
    .line 43
    instance-of v3, v1, Lcom/narvii/list/prefs/PrefsItem;

    .line 44
    .line 45
    if-eqz v3, :cond_0

    .line 46
    .line 47
    instance-of v3, v1, Lcom/narvii/list/prefs/PrefsSection;

    .line 48
    .line 49
    if-nez v3, :cond_0

    .line 50
    .line 51
    instance-of v1, v1, Lcom/narvii/list/prefs/PrefsMargin;

    .line 52
    .line 53
    if-nez v1, :cond_0

    .line 54
    .line 55
    .line 56
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 57
    .line 58
    sget-object v1, Lcom/narvii/list/prefs/PrefsAdapter;->DIVIDER:Lcom/narvii/util/Tag;

    .line 59
    .line 60
    .line 61
    invoke-interface {v0, v1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 65
    :cond_0
    move-object v1, v2

    .line 66
    goto :goto_0

    .line 67
    .line 68
    :cond_1
    iget-object v0, p0, Lcom/narvii/list/prefs/PrefsAdapter;->cells:Ljava/util/ArrayList;

    .line 69
    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/list/prefs/PrefsAdapter;->cells()Ljava/util/ArrayList;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/list/prefs/PrefsAdapter;->cells()Ljava/util/ArrayList;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/list/prefs/PrefsAdapter;->getItem(I)Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 8
    move-result p1

    .line 9
    int-to-long v0, p1

    .line 10
    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/list/prefs/PrefsAdapter;->getItem(I)Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    instance-of v0, p1, Lcom/narvii/list/prefs/PrefsSection;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    const/4 p1, 0x1

    .line 10
    return p1

    .line 11
    .line 12
    :cond_0
    instance-of v0, p1, Lcom/narvii/list/prefs/PrefsMargin;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    const/4 p1, 0x2

    .line 16
    return p1

    .line 17
    .line 18
    :cond_1
    instance-of v0, p1, Lcom/narvii/list/prefs/PrefsWarning;

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    const/4 p1, 0x4

    .line 22
    return p1

    .line 23
    .line 24
    :cond_2
    instance-of v0, p1, Lcom/narvii/list/prefs/PrefsRedAlert;

    .line 25
    .line 26
    if-eqz v0, :cond_3

    .line 27
    const/4 p1, 0x5

    .line 28
    return p1

    .line 29
    .line 30
    :cond_3
    instance-of v0, p1, Lcom/narvii/list/prefs/PrefsToggle;

    .line 31
    .line 32
    if-eqz v0, :cond_4

    .line 33
    const/4 p1, 0x6

    .line 34
    return p1

    .line 35
    .line 36
    :cond_4
    instance-of v0, p1, Lcom/narvii/list/prefs/PrefsItem;

    .line 37
    .line 38
    if-eqz v0, :cond_5

    .line 39
    const/4 p1, 0x3

    .line 40
    return p1

    .line 41
    .line 42
    :cond_5
    instance-of v0, p1, Lcom/narvii/list/prefs/PrefsDescription;

    .line 43
    .line 44
    if-eqz v0, :cond_6

    .line 45
    const/4 p1, 0x7

    .line 46
    return p1

    .line 47
    .line 48
    :cond_6
    sget-object v0, Lcom/narvii/list/prefs/PrefsAdapter;->DIVIDER:Lcom/narvii/util/Tag;

    .line 49
    .line 50
    if-ne p1, v0, :cond_7

    .line 51
    const/4 p1, 0x0

    .line 52
    return p1

    .line 53
    :cond_7
    const/4 p1, -0x1

    .line 54
    return p1
.end method

.method protected getPrefsText(Lcom/narvii/list/prefs/PrefsItem;)Ljava/lang/CharSequence;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p1, Lcom/narvii/list/prefs/PrefsItem;->name:Ljava/lang/String;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-object v0

    .line 6
    .line 7
    :cond_0
    iget v0, p1, Lcom/narvii/list/prefs/PrefsItem;->id:I

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    .line 12
    :try_start_0
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    iget p1, p1, Lcom/narvii/list/prefs/PrefsItem;->id:I

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 23
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    return-object p1

    .line 25
    :catch_0
    :cond_1
    const/4 p1, 0x0

    .line 26
    return-object p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/list/prefs/PrefsAdapter;->getItem(I)Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    instance-of v0, p1, Lcom/narvii/list/prefs/PrefsSection;

    .line 7
    const/4 v1, 0x4

    .line 8
    const/4 v2, 0x0

    .line 9
    .line 10
    if-eqz v0, :cond_3

    .line 11
    .line 12
    check-cast p1, Lcom/narvii/list/prefs/PrefsSection;

    .line 13
    .line 14
    sget v0, Lcom/narvii/lib/R$layout;->prefs_section_item:I

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 18
    move-result-object p2

    .line 19
    .line 20
    sget p3, Lcom/narvii/lib/R$id;->text:I

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 24
    move-result-object p3

    .line 25
    .line 26
    check-cast p3, Landroid/widget/TextView;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isDarkNVTheme()Z

    .line 30
    move-result v0

    .line 31
    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    sget v3, Lcom/narvii/lib/R$color;->prefs_section_color_dark:I

    .line 39
    .line 40
    .line 41
    invoke-static {v0, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 42
    move-result v0

    .line 43
    goto :goto_0

    .line 44
    .line 45
    :cond_0
    iget v0, p0, Lcom/narvii/list/prefs/PrefsAdapter;->colorPrimary:I

    .line 46
    .line 47
    .line 48
    :goto_0
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 49
    .line 50
    iget-boolean v0, p1, Lcom/narvii/list/prefs/PrefsSection;->isAllCaps:Z

    .line 51
    .line 52
    .line 53
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, p1}, Lcom/narvii/list/prefs/PrefsAdapter;->getPrefsText(Lcom/narvii/list/prefs/PrefsItem;)Ljava/lang/CharSequence;

    .line 57
    move-result-object v0

    .line 58
    .line 59
    .line 60
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    .line 62
    sget p3, Lcom/narvii/lib/R$id;->learn_more:I

    .line 63
    .line 64
    .line 65
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 66
    move-result-object p3

    .line 67
    .line 68
    if-eqz p3, :cond_2

    .line 69
    .line 70
    iget-object v0, p1, Lcom/narvii/list/prefs/PrefsSection;->learnMoreUrl:Ljava/lang/String;

    .line 71
    .line 72
    if-eqz v0, :cond_1

    .line 73
    move v1, v2

    .line 74
    .line 75
    .line 76
    :cond_1
    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 77
    .line 78
    iget-object p1, p1, Lcom/narvii/list/prefs/PrefsSection;->learnMoreUrl:Ljava/lang/String;

    .line 79
    .line 80
    if-eqz p1, :cond_2

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0, p2, p1}, Lcom/narvii/list/prefs/PrefsAdapter;->setUpLearnMore(Landroid/view/View;Ljava/lang/String;)V

    .line 84
    :cond_2
    return-object p2

    .line 85
    .line 86
    :cond_3
    instance-of v0, p1, Lcom/narvii/list/prefs/PrefsMargin;

    .line 87
    .line 88
    if-eqz v0, :cond_5

    .line 89
    .line 90
    sget v0, Lcom/narvii/lib/R$layout;->prefs_margin_item:I

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 94
    move-result-object p2

    .line 95
    .line 96
    check-cast p1, Lcom/narvii/list/prefs/PrefsMargin;

    .line 97
    .line 98
    iget p1, p1, Lcom/narvii/list/prefs/PrefsMargin;->marginSize:I

    .line 99
    .line 100
    if-nez p1, :cond_4

    .line 101
    .line 102
    .line 103
    invoke-virtual {p3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 104
    move-result-object p1

    .line 105
    .line 106
    sget p3, Lcom/narvii/lib/R$dimen;->prefs_default_margin:I

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 110
    move-result p1

    .line 111
    .line 112
    .line 113
    :cond_4
    invoke-virtual {p2, p1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 114
    return-object p2

    .line 115
    .line 116
    :cond_5
    instance-of v0, p1, Lcom/narvii/list/prefs/PrefsRedAlert;

    .line 117
    const/4 v3, 0x1

    .line 118
    const/4 v4, 0x0

    .line 119
    .line 120
    const/16 v5, 0x8

    .line 121
    .line 122
    if-eqz v0, :cond_9

    .line 123
    move-object v0, p1

    .line 124
    .line 125
    check-cast v0, Lcom/narvii/list/prefs/PrefsRedAlert;

    .line 126
    .line 127
    sget v1, Lcom/narvii/lib/R$layout;->prefs_normal_item:I

    .line 128
    .line 129
    .line 130
    invoke-virtual {p0, v1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 131
    move-result-object p2

    .line 132
    .line 133
    sget p3, Lcom/narvii/lib/R$id;->text:I

    .line 134
    .line 135
    .line 136
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 137
    move-result-object p3

    .line 138
    .line 139
    check-cast p3, Landroid/widget/TextView;

    .line 140
    .line 141
    check-cast p1, Lcom/narvii/list/prefs/PrefsItem;

    .line 142
    .line 143
    .line 144
    invoke-virtual {p0, p1}, Lcom/narvii/list/prefs/PrefsAdapter;->getPrefsText(Lcom/narvii/list/prefs/PrefsItem;)Ljava/lang/CharSequence;

    .line 145
    move-result-object p1

    .line 146
    .line 147
    .line 148
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    .line 150
    .line 151
    const p1, -0x16f2c5

    .line 152
    .line 153
    .line 154
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 155
    .line 156
    sget p3, Lcom/narvii/lib/R$id;->text2:I

    .line 157
    .line 158
    .line 159
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 160
    move-result-object p3

    .line 161
    .line 162
    check-cast p3, Landroid/widget/TextView;

    .line 163
    .line 164
    iget-object v1, v0, Lcom/narvii/list/prefs/PrefsRedAlert;->text:Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 171
    .line 172
    const/high16 v1, 0x41a00000    # 20.0f

    .line 173
    .line 174
    .line 175
    invoke-virtual {p3, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 176
    .line 177
    iget-object v1, v0, Lcom/narvii/list/prefs/PrefsRedAlert;->text:Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 181
    move-result v1

    .line 182
    .line 183
    if-eqz v1, :cond_6

    .line 184
    move v1, v5

    .line 185
    goto :goto_1

    .line 186
    :cond_6
    move v1, v2

    .line 187
    .line 188
    .line 189
    :goto_1
    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 190
    .line 191
    sget p3, Lcom/narvii/lib/R$id;->right_icon:I

    .line 192
    .line 193
    .line 194
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 195
    move-result-object p3

    .line 196
    .line 197
    check-cast p3, Landroid/widget/ImageView;

    .line 198
    .line 199
    iget v1, v0, Lcom/narvii/list/prefs/PrefsItem;->rightIconResId:I

    .line 200
    .line 201
    if-eqz v1, :cond_7

    .line 202
    .line 203
    .line 204
    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 205
    goto :goto_2

    .line 206
    .line 207
    .line 208
    :cond_7
    invoke-virtual {p3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 209
    .line 210
    :goto_2
    iget v0, v0, Lcom/narvii/list/prefs/PrefsItem;->rightIconResId:I

    .line 211
    .line 212
    if-eqz v0, :cond_8

    .line 213
    goto :goto_3

    .line 214
    :cond_8
    move v2, v5

    .line 215
    .line 216
    .line 217
    :goto_3
    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 218
    .line 219
    sget p3, Lcom/narvii/lib/R$id;->chevron_right:I

    .line 220
    .line 221
    .line 222
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 223
    move-result-object p3

    .line 224
    .line 225
    check-cast p3, Lcom/narvii/widget/TintButton;

    .line 226
    .line 227
    .line 228
    invoke-virtual {p3, p1}, Lcom/narvii/widget/TintButton;->setTintColor(I)V

    .line 229
    return-object p2

    .line 230
    .line 231
    :cond_9
    instance-of v0, p1, Lcom/narvii/list/prefs/PrefsWarning;

    .line 232
    .line 233
    if-eqz v0, :cond_c

    .line 234
    .line 235
    check-cast p1, Lcom/narvii/list/prefs/PrefsWarning;

    .line 236
    .line 237
    sget v0, Lcom/narvii/lib/R$layout;->prefs_warning_item:I

    .line 238
    .line 239
    .line 240
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 241
    move-result-object p2

    .line 242
    .line 243
    sget p3, Lcom/narvii/lib/R$id;->text:I

    .line 244
    .line 245
    .line 246
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 247
    move-result-object p3

    .line 248
    .line 249
    check-cast p3, Landroid/widget/TextView;

    .line 250
    .line 251
    .line 252
    invoke-virtual {p0, p1}, Lcom/narvii/list/prefs/PrefsAdapter;->getPrefsText(Lcom/narvii/list/prefs/PrefsItem;)Ljava/lang/CharSequence;

    .line 253
    move-result-object v0

    .line 254
    .line 255
    .line 256
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    .line 258
    sget p3, Lcom/narvii/lib/R$id;->text2:I

    .line 259
    .line 260
    .line 261
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 262
    move-result-object p3

    .line 263
    .line 264
    check-cast p3, Landroid/widget/TextView;

    .line 265
    .line 266
    iget-object v0, p1, Lcom/narvii/list/prefs/PrefsWarning;->subTitle:Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    .line 271
    iget-object v0, p1, Lcom/narvii/list/prefs/PrefsWarning;->subTitle:Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    invoke-static {v0}, Lcom/narvii/util/StringUtils;->isTrimEmpty(Ljava/lang/String;)Z

    .line 275
    move-result v0

    .line 276
    .line 277
    if-eqz v0, :cond_a

    .line 278
    move v0, v5

    .line 279
    goto :goto_4

    .line 280
    :cond_a
    move v0, v2

    .line 281
    .line 282
    .line 283
    :goto_4
    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 284
    .line 285
    sget p3, Lcom/narvii/lib/R$id;->warning_info:I

    .line 286
    .line 287
    .line 288
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 289
    move-result-object p3

    .line 290
    .line 291
    check-cast p3, Landroid/widget/TextView;

    .line 292
    .line 293
    iget-object v0, p1, Lcom/narvii/list/prefs/PrefsWarning;->warningInfo:Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    .line 298
    iget-object p1, p1, Lcom/narvii/list/prefs/PrefsWarning;->warningInfo:Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    invoke-static {p1}, Lcom/narvii/util/StringUtils;->isTrimEmpty(Ljava/lang/String;)Z

    .line 302
    move-result p1

    .line 303
    .line 304
    if-eqz p1, :cond_b

    .line 305
    move v2, v5

    .line 306
    .line 307
    .line 308
    :cond_b
    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 309
    return-object p2

    .line 310
    .line 311
    :cond_c
    instance-of v0, p1, Lcom/narvii/list/prefs/PrefsDescription;

    .line 312
    .line 313
    if-eqz v0, :cond_d

    .line 314
    .line 315
    sget v0, Lcom/narvii/lib/R$layout;->prefs_description:I

    .line 316
    .line 317
    .line 318
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 319
    move-result-object p2

    .line 320
    .line 321
    sget p3, Lcom/narvii/lib/R$id;->text:I

    .line 322
    .line 323
    .line 324
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 325
    move-result-object p3

    .line 326
    .line 327
    check-cast p3, Landroid/widget/TextView;

    .line 328
    .line 329
    check-cast p1, Lcom/narvii/list/prefs/PrefsDescription;

    .line 330
    .line 331
    iget-object p1, p1, Lcom/narvii/list/prefs/PrefsDescription;->text:Ljava/lang/CharSequence;

    .line 332
    .line 333
    .line 334
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 335
    return-object p2

    .line 336
    .line 337
    :cond_d
    instance-of v0, p1, Lcom/narvii/list/prefs/PrefsToggle;

    .line 338
    .line 339
    const/high16 v6, 0x3f000000    # 0.5f

    .line 340
    .line 341
    const/high16 v7, 0x3f800000    # 1.0f

    .line 342
    .line 343
    if-eqz v0, :cond_14

    .line 344
    .line 345
    check-cast p1, Lcom/narvii/list/prefs/PrefsToggle;

    .line 346
    .line 347
    sget v0, Lcom/narvii/lib/R$layout;->prefs_toggle:I

    .line 348
    .line 349
    .line 350
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 351
    move-result-object p2

    .line 352
    .line 353
    sget p3, Lcom/narvii/lib/R$id;->name:I

    .line 354
    .line 355
    .line 356
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 357
    move-result-object p3

    .line 358
    .line 359
    check-cast p3, Landroid/widget/TextView;

    .line 360
    .line 361
    iget-object v0, p1, Lcom/narvii/list/prefs/PrefsItem;->name:Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 365
    .line 366
    iget-boolean v0, p1, Lcom/narvii/list/prefs/PrefsToggle;->textSingleLine:Z

    .line 367
    .line 368
    .line 369
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 370
    .line 371
    sget p3, Lcom/narvii/lib/R$id;->desc:I

    .line 372
    .line 373
    .line 374
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 375
    move-result-object p3

    .line 376
    .line 377
    check-cast p3, Landroid/widget/TextView;

    .line 378
    .line 379
    iget-object v0, p1, Lcom/narvii/list/prefs/PrefsItem;->desc:Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 383
    move-result v0

    .line 384
    .line 385
    if-eqz v0, :cond_e

    .line 386
    move v2, v5

    .line 387
    .line 388
    .line 389
    :cond_e
    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 390
    .line 391
    iget-object v0, p1, Lcom/narvii/list/prefs/PrefsItem;->desc:Ljava/lang/String;

    .line 392
    .line 393
    .line 394
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 395
    .line 396
    .line 397
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isDarkNVTheme()Z

    .line 398
    move-result v0

    .line 399
    .line 400
    if-eqz v0, :cond_10

    .line 401
    .line 402
    iget v0, p1, Lcom/narvii/list/prefs/PrefsItem;->descColor:I

    .line 403
    .line 404
    if-eqz v0, :cond_f

    .line 405
    goto :goto_5

    .line 406
    .line 407
    .line 408
    :cond_f
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 409
    move-result-object v0

    .line 410
    .line 411
    sget v1, Lcom/narvii/lib/R$color;->prefs_text_color_dark:I

    .line 412
    .line 413
    .line 414
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 415
    move-result v0

    .line 416
    .line 417
    .line 418
    :goto_5
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 419
    goto :goto_7

    .line 420
    .line 421
    :cond_10
    iget v0, p1, Lcom/narvii/list/prefs/PrefsItem;->descColor:I

    .line 422
    .line 423
    if-eqz v0, :cond_11

    .line 424
    goto :goto_6

    .line 425
    .line 426
    .line 427
    :cond_11
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 428
    move-result-object v0

    .line 429
    .line 430
    sget v1, Lcom/narvii/lib/R$color;->pref_desc_default_color:I

    .line 431
    .line 432
    .line 433
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 434
    move-result v0

    .line 435
    .line 436
    .line 437
    :goto_6
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 438
    .line 439
    :goto_7
    sget p3, Lcom/narvii/lib/R$id;->check_box:I

    .line 440
    .line 441
    .line 442
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 443
    move-result-object p3

    .line 444
    .line 445
    check-cast p3, Landroid/widget/CheckBox;

    .line 446
    .line 447
    .line 448
    invoke-virtual {p3, v4}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 449
    .line 450
    iget-boolean v0, p1, Lcom/narvii/list/prefs/PrefsToggle;->on:Z

    .line 451
    .line 452
    .line 453
    invoke-virtual {p3, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 454
    .line 455
    .line 456
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isDarkNVTheme()Z

    .line 457
    move-result v0

    .line 458
    .line 459
    if-eqz v0, :cond_12

    .line 460
    .line 461
    sget v0, Lcom/narvii/lib/R$drawable;->switch_bg_dt:I

    .line 462
    goto :goto_8

    .line 463
    .line 464
    :cond_12
    sget v0, Lcom/narvii/lib/R$drawable;->switch_bg:I

    .line 465
    .line 466
    .line 467
    :goto_8
    invoke-virtual {p3, v0}, Landroid/widget/CompoundButton;->setButtonDrawable(I)V

    .line 468
    .line 469
    new-instance v0, Lcom/narvii/list/prefs/PrefsAdapter$1;

    .line 470
    .line 471
    .line 472
    invoke-direct {v0, p0, p1}, Lcom/narvii/list/prefs/PrefsAdapter$1;-><init>(Lcom/narvii/list/prefs/PrefsAdapter;Lcom/narvii/list/prefs/PrefsToggle;)V

    .line 473
    .line 474
    .line 475
    invoke-virtual {p3, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 476
    .line 477
    iget-boolean p1, p1, Lcom/narvii/list/prefs/PrefsItem;->enabled:Z

    .line 478
    .line 479
    if-eqz p1, :cond_13

    .line 480
    move v6, v7

    .line 481
    .line 482
    .line 483
    :cond_13
    invoke-virtual {p2, v6}, Landroid/view/View;->setAlpha(F)V

    .line 484
    return-object p2

    .line 485
    .line 486
    :cond_14
    instance-of v0, p1, Lcom/narvii/list/prefs/PrefsItem;

    .line 487
    .line 488
    if-eqz v0, :cond_2a

    .line 489
    .line 490
    check-cast p1, Lcom/narvii/list/prefs/PrefsItem;

    .line 491
    .line 492
    sget v0, Lcom/narvii/lib/R$layout;->prefs_normal_item:I

    .line 493
    .line 494
    .line 495
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 496
    move-result-object p2

    .line 497
    .line 498
    sget p3, Lcom/narvii/lib/R$id;->text:I

    .line 499
    .line 500
    .line 501
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 502
    move-result-object p3

    .line 503
    .line 504
    check-cast p3, Landroid/widget/TextView;

    .line 505
    .line 506
    .line 507
    invoke-virtual {p0, p1}, Lcom/narvii/list/prefs/PrefsAdapter;->getPrefsText(Lcom/narvii/list/prefs/PrefsItem;)Ljava/lang/CharSequence;

    .line 508
    move-result-object v0

    .line 509
    .line 510
    .line 511
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 512
    .line 513
    sget p3, Lcom/narvii/lib/R$id;->icon:I

    .line 514
    .line 515
    .line 516
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 517
    move-result-object p3

    .line 518
    .line 519
    check-cast p3, Landroid/widget/ImageView;

    .line 520
    .line 521
    iget-object v0, p1, Lcom/narvii/list/prefs/PrefsItem;->icon:Landroid/graphics/drawable/Drawable;

    .line 522
    .line 523
    if-nez v0, :cond_15

    .line 524
    move v0, v5

    .line 525
    goto :goto_9

    .line 526
    :cond_15
    move v0, v2

    .line 527
    .line 528
    .line 529
    :goto_9
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 530
    .line 531
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    .line 532
    .line 533
    new-instance v8, Landroid/graphics/drawable/shapes/OvalShape;

    .line 534
    .line 535
    .line 536
    invoke-direct {v8}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    .line 537
    .line 538
    .line 539
    invoke-direct {v0, v8}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 540
    .line 541
    .line 542
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    .line 543
    move-result-object v8

    .line 544
    .line 545
    iget v9, p1, Lcom/narvii/list/prefs/PrefsItem;->iconBackgroundColor:I

    .line 546
    .line 547
    .line 548
    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 549
    .line 550
    .line 551
    invoke-virtual {p3, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 552
    .line 553
    iget-object v0, p1, Lcom/narvii/list/prefs/PrefsItem;->icon:Landroid/graphics/drawable/Drawable;

    .line 554
    .line 555
    .line 556
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 557
    .line 558
    sget p3, Lcom/narvii/lib/R$id;->right_icon:I

    .line 559
    .line 560
    .line 561
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 562
    move-result-object p3

    .line 563
    .line 564
    check-cast p3, Landroid/widget/ImageView;

    .line 565
    .line 566
    iget v0, p1, Lcom/narvii/list/prefs/PrefsItem;->rightIconResId:I

    .line 567
    .line 568
    if-eqz v0, :cond_16

    .line 569
    .line 570
    .line 571
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 572
    goto :goto_a

    .line 573
    .line 574
    .line 575
    :cond_16
    invoke-virtual {p3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 576
    .line 577
    :goto_a
    iget v0, p1, Lcom/narvii/list/prefs/PrefsItem;->rightIconResId:I

    .line 578
    .line 579
    if-eqz v0, :cond_17

    .line 580
    move v0, v2

    .line 581
    goto :goto_b

    .line 582
    :cond_17
    move v0, v5

    .line 583
    .line 584
    .line 585
    :goto_b
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 586
    .line 587
    sget p3, Lcom/narvii/lib/R$id;->chevron_right:I

    .line 588
    .line 589
    .line 590
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 591
    move-result-object p3

    .line 592
    .line 593
    iget-boolean v0, p1, Lcom/narvii/list/prefs/PrefsItem;->chevronRight:Z

    .line 594
    .line 595
    if-eqz v0, :cond_19

    .line 596
    .line 597
    iget-boolean v0, p1, Lcom/narvii/list/prefs/PrefsItem;->enabled:Z

    .line 598
    .line 599
    if-eqz v0, :cond_18

    .line 600
    move v0, v2

    .line 601
    goto :goto_c

    .line 602
    :cond_18
    move v0, v1

    .line 603
    goto :goto_c

    .line 604
    :cond_19
    move v0, v5

    .line 605
    .line 606
    .line 607
    :goto_c
    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 608
    .line 609
    sget p3, Lcom/narvii/lib/R$id;->text2:I

    .line 610
    .line 611
    .line 612
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 613
    move-result-object p3

    .line 614
    .line 615
    check-cast p3, Landroid/widget/TextView;

    .line 616
    .line 617
    sget v0, Lcom/narvii/lib/R$id;->desc:I

    .line 618
    .line 619
    .line 620
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 621
    move-result-object v0

    .line 622
    .line 623
    check-cast v0, Landroid/widget/TextView;

    .line 624
    .line 625
    iget-object v4, p1, Lcom/narvii/list/prefs/PrefsItem;->desc:Ljava/lang/String;

    .line 626
    .line 627
    .line 628
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 629
    move-result v4

    .line 630
    .line 631
    if-eqz v4, :cond_1a

    .line 632
    move v4, v5

    .line 633
    goto :goto_d

    .line 634
    :cond_1a
    move v4, v2

    .line 635
    .line 636
    .line 637
    :goto_d
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 638
    .line 639
    iget-object v4, p1, Lcom/narvii/list/prefs/PrefsItem;->desc:Ljava/lang/String;

    .line 640
    .line 641
    .line 642
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 643
    .line 644
    .line 645
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isDarkNVTheme()Z

    .line 646
    move-result v4

    .line 647
    .line 648
    if-eqz v4, :cond_1c

    .line 649
    .line 650
    iget v4, p1, Lcom/narvii/list/prefs/PrefsItem;->descColor:I

    .line 651
    .line 652
    if-eqz v4, :cond_1b

    .line 653
    goto :goto_e

    .line 654
    .line 655
    .line 656
    :cond_1b
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 657
    move-result-object v4

    .line 658
    .line 659
    sget v8, Lcom/narvii/lib/R$color;->prefs_text_color_dark:I

    .line 660
    .line 661
    .line 662
    invoke-static {v4, v8}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 663
    move-result v4

    .line 664
    .line 665
    .line 666
    :goto_e
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 667
    goto :goto_10

    .line 668
    .line 669
    :cond_1c
    iget v4, p1, Lcom/narvii/list/prefs/PrefsItem;->descColor:I

    .line 670
    .line 671
    if-eqz v4, :cond_1d

    .line 672
    goto :goto_f

    .line 673
    .line 674
    .line 675
    :cond_1d
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 676
    move-result-object v4

    .line 677
    .line 678
    sget v8, Lcom/narvii/lib/R$color;->pref_desc_default_color:I

    .line 679
    .line 680
    .line 681
    invoke-static {v4, v8}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 682
    move-result v4

    .line 683
    .line 684
    .line 685
    :goto_f
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 686
    .line 687
    :goto_10
    iget-object v4, p1, Lcom/narvii/list/prefs/PrefsItem;->descTruncateAt:Landroid/text/TextUtils$TruncateAt;

    .line 688
    .line 689
    .line 690
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 691
    .line 692
    .line 693
    invoke-static {v2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    .line 694
    move-result-object v0

    .line 695
    .line 696
    .line 697
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 698
    .line 699
    .line 700
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 701
    move-result-object v0

    .line 702
    .line 703
    .line 704
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 705
    move-result-object v0

    .line 706
    .line 707
    .line 708
    const v4, 0x106000d

    .line 709
    .line 710
    .line 711
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    .line 712
    move-result v0

    .line 713
    .line 714
    .line 715
    invoke-virtual {p3, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 716
    .line 717
    instance-of v0, p1, Lcom/narvii/list/prefs/PrefsSwitch;

    .line 718
    .line 719
    if-eqz v0, :cond_20

    .line 720
    move-object v0, p1

    .line 721
    .line 722
    check-cast v0, Lcom/narvii/list/prefs/PrefsSwitch;

    .line 723
    .line 724
    .line 725
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 726
    move-result-object v3

    .line 727
    .line 728
    iget-boolean v4, v0, Lcom/narvii/list/prefs/PrefsSwitch;->on:Z

    .line 729
    .line 730
    if-eqz v4, :cond_1e

    .line 731
    .line 732
    sget v4, Lcom/narvii/lib/R$string;->on:I

    .line 733
    goto :goto_11

    .line 734
    .line 735
    :cond_1e
    sget v4, Lcom/narvii/lib/R$string;->off:I

    .line 736
    .line 737
    .line 738
    :goto_11
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 739
    move-result-object v3

    .line 740
    .line 741
    .line 742
    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 743
    .line 744
    iget-boolean v3, v0, Lcom/narvii/list/prefs/PrefsSwitch;->on:Z

    .line 745
    .line 746
    if-eqz v3, :cond_1f

    .line 747
    .line 748
    .line 749
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 750
    move-result-object v3

    .line 751
    .line 752
    .line 753
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 754
    move-result-object v3

    .line 755
    .line 756
    sget v4, Lcom/narvii/lib/R$color;->pref_switch_green:I

    .line 757
    .line 758
    .line 759
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    .line 760
    move-result v3

    .line 761
    goto :goto_12

    .line 762
    .line 763
    .line 764
    :cond_1f
    invoke-direct {p0}, Lcom/narvii/list/prefs/PrefsAdapter;->getPrefsTextColor()I

    .line 765
    move-result v3

    .line 766
    .line 767
    .line 768
    :goto_12
    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 769
    .line 770
    iget-boolean v0, v0, Lcom/narvii/list/prefs/PrefsSwitch;->on:Z

    .line 771
    .line 772
    .line 773
    invoke-static {v0}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    .line 774
    move-result-object v0

    .line 775
    .line 776
    .line 777
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 778
    .line 779
    .line 780
    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 781
    goto :goto_14

    .line 782
    .line 783
    :cond_20
    instance-of v0, p1, Lcom/narvii/list/prefs/PrefsText;

    .line 784
    .line 785
    if-eqz v0, :cond_24

    .line 786
    move-object v0, p1

    .line 787
    .line 788
    check-cast v0, Lcom/narvii/list/prefs/PrefsText;

    .line 789
    .line 790
    iget-boolean v4, v0, Lcom/narvii/list/prefs/PrefsItem;->text2Bold:Z

    .line 791
    .line 792
    if-eqz v4, :cond_21

    .line 793
    .line 794
    .line 795
    invoke-static {v3}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    .line 796
    move-result-object v3

    .line 797
    .line 798
    .line 799
    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 800
    .line 801
    :cond_21
    iget-object v3, v0, Lcom/narvii/list/prefs/PrefsText;->text:Ljava/lang/String;

    .line 802
    .line 803
    .line 804
    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 805
    .line 806
    iget v3, v0, Lcom/narvii/list/prefs/PrefsText;->textColor:I

    .line 807
    .line 808
    if-eqz v3, :cond_22

    .line 809
    goto :goto_13

    .line 810
    .line 811
    .line 812
    :cond_22
    invoke-direct {p0}, Lcom/narvii/list/prefs/PrefsAdapter;->getPrefsTextColor()I

    .line 813
    move-result v3

    .line 814
    .line 815
    .line 816
    :goto_13
    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 817
    .line 818
    iget v0, v0, Lcom/narvii/list/prefs/PrefsText;->drawableId:I

    .line 819
    .line 820
    if-eqz v0, :cond_23

    .line 821
    .line 822
    .line 823
    invoke-virtual {p3, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 824
    .line 825
    .line 826
    :cond_23
    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 827
    goto :goto_14

    .line 828
    .line 829
    :cond_24
    instance-of v0, p1, Lcom/narvii/list/prefs/PrefsBadge;

    .line 830
    .line 831
    if-eqz v0, :cond_27

    .line 832
    move-object v0, p1

    .line 833
    .line 834
    check-cast v0, Lcom/narvii/list/prefs/PrefsBadge;

    .line 835
    .line 836
    iget v3, v0, Lcom/narvii/list/prefs/PrefsBadge;->count:I

    .line 837
    .line 838
    if-lez v3, :cond_26

    .line 839
    .line 840
    iget v3, v0, Lcom/narvii/list/prefs/PrefsBadge;->badgeBgResId:I

    .line 841
    .line 842
    if-nez v3, :cond_25

    .line 843
    .line 844
    sget v3, Lcom/narvii/lib/R$drawable;->prefs_badge:I

    .line 845
    .line 846
    .line 847
    :cond_25
    invoke-virtual {p3, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 848
    .line 849
    iget v0, v0, Lcom/narvii/list/prefs/PrefsBadge;->count:I

    .line 850
    .line 851
    .line 852
    invoke-static {v0}, Lcom/narvii/util/Utils;->getBadgeCount(I)Ljava/lang/String;

    .line 853
    move-result-object v0

    .line 854
    .line 855
    .line 856
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 857
    .line 858
    .line 859
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 860
    move-result-object v0

    .line 861
    .line 862
    .line 863
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 864
    move-result-object v0

    .line 865
    .line 866
    .line 867
    const v3, 0x106000b

    .line 868
    .line 869
    .line 870
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    .line 871
    move-result v0

    .line 872
    .line 873
    .line 874
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 875
    .line 876
    .line 877
    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 878
    goto :goto_14

    .line 879
    .line 880
    .line 881
    :cond_26
    invoke-virtual {p3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 882
    goto :goto_14

    .line 883
    .line 884
    .line 885
    :cond_27
    invoke-virtual {p3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 886
    .line 887
    :goto_14
    iget-boolean v0, p1, Lcom/narvii/list/prefs/PrefsItem;->enabled:Z

    .line 888
    .line 889
    if-nez v0, :cond_28

    .line 890
    .line 891
    .line 892
    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 893
    .line 894
    :cond_28
    iget-boolean p1, p1, Lcom/narvii/list/prefs/PrefsItem;->enabled:Z

    .line 895
    .line 896
    if-eqz p1, :cond_29

    .line 897
    move v6, v7

    .line 898
    .line 899
    .line 900
    :cond_29
    invoke-virtual {p2, v6}, Landroid/view/View;->setAlpha(F)V

    .line 901
    return-object p2

    .line 902
    .line 903
    :cond_2a
    sget-object v0, Lcom/narvii/list/prefs/PrefsAdapter;->DIVIDER:Lcom/narvii/util/Tag;

    .line 904
    .line 905
    if-ne p1, v0, :cond_2b

    .line 906
    .line 907
    sget p1, Lcom/narvii/lib/R$layout;->prefs_divider:I

    .line 908
    .line 909
    .line 910
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 911
    move-result-object p1

    .line 912
    return-object p1

    .line 913
    :cond_2b
    return-object v4
.end method

.method public getViewTypeCount()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/list/prefs/PrefsAdapter;->getItem(I)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    instance-of v1, v0, Lcom/narvii/list/prefs/PrefsSection;

    .line 7
    const/4 v2, 0x0

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    return v2

    .line 11
    .line 12
    :cond_0
    instance-of v1, v0, Lcom/narvii/list/prefs/PrefsMargin;

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    return v2

    .line 16
    .line 17
    :cond_1
    instance-of v1, v0, Lcom/narvii/list/prefs/PrefsItem;

    .line 18
    .line 19
    if-eqz v1, :cond_2

    .line 20
    .line 21
    check-cast v0, Lcom/narvii/list/prefs/PrefsItem;

    .line 22
    .line 23
    iget-boolean p1, v0, Lcom/narvii/list/prefs/PrefsItem;->enabled:Z

    .line 24
    return p1

    .line 25
    .line 26
    :cond_2
    instance-of v0, v0, Lcom/narvii/list/prefs/PrefsDescription;

    .line 27
    .line 28
    if-eqz v0, :cond_3

    .line 29
    return v2

    .line 30
    .line 31
    .line 32
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/BaseAdapter;->isEnabled(I)Z

    .line 33
    move-result p1

    .line 34
    return p1
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-object v0, p0, Lcom/narvii/list/prefs/PrefsAdapter;->cells:Ljava/util/ArrayList;

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 7
    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 5

    .line 1
    .line 2
    instance-of v0, p3, Lcom/narvii/list/prefs/PrefsEntry;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    move-object v0, p3

    .line 6
    .line 7
    check-cast v0, Lcom/narvii/list/prefs/PrefsEntry;

    .line 8
    .line 9
    iget-object v1, v0, Lcom/narvii/list/prefs/PrefsEntry;->callback:Lcom/narvii/util/Callback;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-interface {v1, v0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 15
    goto :goto_0

    .line 16
    .line 17
    :cond_0
    iget-object v1, v0, Lcom/narvii/list/prefs/PrefsEntry;->callbackIntent:Landroid/content/Intent;

    .line 18
    .line 19
    if-eqz v1, :cond_3

    .line 20
    .line 21
    .line 22
    :try_start_0
    invoke-static {p0, v1}, Lcom/narvii/list/prefs/PrefsAdapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    goto :goto_0

    .line 24
    :catch_0
    move-exception v1

    .line 25
    .line 26
    new-instance v2, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    const-string v3, "fail to start intent "

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    iget-object v0, v0, Lcom/narvii/list/prefs/PrefsEntry;->callbackIntent:Landroid/content/Intent;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    .line 46
    invoke-static {v0, v1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 47
    goto :goto_0

    .line 48
    .line 49
    :cond_1
    instance-of v0, p3, Lcom/narvii/list/prefs/PrefsSwitch;

    .line 50
    .line 51
    if-eqz v0, :cond_3

    .line 52
    move-object v0, p3

    .line 53
    .line 54
    check-cast v0, Lcom/narvii/list/prefs/PrefsSwitch;

    .line 55
    .line 56
    iget-object v1, v0, Lcom/narvii/list/prefs/PrefsSwitch;->callback:Lcom/narvii/util/Callback;

    .line 57
    .line 58
    if-eqz v1, :cond_3

    .line 59
    .line 60
    iget v2, v0, Lcom/narvii/list/prefs/PrefsSwitch;->switchMode:I

    .line 61
    const/4 v3, 0x1

    .line 62
    .line 63
    if-nez v2, :cond_2

    .line 64
    .line 65
    new-instance v1, Lcom/narvii/util/dialog/ActionSheetDialog;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 69
    move-result-object v2

    .line 70
    .line 71
    .line 72
    invoke-direct {v1, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    .line 73
    .line 74
    sget v2, Lcom/narvii/lib/R$string;->on:I

    .line 75
    const/4 v4, 0x0

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, v2, v4}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    .line 79
    .line 80
    sget v2, Lcom/narvii/lib/R$string;->off:I

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1, v2, v3}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    .line 84
    .line 85
    new-instance v2, Lcom/narvii/list/prefs/PrefsAdapter$2;

    .line 86
    .line 87
    .line 88
    invoke-direct {v2, p0, v0}, Lcom/narvii/list/prefs/PrefsAdapter$2;-><init>(Lcom/narvii/list/prefs/PrefsAdapter;Lcom/narvii/list/prefs/PrefsSwitch;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    .line 95
    goto :goto_0

    .line 96
    .line 97
    :cond_2
    iget-boolean v2, v0, Lcom/narvii/list/prefs/PrefsSwitch;->on:Z

    .line 98
    xor-int/2addr v2, v3

    .line 99
    .line 100
    iput-boolean v2, v0, Lcom/narvii/list/prefs/PrefsSwitch;->on:Z

    .line 101
    .line 102
    .line 103
    invoke-interface {v1, v0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0}, Lcom/narvii/list/prefs/PrefsAdapter;->notifyDataSetChanged()V

    .line 107
    .line 108
    .line 109
    :cond_3
    :goto_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 110
    move-result p1

    .line 111
    return p1
.end method

.method protected setUpLearnMore(Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected supportNVTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
