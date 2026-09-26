.class Lcom/narvii/influencer/FanClubSubscriptionDialog$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/text/OnTagClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/influencer/FanClubSubscriptionDialog;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/influencer/FanClubSubscriptionDialog;

.field final synthetic val$nvContext:Lcom/narvii/app/NVContext;


# direct methods
.method constructor <init>(Lcom/narvii/influencer/FanClubSubscriptionDialog;Lcom/narvii/app/NVContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog$2;->this$0:Lcom/narvii/influencer/FanClubSubscriptionDialog;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog$2;->val$nvContext:Lcom/narvii/app/NVContext;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method

.method public static safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(Lcom/narvii/app/NVContext;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/app/NVContext;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p0, p1}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;Lcom/narvii/util/text/NVText;ILjava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog$2;->val$nvContext:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    new-instance p2, Landroid/content/Intent;

    .line 5
    .line 6
    const-string p3, "ndc://tos"

    .line 7
    .line 8
    .line 9
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 10
    move-result-object p3

    .line 11
    .line 12
    const-string p4, "android.intent.action.VIEW"

    .line 13
    .line 14
    .line 15
    invoke-direct {p2, p4, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 16
    .line 17
    .line 18
    invoke-static {p1, p2}, Lcom/narvii/influencer/FanClubSubscriptionDialog$2;->safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(Lcom/narvii/app/NVContext;Landroid/content/Intent;)V

    .line 19
    return-void
.end method
