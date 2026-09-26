.class public final synthetic Lcom/narvii/chat/video/utils/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/narvii/util/dialog/AlertDialog;

.field public final synthetic b:Lcom/narvii/util/Callback;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/util/dialog/AlertDialog;Lcom/narvii/util/Callback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/video/utils/k;->a:Lcom/narvii/util/dialog/AlertDialog;

    iput-object p2, p0, Lcom/narvii/chat/video/utils/k;->b:Lcom/narvii/util/Callback;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/narvii/chat/video/utils/k;->a:Lcom/narvii/util/dialog/AlertDialog;

    iget-object v1, p0, Lcom/narvii/chat/video/utils/k;->b:Lcom/narvii/util/Callback;

    invoke-static {v0, v1, p1}, Lcom/narvii/chat/video/utils/VVChatHelper;->c(Lcom/narvii/util/dialog/AlertDialog;Lcom/narvii/util/Callback;Landroid/view/View;)V

    return-void
.end method
