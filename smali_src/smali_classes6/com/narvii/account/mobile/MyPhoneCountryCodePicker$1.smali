.class Lcom/narvii/account/mobile/MyPhoneCountryCodePicker$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/account/mobile/MyPhoneCountryCodePicker;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Lcom/narvii/account/mobile/CountryInfoR;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/account/mobile/MyPhoneCountryCodePicker;


# direct methods
.method constructor <init>(Lcom/narvii/account/mobile/MyPhoneCountryCodePicker;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/account/mobile/MyPhoneCountryCodePicker$1;->this$0:Lcom/narvii/account/mobile/MyPhoneCountryCodePicker;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/account/mobile/CountryInfoR;)V
    .locals 1

    iget-object v0, p0, Lcom/narvii/account/mobile/MyPhoneCountryCodePicker$1;->this$0:Lcom/narvii/account/mobile/MyPhoneCountryCodePicker;

    .line 2
    invoke-virtual {v0, p1}, Lcom/narvii/account/mobile/MyPhoneCountryCodePicker;->setCountryInfo(Lcom/narvii/account/mobile/CountryInfoR;)V

    .line 3
    invoke-static {p1}, Lcom/narvii/account/mobile/MobileCountryInfoHelper;->setLastSelectedCountry(Lcom/narvii/account/mobile/CountryInfoR;)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/account/mobile/CountryInfoR;

    invoke-virtual {p0, p1}, Lcom/narvii/account/mobile/MyPhoneCountryCodePicker$1;->call(Lcom/narvii/account/mobile/CountryInfoR;)V

    return-void
.end method
