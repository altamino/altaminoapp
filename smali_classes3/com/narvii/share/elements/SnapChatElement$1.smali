.class Lcom/narvii/share/elements/SnapChatElement$1;
.super Ljava/lang/Object;
.source "SnapChatElement.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/share/elements/SnapChatElement;->share(Lcom/narvii/share/SharePayload;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/share/elements/SnapChatElement;

.field final synthetic val$image:Landroid/net/Uri;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$payload:Lcom/narvii/share/SharePayload;


# direct methods
.method constructor <init>(Lcom/narvii/share/elements/SnapChatElement;Landroid/content/Intent;Lcom/narvii/share/SharePayload;Landroid/net/Uri;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/narvii/share/elements/SnapChatElement$1;->this$0:Lcom/narvii/share/elements/SnapChatElement;

    iput-object p2, p0, Lcom/narvii/share/elements/SnapChatElement$1;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/narvii/share/elements/SnapChatElement$1;->val$payload:Lcom/narvii/share/SharePayload;

    iput-object p4, p0, Lcom/narvii/share/elements/SnapChatElement$1;->val$image:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 69
    iget-object p1, p0, Lcom/narvii/share/elements/SnapChatElement$1;->val$intent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/narvii/share/elements/SnapChatElement$1;->val$payload:Lcom/narvii/share/SharePayload;

    invoke-virtual {v0}, Lcom/narvii/share/SharePayload;->mimeType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    iget-object p1, p0, Lcom/narvii/share/elements/SnapChatElement$1;->val$intent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/narvii/share/elements/SnapChatElement$1;->val$image:Landroid/net/Uri;

    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 71
    iget-object p1, p0, Lcom/narvii/share/elements/SnapChatElement$1;->this$0:Lcom/narvii/share/elements/SnapChatElement;

    iget-object v0, p0, Lcom/narvii/share/elements/SnapChatElement$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Lcom/narvii/share/elements/BaseElement;->containActivityCanHanleIntent(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 72
    iget-object p1, p0, Lcom/narvii/share/elements/SnapChatElement$1;->this$0:Lcom/narvii/share/elements/SnapChatElement;

    iget-object v0, p0, Lcom/narvii/share/elements/SnapChatElement$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Lcom/narvii/share/elements/BaseElement;->startShare(Landroid/content/Intent;)V

    goto :goto_0

    .line 74
    :cond_0
    iget-object p1, p0, Lcom/narvii/share/elements/SnapChatElement$1;->this$0:Lcom/narvii/share/elements/SnapChatElement;

    invoke-virtual {p1}, Lcom/narvii/share/elements/BaseElement;->showNotFoundPakage()V

    :goto_0
    return-void
.end method
