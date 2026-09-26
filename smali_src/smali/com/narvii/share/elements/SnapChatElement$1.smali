.class Lcom/narvii/share/elements/SnapChatElement$1;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/share/elements/SnapChatElement$1;->this$0:Lcom/narvii/share/elements/SnapChatElement;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/share/elements/SnapChatElement$1;->val$intent:Landroid/content/Intent;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/share/elements/SnapChatElement$1;->val$payload:Lcom/narvii/share/SharePayload;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/narvii/share/elements/SnapChatElement$1;->val$image:Landroid/net/Uri;

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/share/elements/SnapChatElement$1;->val$intent:Landroid/content/Intent;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/share/elements/SnapChatElement$1;->val$payload:Lcom/narvii/share/SharePayload;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/share/SharePayload;->mimeType()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 12
    .line 13
    iget-object p1, p0, Lcom/narvii/share/elements/SnapChatElement$1;->val$intent:Landroid/content/Intent;

    .line 14
    .line 15
    const-string v0, "android.intent.extra.STREAM"

    .line 16
    .line 17
    iget-object v1, p0, Lcom/narvii/share/elements/SnapChatElement$1;->val$image:Landroid/net/Uri;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 21
    .line 22
    iget-object p1, p0, Lcom/narvii/share/elements/SnapChatElement$1;->this$0:Lcom/narvii/share/elements/SnapChatElement;

    .line 23
    .line 24
    iget-object v0, p0, Lcom/narvii/share/elements/SnapChatElement$1;->val$intent:Landroid/content/Intent;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v0}, Lcom/narvii/share/elements/BaseElement;->containActivityCanHanleIntent(Landroid/content/Intent;)Z

    .line 28
    move-result p1

    .line 29
    .line 30
    if-eqz p1, :cond_0

    .line 31
    .line 32
    iget-object p1, p0, Lcom/narvii/share/elements/SnapChatElement$1;->this$0:Lcom/narvii/share/elements/SnapChatElement;

    .line 33
    .line 34
    iget-object v0, p0, Lcom/narvii/share/elements/SnapChatElement$1;->val$intent:Landroid/content/Intent;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v0}, Lcom/narvii/share/elements/BaseElement;->startShare(Landroid/content/Intent;)V

    .line 38
    goto :goto_0

    .line 39
    .line 40
    :cond_0
    iget-object p1, p0, Lcom/narvii/share/elements/SnapChatElement$1;->this$0:Lcom/narvii/share/elements/SnapChatElement;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/narvii/share/elements/BaseElement;->showNotFoundPakage()V

    .line 44
    :goto_0
    return-void
.end method
