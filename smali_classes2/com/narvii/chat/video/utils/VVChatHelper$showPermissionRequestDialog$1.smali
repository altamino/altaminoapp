.class final Lcom/narvii/chat/video/utils/VVChatHelper$showPermissionRequestDialog$1;
.super Ljava/lang/Object;
.source "VVChatHelper.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/video/utils/VVChatHelper;->showPermissionRequestDialog(ILcom/narvii/util/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $alertDialog:Lcom/narvii/widget/ACMAlertDialog;


# direct methods
.method constructor <init>(Lcom/narvii/widget/ACMAlertDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/video/utils/VVChatHelper$showPermissionRequestDialog$1;->$alertDialog:Lcom/narvii/widget/ACMAlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 147
    iget-object p1, p0, Lcom/narvii/chat/video/utils/VVChatHelper$showPermissionRequestDialog$1;->$alertDialog:Lcom/narvii/widget/ACMAlertDialog;

    invoke-virtual {p1}, Lcom/narvii/widget/ACMAlertDialog;->dismiss()V

    return-void
.end method
