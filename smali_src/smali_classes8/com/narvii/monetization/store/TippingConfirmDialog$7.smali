.class Lcom/narvii/monetization/store/TippingConfirmDialog$7;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog$7;->this$0:Lcom/narvii/monetization/store/TippingConfirmDialog;

    .line 3
    .line 4
    iput p2, p0, Lcom/narvii/monetization/store/TippingConfirmDialog$7;->val$communityId:I

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/headlines/HeadlineLoggingHelper;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/monetization/store/TippingConfirmDialog$7;->this$0:Lcom/narvii/monetization/store/TippingConfirmDialog;

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lcom/narvii/monetization/store/TippingConfirmDialog;->f(Lcom/narvii/monetization/store/TippingConfirmDialog;)Lcom/narvii/app/NVContext;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-direct {p1, v0}, Lcom/narvii/headlines/HeadlineLoggingHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 12
    .line 13
    iget v0, p0, Lcom/narvii/monetization/store/TippingConfirmDialog$7;->val$communityId:I

    .line 14
    .line 15
    sget-object v1, Lcom/narvii/util/logging/LoggingSource;->GuestTipping:Lcom/narvii/util/logging/LoggingSource;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 20
    const/4 v2, 0x0

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v2, v0, v1}, Lcom/narvii/headlines/HeadlineLoggingHelper;->logJoinAminoStarting(Ljava/lang/String;ILjava/lang/String;)V

    .line 24
    .line 25
    new-instance p1, Lcom/narvii/master/CommunityHelper;

    .line 26
    .line 27
    iget-object v0, p0, Lcom/narvii/monetization/store/TippingConfirmDialog$7;->this$0:Lcom/narvii/monetization/store/TippingConfirmDialog;

    .line 28
    .line 29
    .line 30
    invoke-static {v0}, Lcom/narvii/monetization/store/TippingConfirmDialog;->f(Lcom/narvii/monetization/store/TippingConfirmDialog;)Lcom/narvii/app/NVContext;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    .line 34
    invoke-direct {p1, v0}, Lcom/narvii/master/CommunityHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 35
    .line 36
    iget v0, p0, Lcom/narvii/monetization/store/TippingConfirmDialog$7;->val$communityId:I

    .line 37
    .line 38
    new-instance v1, Lcom/narvii/monetization/store/TippingConfirmDialog$7$1;

    .line 39
    .line 40
    .line 41
    invoke-direct {v1, p0}, Lcom/narvii/monetization/store/TippingConfirmDialog$7$1;-><init>(Lcom/narvii/monetization/store/TippingConfirmDialog$7;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v0, v2, v1}, Lcom/narvii/master/CommunityHelper;->joinCommunity(ILjava/lang/String;Lcom/narvii/util/Callback;)V

    .line 45
    return-void
.end method
