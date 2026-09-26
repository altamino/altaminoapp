.class public final synthetic Lcom/narvii/account/mobile/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/account/mobile/MobileCountryInfoHelper$CountryAdapter$Callback;


# instance fields
.field public final synthetic a:Lcom/narvii/account/mobile/MobileCountryInfoHelper$CountryListDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/account/mobile/MobileCountryInfoHelper$CountryListDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/account/mobile/b;->a:Lcom/narvii/account/mobile/MobileCountryInfoHelper$CountryListDialog;

    return-void
.end method


# virtual methods
.method public final onClickCountry(Lcom/narvii/account/mobile/CountryInfoR;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/account/mobile/b;->a:Lcom/narvii/account/mobile/MobileCountryInfoHelper$CountryListDialog;

    invoke-static {v0, p1}, Lcom/narvii/account/mobile/MobileCountryInfoHelper$CountryListDialog;->a(Lcom/narvii/account/mobile/MobileCountryInfoHelper$CountryListDialog;Lcom/narvii/account/mobile/CountryInfoR;)V

    return-void
.end method
