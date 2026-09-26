.class Lcom/narvii/chat/video/KickUserHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/video/KickUserHelper$1;->this$0:Lcom/narvii/chat/video/KickUserHelper;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/chat/video/KickUserHelper$1;->val$user:Lcom/narvii/model/User;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/chat/video/KickUserHelper$1;->val$alertDialog:Lcom/narvii/util/dialog/AlertDialog;

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
    iget-object p1, p0, Lcom/narvii/chat/video/KickUserHelper$1;->this$0:Lcom/narvii/chat/video/KickUserHelper;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/chat/video/KickUserHelper$1;->val$user:Lcom/narvii/model/User;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, v0}, Lcom/narvii/chat/video/KickUserHelper;->deleteMember(Lcom/narvii/model/User;)V

    .line 8
    .line 9
    iget-object p1, p0, Lcom/narvii/chat/video/KickUserHelper$1;->val$alertDialog:Lcom/narvii/util/dialog/AlertDialog;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 13
    return-void
.end method
