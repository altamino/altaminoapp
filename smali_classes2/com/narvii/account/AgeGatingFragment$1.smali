.class Lcom/narvii/account/AgeGatingFragment$1;
.super Ljava/lang/Object;
.source "AgeGatingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/account/AgeGatingFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/account/AgeGatingFragment;


# direct methods
.method constructor <init>(Lcom/narvii/account/AgeGatingFragment;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/narvii/account/AgeGatingFragment$1;->this$0:Lcom/narvii/account/AgeGatingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 92
    iget-object p1, p0, Lcom/narvii/account/AgeGatingFragment$1;->this$0:Lcom/narvii/account/AgeGatingFragment;

    const-string v0, "Country"

    invoke-static {p1, v0}, Lcom/narvii/logging/LogEvent;->clickWildcardBuilder(Lcom/narvii/app/NVContext;Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 93
    iget-object p1, p0, Lcom/narvii/account/AgeGatingFragment$1;->this$0:Lcom/narvii/account/AgeGatingFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Lcom/narvii/account/AgeGatingFragment$1$1;

    invoke-direct {v0, p0}, Lcom/narvii/account/AgeGatingFragment$1$1;-><init>(Lcom/narvii/account/AgeGatingFragment$1;)V

    iget-object v1, p0, Lcom/narvii/account/AgeGatingFragment$1;->this$0:Lcom/narvii/account/AgeGatingFragment;

    iget-object v1, v1, Lcom/narvii/account/AgeGatingFragment;->countryInfo:Lcom/narvii/account/mobile/CountryInfoR;

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/narvii/account/mobile/MobileCountryInfoHelper;->createSelectCountryDialog(Landroid/content/Context;Lcom/narvii/util/Callback;Lcom/narvii/account/mobile/CountryInfoR;Z)Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 101
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method
