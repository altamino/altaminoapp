.class Lcom/narvii/account/mobile/MobileCountryInfoHelper$CountryListDialog;
.super Lcom/narvii/widget/ListDialog;
.source "SourceFile"


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
    .locals 1

    const v0, 0x10100a7

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/narvii/account/mobile/MobileCountryInfoHelper$CountryListDialog;->STATE_PRESSED:[I

    const v0, 0x101009c

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/narvii/account/mobile/MobileCountryInfoHelper$CountryListDialog;->STATE_FOCUSED:[I

    const/4 v0, 0x0

    new-array v0, v0, [I

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

    .line 1
    .line 2
    .line 3
    const v0, 0x7f130160

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1, v0}, Lcom/narvii/widget/ListDialog;-><init>(Lcom/narvii/app/NVContext;I)V

    .line 7
    .line 8
    iput-object p2, p0, Lcom/narvii/account/mobile/MobileCountryInfoHelper$CountryListDialog;->countryInfoList:Ljava/util/List;

    .line 9
    .line 10
    iput-object p3, p0, Lcom/narvii/account/mobile/MobileCountryInfoHelper$CountryListDialog;->callback:Lcom/narvii/util/Callback;

    .line 11
    .line 12
    iput-boolean p4, p0, Lcom/narvii/account/mobile/MobileCountryInfoHelper$CountryListDialog;->showAreaCode:Z

    .line 13
    .line 14
    iget-object p1, p0, Lcom/narvii/widget/ListDialog;->listView:Lcom/narvii/widget/NVListView;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/narvii/account/mobile/MobileCountryInfoHelper$CountryListDialog;->getListSelector()Landroid/graphics/drawable/Drawable;

    .line 18
    move-result-object p2

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, p2}, Landroid/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/narvii/widget/ListDialog;->setListAdapter()V

    .line 25
    return-void
.end method

.method public static synthetic a(Lcom/narvii/account/mobile/MobileCountryInfoHelper$CountryListDialog;Lcom/narvii/account/mobile/CountryInfoR;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/account/mobile/MobileCountryInfoHelper$CountryListDialog;->lambda$createAdapter$0(Lcom/narvii/account/mobile/CountryInfoR;)V

    return-void
.end method

.method private synthetic lambda$createAdapter$0(Lcom/narvii/account/mobile/CountryInfoR;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/account/mobile/MobileCountryInfoHelper$CountryListDialog;->callback:Lcom/narvii/util/Callback;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 8
    .line 9
    :cond_0
    const-string p1, "CountryList"

    .line 10
    .line 11
    .line 12
    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickWildcardBuilder(Lcom/narvii/app/NVContext;Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 20
    return-void
.end method


# virtual methods
.method protected createAdapter()Lcom/narvii/list/NVAdapter;
    .locals 4

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/account/mobile/MobileCountryInfoHelper$CountryAdapter;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/widget/ListDialog;->context:Lcom/narvii/app/NVContext;

    .line 5
    .line 6
    iget-object v2, p0, Lcom/narvii/account/mobile/MobileCountryInfoHelper$CountryListDialog;->countryInfoList:Ljava/util/List;

    .line 7
    .line 8
    iget-boolean v3, p0, Lcom/narvii/account/mobile/MobileCountryInfoHelper$CountryListDialog;->showAreaCode:Z

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1, v2, v3}, Lcom/narvii/account/mobile/MobileCountryInfoHelper$CountryAdapter;-><init>(Lcom/narvii/app/NVContext;Ljava/util/List;Z)V

    .line 12
    .line 13
    new-instance v1, Lcom/narvii/account/mobile/b;

    .line 14
    .line 15
    .line 16
    invoke-direct {v1, p0}, Lcom/narvii/account/mobile/b;-><init>(Lcom/narvii/account/mobile/MobileCountryInfoHelper$CountryListDialog;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/narvii/account/mobile/MobileCountryInfoHelper$CountryAdapter;->setCallback(Lcom/narvii/account/mobile/MobileCountryInfoHelper$CountryAdapter$Callback;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/narvii/widget/ListDialog;->getListView()Landroid/widget/ListView;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 27
    return-object v0
.end method

.method public getListSelector()Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 1
    .line 2
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 6
    .line 7
    sget-object v1, Lcom/narvii/account/mobile/MobileCountryInfoHelper$CountryListDialog;->STATE_PRESSED:[I

    .line 8
    .line 9
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    .line 10
    .line 11
    .line 12
    const v3, -0x19191a

    .line 13
    .line 14
    .line 15
    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 19
    .line 20
    sget-object v1, Lcom/narvii/account/mobile/MobileCountryInfoHelper$CountryListDialog;->STATE_FOCUSED:[I

    .line 21
    .line 22
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    .line 23
    .line 24
    .line 25
    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 29
    .line 30
    sget-object v1, Lcom/narvii/account/mobile/MobileCountryInfoHelper$CountryListDialog;->STATE_NORMAL:[I

    .line 31
    .line 32
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    .line 33
    const/4 v3, 0x0

    .line 34
    .line 35
    .line 36
    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 40
    return-object v0
.end method

.method protected layout()I
    .locals 1

    const v0, 0x7f0d01bd

    return v0
.end method
