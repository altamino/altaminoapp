.class final Lcom/narvii/account/mobile/MobileCountryInfoHelper$1;
.super Lcom/narvii/account/mobile/MobileCountryInfoHelper$CountryListDialog;
.source "MobileCountryInfoHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/account/mobile/MobileCountryInfoHelper;->createSelectCountryDialog(Landroid/content/Context;Lcom/narvii/util/Callback;Lcom/narvii/account/mobile/CountryInfoR;Z)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/narvii/app/NVContext;Ljava/util/List;Lcom/narvii/util/Callback;Z)V
    .locals 0

    .line 219
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/narvii/account/mobile/MobileCountryInfoHelper$CountryListDialog;-><init>(Lcom/narvii/app/NVContext;Ljava/util/List;Lcom/narvii/util/Callback;Z)V

    return-void
.end method


# virtual methods
.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "SignUpPickCountryCode"

    return-object v0
.end method
