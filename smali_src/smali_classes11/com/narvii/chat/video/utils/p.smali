.class public final synthetic Lcom/narvii/chat/video/utils/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/narvii/util/Callback;

.field public final synthetic b:Lcom/narvii/util/dialog/AlertDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/util/Callback;Lcom/narvii/util/dialog/AlertDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/video/utils/p;->a:Lcom/narvii/util/Callback;

    iput-object p2, p0, Lcom/narvii/chat/video/utils/p;->b:Lcom/narvii/util/dialog/AlertDialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/narvii/chat/video/utils/p;->a:Lcom/narvii/util/Callback;

    iget-object v1, p0, Lcom/narvii/chat/video/utils/p;->b:Lcom/narvii/util/dialog/AlertDialog;

    invoke-static {v0, v1, p1}, Lcom/narvii/chat/video/utils/VVChatHelper;->x(Lcom/narvii/util/Callback;Lcom/narvii/util/dialog/AlertDialog;Landroid/view/View;)V

    return-void
.end method
