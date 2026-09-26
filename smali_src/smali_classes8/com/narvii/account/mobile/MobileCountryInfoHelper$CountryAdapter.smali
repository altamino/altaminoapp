.class Lcom/narvii/account/mobile/MobileCountryInfoHelper$CountryAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 4
    .line 5
    iput-object p2, p0, Lcom/narvii/account/mobile/MobileCountryInfoHelper$CountryAdapter;->countryInfoList:Ljava/util/List;

    .line 6
    .line 7
    iput-boolean p3, p0, Lcom/narvii/account/mobile/MobileCountryInfoHelper$CountryAdapter;->showAreaCode:Z

    .line 8
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/account/mobile/MobileCountryInfoHelper$CountryAdapter;->countryInfoList:Ljava/util/List;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 10
    move-result v0

    .line 11
    :goto_0
    return v0
.end method

.method public getItem(I)Lcom/narvii/account/mobile/CountryInfoR;
    .locals 1

    iget-object v0, p0, Lcom/narvii/account/mobile/MobileCountryInfoHelper$CountryAdapter;->countryInfoList:Ljava/util/List;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/mobile/CountryInfoR;

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/narvii/account/mobile/MobileCountryInfoHelper$CountryAdapter;->getItem(I)Lcom/narvii/account/mobile/CountryInfoR;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/account/mobile/MobileCountryInfoHelper$CountryAdapter;->getItem(I)Lcom/narvii/account/mobile/CountryInfoR;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/narvii/account/mobile/CountryInfoR;->hashCode()I

    .line 8
    move-result p1

    .line 9
    int-to-long v0, p1

    .line 10
    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 1
    .line 2
    if-nez p2, :cond_1

    .line 3
    .line 4
    iget-object p2, p0, Lcom/narvii/account/mobile/MobileCountryInfoHelper$CountryAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 5
    .line 6
    if-nez p2, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 10
    move-result-object p2

    .line 11
    .line 12
    .line 13
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 14
    move-result-object p2

    .line 15
    .line 16
    iput-object p2, p0, Lcom/narvii/account/mobile/MobileCountryInfoHelper$CountryAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 17
    .line 18
    :cond_0
    iget-object p2, p0, Lcom/narvii/account/mobile/MobileCountryInfoHelper$CountryAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 19
    .line 20
    .line 21
    const v0, 0x7f0d03ed

    .line 22
    const/4 v1, 0x0

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 26
    move-result-object p2

    .line 27
    .line 28
    .line 29
    :cond_1
    invoke-virtual {p0, p1}, Lcom/narvii/account/mobile/MobileCountryInfoHelper$CountryAdapter;->getItem(I)Lcom/narvii/account/mobile/CountryInfoR;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    .line 33
    const p3, 0x7f0a04dc

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 37
    move-result-object p3

    .line 38
    .line 39
    check-cast p3, Lcom/narvii/widget/EmojioneView;

    .line 40
    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    const-string v1, "flag_"

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    iget-object v1, p1, Lcom/narvii/account/mobile/CountryInfoR;->isoCode:Ljava/lang/String;

    .line 52
    .line 53
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 57
    move-result-object v1

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    move-result-object v0

    .line 65
    .line 66
    sget-object v1, Lcom/narvii/util/emojione/EmojioneShortName;->shortNameToUnicode:Ljava/util/Map;

    .line 67
    .line 68
    .line 69
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    move-result-object v0

    .line 71
    .line 72
    check-cast v0, Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p3, v0}, Lcom/narvii/widget/EmojioneView;->setEmoji(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    const p3, 0x7f0a0e51

    .line 79
    .line 80
    .line 81
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 82
    move-result-object p3

    .line 83
    .line 84
    check-cast p3, Landroid/widget/TextView;

    .line 85
    .line 86
    iget-boolean v0, p0, Lcom/narvii/account/mobile/MobileCountryInfoHelper$CountryAdapter;->showAreaCode:Z

    .line 87
    .line 88
    if-eqz v0, :cond_2

    .line 89
    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .line 95
    iget-object v1, p1, Lcom/narvii/account/mobile/CountryInfoR;->countryName:Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    const-string v1, " (+"

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    iget p1, p1, Lcom/narvii/account/mobile/CountryInfoR;->countryCode:I

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    const-string p1, ")"

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    move-result-object p1

    .line 118
    .line 119
    .line 120
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    goto :goto_0

    .line 122
    .line 123
    :cond_2
    iget-object p1, p1, Lcom/narvii/account/mobile/CountryInfoR;->countryName:Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
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
    .param p5    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    instance-of v0, p3, Lcom/narvii/account/mobile/CountryInfoR;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-object p1, p0, Lcom/narvii/account/mobile/MobileCountryInfoHelper$CountryAdapter;->callback:Lcom/narvii/account/mobile/MobileCountryInfoHelper$CountryAdapter$Callback;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    check-cast p3, Lcom/narvii/account/mobile/CountryInfoR;

    .line 11
    .line 12
    .line 13
    invoke-interface {p1, p3}, Lcom/narvii/account/mobile/MobileCountryInfoHelper$CountryAdapter$Callback;->onClickCountry(Lcom/narvii/account/mobile/CountryInfoR;)V

    .line 14
    :cond_0
    const/4 p1, 0x1

    .line 15
    return p1

    .line 16
    .line 17
    .line 18
    :cond_1
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 19
    move-result p1

    .line 20
    return p1
.end method

.method public setCallback(Lcom/narvii/account/mobile/MobileCountryInfoHelper$CountryAdapter$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/account/mobile/MobileCountryInfoHelper$CountryAdapter;->callback:Lcom/narvii/account/mobile/MobileCountryInfoHelper$CountryAdapter$Callback;

    return-void
.end method
