.class public final synthetic Lcom/narvii/account/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field public final synthetic a:Lcom/narvii/account/LoginFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/account/LoginFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/account/x;->a:Lcom/narvii/account/LoginFragment;

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/account/x;->a:Lcom/narvii/account/LoginFragment;

    invoke-static {v0, p1, p2, p3}, Lcom/narvii/account/LoginFragment;->q(Lcom/narvii/account/LoginFragment;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
