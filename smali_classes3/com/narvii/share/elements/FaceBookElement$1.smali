.class Lcom/narvii/share/elements/FaceBookElement$1;
.super Ljava/lang/Object;
.source "FaceBookElement.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/share/elements/FaceBookElement;->share(Lcom/narvii/share/SharePayload;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/share/elements/FaceBookElement;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$payload:Lcom/narvii/share/SharePayload;


# direct methods
.method constructor <init>(Lcom/narvii/share/elements/FaceBookElement;Landroid/content/Intent;Lcom/narvii/share/SharePayload;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/narvii/share/elements/FaceBookElement$1;->this$0:Lcom/narvii/share/elements/FaceBookElement;

    iput-object p2, p0, Lcom/narvii/share/elements/FaceBookElement$1;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/narvii/share/elements/FaceBookElement$1;->val$payload:Lcom/narvii/share/SharePayload;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 54
    iget-object p1, p0, Lcom/narvii/share/elements/FaceBookElement$1;->val$intent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/narvii/share/elements/FaceBookElement$1;->val$payload:Lcom/narvii/share/SharePayload;

    invoke-virtual {v0}, Lcom/narvii/share/SharePayload;->mimeType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    iget-object p1, p0, Lcom/narvii/share/elements/FaceBookElement$1;->val$intent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/narvii/share/elements/FaceBookElement$1;->val$payload:Lcom/narvii/share/SharePayload;

    iget-object v0, v0, Lcom/narvii/share/SharePayload;->uri:Landroid/net/Uri;

    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 57
    iget-object p1, p0, Lcom/narvii/share/elements/FaceBookElement$1;->this$0:Lcom/narvii/share/elements/FaceBookElement;

    iget-object v0, p0, Lcom/narvii/share/elements/FaceBookElement$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Lcom/narvii/share/elements/BaseElement;->containActivityCanHanleIntent(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 58
    iget-object p1, p0, Lcom/narvii/share/elements/FaceBookElement$1;->this$0:Lcom/narvii/share/elements/FaceBookElement;

    iget-object v0, p0, Lcom/narvii/share/elements/FaceBookElement$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Lcom/narvii/share/elements/BaseElement;->startShare(Landroid/content/Intent;)V

    goto :goto_0

    .line 60
    :cond_0
    iget-object p1, p0, Lcom/narvii/share/elements/FaceBookElement$1;->this$0:Lcom/narvii/share/elements/FaceBookElement;

    invoke-virtual {p1}, Lcom/narvii/share/elements/BaseElement;->showNotFoundPakage()V

    :goto_0
    return-void
.end method
