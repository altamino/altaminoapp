.class Lcom/narvii/chat/rtc/RtcEligibleHelper$1;
.super Ljava/lang/Object;
.source "RtcEligibleHelper.java"

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

    .line 38
    iput-object p1, p0, Lcom/narvii/chat/rtc/RtcEligibleHelper$1;->this$0:Lcom/narvii/chat/rtc/RtcEligibleHelper;

    iput-object p2, p0, Lcom/narvii/chat/rtc/RtcEligibleHelper$1;->val$listener:Landroid/view/View$OnClickListener;

    iput-object p3, p0, Lcom/narvii/chat/rtc/RtcEligibleHelper$1;->val$dlg:Lcom/narvii/util/dialog/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcEligibleHelper$1;->val$listener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 42
    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 44
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/rtc/RtcEligibleHelper$1;->val$dlg:Lcom/narvii/util/dialog/AlertDialog;

    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    return-void
.end method
