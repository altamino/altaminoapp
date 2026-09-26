.class public final synthetic Lcom/narvii/account/e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/narvii/account/MobileSignupFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/account/MobileSignupFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/account/e0;->a:Lcom/narvii/account/MobileSignupFragment;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/account/e0;->a:Lcom/narvii/account/MobileSignupFragment;

    invoke-static {v0, p1}, Lcom/narvii/account/MobileSignupFragment;->s(Lcom/narvii/account/MobileSignupFragment;Landroid/view/View;)V

    return-void
.end method
