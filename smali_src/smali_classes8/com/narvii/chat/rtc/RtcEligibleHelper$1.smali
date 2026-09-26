.class Lcom/narvii/chat/rtc/RtcEligibleHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/rtc/RtcEligibleHelper;->showNotEligibleDialog(Landroid/view/View$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/rtc/RtcEligibleHelper;

.field final synthetic val$dlg:Lcom/narvii/util/dialog/AlertDialog;

.field final synthetic val$listener:Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>(Lcom/narvii/chat/rtc/RtcEligibleHelper;Landroid/view/View$OnClickListener;Lcom/narvii/util/dialog/AlertDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/rtc/RtcEligibleHelper$1;->this$0:Lcom/narvii/chat/rtc/RtcEligibleHelper;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/chat/rtc/RtcEligibleHelper$1;->val$listener:Landroid/view/View$OnClickListener;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/chat/rtc/RtcEligibleHelper$1;->val$dlg:Lcom/narvii/util/dialog/AlertDialog;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcEligibleHelper$1;->val$listener:Landroid/view/View$OnClickListener;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 8
    .line 9
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/rtc/RtcEligibleHelper$1;->val$dlg:Lcom/narvii/util/dialog/AlertDialog;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 13
    return-void
.end method
