.class Lcom/narvii/services/PushInviteHelper$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/services/PushInviteHelper;->onPushPayload(Lcom/narvii/pushservice/PushPayload;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/services/PushInviteHelper;

.field final synthetic val$a:Landroid/app/Activity;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/narvii/services/PushInviteHelper;Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/services/PushInviteHelper$2;->this$0:Lcom/narvii/services/PushInviteHelper;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/services/PushInviteHelper$2;->val$a:Landroid/app/Activity;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/services/PushInviteHelper$2;->val$intent:Landroid/content/Intent;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method

.method public static safedk_Activity_startActivity_9d898b58165fa4ba0e12c3900a2b8533(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Landroid/app/Activity;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/services/PushInviteHelper$2;->val$a:Landroid/app/Activity;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/services/PushInviteHelper$2;->val$intent:Landroid/content/Intent;

    .line 5
    .line 6
    .line 7
    invoke-static {p1, v0}, Lcom/narvii/services/PushInviteHelper$2;->safedk_Activity_startActivity_9d898b58165fa4ba0e12c3900a2b8533(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 8
    return-void
.end method
