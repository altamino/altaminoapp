.class Landroidx/appcompat/app/AppCompatDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/KeyEventDispatcher$Component;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/AppCompatDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/appcompat/app/AppCompatDialog;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/AppCompatDialog;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Landroidx/appcompat/app/AppCompatDialog$1;->this$0:Landroidx/appcompat/app/AppCompatDialog;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public superDispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDialog$1;->this$0:Landroidx/appcompat/app/AppCompatDialog;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AppCompatDialog;->c(Landroid/view/KeyEvent;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method
