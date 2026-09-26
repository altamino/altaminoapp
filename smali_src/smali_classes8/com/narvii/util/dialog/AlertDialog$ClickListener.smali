.class Lcom/narvii/util/dialog/AlertDialog$ClickListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/util/dialog/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClickListener"
.end annotation


# instance fields
.field l:Landroid/view/View$OnClickListener;

.field final synthetic this$0:Lcom/narvii/util/dialog/AlertDialog;


# direct methods
.method public constructor <init>(Lcom/narvii/util/dialog/AlertDialog;Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/util/dialog/AlertDialog$ClickListener;->this$0:Lcom/narvii/util/dialog/AlertDialog;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    iput-object p2, p0, Lcom/narvii/util/dialog/AlertDialog$ClickListener;->l:Landroid/view/View$OnClickListener;

    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/dialog/AlertDialog$ClickListener;->l:Landroid/view/View$OnClickListener;

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
    iget-object p1, p0, Lcom/narvii/util/dialog/AlertDialog$ClickListener;->this$0:Lcom/narvii/util/dialog/AlertDialog;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 13
    return-void
.end method
