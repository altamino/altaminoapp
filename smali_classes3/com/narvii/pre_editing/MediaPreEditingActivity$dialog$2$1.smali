.class final Lcom/narvii/pre_editing/MediaPreEditingActivity$dialog$2$1;
.super Ljava/lang/Object;
.source "MediaPreEditingActivity.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/pre_editing/MediaPreEditingActivity$dialog$2;->invoke()Lcom/narvii/util/dialog/ProgressDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/pre_editing/MediaPreEditingActivity$dialog$2;


# direct methods
.method constructor <init>(Lcom/narvii/pre_editing/MediaPreEditingActivity$dialog$2;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity$dialog$2$1;->this$0:Lcom/narvii/pre_editing/MediaPreEditingActivity$dialog$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 6

    const p1, 0xee47

    int-to-long v0, p1

    .line 60
    iget-object p1, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity$dialog$2$1;->this$0:Lcom/narvii/pre_editing/MediaPreEditingActivity$dialog$2;

    iget-object p1, p1, Lcom/narvii/pre_editing/MediaPreEditingActivity$dialog$2;->this$0:Lcom/narvii/pre_editing/MediaPreEditingActivity;

    invoke-static {p1}, Lcom/narvii/pre_editing/MediaPreEditingActivity;->access$getInputMedia$p(Lcom/narvii/pre_editing/MediaPreEditingActivity;)Lcom/narvii/model/Media;

    move-result-object p1

    iget-wide v2, p1, Lcom/narvii/model/Media;->duration:J

    const-wide/16 v4, 0x1

    cmp-long p1, v4, v2

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    cmp-long p1, v0, v2

    if-ltz p1, :cond_1

    .line 61
    iget-object p1, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity$dialog$2$1;->this$0:Lcom/narvii/pre_editing/MediaPreEditingActivity$dialog$2;

    iget-object p1, p1, Lcom/narvii/pre_editing/MediaPreEditingActivity$dialog$2;->this$0:Lcom/narvii/pre_editing/MediaPreEditingActivity;

    invoke-virtual {p1}, Lcom/narvii/pre_editing/MediaPreEditingActivity;->finish()V

    goto :goto_1

    .line 63
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity$dialog$2$1;->this$0:Lcom/narvii/pre_editing/MediaPreEditingActivity$dialog$2;

    iget-object p1, p1, Lcom/narvii/pre_editing/MediaPreEditingActivity$dialog$2;->this$0:Lcom/narvii/pre_editing/MediaPreEditingActivity;

    invoke-static {p1}, Lcom/narvii/pre_editing/MediaPreEditingActivity;->access$getTrimVideoGenerator$p(Lcom/narvii/pre_editing/MediaPreEditingActivity;)Lcom/narvii/pre_editing/TrimVideoGenerator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/pre_editing/TrimVideoGenerator;->cancel()V

    :goto_1
    return-void
.end method
