.class Lcom/narvii/account/AgeGatingFragment$1$1;
.super Ljava/lang/Object;
.source "AgeGatingFragment.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/account/AgeGatingFragment$1;->onClick(Landroid/view/View;)V
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
.field final synthetic this$1:Lcom/narvii/account/AgeGatingFragment$1;


# direct methods
.method constructor <init>(Lcom/narvii/account/AgeGatingFragment$1;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/narvii/account/AgeGatingFragment$1$1;->this$1:Lcom/narvii/account/AgeGatingFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/account/mobile/CountryInfoR;)V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/narvii/account/AgeGatingFragment$1$1;->this$1:Lcom/narvii/account/AgeGatingFragment$1;

    iget-object v0, v0, Lcom/narvii/account/AgeGatingFragment$1;->this$0:Lcom/narvii/account/AgeGatingFragment;

    iput-object p1, v0, Lcom/narvii/account/AgeGatingFragment;->countryInfo:Lcom/narvii/account/mobile/CountryInfoR;

    .line 97
    invoke-virtual {v0}, Lcom/narvii/account/AgeGatingFragment;->updateCountryInfo()V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 93
    check-cast p1, Lcom/narvii/account/mobile/CountryInfoR;

    invoke-virtual {p0, p1}, Lcom/narvii/account/AgeGatingFragment$1$1;->call(Lcom/narvii/account/mobile/CountryInfoR;)V

    return-void
.end method
