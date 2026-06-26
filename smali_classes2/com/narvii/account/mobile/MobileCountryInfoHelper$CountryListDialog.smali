.class Lcom/narvii/account/mobile/MobileCountryInfoHelper$CountryListDialog;
.super Lcom/narvii/widget/ListDialog;
.source "MobileCountryInfoHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/account/mobile/MobileCountryInfoHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CountryListDialog"
.end annotation


# static fields
.field protected static final STATE_FOCUSED:[I

.field protected static final STATE_NORMAL:[I

.field protected static final STATE_PRESSED:[I


# instance fields
.field callback:Lcom/narvii/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/Callback<",
            "Lcom/narvii/account/mobile/CountryInfoR;",
            ">;"
        }
    .end annotation
.end field

.field countryInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/account/mobile/CountryInfoR;",
            ">;"
        }
    .end annotation
.end field

.field showAreaCode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const v3, 0x10100a7

    aput v3, v1, v2

    .line 240
    sput-object v1, Lcom/narvii/account/mobile/MobileCountryInfoHelper$CountryListDialog;->STATE_PRESSED:[I

    new-array v0, v0, [I

    const v1, 0x101009c

    aput v1, v0, v2

    .line 241
    sput-object v0, Lcom/narvii/account/mobile/MobileCountryInfoHelper$CountryListDialog;->STATE_FOCUSED:[I

    new-array v0, v2, [I

    .line 242
    sput-object v0, Lcom/narvii/account/mobile/MobileCountryInfoHelper$CountryListDialog;->STATE_NORMAL:[I

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;Ljava/util/List;Lcom/narvii/util/Callback;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            "Ljava/util/List<",
            "Lcom/narvii/account/mobile/CountryInfoR;",
            ">;",
            "Lcom/narvii/util/Callback<",
            "Lcom/narvii/account/mobile/CountryInfoR;",
            ">;Z)V"
        }
    .end annotation

    const v0, 0x7f1000d1

    .line 245
    invoke-direct {p0, p1, v0}, Lcom/narvii/widget/ListDialog;-><init>(Lcom/narvii/app/NVContext;I)V

    .line 246
    iput-object p2, p0, Lcom/narvii/account/mobile/MobileCountryInfoHelper$CountryListDialog;->countryInfoList:Ljava/util/List;

    .line 247
    iput-object p3, p0, Lcom/narvii/account/mobile/MobileCountryInfoHelper$CountryListDialog;->callback:Lcom/narvii/util/Callback;

    .line 248
    iput-boolean p4, p0, Lcom/narvii/account/mobile/MobileCountryInfoHelper$CountryListDialog;->showAreaCode:Z

    .line 249
    iget-object p1, p0, Lcom/narvii/widget/ListDialog;->listView:Lcom/narvii/widget/NVListView;

    invoke-virtual {p0}, Lcom/narvii/account/mobile/MobileCountryInfoHelper$CountryListDialog;->getListSelector()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 250
    invoke-virtual {p0}, Lcom/narvii/widget/ListDialog;->setListAdapter()V

    return-void
.end method


# virtual methods
.method protected createAdapter()Lcom/narvii/list/NVAdapter;
    .locals 4

    .line 264
    new-instance v0, Lcom/narvii/account/mobile/MobileCountryInfoHelper$CountryAdapter;

    iget-object v1, p0, Lcom/narvii/widget/ListDialog;->context:Lcom/narvii/app/NVContext;

    iget-object v2, p0, Lcom/narvii/account/mobile/MobileCountryInfoHelper$CountryListDialog;->countryInfoList:Ljava/util/List;

    iget-boolean v3, p0, Lcom/narvii/account/mobile/MobileCountryInfoHelper$CountryListDialog;->showAreaCode:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/narvii/account/mobile/MobileCountryInfoHelper$CountryAdapter;-><init>(Lcom/narvii/app/NVContext;Ljava/util/List;Z)V

    .line 265
    new-instance v1, Lcom/narvii/account/mobile/-$$Lambda$MobileCountryInfoHelper$CountryListDialog$py2HszSwqr4TJ2tGRpFj-IKUSgU;

    invoke-direct {v1, p0}, Lcom/narvii/account/mobile/-$$Lambda$MobileCountryInfoHelper$CountryListDialog$py2HszSwqr4TJ2tGRpFj-IKUSgU;-><init>(Lcom/narvii/account/mobile/MobileCountryInfoHelper$CountryListDialog;)V

    invoke-virtual {v0, v1}, Lcom/narvii/account/mobile/MobileCountryInfoHelper$CountryAdapter;->setCallback(Lcom/narvii/account/mobile/MobileCountryInfoHelper$CountryAdapter$Callback;)V

    .line 272
    invoke-virtual {p0}, Lcom/narvii/widget/ListDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-object v0
.end method

.method public getListSelector()Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 254
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 256
    sget-object v1, Lcom/narvii/account/mobile/MobileCountryInfoHelper$CountryListDialog;->STATE_PRESSED:[I

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const v3, -0x19191a

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 257
    sget-object v1, Lcom/narvii/account/mobile/MobileCountryInfoHelper$CountryListDialog;->STATE_FOCUSED:[I

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 258
    sget-object v1, Lcom/narvii/account/mobile/MobileCountryInfoHelper$CountryListDialog;->STATE_NORMAL:[I

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method public synthetic lambda$createAdapter$0$MobileCountryInfoHelper$CountryListDialog(Lcom/narvii/account/mobile/CountryInfoR;)V
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/narvii/account/mobile/MobileCountryInfoHelper$CountryListDialog;->callback:Lcom/narvii/util/Callback;

    if-eqz v0, :cond_0

    .line 267
    invoke-interface {v0, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_0
    const-string p1, "CountryList"

    .line 269
    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickWildcardBuilder(Lcom/narvii/app/NVContext;Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 270
    invoke-virtual {p0}, Lcom/narvii/app/NVDialog;->dismiss()V

    return-void
.end method

.method protected layout()I
    .locals 1

    const v0, 0x7f0b019d

    return v0
.end method
