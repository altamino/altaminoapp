.class public final synthetic Lcom/narvii/account/b1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/narvii/account/SignUpFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/account/SignUpFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/account/b1;->a:Lcom/narvii/account/SignUpFragment;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/account/b1;->a:Lcom/narvii/account/SignUpFragment;

    invoke-static {v0, p1}, Lcom/narvii/account/SignUpFragment;->s(Lcom/narvii/account/SignUpFragment;Landroid/view/View;)V

    return-void
.end method
