.class Lcom/narvii/monetization/store/TippingConfirmDialog$7;
.super Ljava/lang/Object;
.source "TippingConfirmDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/store/TippingConfirmDialog;->showJoinCommunityDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/store/TippingConfirmDialog;

.field final synthetic val$communityId:I


# direct methods
.method constructor <init>(Lcom/narvii/monetization/store/TippingConfirmDialog;I)V
    .locals 0

    .line 656
    iput-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog$7;->this$0:Lcom/narvii/monetization/store/TippingConfirmDialog;

    iput p2, p0, Lcom/narvii/monetization/store/TippingConfirmDialog$7;->val$communityId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 659
    new-instance p1, Lcom/narvii/headlines/HeadlineLoggingHelper;

    iget-object v0, p0, Lcom/narvii/monetization/store/TippingConfirmDialog$7;->this$0:Lcom/narvii/monetization/store/TippingConfirmDialog;

    invoke-static {v0}, Lcom/narvii/monetization/store/TippingConfirmDialog;->access$800(Lcom/narvii/monetization/store/TippingConfirmDialog;)Lcom/narvii/app/NVContext;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/headlines/HeadlineLoggingHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 660
    iget v0, p0, Lcom/narvii/monetization/store/TippingConfirmDialog$7;->val$communityId:I

    sget-object v1, Lcom/narvii/util/logging/LoggingSource;->GuestTipping:Lcom/narvii/util/logging/LoggingSource;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0, v1}, Lcom/narvii/headlines/HeadlineLoggingHelper;->logJoinAminoStarting(Ljava/lang/String;ILjava/lang/String;)V

    .line 661
    new-instance p1, Lcom/narvii/master/CommunityHelper;

    iget-object v0, p0, Lcom/narvii/monetization/store/TippingConfirmDialog$7;->this$0:Lcom/narvii/monetization/store/TippingConfirmDialog;

    invoke-static {v0}, Lcom/narvii/monetization/store/TippingConfirmDialog;->access$800(Lcom/narvii/monetization/store/TippingConfirmDialog;)Lcom/narvii/app/NVContext;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/master/CommunityHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 662
    iget v0, p0, Lcom/narvii/monetization/store/TippingConfirmDialog$7;->val$communityId:I

    new-instance v1, Lcom/narvii/monetization/store/TippingConfirmDialog$7$1;

    invoke-direct {v1, p0}, Lcom/narvii/monetization/store/TippingConfirmDialog$7$1;-><init>(Lcom/narvii/monetization/store/TippingConfirmDialog$7;)V

    invoke-virtual {p1, v0, v2, v1}, Lcom/narvii/master/CommunityHelper;->joinCommunity(ILjava/lang/String;Lcom/narvii/util/Callback;)V

    return-void
.end method
