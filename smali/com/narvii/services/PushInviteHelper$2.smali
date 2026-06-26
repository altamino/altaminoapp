.class Lcom/narvii/services/PushInviteHelper$2;
.super Ljava/lang/Object;
.source "PushInviteHelper.java"

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

    .line 309
    iput-object p1, p0, Lcom/narvii/services/PushInviteHelper$2;->this$0:Lcom/narvii/services/PushInviteHelper;

    iput-object p2, p0, Lcom/narvii/services/PushInviteHelper$2;->val$a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/narvii/services/PushInviteHelper$2;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 312
    iget-object p1, p0, Lcom/narvii/services/PushInviteHelper$2;->val$a:Landroid/app/Activity;

    iget-object v0, p0, Lcom/narvii/services/PushInviteHelper$2;->val$intent:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
