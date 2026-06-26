.class final Lcom/narvii/chat/ChatGoLivePickerDialog$1;
.super Ljava/lang/Object;
.source "ChatGoLivePickerDialog.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/ChatGoLivePickerDialog;-><init>(Lcom/narvii/app/NVContext;ZLjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/ChatGoLivePickerDialog;


# direct methods
.method constructor <init>(Lcom/narvii/chat/ChatGoLivePickerDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/ChatGoLivePickerDialog$1;->this$0:Lcom/narvii/chat/ChatGoLivePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 58
    iget-object p1, p0, Lcom/narvii/chat/ChatGoLivePickerDialog$1;->this$0:Lcom/narvii/chat/ChatGoLivePickerDialog;

    invoke-static {p1}, Lcom/narvii/chat/ChatGoLivePickerDialog;->access$getRequireApprovalToSpeak$p(Lcom/narvii/chat/ChatGoLivePickerDialog;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/narvii/chat/ChatGoLivePickerDialog;->access$setRequireApprovalToSpeak$p(Lcom/narvii/chat/ChatGoLivePickerDialog;Z)V

    .line 59
    iget-object p1, p0, Lcom/narvii/chat/ChatGoLivePickerDialog$1;->this$0:Lcom/narvii/chat/ChatGoLivePickerDialog;

    invoke-static {p1}, Lcom/narvii/chat/ChatGoLivePickerDialog;->access$getRequireApprovalToSpeak$p(Lcom/narvii/chat/ChatGoLivePickerDialog;)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/narvii/chat/ChatGoLivePickerDialog;->access$updateAgreement(Lcom/narvii/chat/ChatGoLivePickerDialog;Z)V

    return-void
.end method
