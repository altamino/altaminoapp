.class Lcom/narvii/chat/video/KickUserHelper$1;
.super Ljava/lang/Object;
.source "KickUserHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/video/KickUserHelper;->showKickDialog(Lcom/narvii/model/User;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/video/KickUserHelper;

.field final synthetic val$alertDialog:Lcom/narvii/util/dialog/AlertDialog;

.field final synthetic val$user:Lcom/narvii/model/User;


# direct methods
.method constructor <init>(Lcom/narvii/chat/video/KickUserHelper;Lcom/narvii/model/User;Lcom/narvii/util/dialog/AlertDialog;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/narvii/chat/video/KickUserHelper$1;->this$0:Lcom/narvii/chat/video/KickUserHelper;

    iput-object p2, p0, Lcom/narvii/chat/video/KickUserHelper$1;->val$user:Lcom/narvii/model/User;

    iput-object p3, p0, Lcom/narvii/chat/video/KickUserHelper$1;->val$alertDialog:Lcom/narvii/util/dialog/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 42
    iget-object p1, p0, Lcom/narvii/chat/video/KickUserHelper$1;->this$0:Lcom/narvii/chat/video/KickUserHelper;

    iget-object v0, p0, Lcom/narvii/chat/video/KickUserHelper$1;->val$user:Lcom/narvii/model/User;

    invoke-virtual {p1, v0}, Lcom/narvii/chat/video/KickUserHelper;->deleteMember(Lcom/narvii/model/User;)V

    .line 43
    iget-object p1, p0, Lcom/narvii/chat/video/KickUserHelper$1;->val$alertDialog:Lcom/narvii/util/dialog/AlertDialog;

    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    return-void
.end method
