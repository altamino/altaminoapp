.class Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment$2;->this$0:Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/narvii/model/NVObject;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment$2;->this$0:Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;

    .line 3
    .line 4
    sget-object v0, Lcom/narvii/logging/ActSemantic;->pageEnter:Lcom/narvii/logging/ActSemantic;

    .line 5
    .line 6
    .line 7
    invoke-static {p1, v0}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    const-string v0, "GetCoinsButton"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 18
    return-void
.end method
