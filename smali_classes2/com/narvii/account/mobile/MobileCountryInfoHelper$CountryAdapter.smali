.class Lcom/narvii/account/mobile/MobileCountryInfoHelper$CountryAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "MobileCountryInfoHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/account/mobile/MobileCountryInfoHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CountryAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/account/mobile/MobileCountryInfoHelper$CountryAdapter$Callback;
    }
.end annotation


# instance fields
.field callback:Lcom/narvii/account/mobile/MobileCountryInfoHelper$CountryAdapter$Callback;

.field countryInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/account/mobile/CountryInfoR;",
            ">;"
        }
    .end annotation
.end field

.field inflater:Landroid/view/LayoutInflater;

.field showAreaCode:Z


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            "Ljava/util/List<",
            "Lcom/narvii/account/mobile/CountryInfoR;",
            ">;Z)V"
        }
    .end annotation

    .line 290
    invoke-direct {p0, p1}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 291
    iput-object p2, p0, Lcom/narvii/account/mobile/MobileCountryInfoHelper$CountryAdapter;->countryInfoList:Ljava/util/List;

    .line 292
    iput-boolean p3, p0, Lcom/narvii/account/mobile/MobileCountryInfoHelper$CountryAdapter;->showAreaCode:Z

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 306
    iget-object v0, p0, Lcom/narvii/account/mobile/MobileCountryInfoHelper$CountryAdapter;->countryInfoList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getItem(I)Lcom/narvii/account/mobile/CountryInfoR;
    .locals 1

    .line 311
    iget-object v0, p0, Lcom/narvii/account/mobile/MobileCountryInfoHelper$CountryAdapter;->countryInfoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/mobile/CountryInfoR;

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 282
    invoke-virtual {p0, p1}, Lcom/narvii/account/mobile/MobileCountryInfoHelper$CountryAdapter;->getItem(I)Lcom/narvii/account/mobile/CountryInfoR;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 316
    invoke-virtual {p0, p1}, Lcom/narvii/account/mobile/MobileCountryInfoHelper$CountryAdapter;->getItem(I)Lcom/narvii/account/mobile/CountryInfoR;

    move-result-object p1

    .line 317
    invoke-virtual {p1}, Lcom/narvii/account/mobile/CountryInfoR;->hashCode()I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-nez p2, :cond_1

    .line 324
    iget-object p2, p0, Lcom/narvii/account/mobile/MobileCountryInfoHelper$CountryAdapter;->inflater:Landroid/view/LayoutInflater;

    if-nez p2, :cond_0

    .line 325
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/account/mobile/MobileCountryInfoHelper$CountryAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 327
    :cond_0
    iget-object p2, p0, Lcom/narvii/account/mobile/MobileCountryInfoHelper$CountryAdapter;->inflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0b03b7

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 331
    :cond_1
    invoke-virtual {p0, p1}, Lcom/narvii/account/mobile/MobileCountryInfoHelper$CountryAdapter;->getItem(I)Lcom/narvii/account/mobile/CountryInfoR;

    move-result-object p1

    const p3, 0x7f0903dd

    .line 332
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/widget/EmojioneView;

    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "flag_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/narvii/account/mobile/CountryInfoR;->isoCode:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 334
    sget-object v1, Lcom/narvii/util/emojione/EmojioneShortName;->shortNameToUnicode:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 335
    invoke-virtual {p3, v0}, Lcom/narvii/widget/EmojioneView;->setEmoji(Ljava/lang/String;)V

    const p3, 0x7f090b5b

    .line 347
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 348
    iget-boolean v0, p0, Lcom/narvii/account/mobile/MobileCountryInfoHelper$CountryAdapter;->showAreaCode:Z

    if-eqz v0, :cond_2

    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/narvii/account/mobile/CountryInfoR;->countryName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/narvii/account/mobile/CountryInfoR;->countryCode:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 351
    :cond_2
    iget-object p1, p1, Lcom/narvii/account/mobile/CountryInfoR;->countryName:Ljava/lang/String;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-object p2
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .line 358
    instance-of v0, p3, Lcom/narvii/account/mobile/CountryInfoR;

    if-eqz v0, :cond_1

    .line 359
    iget-object p1, p0, Lcom/narvii/account/mobile/MobileCountryInfoHelper$CountryAdapter;->callback:Lcom/narvii/account/mobile/MobileCountryInfoHelper$CountryAdapter$Callback;

    if-eqz p1, :cond_0

    .line 360
    check-cast p3, Lcom/narvii/account/mobile/CountryInfoR;

    invoke-interface {p1, p3}, Lcom/narvii/account/mobile/MobileCountryInfoHelper$CountryAdapter$Callback;->onClickCountry(Lcom/narvii/account/mobile/CountryInfoR;)V

    :cond_0
    const/4 p1, 0x1

    return p1

    .line 364
    :cond_1
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public setCallback(Lcom/narvii/account/mobile/MobileCountryInfoHelper$CountryAdapter$Callback;)V
    .locals 0

    .line 296
    iput-object p1, p0, Lcom/narvii/account/mobile/MobileCountryInfoHelper$CountryAdapter;->callback:Lcom/narvii/account/mobile/MobileCountryInfoHelper$CountryAdapter$Callback;

    return-void
.end method
