.class Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment$2;
.super Ljava/lang/Object;
.source "StoreItemPurchaseConfirmFragment.java"

# interfaces
.implements Lcom/narvii/list/ObjectItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment$2;->this$0:Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/narvii/model/NVObject;)V
    .locals 1

    .line 108
    iget-object p1, p0, Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment$2;->this$0:Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;

    sget-object v0, Lcom/narvii/logging/ActSemantic;->pageEnter:Lcom/narvii/logging/ActSemantic;

    invoke-static {p1, v0}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const-string v0, "GetCoinsButton"

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    return-void
.end method
