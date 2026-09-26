.class public final synthetic Lcom/narvii/chat/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/narvii/chat/ChatCameraPreviewDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/chat/ChatCameraPreviewDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/g;->a:Lcom/narvii/chat/ChatCameraPreviewDialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/chat/g;->a:Lcom/narvii/chat/ChatCameraPreviewDialog;

    invoke-static {v0, p1}, Lcom/narvii/chat/ChatCameraPreviewDialog;->d(Lcom/narvii/chat/ChatCameraPreviewDialog;Landroid/view/View;)V

    return-void
.end method
