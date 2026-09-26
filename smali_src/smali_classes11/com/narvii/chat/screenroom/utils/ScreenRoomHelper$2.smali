.class Lcom/narvii/chat/screenroom/utils/ScreenRoomHelper$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/screenroom/utils/ScreenRoomHelper;->showPromoteToPresenterDialog(Lcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/model/ChatThread;Lcom/narvii/util/Callback;Lcom/narvii/util/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/screenroom/utils/ScreenRoomHelper;

.field final synthetic val$strangerNoteDialog:Lcom/narvii/util/dialog/AlertDialog;


# direct methods
.method constructor <init>(Lcom/narvii/chat/screenroom/utils/ScreenRoomHelper;Lcom/narvii/util/dialog/AlertDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/screenroom/utils/ScreenRoomHelper$2;->this$0:Lcom/narvii/chat/screenroom/utils/ScreenRoomHelper;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/chat/screenroom/utils/ScreenRoomHelper$2;->val$strangerNoteDialog:Lcom/narvii/util/dialog/AlertDialog;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/chat/screenroom/utils/ScreenRoomHelper$2;->val$strangerNoteDialog:Lcom/narvii/util/dialog/AlertDialog;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 6
    return-void
.end method
