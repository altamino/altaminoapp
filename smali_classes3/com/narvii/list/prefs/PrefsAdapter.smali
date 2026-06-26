.class public abstract Lcom/narvii/list/prefs/PrefsAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "PrefsAdapter.java"


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

    .line 37
    new-instance v0, Lcom/narvii/util/Tag;

    const-string v1, "divider"

    invoke-direct {v0, v1}, Lcom/narvii/util/Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/narvii/list/prefs/PrefsAdapter;->DIVIDER:Lcom/narvii/util/Tag;

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    .line 43
    invoke-direct {p0, p1}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    const-string v0, "config"

    .line 44
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/config/ConfigService;

    .line 45
    invoke-virtual {p1}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    move-result-object p1

    invoke-interface {p1}, Lcom/narvii/config/ConfigTheme;->colorPrimary()I

    move-result p1

    iput p1, p0, Lcom/narvii/list/prefs/PrefsAdapter;->colorPrimary:I

    return-void
.end method

.method private getPrefsTextColor()I
    .locals 2

    .line 358
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isDarkNVTheme()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/narvii/lib/R$color;->prefs_text_color_dark_70p:I

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/high16 v0, -0x78000000

    :goto_0
    return v0
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

    .line 65
    iget-object v0, p0, Lcom/narvii/list/prefs/PrefsAdapter;->cells:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 67
    invoke-virtual {p0, v0}, Lcom/narvii/list/prefs/PrefsAdapter;->buildCells(Ljava/util/List;)V

    .line 68
    iput-object v0, p0, Lcom/narvii/list/prefs/PrefsAdapter;->cells:Ljava/util/ArrayList;

    .line 70
    invoke-virtual {v0}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    const/4 v1, 0x0

    .line 72
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 73
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 74
    instance-of v3, v2, Lcom/narvii/list/prefs/PrefsItem;

    if-eqz v3, :cond_0

    instance-of v3, v2, Lcom/narvii/list/prefs/PrefsSection;

    if-nez v3, :cond_0

    instance-of v3, v2, Lcom/narvii/list/prefs/PrefsMargin;

    if-nez v3, :cond_0

    .line 75
    instance-of v3, v1, Lcom/narvii/list/prefs/PrefsItem;

    if-eqz v3, :cond_0

    instance-of v3, v1, Lcom/narvii/list/prefs/PrefsSection;

    if-nez v3, :cond_0

    instance-of v1, v1, Lcom/narvii/list/prefs/PrefsMargin;

    if-nez v1, :cond_0

    .line 76
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 77
    sget-object v1, Lcom/narvii/list/prefs/PrefsAdapter;->DIVIDER:Lcom/narvii/util/Tag;

    invoke-interface {v0, v1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 78
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    :cond_0
    move-object v1, v2

    goto :goto_0

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/narvii/list/prefs/PrefsAdapter;->cells:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 89
    invoke-virtual {p0}, Lcom/narvii/list/prefs/PrefsAdapter;->cells()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 94
    invoke-virtual {p0}, Lcom/narvii/list/prefs/PrefsAdapter;->cells()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 99
    invoke-virtual {p0, p1}, Lcom/narvii/list/prefs/PrefsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 130
    invoke-virtual {p0, p1}, Lcom/narvii/list/prefs/PrefsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    .line 131
    instance-of v0, p1, Lcom/narvii/list/prefs/PrefsSection;

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 133
    :cond_0
    instance-of v0, p1, Lcom/narvii/list/prefs/PrefsMargin;

    if-eqz v0, :cond_1

    const/4 p1, 0x2

    return p1

    .line 135
    :cond_1
    instance-of v0, p1, Lcom/narvii/list/prefs/PrefsWarning;

    if-eqz v0, :cond_2

    const/4 p1, 0x4

    return p1

    .line 137
    :cond_2
    instance-of v0, p1, Lcom/narvii/list/prefs/PrefsRedAlert;

    if-eqz v0, :cond_3

    const/4 p1, 0x5

    return p1

    .line 139
    :cond_3
    instance-of v0, p1, Lcom/narvii/list/prefs/PrefsToggle;

    if-eqz v0, :cond_4

    const/4 p1, 0x6

    return p1

    .line 141
    :cond_4
    instance-of v0, p1, Lcom/narvii/list/prefs/PrefsItem;

    if-eqz v0, :cond_5

    const/4 p1, 0x3

    return p1

    .line 143
    :cond_5
    instance-of v0, p1, Lcom/narvii/list/prefs/PrefsDescription;

    if-eqz v0, :cond_6

    const/4 p1, 0x7

    return p1

    .line 145
    :cond_6
    sget-object v0, Lcom/narvii/list/prefs/PrefsAdapter;->DIVIDER:Lcom/narvii/util/Tag;

    if-ne p1, v0, :cond_7

    const/4 p1, 0x0

    return p1

    :cond_7
    const/4 p1, -0x1

    return p1
.end method

.method protected getPrefsText(Lcom/narvii/list/prefs/PrefsItem;)Ljava/lang/CharSequence;
    .locals 1

    .line 158
    iget-object v0, p1, Lcom/narvii/list/prefs/PrefsItem;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 160
    :cond_0
    iget v0, p1, Lcom/narvii/list/prefs/PrefsItem;->id:I

    if-eqz v0, :cond_1

    .line 162
    :try_start_0
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget p1, p1, Lcom/narvii/list/prefs/PrefsItem;->id:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    .line 175
    invoke-virtual {p0, p1}, Lcom/narvii/list/prefs/PrefsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    .line 176
    instance-of v0, p1, Lcom/narvii/list/prefs/PrefsSection;

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 177
    check-cast p1, Lcom/narvii/list/prefs/PrefsSection;

    .line 178
    sget v0, Lcom/narvii/lib/R$layout;->prefs_section_item:I

    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    .line 179
    sget p3, Lcom/narvii/lib/R$id;->text:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 180
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isDarkNVTheme()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v3, Lcom/narvii/lib/R$color;->prefs_section_color_dark:I

    invoke-static {v0, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/narvii/list/prefs/PrefsAdapter;->colorPrimary:I

    :goto_0
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 181
    iget-boolean v0, p1, Lcom/narvii/list/prefs/PrefsSection;->isAllCaps:Z

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 182
    invoke-virtual {p0, p1}, Lcom/narvii/list/prefs/PrefsAdapter;->getPrefsText(Lcom/narvii/list/prefs/PrefsItem;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    sget p3, Lcom/narvii/lib/R$id;->learn_more:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 186
    iget-object v0, p1, Lcom/narvii/list/prefs/PrefsSection;->learnMoreUrl:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    :cond_1
    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 187
    iget-object p1, p1, Lcom/narvii/list/prefs/PrefsSection;->learnMoreUrl:Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 188
    invoke-virtual {p0, p2, p1}, Lcom/narvii/list/prefs/PrefsAdapter;->setUpLearnMore(Landroid/view/View;Ljava/lang/String;)V

    :cond_2
    return-object p2

    .line 193
    :cond_3
    instance-of v0, p1, Lcom/narvii/list/prefs/PrefsMargin;

    if-eqz v0, :cond_5

    .line 194
    sget v0, Lcom/narvii/lib/R$layout;->prefs_margin_item:I

    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    .line 195
    check-cast p1, Lcom/narvii/list/prefs/PrefsMargin;

    .line 196
    iget p1, p1, Lcom/narvii/list/prefs/PrefsMargin;->marginSize:I

    if-nez p1, :cond_4

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcom/narvii/lib/R$dimen;->prefs_default_margin:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 197
    :cond_4
    invoke-virtual {p2, p1}, Landroid/view/View;->setMinimumHeight(I)V

    return-object p2

    .line 200
    :cond_5
    instance-of v0, p1, Lcom/narvii/list/prefs/PrefsRedAlert;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/16 v5, 0x8

    if-eqz v0, :cond_9

    .line 201
    move-object v0, p1

    check-cast v0, Lcom/narvii/list/prefs/PrefsRedAlert;

    const v1, -0x16f2c5

    .line 204
    sget v6, Lcom/narvii/lib/R$layout;->prefs_normal_item:I

    invoke-virtual {p0, v6, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    .line 205
    sget p3, Lcom/narvii/lib/R$id;->text:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 206
    check-cast p1, Lcom/narvii/list/prefs/PrefsItem;

    invoke-virtual {p0, p1}, Lcom/narvii/list/prefs/PrefsAdapter;->getPrefsText(Lcom/narvii/list/prefs/PrefsItem;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 209
    sget p1, Lcom/narvii/lib/R$id;->text2:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 210
    iget-object p3, v0, Lcom/narvii/list/prefs/PrefsRedAlert;->text:Ljava/lang/String;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 p3, 0x41a00000    # 20.0f

    .line 212
    invoke-virtual {p1, v3, p3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 213
    iget-object p3, v0, Lcom/narvii/list/prefs/PrefsRedAlert;->text:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_6

    const/16 p3, 0x8

    goto :goto_1

    :cond_6
    const/4 p3, 0x0

    :goto_1
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 215
    sget p1, Lcom/narvii/lib/R$id;->right_icon:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 216
    iget p3, v0, Lcom/narvii/list/prefs/PrefsItem;->rightIconResId:I

    if-eqz p3, :cond_7

    .line 217
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 219
    :cond_7
    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 221
    :goto_2
    iget p3, v0, Lcom/narvii/list/prefs/PrefsItem;->rightIconResId:I

    if-eqz p3, :cond_8

    goto :goto_3

    :cond_8
    const/16 v2, 0x8

    :goto_3
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 223
    sget p1, Lcom/narvii/lib/R$id;->chevron_right:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/TintButton;

    .line 224
    invoke-virtual {p1, v1}, Lcom/narvii/widget/TintButton;->setTintColor(I)V

    return-object p2

    .line 227
    :cond_9
    instance-of v0, p1, Lcom/narvii/list/prefs/PrefsWarning;

    if-eqz v0, :cond_c

    .line 228
    check-cast p1, Lcom/narvii/list/prefs/PrefsWarning;

    .line 229
    sget v0, Lcom/narvii/lib/R$layout;->prefs_warning_item:I

    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    .line 230
    sget p3, Lcom/narvii/lib/R$id;->text:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 231
    invoke-virtual {p0, p1}, Lcom/narvii/list/prefs/PrefsAdapter;->getPrefsText(Lcom/narvii/list/prefs/PrefsItem;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    sget p3, Lcom/narvii/lib/R$id;->text2:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 234
    iget-object v0, p1, Lcom/narvii/list/prefs/PrefsWarning;->subTitle:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    iget-object v0, p1, Lcom/narvii/list/prefs/PrefsWarning;->subTitle:Ljava/lang/String;

    invoke-static {v0}, Lcom/narvii/util/StringUtils;->isTrimEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 v0, 0x8

    goto :goto_4

    :cond_a
    const/4 v0, 0x0

    :goto_4
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 237
    sget p3, Lcom/narvii/lib/R$id;->warning_info:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 238
    iget-object v0, p1, Lcom/narvii/list/prefs/PrefsWarning;->warningInfo:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    iget-object p1, p1, Lcom/narvii/list/prefs/PrefsWarning;->warningInfo:Ljava/lang/String;

    invoke-static {p1}, Lcom/narvii/util/StringUtils;->isTrimEmpty(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    const/16 v2, 0x8

    :cond_b
    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    return-object p2

    .line 245
    :cond_c
    instance-of v0, p1, Lcom/narvii/list/prefs/PrefsDescription;

    if-eqz v0, :cond_d

    .line 246
    sget v0, Lcom/narvii/lib/R$layout;->prefs_description:I

    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    .line 247
    sget p3, Lcom/narvii/lib/R$id;->text:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    check-cast p1, Lcom/narvii/list/prefs/PrefsDescription;

    iget-object p1, p1, Lcom/narvii/list/prefs/PrefsDescription;->text:Ljava/lang/CharSequence;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2

    .line 250
    :cond_d
    instance-of v0, p1, Lcom/narvii/list/prefs/PrefsToggle;

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f000000    # 0.5f

    if-eqz v0, :cond_14

    .line 251
    check-cast p1, Lcom/narvii/list/prefs/PrefsToggle;

    .line 252
    sget v0, Lcom/narvii/lib/R$layout;->prefs_toggle:I

    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    .line 253
    sget p3, Lcom/narvii/lib/R$id;->name:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 254
    iget-object v0, p1, Lcom/narvii/list/prefs/PrefsItem;->name:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    iget-boolean v0, p1, Lcom/narvii/list/prefs/PrefsToggle;->textSingleLine:Z

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 256
    sget p3, Lcom/narvii/lib/R$id;->desc:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 257
    iget-object v0, p1, Lcom/narvii/list/prefs/PrefsItem;->desc:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/16 v2, 0x8

    :cond_e
    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 258
    iget-object v0, p1, Lcom/narvii/list/prefs/PrefsItem;->desc:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isDarkNVTheme()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 260
    iget v0, p1, Lcom/narvii/list/prefs/PrefsItem;->descColor:I

    if-eqz v0, :cond_f

    goto :goto_5

    :cond_f
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/narvii/lib/R$color;->prefs_text_color_dark:I

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    :goto_5
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_7

    .line 262
    :cond_10
    iget v0, p1, Lcom/narvii/list/prefs/PrefsItem;->descColor:I

    if-eqz v0, :cond_11

    goto :goto_6

    :cond_11
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/narvii/lib/R$color;->pref_desc_default_color:I

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    :goto_6
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 264
    :goto_7
    sget p3, Lcom/narvii/lib/R$id;->check_box:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/CheckBox;

    .line 265
    invoke-virtual {p3, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 266
    iget-boolean v0, p1, Lcom/narvii/list/prefs/PrefsToggle;->on:Z

    invoke-virtual {p3, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 267
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isDarkNVTheme()Z

    move-result v0

    if-eqz v0, :cond_12

    sget v0, Lcom/narvii/lib/R$drawable;->switch_bg_dt:I

    goto :goto_8

    :cond_12
    sget v0, Lcom/narvii/lib/R$drawable;->switch_bg:I

    :goto_8
    invoke-virtual {p3, v0}, Landroid/widget/CheckBox;->setButtonDrawable(I)V

    .line 268
    new-instance v0, Lcom/narvii/list/prefs/PrefsAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/narvii/list/prefs/PrefsAdapter$1;-><init>(Lcom/narvii/list/prefs/PrefsAdapter;Lcom/narvii/list/prefs/PrefsToggle;)V

    invoke-virtual {p3, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 277
    iget-boolean p1, p1, Lcom/narvii/list/prefs/PrefsItem;->enabled:Z

    if-eqz p1, :cond_13

    goto :goto_9

    :cond_13
    const/high16 v6, 0x3f000000    # 0.5f

    :goto_9
    invoke-virtual {p2, v6}, Landroid/view/View;->setAlpha(F)V

    return-object p2

    .line 280
    :cond_14
    instance-of v0, p1, Lcom/narvii/list/prefs/PrefsItem;

    if-eqz v0, :cond_2a

    .line 281
    check-cast p1, Lcom/narvii/list/prefs/PrefsItem;

    .line 282
    sget v0, Lcom/narvii/lib/R$layout;->prefs_normal_item:I

    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    .line 283
    sget p3, Lcom/narvii/lib/R$id;->text:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 284
    invoke-virtual {p0, p1}, Lcom/narvii/list/prefs/PrefsAdapter;->getPrefsText(Lcom/narvii/list/prefs/PrefsItem;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    sget p3, Lcom/narvii/lib/R$id;->icon:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    .line 287
    iget-object v0, p1, Lcom/narvii/list/prefs/PrefsItem;->icon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_15

    const/16 v0, 0x8

    goto :goto_a

    :cond_15
    const/4 v0, 0x0

    :goto_a
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 288
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v8, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v8}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v0, v8}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 289
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v8

    iget v9, p1, Lcom/narvii/list/prefs/PrefsItem;->iconBackgroundColor:I

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 290
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 291
    iget-object v0, p1, Lcom/narvii/list/prefs/PrefsItem;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 293
    sget p3, Lcom/narvii/lib/R$id;->right_icon:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    .line 294
    iget v0, p1, Lcom/narvii/list/prefs/PrefsItem;->rightIconResId:I

    if-eqz v0, :cond_16

    .line 295
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_b

    .line 297
    :cond_16
    invoke-virtual {p3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 299
    :goto_b
    iget v0, p1, Lcom/narvii/list/prefs/PrefsItem;->rightIconResId:I

    if-eqz v0, :cond_17

    const/4 v0, 0x0

    goto :goto_c

    :cond_17
    const/16 v0, 0x8

    :goto_c
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 301
    sget p3, Lcom/narvii/lib/R$id;->chevron_right:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iget-boolean v0, p1, Lcom/narvii/list/prefs/PrefsItem;->chevronRight:Z

    if-eqz v0, :cond_19

    iget-boolean v0, p1, Lcom/narvii/list/prefs/PrefsItem;->enabled:Z

    if-eqz v0, :cond_18

    const/4 v0, 0x0

    goto :goto_d

    :cond_18
    const/4 v0, 0x4

    goto :goto_d

    :cond_19
    const/16 v0, 0x8

    :goto_d
    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 302
    sget p3, Lcom/narvii/lib/R$id;->text2:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 303
    sget v0, Lcom/narvii/lib/R$id;->desc:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 304
    iget-object v4, p1, Lcom/narvii/list/prefs/PrefsItem;->desc:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1a

    const/16 v4, 0x8

    goto :goto_e

    :cond_1a
    const/4 v4, 0x0

    :goto_e
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 305
    iget-object v4, p1, Lcom/narvii/list/prefs/PrefsItem;->desc:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 306
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isDarkNVTheme()Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 307
    iget v4, p1, Lcom/narvii/list/prefs/PrefsItem;->descColor:I

    if-eqz v4, :cond_1b

    goto :goto_f

    :cond_1b
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v8, Lcom/narvii/lib/R$color;->prefs_text_color_dark:I

    invoke-static {v4, v8}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    :goto_f
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_11

    .line 309
    :cond_1c
    iget v4, p1, Lcom/narvii/list/prefs/PrefsItem;->descColor:I

    if-eqz v4, :cond_1d

    goto :goto_10

    :cond_1d
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v8, Lcom/narvii/lib/R$color;->pref_desc_default_color:I

    invoke-static {v4, v8}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    :goto_10
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 312
    :goto_11
    iget-object v4, p1, Lcom/narvii/list/prefs/PrefsItem;->descTruncateAt:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 313
    invoke-static {v2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 314
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x106000d

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 315
    instance-of v0, p1, Lcom/narvii/list/prefs/PrefsSwitch;

    if-eqz v0, :cond_20

    .line 316
    move-object v0, p1

    check-cast v0, Lcom/narvii/list/prefs/PrefsSwitch;

    .line 317
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-boolean v4, v0, Lcom/narvii/list/prefs/PrefsSwitch;->on:Z

    if-eqz v4, :cond_1e

    sget v4, Lcom/narvii/lib/R$string;->on:I

    goto :goto_12

    :cond_1e
    sget v4, Lcom/narvii/lib/R$string;->off:I

    :goto_12
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 318
    iget-boolean v3, v0, Lcom/narvii/list/prefs/PrefsSwitch;->on:Z

    if-eqz v3, :cond_1f

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/narvii/lib/R$color;->pref_switch_green:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    goto :goto_13

    :cond_1f
    invoke-direct {p0}, Lcom/narvii/list/prefs/PrefsAdapter;->getPrefsTextColor()I

    move-result v3

    :goto_13
    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 319
    iget-boolean v0, v0, Lcom/narvii/list/prefs/PrefsSwitch;->on:Z

    invoke-static {v0}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 320
    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_15

    .line 321
    :cond_20
    instance-of v0, p1, Lcom/narvii/list/prefs/PrefsText;

    if-eqz v0, :cond_24

    .line 322
    move-object v0, p1

    check-cast v0, Lcom/narvii/list/prefs/PrefsText;

    .line 323
    iget-boolean v4, v0, Lcom/narvii/list/prefs/PrefsItem;->text2Bold:Z

    if-eqz v4, :cond_21

    .line 324
    invoke-static {v3}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 326
    :cond_21
    iget-object v3, v0, Lcom/narvii/list/prefs/PrefsText;->text:Ljava/lang/String;

    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    iget v3, v0, Lcom/narvii/list/prefs/PrefsText;->textColor:I

    if-eqz v3, :cond_22

    goto :goto_14

    :cond_22
    invoke-direct {p0}, Lcom/narvii/list/prefs/PrefsAdapter;->getPrefsTextColor()I

    move-result v3

    :goto_14
    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 328
    iget v0, v0, Lcom/narvii/list/prefs/PrefsText;->drawableId:I

    if-eqz v0, :cond_23

    .line 329
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 331
    :cond_23
    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_15

    .line 332
    :cond_24
    instance-of v0, p1, Lcom/narvii/list/prefs/PrefsBadge;

    if-eqz v0, :cond_27

    .line 333
    move-object v0, p1

    check-cast v0, Lcom/narvii/list/prefs/PrefsBadge;

    .line 334
    iget v3, v0, Lcom/narvii/list/prefs/PrefsBadge;->count:I

    if-lez v3, :cond_26

    .line 335
    iget v3, v0, Lcom/narvii/list/prefs/PrefsBadge;->badgeBgResId:I

    if-nez v3, :cond_25

    sget v3, Lcom/narvii/lib/R$drawable;->prefs_badge:I

    :cond_25
    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 336
    iget v0, v0, Lcom/narvii/list/prefs/PrefsBadge;->count:I

    invoke-static {v0}, Lcom/narvii/util/Utils;->getBadgeCount(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 337
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x106000b

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 338
    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_15

    .line 340
    :cond_26
    invoke-virtual {p3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_15

    .line 343
    :cond_27
    invoke-virtual {p3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 345
    :goto_15
    iget-boolean v0, p1, Lcom/narvii/list/prefs/PrefsItem;->enabled:Z

    if-nez v0, :cond_28

    .line 346
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 348
    :cond_28
    iget-boolean p1, p1, Lcom/narvii/list/prefs/PrefsItem;->enabled:Z

    if-eqz p1, :cond_29

    goto :goto_16

    :cond_29
    const/high16 v6, 0x3f000000    # 0.5f

    :goto_16
    invoke-virtual {p2, v6}, Landroid/view/View;->setAlpha(F)V

    return-object p2

    .line 351
    :cond_2a
    sget-object v0, Lcom/narvii/list/prefs/PrefsAdapter;->DIVIDER:Lcom/narvii/util/Tag;

    if-ne p1, v0, :cond_2b

    .line 352
    sget p1, Lcom/narvii/lib/R$layout;->prefs_divider:I

    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    return-object p1

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

    .line 114
    invoke-virtual {p0, p1}, Lcom/narvii/list/prefs/PrefsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 115
    instance-of v1, v0, Lcom/narvii/list/prefs/PrefsSection;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 117
    :cond_0
    instance-of v1, v0, Lcom/narvii/list/prefs/PrefsMargin;

    if-eqz v1, :cond_1

    return v2

    .line 119
    :cond_1
    instance-of v1, v0, Lcom/narvii/list/prefs/PrefsItem;

    if-eqz v1, :cond_2

    .line 120
    check-cast v0, Lcom/narvii/list/prefs/PrefsItem;

    iget-boolean p1, v0, Lcom/narvii/list/prefs/PrefsItem;->enabled:Z

    return p1

    .line 121
    :cond_2
    instance-of v0, v0, Lcom/narvii/list/prefs/PrefsDescription;

    if-eqz v0, :cond_3

    return v2

    .line 124
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/BaseAdapter;->isEnabled(I)Z

    move-result p1

    return p1
.end method

.method public notifyDataSetChanged()V
    .locals 1

    const/4 v0, 0x0

    .line 60
    iput-object v0, p0, Lcom/narvii/list/prefs/PrefsAdapter;->cells:Ljava/util/ArrayList;

    .line 61
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 5

    .line 363
    instance-of v0, p3, Lcom/narvii/list/prefs/PrefsEntry;

    if-eqz v0, :cond_1

    .line 364
    move-object v0, p3

    check-cast v0, Lcom/narvii/list/prefs/PrefsEntry;

    .line 365
    iget-object v1, v0, Lcom/narvii/list/prefs/PrefsEntry;->callback:Lcom/narvii/util/Callback;

    if-eqz v1, :cond_0

    .line 366
    invoke-interface {v1, v0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    goto :goto_0

    .line 367
    :cond_0
    iget-object v1, v0, Lcom/narvii/list/prefs/PrefsEntry;->callbackIntent:Landroid/content/Intent;

    if-eqz v1, :cond_3

    .line 369
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 371
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fail to start intent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/narvii/list/prefs/PrefsEntry;->callbackIntent:Landroid/content/Intent;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 374
    :cond_1
    instance-of v0, p3, Lcom/narvii/list/prefs/PrefsSwitch;

    if-eqz v0, :cond_3

    .line 375
    move-object v0, p3

    check-cast v0, Lcom/narvii/list/prefs/PrefsSwitch;

    .line 376
    iget-object v1, v0, Lcom/narvii/list/prefs/PrefsSwitch;->callback:Lcom/narvii/util/Callback;

    if-eqz v1, :cond_3

    .line 377
    iget v2, v0, Lcom/narvii/list/prefs/PrefsSwitch;->switchMode:I

    const/4 v3, 0x1

    if-nez v2, :cond_2

    .line 378
    new-instance v1, Lcom/narvii/util/dialog/ActionSheetDialog;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    .line 379
    sget v2, Lcom/narvii/lib/R$string;->on:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    .line 380
    sget v2, Lcom/narvii/lib/R$string;->off:I

    invoke-virtual {v1, v2, v3}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    .line 381
    new-instance v2, Lcom/narvii/list/prefs/PrefsAdapter$2;

    invoke-direct {v2, p0, v0}, Lcom/narvii/list/prefs/PrefsAdapter$2;-><init>(Lcom/narvii/list/prefs/PrefsAdapter;Lcom/narvii/list/prefs/PrefsSwitch;)V

    invoke-virtual {v1, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 389
    invoke-virtual {v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    goto :goto_0

    .line 391
    :cond_2
    iget-boolean v2, v0, Lcom/narvii/list/prefs/PrefsSwitch;->on:Z

    xor-int/2addr v2, v3

    iput-boolean v2, v0, Lcom/narvii/list/prefs/PrefsSwitch;->on:Z

    .line 392
    invoke-interface {v1, v0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 393
    invoke-virtual {p0}, Lcom/narvii/list/prefs/PrefsAdapter;->notifyDataSetChanged()V

    .line 397
    :cond_3
    :goto_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

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
